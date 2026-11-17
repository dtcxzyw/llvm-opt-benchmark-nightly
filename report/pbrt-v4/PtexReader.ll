Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexReader?download=true
inline.NumInlined: 1657
inline.NumDeleted: 742
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Ptex4v2_411PtexHashMapINS0_10PtexReader12ReductionKeyEPNS2_8FaceDataEE4growEPNS6_5EntryERm:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !294
  br label %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE9push_backERKS9_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !132  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
  unreachable

_ZNKSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !262
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i

_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #24
  br label %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !132
  store ptr %i.u, ptr %i.b, align 8, !tbaa !294
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !133
  br label %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE9push_backERKS9_.exit

_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE9push_backERKS9_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load volatile i32, ptr %i.z, align 8, !tbaa !124
  %.fr = freeze i32 %i.aa
  %i.ab = shl i32 %.fr, 1                         ; 4 uses
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = shl nuw nsw i64 %i.ac, 4                ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #23 ; 5 uses
  %i.af = icmp eq i32 %i.ab, 0
  br i1 %i.af, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE9push_backERKS9_.exit
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ac
  %i.ah = add nuw nsw i64 %i.ac, 1152921504606846975
  %i.ai = and i64 %i.ah, 1152921504606846975
  %xtraiter = and i64 %i.ac, 6                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %i.aj = phi ptr [ %i.al, %.prol.preheader ], [ %i.ae, %bb.g ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  store i64 -1, ptr %i.aj, align 8, !tbaa !127
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store volatile ptr null, ptr %i.ak, align 8, !tbaa !130
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !435

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.unr = phi ptr [ %i.ae, %bb.g ], [ %i.al, %.prol.preheader ]
  %i.am = icmp samesign ult i64 %i.ai, 7
  br i1 %i.am, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.an = phi ptr [ %i.bd, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i64 -1, ptr %i.an, align 8, !tbaa !127
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store volatile ptr null, ptr %i.ao, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 -1, ptr %i.ap, align 8, !tbaa !127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store volatile ptr null, ptr %i.aq, align 8, !tbaa !130
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 -1, ptr %i.ar, align 8, !tbaa !127
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store volatile ptr null, ptr %i.as, align 8, !tbaa !130
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 -1, ptr %i.at, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store volatile ptr null, ptr %i.au, align 8, !tbaa !130
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i64 -1, ptr %i.av, align 8, !tbaa !127
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store volatile ptr null, ptr %i.aw, align 8, !tbaa !130
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 -1, ptr %i.ax, align 8, !tbaa !127
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store volatile ptr null, ptr %i.ay, align 8, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store i64 -1, ptr %i.az, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  store volatile ptr null, ptr %i.ba, align 8, !tbaa !130
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  store i64 -1, ptr %i.bb, align 8, !tbaa !127
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store volatile ptr null, ptr %i.bc, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 128 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ag
  br i1 %i.be, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %_ZNSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE9push_backERKS9_.exit
  store i64 %i.ad, ptr %2, align 8, !tbaa !94
  %i.bf = add i32 %i.ab, -1
  %i.bg = load volatile i32, ptr %i.z, align 8, !tbaa !124
  %.not33 = icmp eq i32 %i.bg, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  store volatile i32 %i.ab, ptr %i.z, align 8, !tbaa !124
  ret ptr %i.ae

.lr.ph:                                           ; preds = %.loopexit, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load volatile ptr, ptr %i.bi, align 8, !tbaa !130
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bk = load volatile i64, ptr %i.bh, align 8, !tbaa !127
  %i.bl = trunc i64 %i.bk to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge, %bb.h
  %.0 = phi i32 [ %i.bl, %bb.h ], [ %i.br, %.critedge ] ; 2 uses
  %i.bm = and i32 %.0, %i.bf
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load volatile ptr, ptr %i.bp, align 8, !tbaa !130
  %.not27.not = icmp eq ptr %i.bq, null
  %i.br = add nsw i32 %.0, 1
  br i1 %.not27.not, label %bb.i, label %.critedge, !llvm.loop !436

bb.i:                                             ; preds = %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load volatile i64, ptr %i.bh, align 8, !tbaa !127
  store volatile i64 %i.bt, ptr %i.bo, align 8, !tbaa !127
  %i.bu = load volatile ptr, ptr %i.bi, align 8, !tbaa !130
  store volatile ptr %i.bu, ptr %i.bs, align 8, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load volatile i32, ptr %i.z, align 8, !tbaa !124
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !437
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{null}
!1 = distinct !{!1, !166}
!2 = distinct !{null}
!3 = distinct !{!3, !166}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{!6, !166}
!7 = distinct !{!7, !166}
!8 = distinct !{null, null, null, ptr @_ZN4Ptex4v2_410PtexReader8MetaData5EntryD2Ev, null}
!9 = distinct !{null}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"vtable pointer", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSN4Ptex4v2_411PtexTextureE"}
!22 = !{!"_ZTSN4Ptex4v2_45MutexE", !15, i64 0}
!23 = !{!"_ZTSN4Ptex4v2_416PtexInputHandlerE"}
!24 = !{!"any pointer", !15, i64 0}
!25 = !{!"p1 omnipotent char", !24, i64 0}
!26 = !{!"_ZTSN4Ptex4v2_410PtexReader19DefaultInputHandlerE", !23, i64 0, !25, i64 8}
!27 = !{!"p1 _ZTSN4Ptex4v2_416PtexInputHandlerE", !24, i64 0}
!28 = !{!"p1 _ZTSN4Ptex4v2_416PtexErrorHandlerE", !24, i64 0}
!29 = !{!"bool", !15, i64 0}
!30 = !{!"long", !15, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !30, i64 8, !15, i64 16}
!33 = !{!"short", !15, i64 0}
!34 = !{!"_ZTSN4Ptex4v2_46HeaderE", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !33, i64 20, !33, i64 22, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !30, i64 48, !16, i64 56, !16, i64 60}
!35 = !{!"_ZTSN4Ptex4v2_49ExtHeaderE", !33, i64 0, !33, i64 2, !33, i64 4, !33, i64 6, !16, i64 8, !16, i64 12, !30, i64 16, !30, i64 24, !30, i64 32}
!36 = !{!"p1 _ZTSN4Ptex4v2_410PtexReader8MetaDataE", !24, i64 0}
!37 = !{!"p1 _ZTSN4Ptex4v2_48FaceInfoE", !24, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_48FaceInfoESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_48FaceInfoESaIS2_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIN4Ptex4v2_48FaceInfoESaIS2_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE", !40, i64 0}
!42 = !{!"p1 int", !24, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIjSaIjEE", !45, i64 0}
!47 = !{!"p1 _ZTSN4Ptex4v2_49LevelInfoE", !24, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_49LevelInfoESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_49LevelInfoESaIS2_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN4Ptex4v2_49LevelInfoESaIS2_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIN4Ptex4v2_49LevelInfoESaIS2_EE", !50, i64 0}
!52 = !{!"p1 long", !24, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIlSaIlEE", !55, i64 0}
!57 = !{!"any p2 pointer", !24, i64 0}
!58 = !{!"p2 _ZTSN4Ptex4v2_410PtexReader5LevelE", !57, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIPN4Ptex4v2_410PtexReader5LevelESaIS4_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIPN4Ptex4v2_410PtexReader5LevelESaIS4_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIPN4Ptex4v2_410PtexReader5LevelESaIS4_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIPN4Ptex4v2_410PtexReader5LevelESaIS4_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN4Ptex4v2_410PtexReader8MetaEditE", !24, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_410PtexReader8MetaEditESaIS3_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_410PtexReader8MetaEditESaIS3_EE12_Vector_implE", !64, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN4Ptex4v2_410PtexReader8MetaEditESaIS3_EE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorIN4Ptex4v2_410PtexReader8MetaEditESaIS3_EE", !66, i64 0}
!68 = !{!"p1 _ZTSN4Ptex4v2_410PtexReader8FaceEditE", !24, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_410PtexReader8FaceEditESaIS3_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_410PtexReader8FaceEditESaIS3_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN4Ptex4v2_410PtexReader8FaceEditESaIS3_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIN4Ptex4v2_410PtexReader8FaceEditESaIS3_EE", !71, i64 0}
!73 = !{!"p1 _ZTSN4Ptex4v2_411PtexHashMapINS0_10PtexReader12ReductionKeyEPNS2_8FaceDataEE5EntryE", !24, i64 0}
!74 = !{!"p2 _ZTSN4Ptex4v2_411PtexHashMapINS0_10PtexReader12ReductionKeyEPNS2_8FaceDataEE5EntryE", !57, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIPN4Ptex4v2_411PtexHashMapINS1_10PtexReader12ReductionKeyEPNS3_8FaceDataEE5EntryESaIS9_EE", !77, i64 0}
!79 = !{!"_ZTSN4Ptex4v2_411PtexHashMapINS0_10PtexReader12ReductionKeyEPNS2_8FaceDataEEE", !73, i64 0, !16, i64 8, !16, i64 12, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIcSaIcEE", !82, i64 0}
!84 = !{!"p1 _ZTS14internal_state", !24, i64 0}
!85 = !{!"_ZTS10z_stream_s", !25, i64 0, !16, i64 8, !30, i64 16, !25, i64 24, !16, i64 32, !30, i64 40, !25, i64 48, !84, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !16, i64 88, !30, i64 96, !30, i64 104}
!86 = !{!"_ZTSN4Ptex4v2_410PtexReaderE", !21, i64 0, !22, i64 8, !26, i64 48, !27, i64 64, !28, i64 72, !29, i64 80, !29, i64 81, !29, i64 82, !29, i64 83, !24, i64 88, !30, i64 96, !32, i64 104, !34, i64 136, !35, i64 200, !30, i64 240, !30, i64 248, !30, i64 256, !30, i64 264, !30, i64 272, !30, i64 280, !30, i64 288, !30, i64 296, !16, i64 304, !25, i64 312, !36, i64 320, !29, i64 328, !41, i64 336, !46, i64 360, !51, i64 384, !56, i64 408, !62, i64 432, !67, i64 456, !72, i64 480, !79, i64 504, !83, i64 544, !85, i64 568, !30, i64 680, !30, i64 688, !30, i64 696, !30, i64 704}
!87 = !{!86, !29, i64 82}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!32, !30, i64 8}
!91 = !{!86, !27, i64 64}
!92 = !{!86, !24, i64 88}
!93 = !{!31, !25, i64 0}
!94 = !{!30, !30, i64 0}
!95 = !{!32, !25, i64 0}
!96 = !{!15, !15, i64 0}
!97 = !{!86, !29, i64 81}
!98 = !{ptr @_ZN4Ptex4v2_410PtexReader9readBlockEPvib}
!99 = !{!86, !30, i64 96}
!100 = !{ptr @_ZN4Ptex4v2_410PtexReader7closeFPEv}
!101 = !{!86, !16, i64 144}
!102 = !{!16, !16, i64 0}
!103 = !{!86, !16, i64 304}
!104 = !{!86, !28, i64 72}
!105 = !{!86, !30, i64 240}
!106 = !{!86, !16, i64 168}
!107 = !{!86, !30, i64 248}
!108 = !{!86, !16, i64 172}
!109 = !{!86, !30, i64 256}
!110 = !{!86, !30, i64 264}
!111 = !{!86, !30, i64 272}
!112 = !{!86, !16, i64 192}
!113 = !{!86, !30, i64 280}
!114 = !{!86, !16, i64 208}
!115 = !{!86, !30, i64 232}
!116 = !{!86, !30, i64 296}
!117 = !{!86, !30, i64 688}
!118 = !{!86, !30, i64 680}
!119 = !{ptr @_ZN12_GLOBAL__N_116TempErrorHandlerD2Ev}
!120 = !{!29, !29, i64 0}
!121 = !{!26, !25, i64 8}
!122 = !{!86, !29, i64 80}
!123 = !{!86, !29, i64 83}
!124 = !{!79, !16, i64 8}
!125 = !{!79, !16, i64 12}
!126 = !{!"_ZTSN4Ptex4v2_410PtexReader12ReductionKeyE", !30, i64 0}
!127 = !{!126, !30, i64 0}
!128 = !{!"p1 _ZTSN4Ptex4v2_410PtexReader8FaceDataE", !24, i64 0}
!129 = !{!"_ZTSN4Ptex4v2_411PtexHashMapINS0_10PtexReader12ReductionKeyEPNS2_8FaceDataEE5EntryE", !126, i64 0, !128, i64 8}
!130 = !{!129, !128, i64 8}
!131 = !{!"llvm.loop.unroll.disable"}
!132 = !{!75, !74, i64 0}
!133 = !{!75, !74, i64 16}
!134 = !{!79, !73, i64 0}
!135 = !{!69, !68, i64 0}
!136 = !{!69, !68, i64 16}
!137 = !{!64, !63, i64 0}
!138 = !{!64, !63, i64 16}
!139 = !{!59, !58, i64 0}
!140 = !{!59, !58, i64 16}
!141 = !{!53, !52, i64 0}
!142 = !{!53, !52, i64 16}
!143 = !{!48, !47, i64 0}
!144 = !{!48, !47, i64 16}
!145 = !{!43, !42, i64 0}
!146 = !{!43, !42, i64 16}
!147 = !{!38, !37, i64 0}
!148 = !{!38, !37, i64 16}
!149 = !{!86, !25, i64 312}
!150 = !{!86, !36, i64 320}
!151 = !{!58, !58, i64 0}
!152 = !{!80, !25, i64 0}
!153 = !{!80, !25, i64 16}
!154 = !{!"p1 _ZTSN4Ptex4v2_410PtexReader5LevelE", !24, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!"p2 _ZTSN4Ptex4v2_410PtexReader8FaceDataE", !57, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseIPN4Ptex4v2_410PtexReader8FaceDataESaIS4_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!159 = !{!158, !156, i64 0}
!160 = !{!158, !156, i64 16}
!161 = !{!"p1 _ZTSN4Ptex4v2_414FaceDataHeaderE", !24, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIN4Ptex4v2_414FaceDataHeaderESaIS2_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
end_hunk_0
