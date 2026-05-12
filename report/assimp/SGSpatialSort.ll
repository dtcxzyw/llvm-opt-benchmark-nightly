inline.NumInlined: 301
inline.NumDeleted: 127
begin_hunk_0_@_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj:bb.a
bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj:bb.a
  br i1 %.not.i36.i.i, label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #13
  br label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
end_hunk_2
begin_hunk_3_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
  br i1 %5, label %.preheader, label %bb.p

.preheader:                                       ; preds = %.critedge2
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
end_hunk_3
begin_hunk_4_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
bb.l:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %4, align 8               ; 4 uses
  %i.cr = ptrtoint ptr %i.bp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775804
  br i1 %i.cu, label %bb.m, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

end_hunk_4
begin_hunk_5_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
end_hunk_5
begin_hunk_6_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a

bb.p:                                             ; preds = %.critedge2
  %.not63 = icmp eq i32 %2, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br i1 %.not63, label %.preheader114, label %.preheader116

.preheader114:                                    ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77
end_hunk_6
begin_hunk_7_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
bb.t:                                             ; preds = %bb.r
  %i.ej = load ptr, ptr %4, align 8               ; 4 uses
  %i.ek = ptrtoint ptr %i.dl to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 6 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775804
  br i1 %i.en, label %bb.u, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i71

end_hunk_7
begin_hunk_8_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
  br i1 %.not.i17.i.i75, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.em) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76: ; preds = %bb.w, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74
end_hunk_8
begin_hunk_9_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
bb.aa:                                            ; preds = %.critedge8
  %i.ge = load ptr, ptr %4, align 8               ; 4 uses
  %i.gf = ptrtoint ptr %i.fd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 6 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775804
  br i1 %i.gi, label %bb.ab, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i83

end_hunk_9
begin_hunk_10_@_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb:bb.a
  br i1 %.not.i17.i.i87, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gh) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88: ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86
end_hunk_10
