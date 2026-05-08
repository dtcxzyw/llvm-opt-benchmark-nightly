inline.NumInlined: 3070
inline.NumDeleted: 1405
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.fh = load ptr, ptr %2, align 8, !tbaa !151
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !155 ; 2 uses
  store ptr %1, ptr %41, align 8, !tbaa !296, !alias.scope !731
  %66 = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  store ptr %i.fk, ptr %66, align 8, !tbaa !300, !alias.scope !731
  %i.fl = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %67 = getelementptr inbounds nuw i8, ptr %i.fj, i64 120
  store ptr %67, ptr %i.fl, align 8, !tbaa !302, !alias.scope !731
  %i.fm = getelementptr inbounds nuw i8, ptr %41, i64 24 ; 7 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !304, !alias.scope !731
  %i.fn = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 13 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24, !noalias !734
  %i.gi = load i32, ptr %i.fm, align 8, !tbaa !304
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = load ptr, ptr %66, align 8, !tbaa !318, !nonnull !77, !align !312 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !307
  %i.gn = load ptr, ptr %i.gk, align 8, !tbaa !310
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  store i32 %i.jf, ptr %i.fm, align 8, !tbaa !304
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = load ptr, ptr %66, align 8, !tbaa !318, !nonnull !77, !align !312 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !307
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !310
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br label %.lr.ph.i.i, !llvm.loop !319

bb.bk:                                            ; preds = %.noexc116.i
  %i.jq = load ptr, ptr %66, align 8, !tbaa !318, !nonnull !77, !align !312 ; 2 uses
  %i.jr = load i32, ptr %i.fm, align 8, !tbaa !304 ; 2 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !310 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a

._crit_edge94.loopexit.i:                         ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit196.i
  %.pre112.i = load i32, ptr %i.fm, align 8, !tbaa !304
  %.pre113.i = load ptr, ptr %66, align 8, !tbaa !318 ; 2 uses
  %.pre114.i = load ptr, ptr %.pre113.i, align 8, !tbaa !310
  br label %._crit_edge94.i

end_hunk_4
