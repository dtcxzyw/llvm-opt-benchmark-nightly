inline.NumInlined: 124
inline.NumDeleted: 76
begin_hunk_0_@_ZN6Assimp24MakeVerboseFormatProcess17MakeVerboseFormatEP6aiMesh:bb.a

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %i.gf = ptrtoaddr ptr %i.ge to i64
  %2 = sub i64 %i.gb, %i.fv
  %3 = add i64 %2, -8                             ; 2 uses
  %i.gg = lshr i64 %3, 3
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
end_hunk_0
begin_hunk_1_@_ZN6Assimp24MakeVerboseFormatProcess17MakeVerboseFormatEP6aiMesh:bb.a

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.jk = ptrtoaddr ptr %i.ji to i64
  %4 = sub i64 %i.iy, %i.iz
  %5 = add i64 %4, -8                             ; 2 uses
  %i.jl = lshr i64 %5, 3
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check517 = icmp ult i64 %5, 24
end_hunk_1
begin_hunk_2_@_ZN6Assimp24MakeVerboseFormatProcess17MakeVerboseFormatEP6aiMesh:bb.a
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = tail call i64 @llvm.smax.i64(i64 %i.ra, i64 -1)
  %i.rc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.rb) #11 ; 2 uses
  %i.rd = sub i64 %i.qy, %i.qz
  %i.re = and i64 %i.rd, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rc, i8 0, i64 %i.re, i1 false)
  %i.rf = load ptr, ptr %i.gz, align 8
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv283
  %i.rh = load ptr, ptr %i.rg, align 8
end_hunk_2
