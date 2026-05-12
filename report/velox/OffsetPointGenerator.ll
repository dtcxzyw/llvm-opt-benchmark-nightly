inline.NumInlined: 115
inline.NumDeleted: 90
begin_hunk_0_@_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_:bb.a
  %i.x = fadd double %i.s, %i.q                   ; 2 uses
  %i.y = fsub double %i.u, %i.o                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #11
  %.pre.pre = load ptr, ptr %i.z, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.aa, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i ] ; 3 uses
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !22
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
end_hunk_1
