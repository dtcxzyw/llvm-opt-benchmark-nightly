inline.NumInlined: 540
inline.NumDeleted: 283
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE:bb.a
bb.cd:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.gc = zext nneg i32 %i.ey to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.gc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gd) ]
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !92 ; 3 uses
  store ptr %i.ge, ptr %14, align 8, !tbaa !95
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFile11getCDLGroupEv:bb.a
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.07.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.ar, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011) ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
end_hunk_1
