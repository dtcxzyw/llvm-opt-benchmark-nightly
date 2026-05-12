inline.NumInlined: 277
inline.NumDeleted: 154
begin_hunk_0_@_ZN6Assimp11IQMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = load ptr, ptr %i.be, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1120
end_hunk_0
begin_hunk_1_@_ZN6Assimp11IQMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  store ptr %2, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i32 0, ptr %i.cn, align 8
  %i.co = load i32, ptr %i.bl, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3                ; 2 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #18
          to label %bb.af unwind label %bb.y      ; 2 uses

end_hunk_1
begin_hunk_2_@_ZN6Assimp11IQMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i32 0, ptr %i.ct, align 8
  %8 = load i32, ptr %i.bl, align 4
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3                     ; 2 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %10) #18
          to label %bb.ag unwind label %bb.y      ; 2 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %10, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
end_hunk_2
begin_hunk_3_@_ZN6Assimp11IQMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.da ; 2 uses
  %11 = load i32, ptr %i.bl, align 4              ; 2 uses
  %12 = zext i32 %11 to i64
  %.idx413 = mul nuw nsw i64 %12, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx413
  %.not258409 = icmp eq i32 %11, 0
  br i1 %.not258409, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.ag
end_hunk_3
