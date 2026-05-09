inline.NumInlined: 10874
inline.NumDeleted: 3955
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_111ArrayLoader5VisitERKNS_9UnionTypeE:bb.a
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = tail call noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %6 = select i1 %i.b, i64 2, i64 3               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !638  ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !639  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc12_GLOBAL__N_111ArrayLoader5VisitERKNS_9UnionTypeE:bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %7 = icmp ugt i64 %6, %i.l
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 %6, %i.l
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.m)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %8 = icmp ult i64 %6, %i.l
  br i1 %8, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %6 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.lr.ph.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc12_GLOBAL__N_111ArrayLoader5VisitERKNS_9UnionTypeE:bb.a
  br i1 %i.cb, label %_ZN5arrow6StatusD2Ev.exit44, label %.critedge

_ZN5arrow6StatusD2Ev.exit44:                      ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZN5arrow6StatusD2Ev.exit38, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %9 = select i1 %i.b, i32 1, i32 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !1259
  %i.ce = add nsw i32 %i.cd, %9
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !1259
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 48
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_111ArrayLoader12LoadChildrenERKSt6vectorISt10shared_ptrINS_5FieldEESaIS6_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
end_hunk_2
