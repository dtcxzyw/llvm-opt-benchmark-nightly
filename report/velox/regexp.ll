inline.NumInlined: 1589
inline.NumDeleted: 778
begin_hunk_0_@_ZN3re26Regexp6DecrefEv:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), align 8, !tbaa !27, !noalias !50 ; 7 uses
  tail call void @llvm.prefetch.p0(ptr %i.d, i32 0, i32 1, i32 1), !noalias !50
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = add i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
end_hunk_0
begin_hunk_1_@_ZN3re26Regexp6DecrefEv:bb.a
  store ptr %0, ptr %i.av, align 8, !tbaa !40, !noalias !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !42, !noalias !50
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), align 8, !tbaa !27, !noalias !50
  br label %bb.f

.loopexit40:                                      ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN3re26Regexp6DecrefEv:bb.a

bb.f:                                             ; preds = %.loopexit40.thread, %.loopexit40
  %i.az = phi i32 [ -1, %.loopexit40.thread ], [ %i.ax, %.loopexit40 ]
  %1 = phi ptr [ %.pre.i, %.loopexit40.thread ], [ %i.d, %.loopexit40 ] ; 3 uses
  %2 = trunc i32 %i.az to i16
  store i16 %2, ptr %i.a, align 4, !tbaa !14
  tail call void @llvm.prefetch.p0(ptr %1, i32 0, i32 1, i32 1)
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 24), align 8, !tbaa !32, !noalias !56 ; 2 uses
  %i.bb = ptrtoint ptr %1 to i64
  %i.bc = lshr i64 %i.bb, 12
  %i.bd = xor i64 %i.bc, %i.s
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !tbaa !39
end_hunk_2
begin_hunk_3_@_ZN3re26Regexp6DecrefEv:bb.a
  %.pn.i.i.i = phi i64 [ %i.bd, %bb.f ], [ %i.bw, %bb.i ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bv, %bb.i ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.ba    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.6.0.i.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !16 ; 3 uses
  %i.bh = icmp eq <16 x i8> %i.z, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3re26Regexp6DecrefEv:bb.a
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = icmp eq ptr %i.bo, %0
  br i1 %i.bp, label %bb.j, label %bb.h, !prof !37

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = add i16 %.sroa.016.044.i.i.i, -1
end_hunk_4
begin_hunk_5_@_ZN3re26Regexp6DecrefEv:bb.a
  %i.bw = add i64 %i.bv, %.sroa.6.0.i.i.i
  br label %bb.g, !llvm.loop !59

bb.j:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_ZN4absl12lts_2024011618container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), i64 noundef %i.bm, i64 noundef 16)
          to label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit unwind label %bb.l

end_hunk_5
begin_hunk_6_@_ZN3re26Regexp6DecrefEv:bb.a
  br label %bb.s

bb.m:                                             ; preds = %.loopexit40
  tail call void @llvm.prefetch.p0(ptr %i.d, i32 0, i32 1, i32 1), !noalias !61
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 24), align 8, !tbaa !32, !noalias !64 ; 2 uses
  %i.ca = ptrtoint ptr %i.d to i64
  %i.cb = lshr i64 %i.ca, 12
  %i.cc = xor i64 %i.cb, %i.s
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !noalias !61 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN3re26Regexp6DecrefEv:bb.a
  %.pn.i.i14 = phi i64 [ %i.cc, %bb.m ], [ %i.cv, %bb.o ]
  %.sroa.12.0.i.i15 = phi i64 [ 0, %bb.m ], [ %i.cu, %bb.o ]
  %.sroa.6.0.i.i16 = and i64 %.pn.i.i14, %i.bz    ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.6.0.i.i16
  %i.cf = load <16 x i8>, ptr %i.ce, align 1, !tbaa !16, !noalias !61 ; 3 uses
  %i.cg = icmp eq <16 x i8> %i.z, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN3re26Regexp6DecrefEv:bb.a
          cleanup
  br label %bb.s

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit: ; preds = %._crit_edge.i.i.i, %bb.j, %.loopexit
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.r

end_hunk_8
