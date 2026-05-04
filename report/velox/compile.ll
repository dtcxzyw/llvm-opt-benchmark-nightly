inline.NumInlined: 1004
inline.NumDeleted: 469
begin_hunk_0_@_ZN3re28Compiler20CachedRuneByteSuffixEhhbi:bb.a
  %i.i = zext i1 %3 to i64
  %i.j = or disjoint i64 %i.h, %i.i               ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = add i64 %i.j, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.n = zext i64 %i.m to i128
end_hunk_0
begin_hunk_1_@_ZN3re28Compiler20CachedRuneByteSuffixEhhbi:bb.a
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !84
  %i.ao = icmp eq i64 %i.an, %i.j
  br i1 %i.ao, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit, label %bb.c, !prof !85

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.016.044.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN3re28Compiler20CachedRuneByteSuffixEhhbi:bb.a
  %i.av = add i64 %i.au, %.sroa.6.0.i.i
  br label %bb.b, !llvm.loop !86

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit: ; preds = %.lr.ph.i.i
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !87
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit
  %i.ay = tail call noundef i32 @_ZN3re28Compiler22UncachedRuneByteSuffixEhhbi(ptr noundef nonnull align 8 dereferenceable(204) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) ; 2 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !62, !noalias !89 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 1, i32 1), !noalias !89
end_hunk_2
begin_hunk_3_@_ZN3re28Compiler22IsCachedRuneByteSuffixEi:bb.a
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 1, i32 1)
  %i.z = add i64 %i.w, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
end_hunk_3
begin_hunk_4_@_ZN3re28Compiler22IsCachedRuneByteSuffixEi:bb.a
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !84
  %i.bb = icmp eq i64 %i.ba, %i.w
  br i1 %i.bb, label %.thread30.i.i, label %bb.c, !prof !85

.thread30.i.i:                                    ; preds = %.lr.ph.i.i
  %2 = icmp ne ptr %i.y, null
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.bc = add i16 %.sroa.016.044.i.i, -1
end_hunk_4
begin_hunk_5_@_ZN3re28Compiler22IsCachedRuneByteSuffixEi:bb.a
  %i.bi = add i64 %i.bh, %.sroa.6.0.i.i
  br label %bb.b, !llvm.loop !86

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE4findImEENSE_8iteratorERSB_.exit: ; preds = %._crit_edge.i.i, %.thread30.i.i
  %.sroa.0.4.ph.i.i = phi i1 [ %2, %.thread30.i.i ], [ false, %._crit_edge.i.i ]
  ret i1 %.sroa.0.4.ph.i.i
}

end_hunk_5
begin_hunk_6_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.g
  %i.t = phi ptr [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %.pre, %._crit_edge ]
  %.050 = phi i32 [ %i.s, %bb.g ], [ %i.q, %bb.f ], [ %1, %._crit_edge ] ; 3 uses
  %i.u = sext i32 %.050 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = or disjoint i64 %i.am, %i.ao            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 1, i32 1)
  %i.as = add i64 %i.ap, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.at = zext i64 %i.as to i128
end_hunk_7
begin_hunk_8_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !84
  %i.bu = icmp eq i64 %i.bt, %i.ap
  br i1 %i.bu, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit, label %bb.j, !prof !85

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = add i16 %.sroa.016.044.i.i.i, -1
end_hunk_8
begin_hunk_9_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %i.cb = add i64 %i.ca, %.sroa.6.0.i.i.i
  br label %bb.i, !llvm.loop !86

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit:  ; preds = %.lr.ph.i.i.i
  %.not78 = icmp eq ptr %i.ar, null
  br i1 %.not78, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a, label %bb.l

bb.l:                                             ; preds = %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit
  %i.cc = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 8 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  br i1 %i.cd, label %bb.m, label %bb.u
end_hunk_9
begin_hunk_10_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !73
  br label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit.a: ; preds = %._crit_edge.i.i.i, %bb.m, %bb.o, %bb.p, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit
  %.256 = phi i32 [ %1, %bb.p ], [ %1, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit ], [ %i.cc, %bb.m ], [ %1, %bb.o ], [ %1, %._crit_edge.i.i.i ]
  %.252 = phi i32 [ %i.cc, %bb.p ], [ %.050, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit ], [ %i.cc, %bb.m ], [ %i.cc, %bb.o ], [ %.050, %._crit_edge.i.i.i ]
  %i.dd = sext i32 %2 to i64
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !54  ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd ; 5 uses
end_hunk_10
begin_hunk_11_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %i.dw = and i16 %i.dn, 1
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = or disjoint i64 %i.dv, %i.dx            ; 2 uses
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 1, i32 1)
  %i.ea = add i64 %i.dy, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.eb = zext i64 %i.ea to i128
end_hunk_11
begin_hunk_12_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !84
  %i.fa = icmp eq i64 %i.ez, %i.dy
  br i1 %i.fa, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72, label %bb.r, !prof !85

bb.r:                                             ; preds = %.lr.ph.i.i.i65
  %i.fb = add i16 %.sroa.016.044.i.i.i66, -1
end_hunk_12
begin_hunk_13_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %i.fh = add i64 %i.fg, %.sroa.6.0.i.i.i63
  br label %bb.q, !llvm.loop !86

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72: ; preds = %.lr.ph.i.i.i65
  %.not81 = icmp eq ptr %i.dz, null
  br i1 %.not81, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a, label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a: ; preds = %._crit_edge.i.i.i68, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72
  store i32 0, ptr %i.df, align 4, !tbaa !73
  store i32 0, ptr %i.di, align 4, !tbaa !75
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN3re28Compiler18AddSuffixRecursiveEii:bb.a
  %.pre86 = load ptr, ptr %i.v, align 8, !tbaa !54
  br label %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread

_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.thread: ; preds = %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72
  %i.fl = phi ptr [ %.pre86, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72.a ], [ %i.de, %_ZN3re28Compiler22IsCachedRuneByteSuffixEi.exit72 ]
  %i.fm = sext i32 %.252 to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !73
end_hunk_14
