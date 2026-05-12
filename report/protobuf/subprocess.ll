inline.NumInlined: 141
inline.NumDeleted: 72
begin_hunk_0_@_ZN6google8protobuf8compiler10Subprocess5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10SearchModeE:bb.a
  %i.b = alloca [2 x i32], align 4                ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler10Subprocess5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10SearchModeE:bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.j = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i) #27
  %i.k = add i64 %i.j, 1
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #28 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit, label %bb.f

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler10Subprocess5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10SearchModeE:bb.a
  ]

bb.m:                                             ; preds = %bb.l
  %6 = load ptr, ptr %i.c, align 16, !tbaa !18
  %i.aj = call i32 @execvp(ptr noundef %6, ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %7 = load ptr, ptr %i.c, align 16, !tbaa !18
  %i.ak = call i32 @execv(ptr noundef %7, ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler10Subprocess5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10SearchModeE:bb.a
  unreachable

bb.p:                                             ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_115portable_strdupEPKc.exit
  %8 = load ptr, ptr %i.c, align 16, !tbaa !18
  call void @free(ptr noundef %8) #25
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aq = call i32 @close(i32 noundef %i.ap)      ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_3
