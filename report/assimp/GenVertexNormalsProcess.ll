inline.NumInlined: 219
inline.NumDeleted: 155
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
bb.l:                                             ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit
  %i.dk = zext i32 %2 to i64
  %i.dl = load ptr, ptr %i.di, align 8
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dl, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load float, ptr %i.dn, align 8
  br label %bb.o

.thread:                                          ; preds = %.noexc, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit, %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load i32, ptr %i.j, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %.098243 = phi i32 [ 0, %.lr.ph244 ], [ %i.gk, %bb.y ]
  %.sroa.14182.0240 = phi float [ 0.000000e+00, %.lr.ph244 ], [ %.sroa.14182.1, %bb.y ] ; 2 uses
  %i.fu = phi <2 x float> [ zeroinitializer, %.lr.ph244 ], [ %i.gj, %bb.y ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ft
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [12 x i8], ptr %i.fg, i64 %i.fx ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
.lr.ph249:                                        ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152, %.lr.ph249
  %i.gn = phi i64 [ %i.gz, %.lr.ph249 ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152 ]
  %.097248 = phi i32 [ %i.gy, %.lr.ph249 ], [ 0, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.gq ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %.0256 = phi i32 [ %i.ix, %bb.ag ], [ 0, %bb.ab ]
  %.sroa.14.0253 = phi float [ %.sroa.14.1, %bb.ag ], [ 0.000000e+00, %bb.ab ] ; 3 uses
  %i.ig = phi <2 x float> [ %i.iw, %bb.ag ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.if
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = zext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.hl, i64 %i.ij ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e
end_hunk_4
