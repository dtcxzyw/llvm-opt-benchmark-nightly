inline.NumInlined: 255
inline.NumDeleted: 127
begin_hunk_0_@main:._crit_edge.i.i
          to label %.noexc65 unwind label %bb.x

.noexc65:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.r
  %.pr.i = phi ptr [ null, %bb.r ], [ %i.ca, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 12 uses
  store ptr %.pr.i, ptr %7, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_0
begin_hunk_1_@main:._crit_edge.i.i
  br label %.body

bb.y:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pr.i) ]
  %i.cl = load ptr, ptr %.pr.i, align 8, !tbaa !42
  %i.cm = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.3, ptr noundef nonnull dereferenceable(1) %i.cl) #24
  %.not = icmp eq i32 %i.cm, 0
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %1, align 8, !tbaa !67     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_3
begin_hunk_4_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.013) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !36
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !42 ; 2 uses
end_hunk_4
begin_hunk_5_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21
end_hunk_5
