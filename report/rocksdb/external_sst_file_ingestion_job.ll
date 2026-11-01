Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_sst_file_ingestion_job?download=true
inline.NumInlined: 4284
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@__cxx_global_array_dtor.27:bb.a
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #29
  br label %_ZN7rocksdb9StateInfoD2Ev.exit

_ZN7rocksdb9StateInfoD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24)
  br i1 %i.f, label %_ZN7rocksdb9StateInfoD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24), align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZN7rocksdb9StateInfoD2Ev.exit.1

_ZN7rocksdb9StateInfoD2Ev.exit.1:                 ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.35(ptr nofree readnone captures(none) %0) #2 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !44 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), align 16, !tbaa !45
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !44 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !44 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), align 16, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !44 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104)
  br i1 %i.n, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !45
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3

_ZN7rocksdb17OperationPropertyD2Ev.exit.3:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !44 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64)
  br i1 %i.r, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !45
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4

_ZN7rocksdb17OperationPropertyD2Ev.exit.4:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24)
  br i1 %i.v, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), align 8, !tbaa !45
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5

_ZN7rocksdb17OperationPropertyD2Ev.exit.5:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.38(ptr nofree readnone captures(none) %0) #2 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 88), align 8, !tbaa !44 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104), align 8, !tbaa !45
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 48), align 16, !tbaa !44 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64), align 16, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24), align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb27ExternalSstFileIngestionJob7PrepareERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_SB_RKS1_IPKNS_16PreparedFileInfoESaISE_EERKSt8optionalINS_8RangeOptEERKNS_11TemperatureEmPNS_12SuperVersionE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(17528) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %7, i64 noundef %8, ptr noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %11 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 6 uses
  %18 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 6 uses
  %19 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 7 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %22 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 7 uses
  %23 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %25 = alloca %"class.rocksdb::Status", align 8  ; 50 uses
  %26 = alloca %"struct.rocksdb::IngestedFileInfo", align 8 ; 21 uses
  %27 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %31 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %32 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %33 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %34 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %35 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %36 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::tuple.257", align 8   ; 7 uses
  %40 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %41 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %42 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %43 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %44 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %45 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %46 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %47 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %48 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %51 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %52 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %53 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %54 = alloca %"class.rocksdb::IOStatus", align 8 ; 10 uses
  %55 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %56 = alloca %"struct.rocksdb::FileOptions", align 8 ; 28 uses
  %57 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %62 = alloca %"class.std::optional.297", align 8 ; 9 uses
  %63 = alloca %"class.std::optional.297", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %65 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %66 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %67 = alloca %"struct.rocksdb::DirFsyncOptions", align 8 ; 7 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %69 = alloca %"class.std::vector", align 8      ; 16 uses
  %70 = alloca %"class.std::vector", align 8      ; 17 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %74 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 19 uses
  %75 = alloca %"struct.rocksdb::FileOptions", align 8 ; 28 uses
  %76 = alloca %"class.rocksdb::IOStatus", align 8 ; 8 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %78 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %79 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %88 = alloca %"class.std::allocator", align 1   ; 4 uses
  %89 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %90 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %91 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %100 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %102 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %103 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %104 = alloca %"struct.rocksdb::FileChecksumGenContext", align 8 ; 15 uses
  %105 = alloca %"class.std::unique_ptr.328", align 8 ; 10 uses
  %106 = alloca %"class.rocksdb::Status", align 8 ; 6 uses
  %107 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %116 = alloca %"class.std::allocator", align 1  ; 4 uses
  %117 = alloca %"class.std::allocator", align 1  ; 5 uses
  %118 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %119 = alloca %"class.rocksdb::Status", align 8 ; 6 uses
  %120 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %121 = alloca %"class.rocksdb::Slice", align 8  ; 6 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.b = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 19 uses
  store ptr null, ptr %i.b, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %.not2621206.not = icmp eq ptr %i.d, %i.e
  br i1 %.not2621206.not, label %.critedge355, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %26, i64 1160
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9876
  %i.h = getelementptr inbounds nuw i8, ptr %26, i64 1185
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %27, i64 5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %26, i64 200
  %i.p = load i32, ptr @_ZN7rocksdb31TablePropertiesCollectorFactory7Context20kUnknownColumnFamilyE, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9874
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 184
  %i.t = getelementptr inbounds nuw i8, ptr %26, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9808 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9816
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9800
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9792
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit
  %i.am = phi ptr [ %i.e, %.lr.ph ], [ %i.ds, %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit ]
  %.01691208 = phi i64 [ %8, %.lr.ph ], [ %i.aw, %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit ] ; 2 uses
  %.01701207 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.01701207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  invoke void @_ZN7rocksdb16IngestedFileInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(1208) %26)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ao = load i8, ptr %7, align 1, !tbaa !788
  store i8 %i.ao, ptr %i.f, align 8, !tbaa !75
  %i.ap = load i8, ptr %i.g, align 4, !tbaa !789, !range !174, !noundef !175
  store i8 %i.ap, ptr %i.h, align 1, !tbaa !176
  %i.aq = load ptr, ptr %5, align 8, !tbaa !791   ; 2 uses
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !791
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.01701207
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !793
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.av = phi ptr [ %i.au, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.aw = add i64 %.01691208, 1
  invoke void @_ZN7rocksdb27ExternalSstFileIngestionJob19GetIngestedFileInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPKNS_16PreparedFileInfoEPNS_16IngestedFileInfoEPNS_12SuperVersionE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %27, ptr noundef nonnull align 8 dereferenceable(17528) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %.01691208, ptr noundef %i.av, ptr noundef nonnull %26, ptr noundef %9)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ax = load <4 x i8>, ptr %27, align 8, !tbaa !45
  store <4 x i8> %i.ax, ptr %25, align 8, !tbaa !45
  store <4 x i8> zeroinitializer, ptr %27, align 8, !tbaa !45
  %i.ay = load i8, ptr %i.j, align 4, !tbaa !177, !range !174, !noundef !175
  store i8 %i.ay, ptr %i.k, align 4, !tbaa !187
  store i8 0, ptr %i.j, align 4, !tbaa !187
  %i.az = load i8, ptr %i.l, align 1, !tbaa !45
  store i8 %i.az, ptr %i.m, align 1, !tbaa !188
  store i8 0, ptr %i.l, align 1, !tbaa !188
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !189
  store ptr null, ptr %i.n, align 8, !tbaa !189
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !189 ; 2 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !189
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #29
  %.pr = load ptr, ptr %i.n, align 8, !tbaa !189  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #29
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.f, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.bc = load i8, ptr %25, align 8, !tbaa !190
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !191, !nonnull !175, !align !192
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bi = load ptr, ptr %28, align 8, !tbaa !44
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull @.str.39, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.bg, ptr noundef %i.bi)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %28, align 8, !tbaa !44   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !45
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i377 = icmp eq ptr %0, %25
  br i1 %.not.i.i377, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load <4 x i8>, ptr %25, align 8, !tbaa !45
  store <4 x i8> %i.bp, ptr %0, align 8, !tbaa !45
  store <4 x i8> zeroinitializer, ptr %25, align 8, !tbaa !45
  %i.bq = load i8, ptr %i.k, align 4, !tbaa !177, !range !174, !noundef !175
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !187
  store i8 0, ptr %i.k, align 4, !tbaa !187
  %i.bs = load i8, ptr %i.m, align 1, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5
end_hunk_0
begin_hunk_1_@_ZN7rocksdb27ExternalSstFileIngestionJob7PrepareERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_SB_RKS1_IPKNS_16PreparedFileInfoESaISE_EERKSt8optionalINS_8RangeOptEERKNS_11TemperatureEmPNS_12SuperVersionE:bb.a
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 56
  %i.aev = load ptr, ptr %68, align 8, !tbaa !44
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.aeu, ptr noundef nonnull @.str.53, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i64 noundef %i.adb, ptr noundef %i.aev)
          to label %bb.fn unwind label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.aew = load ptr, ptr %68, align 8, !tbaa !44  ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.aey = icmp eq ptr %i.aew, %i.aex
  br i1 %i.aey, label %.loopexit1024, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538: ; preds = %bb.fn
  %i.aez = load i64, ptr %i.aex, align 8, !tbaa !45
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.afa) #29
  br label %.loopexit1024

bb.fo:                                            ; preds = %bb.fg
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit544

bb.fp:                                            ; preds = %bb.fh
  %i.afc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afd = load ptr, ptr %i.acx, align 8, !tbaa !44 ; 2 uses
  %i.afe = icmp eq ptr %i.afd, %i.acy
  br i1 %i.afe, label %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i541: ; preds = %bb.fp
  %i.aff = load i64, ptr %i.acy, align 8, !tbaa !45
  %i.afg = add i64 %i.aff, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afg) #29
  br label %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit544

_ZN7rocksdb15DirFsyncOptionsD2Ev.exit544:         ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i541, %bb.fo
  %.pn294 = phi { ptr, i32 } [ %i.afb, %bb.fo ], [ %i.afc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i541 ], [ %i.afc, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.acl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  br label %bb.lc

bb.fq:                                            ; preds = %bb.fl
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

bb.fr:                                            ; preds = %bb.fm
  %i.afi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afj = load ptr, ptr %68, align 8, !tbaa !44  ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.afl = icmp eq ptr %i.afj, %i.afk
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %bb.fr
  %i.afm = load i64, ptr %i.afk, align 8, !tbaa !45
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afj, i64 noundef %i.afn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545, %bb.fq
  %.pn297 = phi { ptr, i32 } [ %i.afh, %bb.fq ], [ %i.afi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %i.afi, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #27
  br label %bb.lc

.critedge361:                                     ; preds = %bb.fk
  %i.afo = load ptr, ptr %.sroa.0954.01213, align 8, !tbaa !458 ; 2 uses
  %i.afp = icmp eq ptr %i.afo, null
  br i1 %i.afp, label %.loopexit1024.thread, label %bb.fg

.loopexit1024:                                    ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #27
  %.pr982.pre = load i8, ptr %25, align 8, !tbaa !190
  %i.afq = icmp eq i8 %.pr982.pre, 0
  br i1 %i.afq, label %.loopexit1024.thread, label %.thread1005

.loopexit1024.thread:                             ; preds = %.critedge361, %bb.fe, %.loopexit1024
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !191, !nonnull !175, !align !192
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 408
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !479
  %.not.i548 = icmp eq ptr %i.afu, null
  br i1 %.not.i548, label %.thread1596, label %bb.fs

bb.fs:                                            ; preds = %.loopexit1024.thread
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 9872 ; 2 uses
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !811, !range !174, !noundef !175
  %i.afx = icmp eq i8 %i.afw, 0
  br i1 %i.afx, label %bb.ft, label %.preheader1016

bb.ft:                                            ; preds = %bb.fs
  %i.afy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !51
  %i.aga = load ptr, ptr %3, align 8, !tbaa !52
  %i.agb = ptrtoint ptr %i.afz to i64
  %i.agc = ptrtoint ptr %i.aga to i64
  %i.agd = sub i64 %i.agb, %i.agc                 ; 2 uses
  %i.age = ashr exact i64 %i.agd, 5
  %i.agf = load i64, ptr %i.dx, align 8, !tbaa !392
  %i.agg = load ptr, ptr %i.ea, align 8, !tbaa !394
  %i.agh = load ptr, ptr %i.dz, align 8, !tbaa !397
  %i.agi = ptrtoint ptr %i.agg to i64
  %i.agj = ptrtoint ptr %i.agh to i64
  %i.agk = sub i64 %i.agi, %i.agj
  %i.agl = sdiv exact i64 %i.agk, 1208
  %i.agm = add i64 %i.agl, %i.agf
  %i.agn = icmp eq i64 %i.age, %i.agm
  br i1 %i.agn, label %bb.fu, label %.preheader1016

bb.fu:                                            ; preds = %bb.ft
  %i.ago = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !51
  %i.agq = load ptr, ptr %4, align 8, !tbaa !52
  %i.agr = ptrtoint ptr %i.agp to i64
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = icmp eq i64 %i.agt, %i.agd
  br i1 %i.agu, label %bb.fv, label %.preheader1016

bb.fv:                                            ; preds = %bb.fu
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 17449
  store i8 0, ptr %i.agv, align 1, !tbaa !812
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  br label %.loopexit1017.thread

.preheader1016:                                   ; preds = %bb.fs, %bb.ft, %bb.fu
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 17449
  store i8 1, ptr %i.agw, align 1, !tbaa !812
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  %i.agx = load i64, ptr %i.dx, align 8, !tbaa !392
  %i.agy = load ptr, ptr %i.ea, align 8, !tbaa !394
  %i.agz = load ptr, ptr %i.dz, align 8, !tbaa !397
  %i.aha = ptrtoint ptr %i.agy to i64
  %i.ahb = ptrtoint ptr %i.agz to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  %i.ahd = sdiv exact i64 %i.ahc, 1208
  %i.ahe = sub i64 0, %i.agx
  %.not1222 = icmp eq i64 %i.ahd, %i.ahe
  br i1 %.not1222, label %.loopexit1017.thread, label %.lr.ph1217

.lr.ph1217:                                       ; preds = %.preheader1016
  %i.ahf = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 6 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 6 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 9 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %74, i64 44
  %i.ahn = getelementptr inbounds nuw i8, ptr %74, i64 48
  %i.aho = getelementptr inbounds nuw i8, ptr %74, i64 64
  %i.ahp = getelementptr inbounds nuw i8, ptr %74, i64 72
  %i.ahq = getelementptr inbounds nuw i8, ptr %74, i64 76
  %i.ahr = getelementptr inbounds nuw i8, ptr %74, i64 80
  %i.ahs = getelementptr inbounds nuw i8, ptr %74, i64 120 ; 5 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %74, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %74, i64 153
  %i.ahv = getelementptr inbounds nuw i8, ptr %74, i64 154
  %i.ahw = getelementptr inbounds nuw i8, ptr %74, i64 160
  %i.ahx = getelementptr inbounds nuw i8, ptr %74, i64 176
  %i.ahy = getelementptr inbounds nuw i8, ptr %74, i64 184
  %i.ahz = getelementptr inbounds nuw i8, ptr %75, i64 48
  %i.aia = getelementptr inbounds nuw i8, ptr %75, i64 56
  %i.aib = getelementptr inbounds nuw i8, ptr %75, i64 60
  %i.aic = getelementptr inbounds nuw i8, ptr %75, i64 64
  %i.aid = getelementptr inbounds nuw i8, ptr %75, i64 72 ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %75, i64 120 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %75, i64 80 ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %75, i64 88 ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %75, i64 104
  %i.aii = getelementptr inbounds nuw i8, ptr %75, i64 112
  %i.aij = getelementptr inbounds nuw i8, ptr %75, i64 131
  %i.aik = getelementptr inbounds nuw i8, ptr %75, i64 136
  %i.ail = getelementptr inbounds nuw i8, ptr %75, i64 137
  %i.aim = getelementptr inbounds nuw i8, ptr %75, i64 138
  %i.ain = getelementptr inbounds nuw i8, ptr %75, i64 140
  %i.aio = getelementptr inbounds nuw i8, ptr %75, i64 144 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %75, i64 160 ; 4 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %75, i64 152
  %i.air = getelementptr inbounds nuw i8, ptr %75, i64 176 ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %75, i64 192 ; 4 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %75, i64 184 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %75, i64 208
  %i.aiv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 9792 ; 4 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 9864
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 17456
  %i.ajb = getelementptr inbounds nuw i8, ptr %76, i64 1
  %i.ajc = getelementptr inbounds nuw i8, ptr %25, i64 1
  %i.ajd = getelementptr inbounds nuw i8, ptr %76, i64 5
  %i.aje = getelementptr inbounds nuw i8, ptr %25, i64 5
  %i.ajf = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 4 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 9855
  %i.aji = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.ajk = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.ajm = getelementptr inbounds nuw i8, ptr %74, i64 136 ; 2 uses
  br label %bb.fx

bb.fw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit634
  %i.ajn = add nuw i64 %.01681215, 1              ; 2 uses
  %i.ajo = load i64, ptr %i.dx, align 8, !tbaa !392
  %i.ajp = load ptr, ptr %i.ea, align 8, !tbaa !394
  %i.ajq = load ptr, ptr %i.dz, align 8, !tbaa !397
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = ptrtoint ptr %i.ajq to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  %i.aju = sdiv exact i64 %i.ajt, 1208
  %i.ajv = add i64 %i.aju, %i.ajo
  %i.ajw = icmp ult i64 %i.ajn, %i.ajv
  br i1 %i.ajw, label %bb.fx, label %.loopexit1017, !llvm.loop !784

bb.fx:                                            ; preds = %.lr.ph1217, %bb.fw
  %.01681215 = phi i64 [ 0, %.lr.ph1217 ], [ %i.ajn, %bb.fw ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27
  store ptr %i.ahf, ptr %71, align 8, !tbaa !40
  store i64 0, ptr %i.ahg, align 8, !tbaa !46
  store i8 0, ptr %i.ahf, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #27
  store ptr %i.ahh, ptr %72, align 8, !tbaa !40
  store i64 0, ptr %i.ahi, align 8, !tbaa !46
  store i8 0, ptr %i.ahh, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  %i.ajx = load ptr, ptr %i.ahj, align 8, !tbaa !51
  %i.ajy = load ptr, ptr %4, align 8, !tbaa !52   ; 2 uses
  %i.ajz = ptrtoint ptr %i.ajx to i64
  %i.aka = ptrtoint ptr %i.ajy to i64
  %i.akb = sub i64 %i.ajz, %i.aka
  %i.akc = ashr exact i64 %i.akb, 5
  %.not300 = icmp ult i64 %.01681215, %i.akc
  br i1 %.not300, label %bb.fy, label %._crit_edge.i.i557

bb.fy:                                            ; preds = %bb.fx
  %i.akd = getelementptr inbounds nuw [32 x i8], ptr %i.ajy, i64 %.01681215 ; 2 uses
  store ptr %i.ahk, ptr %73, align 8, !tbaa !40
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !44 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akg = load i64, ptr %i.akf, align 8, !tbaa !46 ; 8 uses
  %i.akh = icmp ugt i64 %i.akg, 15
  br i1 %i.akh, label %bb.fz, label %._crit_edge.i.i549

bb.fz:                                            ; preds = %bb.fy
  %i.aki = icmp slt i64 %i.akg, 0
  br i1 %i.aki, label %.noexc.i552, label %bb.ga

.noexc.i552:                                      ; preds = %bb.fz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #26
          to label %.noexc553 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc553:                                        ; preds = %.noexc.i552
  unreachable

bb.ga:                                            ; preds = %bb.fz
  %i.akj = add nuw i64 %i.akg, 1                  ; 2 uses
  %i.akk = icmp slt i64 %i.akj, 0
  br i1 %i.akk, label %.noexc6.i551, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i550, !prof !41

.noexc6.i551:                                     ; preds = %bb.ga
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc554 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc554:                                        ; preds = %.noexc6.i551
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i550: ; preds = %bb.ga
  %i.akl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akj) #28
          to label %.noexc555 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc555:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i550
  store ptr %i.akl, ptr %73, align 8, !tbaa !44
  store i64 %i.akg, ptr %i.ahk, align 8, !tbaa !45
  br label %._crit_edge.i.i549

._crit_edge.i.i549:                               ; preds = %.noexc555, %bb.fy
  %i.akm = phi ptr [ %i.akl, %.noexc555 ], [ %i.ahk, %bb.fy ] ; 3 uses
  switch i64 %i.akg, label %bb.gc [
    i64 1, label %bb.gb
    i64 0, label %.thread984
  ]

bb.gb:                                            ; preds = %._crit_edge.i.i549
  %i.akn = load i8, ptr %i.ake, align 1, !tbaa !45
  store i8 %i.akn, ptr %i.akm, align 1, !tbaa !45
  br label %.thread984

bb.gc:                                            ; preds = %._crit_edge.i.i549
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akm, ptr align 1 %i.ake, i64 %i.akg, i1 false)
  br label %.thread984

.thread984:                                       ; preds = %bb.gc, %bb.gb, %._crit_edge.i.i549
  store i64 %i.akg, ptr %i.ahl, align 8, !tbaa !46
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akm, i64 %i.akg
  store i8 0, ptr %i.ako, align 1, !tbaa !45
  br label %.critedge363

._crit_edge.i.i557:                               ; preds = %bb.fx
  store ptr %i.ahk, ptr %73, align 8, !tbaa !40
  store i64 0, ptr %i.ahl, align 8, !tbaa !46
  store i8 0, ptr %i.ahk, align 8, !tbaa !45
  br label %.critedge363

.critedge363:                                     ; preds = %.thread984, %._crit_edge.i.i557
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %74, i8 0, i64 44, i1 false)
  store i32 4, ptr %i.ahm, align 4, !tbaa !492
  store i64 -1, ptr %i.ahn, align 8, !tbaa !493
  store i8 0, ptr %i.aho, align 8, !tbaa !494
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ahp, align 8, !tbaa !177
  store i8 1, ptr %i.ahq, align 4, !tbaa !495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahs, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.ahr, i8 0, i64 39, i1 false)
  store i8 1, ptr %i.aht, align 8, !tbaa !496
  store i8 0, ptr %i.ahu, align 1, !tbaa !497
  store i8 0, ptr %i.ahv, align 2, !tbaa !498
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahw, i8 0, i64 16, i1 false)
  store i8 -1, ptr %i.ahx, align 8, !tbaa !499
  store ptr null, ptr %i.ahy, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #27
  invoke void @_ZN7rocksdb10EnvOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %75)
          to label %bb.gd unwind label %bb.gf

bb.gd:                                            ; preds = %.critedge363
  store i64 0, ptr %i.ahz, align 8
  store i8 0, ptr %i.aia, align 8, !tbaa !449
  store i32 4, ptr %i.aib, align 4, !tbaa !450
  store i8 7, ptr %i.aic, align 8, !tbaa !451
  store ptr %i.aie, ptr %i.aid, align 8, !tbaa !452
  store i64 1, ptr %i.aif, align 8, !tbaa !453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aig, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aih, align 8, !tbaa !424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.aii, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.aij, align 1, !tbaa !454
  store i8 0, ptr %i.aik, align 8, !tbaa !470
  store i8 0, ptr %i.ail, align 1, !tbaa !471
  store i8 1, ptr %i.aim, align 2, !tbaa !472
  store i32 0, ptr %i.ain, align 4, !tbaa !473
  store ptr %i.aip, ptr %i.aio, align 8, !tbaa !40
  store i64 0, ptr %i.aiq, align 8, !tbaa !46
  store i8 0, ptr %i.aip, align 8, !tbaa !45
  store ptr %i.ais, ptr %i.air, align 8, !tbaa !40
  store i64 0, ptr %i.ait, align 8, !tbaa !46
  store i8 0, ptr %i.ais, align 8, !tbaa !45
  store ptr null, ptr %i.aiu, align 8, !tbaa !474
  %i.akp = load ptr, ptr %i.aiv, align 8, !tbaa !51
  %i.akq = load ptr, ptr %3, align 8, !tbaa !52   ; 2 uses
  %i.akr = ptrtoint ptr %i.akp to i64
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = sub i64 %i.akr, %i.aks
  %i.aku = ashr exact i64 %i.akt, 5
  %i.akv = icmp ult i64 %.01681215, %i.aku
  br i1 %i.akv, label %bb.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit565

bb.ge:                                            ; preds = %bb.gd
  %i.akw = getelementptr inbounds nuw [32 x i8], ptr %i.akq, i64 %.01681215
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aio, ptr noundef nonnull align 8 dereferenceable(32) %i.akw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit565 unwind label %bb.gg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i550, %.noexc6.i551, %.noexc.i552
  %lpad.loopexit.split-lp1660 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

bb.gf:                                            ; preds = %.critedge363
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.gg:                                            ; preds = %bb.gi, %bb.gh, %bb.ge
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit565: ; preds = %bb.ge, %bb.gd
  %i.akz = load ptr, ptr %i.ahj, align 8, !tbaa !51
  %i.ala = load ptr, ptr %4, align 8, !tbaa !52   ; 2 uses
  %i.alb = ptrtoint ptr %i.akz to i64
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = sub i64 %i.alb, %i.alc
  %i.ale = ashr exact i64 %i.ald, 5
  %i.alf = icmp ult i64 %.01681215, %i.ale
  br i1 %i.alf, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit565
  %i.alg = getelementptr inbounds nuw [32 x i8], ptr %i.ala, i64 %.01681215
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.air, ptr noundef nonnull align 8 dereferenceable(32) %i.alg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567 unwind label %bb.gg

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit565
  %i.alh = load i64, ptr %i.ait, align 8, !tbaa !46
  %i.ali = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.air, i64 noundef 0, i64 noundef %i.alh, ptr noundef nonnull @_ZN7rocksdbL23kNoFileChecksumFuncNameE, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567 unwind label %bb.gg ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567: ; preds = %bb.gi, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #27
  %i.alj = load ptr, ptr %i.aix, align 8, !tbaa !428 ; 2 uses
  %.not.i570 = icmp eq ptr %i.alj, null
  br i1 %.not.i570, label %_ZNK7rocksdb13FileSystemPtr3getEv.exit575, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 104
  %i.all = load i8, ptr %i.alk, align 8, !tbaa !436, !range !174, !noundef !175
  %i.alm = shl nuw nsw i8 %i.all, 5
  %spec.select.idx.i571 = zext nneg i8 %i.alm to i64
  %spec.select.i572 = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %spec.select.idx.i571
  br label %_ZNK7rocksdb13FileSystemPtr3getEv.exit575

_ZNK7rocksdb13FileSystemPtr3getEv.exit575:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567, %bb.gj
  %.0.in.i573 = phi ptr [ %i.aiw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit567 ], [ %spec.select.i572, %bb.gj ]
  %.0.i574 = load ptr, ptr %.0.in.i573, align 8, !tbaa !438
  %i.aln = icmp ult i64 %.01681215, 8             ; 4 uses
  %i.alo = load ptr, ptr %i.aiy, align 8
  %i.alp = getelementptr inbounds nuw [1208 x i8], ptr %i.alo, i64 %.01681215
  %i.alq = load ptr, ptr %i.dz, align 8
  %i.alr = getelementptr [1208 x i8], ptr %i.alq, i64 %.01681215
  %i.als = getelementptr i8, ptr %i.alr, i64 -9664
  %.0.i576 = select i1 %i.aln, ptr %i.alp, ptr %i.als
  %i.alt = getelementptr inbounds nuw i8, ptr %.0.i576, i64 1048
  %i.alu = load ptr, ptr %i.afr, align 8, !tbaa !191, !nonnull !175, !align !192 ; 5 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 408
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !479
  %i.alx = load i64, ptr %i.aiz, align 8, !tbaa !501
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alu, i64 264
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !502, !range !174, !noundef !175
  %i.ama = trunc nuw i8 %i.alz to i1
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 24
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !503
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alu, i64 584
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !504
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alu, i64 576
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !505
  invoke void @_ZN7rocksdb23GenerateOneFileChecksumEPNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_22FileChecksumGenFactoryES9_PS7_SC_mbRSt10shared_ptrINS_8IOTracerEEPNS_11RateLimiterERKNS_11ReadOptionsEPNS_10StatisticsEPNS_11SystemClockERKNS_11FileOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %76, ptr noundef %.0.i574, ptr noundef nonnull align 8 dereferenceable(32) %i.alt, ptr noundef %i.alw, ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull %71, ptr noundef nonnull %72, i64 noundef %i.alx, i1 noundef zeroext %i.ama, ptr noundef nonnull align 8 dereferenceable(16) %i.aja, ptr noundef %i.amc, ptr noundef nonnull align 8 dereferenceable(192) %74, ptr noundef %i.ame, ptr noundef %i.amg, ptr noundef nonnull align 8 dereferenceable(216) %75)
          to label %bb.gk unwind label %bb.gr

bb.gk:                                            ; preds = %_ZNK7rocksdb13FileSystemPtr3getEv.exit575
  %i.amh = load i8, ptr %76, align 8, !tbaa !190  ; 2 uses
  %i.ami = icmp eq i8 %i.amh, 0                   ; 2 uses
  br i1 %i.ami, label %bb.gu, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store i8 %i.amh, ptr %25, align 8, !tbaa !190
  %123 = load <4 x i8>, ptr %i.ajb, align 1, !tbaa !45
  store <4 x i8> %123, ptr %i.ajc, align 1, !tbaa !45
  %i.amj = load i8, ptr %i.ajd, align 1, !tbaa !188
  store i8 %i.amj, ptr %i.aje, align 1, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.amk = load ptr, ptr %i.ajf, align 8, !tbaa !189 ; 2 uses
  %.not.i.i578 = icmp eq ptr %i.amk, null
  br i1 %.not.i.i578, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.amk)
          to label %.noexc585 unwind label %.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp

.noexc585:                                        ; preds = %bb.gm
  %.pre.i579 = load ptr, ptr %10, align 8, !tbaa !189
  br label %bb.gn

bb.gn:                                            ; preds = %.noexc585, %bb.gl
  %i.aml = phi ptr [ %.pre.i579, %.noexc585 ], [ null, %bb.gl ]
  store ptr null, ptr %10, align 8, !tbaa !189
  %i.amm = load ptr, ptr %i.b, align 8, !tbaa !189 ; 2 uses
  store ptr %i.aml, ptr %i.b, align 8, !tbaa !189
  %.not.i.i.i.i.i580 = icmp eq ptr %i.amm, null
  br i1 %.not.i.i.i.i.i580, label %bb.go, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i581

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i581: ; preds = %bb.gn
  call void @_ZdaPv(ptr noundef nonnull %i.amm) #29
  %.pr.i582 = load ptr, ptr %10, align 8, !tbaa !189 ; 2 uses
  %.not.i12.i583 = icmp eq ptr %.pr.i582, null
  br i1 %.not.i12.i583, label %bb.go, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i584

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i584: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i581
  call void @_ZdaPv(ptr noundef nonnull %.pr.i582) #29
  br label %bb.go

bb.go:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i584, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i581, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.amn = load ptr, ptr %i.afr, align 8, !tbaa !191, !nonnull !175, !align !192
  %i.amo = load ptr, ptr %i.aiy, align 8
  %i.amp = getelementptr inbounds nuw [1208 x i8], ptr %i.amo, i64 %.01681215
  %i.amq = load ptr, ptr %i.dz, align 8
  %i.amr = getelementptr [1208 x i8], ptr %i.amq, i64 %.01681215
  %i.ams = getelementptr i8, ptr %i.amr, i64 -9664
  %.0.i587 = select i1 %i.aln, ptr %i.amp, ptr %i.ams
  %i.amt = getelementptr inbounds nuw i8, ptr %.0.i587, i64 1048
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.gp unwind label %bb.gs

bb.gp:                                            ; preds = %bb.go
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amn, i64 56
  %i.amw = load ptr, ptr %77, align 8, !tbaa !44
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.amv, ptr noundef nonnull @.str.54, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.amu, ptr noundef %i.amw)
          to label %bb.gq unwind label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  %i.amx = load ptr, ptr %77, align 8, !tbaa !44  ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.ajg
  br i1 %i.amy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %bb.gq
  %i.amz = load i64, ptr %i.ajg, align 8, !tbaa !45
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit615

bb.gr:                                            ; preds = %_ZNK7rocksdb13FileSystemPtr3getEv.exit575
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit637

.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i608, %bb.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit596, %bb.gv, %bb.gm, %.noexc6.i.i.i.invoke, %.noexc.i.i.i.invoke
  %lpad.loopexit.split-lp1662 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.gs:                                            ; preds = %bb.go
  %i.anc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

bb.gt:                                            ; preds = %bb.gp
  %i.and = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ane = load ptr, ptr %77, align 8, !tbaa !44  ; 2 uses
  %i.anf = icmp eq ptr %i.ane, %i.ajg
  br i1 %i.anf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %bb.gt
  %i.ang = load i64, ptr %i.ajg, align 8, !tbaa !45
  %i.anh = add i64 %i.ang, 1
  call void @_ZdlPvm(ptr noundef %i.ane, i64 noundef %i.anh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591, %bb.gs
  %.pn301 = phi { ptr, i32 } [ %i.anc, %bb.gs ], [ %i.and, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591 ], [ %i.and, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  br label %bb.hl

bb.gu:                                            ; preds = %bb.gk
  %i.ani = load i8, ptr %i.ajh, align 1, !tbaa !506, !range !174, !noundef !175
  %i.anj = icmp eq i8 %i.ani, 0
  br i1 %i.anj, label %bb.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit599

bb.gv:                                            ; preds = %bb.gu
  %i.ank = load ptr, ptr %i.aiy, align 8
  %i.anl = getelementptr inbounds nuw [1208 x i8], ptr %i.ank, i64 %.01681215
  %i.anm = load ptr, ptr %i.dz, align 8
  %i.ann = getelementptr [1208 x i8], ptr %i.anm, i64 %.01681215
  %i.ano = getelementptr i8, ptr %i.ann, i64 -9664
  %.0.i594 = select i1 %i.aln, ptr %i.anl, ptr %i.ano
  %i.anp = getelementptr inbounds nuw i8, ptr %.0.i594, i64 1096
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.anp, ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit596 unwind label %.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit596: ; preds = %bb.gv
  %i.anq = load ptr, ptr %i.aiy, align 8
  %i.anr = getelementptr inbounds nuw [1208 x i8], ptr %i.anq, i64 %.01681215
  %i.ans = load ptr, ptr %i.dz, align 8
  %i.ant = getelementptr [1208 x i8], ptr %i.ans, i64 %.01681215
  %i.anu = getelementptr i8, ptr %i.ant, i64 -9664
  %.0.i597 = select i1 %i.aln, ptr %i.anr, ptr %i.anu
  %i.anv = getelementptr inbounds nuw i8, ptr %.0.i597, i64 1128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.anv, ptr noundef nonnull align 8 dereferenceable(32) %72)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit599 unwind label %.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit599: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit596, %bb.gu
  %i.anw = load ptr, ptr %i.aji, align 8, !tbaa !51 ; 6 uses
  %i.anx = load ptr, ptr %i.ajj, align 8, !tbaa !507
  %.not.i600 = icmp eq ptr %i.anw, %i.anx
  br i1 %.not.i600, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit599
  %i.any = getelementptr inbounds nuw i8, ptr %i.anw, i64 16 ; 3 uses
  store ptr %i.any, ptr %i.anw, align 8, !tbaa !40
  %i.anz = load ptr, ptr %71, align 8, !tbaa !44  ; 2 uses
  %i.aoa = load i64, ptr %i.ahg, align 8, !tbaa !46 ; 8 uses
  %i.aob = icmp ugt i64 %i.aoa, 15
  br i1 %i.aob, label %bb.gx, label %._crit_edge.i.i.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.aoc = icmp slt i64 %i.aoa, 0
  br i1 %i.aoc, label %.noexc.i.i.i.invoke, label %bb.gy

.noexc.i.i.i.invoke:                              ; preds = %bb.hd, %bb.gx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #26
          to label %.noexc.i.i.i.cont unwind label %.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.gy:                                            ; preds = %bb.gx
  %i.aod = add nuw i64 %i.aoa, 1                  ; 2 uses
  %i.aoe = icmp slt i64 %i.aod, 0
  br i1 %i.aoe, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !41

.noexc6.i.i.i.invoke:                             ; preds = %bb.he, %bb.gy
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc6.i.i.i.cont unwind label %.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i.i.cont:                               ; preds = %.noexc6.i.i.i.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.gy
  %i.aof = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aod) #28
          to label %.noexc603 unwind label %.loopexit.split-lp1020.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc603:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.aof, ptr %i.anw, align 8, !tbaa !44
  store i64 %i.aoa, ptr %i.any, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc603, %bb.gw
  %i.aog = phi ptr [ %i.aof, %.noexc603 ], [ %i.any, %bb.gw ] ; 3 uses
  switch i64 %i.aoa, label %bb.ha [
    i64 1, label %bb.gz
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.gz:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aoh = load i8, ptr %i.anz, align 1, !tbaa !45
  store i8 %i.aoh, ptr %i.aog, align 1, !tbaa !45
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.ha:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aog, ptr align 1 %i.anz, i64 %i.aoa, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.ha, %bb.gz, %._crit_edge.i.i.i.i
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  store i64 %i.aoa, ptr %i.aoi, align 8, !tbaa !46
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 %i.aoa
  store i8 0, ptr %i.aoj, align 1, !tbaa !45
  %i.aok = load ptr, ptr %i.aji, align 8, !tbaa !51
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 32
  store ptr %i.aol, ptr %i.aji, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
end_hunk_1
