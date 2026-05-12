inline.NumInlined: 666
inline.NumDeleted: 202
begin_hunk_0_@_ZN6Assimp4D3MF12D3MFExporter13export3DModelEv:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not.i = icmp eq ptr %i.cx, %i.cz
  br i1 %.not.i, label %bb.o, label %bb.n
end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3MF12D3MFExporter13export3DModelEv:bb.a
bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29
  %i.dc = load ptr, ptr %i.cv, align 8            ; 4 uses
  %i.dd = ptrtoint ptr %i.cx to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 5 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.p, label %_ZNKSt6vectorIPN6Assimp4D3MF22OpcPackageRelationshipESaIS3_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN6Assimp4D3MF12D3MFExporter13export3DModelEv:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp4D3MF22OpcPackageRelationshipESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN6Assimp4D3MF22OpcPackageRelationshipESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %3 = load ptr, ptr %i.cy, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %5) #21
  br label %_ZNSt6vectorIPN6Assimp4D3MF22OpcPackageRelationshipESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp4D3MF22OpcPackageRelationshipESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN6Assimp4D3MF22OpcPackageRelationshipESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
end_hunk_2
begin_hunk_3_@_ZN6Assimp4D3MF12D3MFExporter12writeObjectsEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %bb.r
end_hunk_3
begin_hunk_4_@_ZN6Assimp4D3MF12D3MFExporter12writeObjectsEv:bb.a
bb.h:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %i.j, align 8             ; 4 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

end_hunk_4
begin_hunk_5_@_ZN6Assimp4D3MF12D3MFExporter12writeObjectsEv:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %1 = load ptr, ptr %i.l, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %3) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
end_hunk_5
