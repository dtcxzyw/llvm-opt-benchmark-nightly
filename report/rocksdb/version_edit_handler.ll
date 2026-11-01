Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_edit_handler?download=true
inline.NumInlined: 3390
inline.NumDeleted: 1650
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@__cxx_global_array_dtor.27:bb.a
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #31
  br label %_ZN7rocksdb9StateInfoD2Ev.exit.1

_ZN7rocksdb9StateInfoD2Ev.exit.1:                 ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.35(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), align 16, !tbaa !34
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !33 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !33 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), align 16, !tbaa !34
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !33 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104)
  br i1 %i.n, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3

_ZN7rocksdb17OperationPropertyD2Ev.exit.3:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !33 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64)
  br i1 %i.r, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !34
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4

_ZN7rocksdb17OperationPropertyD2Ev.exit.4:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !33 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24)
  br i1 %i.v, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), align 8, !tbaa !34
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5

_ZN7rocksdb17OperationPropertyD2Ev.exit.5:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.38(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 88), align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104), align 8, !tbaa !34
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 48), align 16, !tbaa !33 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64), align 16, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 8), align 8, !tbaa !33 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24), align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #31
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22VersionEditHandlerBase7IterateERNS_3log6ReaderEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 28 uses
  %9 = alloca %"class.rocksdb::VersionEdit", align 8 ; 48 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr @.str, ptr %6, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !39
  store i8 0, ptr %i.d, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %.preheader unwind label %bb.l

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 328
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 356 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 357
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 376 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 392
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 393
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 400
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 416 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 408
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 3848
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 456
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 3856
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 7296
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 3904
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 7304
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 7344
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 7424
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 7360
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 7432
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.thread
  %i.bx = invoke noundef i64 @_ZN7rocksdb3log6Reader13LastRecordEndEv(ptr noundef nonnull align 8 dereferenceable(288) %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.by = load i64, ptr %i.i, align 8, !tbaa !61
  %i.bz = icmp ult i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.ca = load i8, ptr %8, align 8, !tbaa !62
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.e, label %_ZN7rocksdb6StatusaSERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.cc = load ptr, ptr %1, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef signext 0, ptr noundef null)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  br i1 %i.cf, label %bb.g, label %bb.aj

bb.g:                                             ; preds = %bb.f
  %i.cg = load i8, ptr %2, align 8, !tbaa !62
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.h, label %bb.aj

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store i32 0, ptr %9, align 8, !tbaa !113
  store ptr %i.k, ptr %i.j, align 8, !tbaa !38
  store i64 0, ptr %i.l, align 8, !tbaa !39
  store i8 0, ptr %i.k, align 8, !tbaa !34
  store ptr %i.n, ptr %i.m, align 8, !tbaa !38
  store i64 0, ptr %i.o, align 8, !tbaa !39
  store i8 0, ptr %i.n, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.s, align 8, !tbaa !114
  store ptr null, ptr %i.t, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.q, i8 0, i64 25, i1 false)
  store ptr %i.s, ptr %i.u, align 8, !tbaa !116
  store ptr %i.s, ptr %i.v, align 8, !tbaa !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %i.w, i8 0, i64 119, i1 false)
  store ptr %i.y, ptr %i.x, align 8, !tbaa !38
  store i64 0, ptr %i.z, align 8, !tbaa !39
  store i8 0, ptr %i.y, align 8, !tbaa !34
  store i32 0, ptr %i.aa, align 8, !tbaa !118
  store i8 0, ptr %i.ab, align 4, !tbaa !119
  store i8 0, ptr %i.ac, align 1, !tbaa !120
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !38
  store i64 0, ptr %i.af, align 8, !tbaa !39
  store i8 0, ptr %i.ae, align 8, !tbaa !34
  store i8 1, ptr %i.ag, align 8, !tbaa !121
  store i8 0, ptr %i.ah, align 1, !tbaa !122
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !38
  store i64 0, ptr %i.ak, align 8, !tbaa !39
  store i8 0, ptr %i.aj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store ptr %i.an, ptr %i.am, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ar, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.au, ptr %i.at, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN7rocksdb11VersionEdit10DecodeFromERKNS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(7456) %9, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ci = load <4 x i8>, ptr %10, align 8, !tbaa !34
  store <4 x i8> %i.ci, ptr %8, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %10, align 8, !tbaa !34
  %i.cj = load i8, ptr %i.ay, align 4, !tbaa !125, !range !126, !noundef !127
  store i8 %i.cj, ptr %i.az, align 4, !tbaa !128
  store i8 0, ptr %i.ay, align 4, !tbaa !128
  %i.ck = load i8, ptr %i.ba, align 1, !tbaa !34
  store i8 %i.ck, ptr %i.bb, align 1, !tbaa !129
  store i8 0, ptr %i.ba, align 1, !tbaa !129
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !130
  store ptr null, ptr %i.bc, align 8, !tbaa !130
  %i.cm = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  store ptr %i.cl, ptr %i.bd, align 8, !tbaa !130
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #31
  %.pr = load ptr, ptr %i.bc, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #31
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.cn = load i8, ptr %8, align 8, !tbaa !62
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN7rocksdb21AtomicGroupReadBuffer7AddEditEPNS_11VersionEditE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull %9)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cp = load <4 x i8>, ptr %11, align 8, !tbaa !34
  store <4 x i8> %i.cp, ptr %8, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %11, align 8, !tbaa !34
  %i.cq = load i8, ptr %i.bf, align 4, !tbaa !125, !range !126, !noundef !127
  store i8 %i.cq, ptr %i.az, align 4, !tbaa !128
  store i8 0, ptr %i.bf, align 4, !tbaa !128
  %i.cr = load i8, ptr %i.bg, align 1, !tbaa !34
  store i8 %i.cr, ptr %i.bb, align 1, !tbaa !129
  store i8 0, ptr %i.bg, align 1, !tbaa !129
  %i.cs = load ptr, ptr %i.bh, align 8, !tbaa !130
  store ptr null, ptr %i.bh, align 8, !tbaa !130
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  store ptr %i.cs, ptr %i.bd, align 8, !tbaa !130
  %.not.i.i.i.i.i53 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i53, label %_ZN7rocksdb6StatusaSEOS0_.exit55.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit55

_ZN7rocksdb6StatusaSEOS0_.exit55:                 ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ct) #31
  %.pr146 = load ptr, ptr %i.bh, align 8, !tbaa !130 ; 2 uses
  %.not.i.i56 = icmp eq ptr %.pr146, null
  br i1 %.not.i.i56, label %_ZN7rocksdb6StatusaSEOS0_.exit55.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i57

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i57: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit55
  call void @_ZdaPv(ptr noundef nonnull %.pr146) #31
  br label %_ZN7rocksdb6StatusaSEOS0_.exit55.thread

bb.l:                                             ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit141

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b, %bb.bm, %bb.am, %_ZN7rocksdb6StatusaSERKS0_.exit
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.h
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ai

bb.n:                                             ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.ai

_ZN7rocksdb6StatusaSEOS0_.exit55.thread:          ; preds = %bb.k, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i57, %_ZN7rocksdb6StatusaSEOS0_.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %.pr148 = load i8, ptr %8, align 8, !tbaa !62
  %i.cx = icmp eq i8 %.pr148, 0
  br i1 %i.cx, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit55.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !132
  %i.cy = load i8, ptr %i.ab, align 4, !tbaa !119, !range !126, !noundef !127
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.da = invoke noundef zeroext i1 @_ZNK7rocksdb21AtomicGroupReadBuffer6IsFullEv(ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %bb.q unwind label %bb.x
end_hunk_0
begin_hunk_1_@_ZN7rocksdb22VersionEditHandlerBase7IterateERNS_3log6ReaderEPNS_6StatusE:bb.a
  %.pr153 = load i8, ptr %8, align 8, !tbaa !62
  %i.dk = icmp eq i8 %.pr153, 0
  br i1 %i.dk, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %_ZN7rocksdb6StatusD2Ev.exit64, %_ZN7rocksdb6StatusaSEOS0_.exit67.thread
  %.0165 = phi i64 [ %i.ee, %_ZN7rocksdb6StatusaSEOS0_.exit67.thread ], [ 0, %_ZN7rocksdb6StatusD2Ev.exit64 ] ; 3 uses
  %i.dl = load ptr, ptr %i.bq, align 8, !tbaa !134
  %i.dm = load ptr, ptr %i.bp, align 8, !tbaa !135 ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = sdiv exact i64 %i.dp, 7456
  %i.dr = icmp ult i64 %.0165, %i.dq
  br i1 %i.dr, label %bb.v, label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ah

bb.v:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw [7456 x i8], ptr %i.dm, i64 %.0165
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.du = load ptr, ptr %0, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(7456) %i.dt, ptr noundef nonnull %i.b)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dx = load <4 x i8>, ptr %13, align 8, !tbaa !34
  store <4 x i8> %i.dx, ptr %8, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %13, align 8, !tbaa !34
  %i.dy = load i8, ptr %i.br, align 4, !tbaa !125, !range !126, !noundef !127
  store i8 %i.dy, ptr %i.az, align 4, !tbaa !128
  store i8 0, ptr %i.br, align 4, !tbaa !128
  %i.dz = load i8, ptr %i.bs, align 1, !tbaa !34
  store i8 %i.dz, ptr %i.bb, align 1, !tbaa !129
  store i8 0, ptr %i.bs, align 1, !tbaa !129
  %i.ea = load ptr, ptr %i.bt, align 8, !tbaa !130
  store ptr null, ptr %i.bt, align 8, !tbaa !130
  %i.eb = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  store ptr %i.ea, ptr %i.bd, align 8, !tbaa !130
  %.not.i.i.i.i.i65 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i65, label %_ZN7rocksdb6StatusaSEOS0_.exit67.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit67

_ZN7rocksdb6StatusaSEOS0_.exit67:                 ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #31
  %.pr151 = load ptr, ptr %i.bt, align 8, !tbaa !130 ; 2 uses
  %.not.i.i68 = icmp eq ptr %.pr151, null
  br i1 %.not.i.i68, label %_ZN7rocksdb6StatusaSEOS0_.exit67.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i69

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i69: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit67
  call void @_ZdaPv(ptr noundef nonnull %.pr151) #31
  br label %_ZN7rocksdb6StatusaSEOS0_.exit67.thread

_ZN7rocksdb6StatusaSEOS0_.exit67.thread:          ; preds = %bb.w, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i69, %_ZN7rocksdb6StatusaSEOS0_.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ec = load i8, ptr %8, align 8, !tbaa !62
  %i.ed = icmp eq i8 %i.ec, 0
  %i.ee = add nuw i64 %.0165, 1
  br i1 %i.ed, label %.lr.ph, label %.critedge2, !llvm.loop !690

bb.x:                                             ; preds = %bb.ad, %bb.z, %bb.r, %bb.p
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %bb.v
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.ah

bb.z:                                             ; preds = %.lr.ph
  invoke void @_ZN7rocksdb21AtomicGroupReadBuffer5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.eh = load ptr, ptr %0, align 8, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load <4 x i8>, ptr %14, align 8, !tbaa !34
  store <4 x i8> %i.ek, ptr %8, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !34
  %i.el = load i8, ptr %i.bu, align 4, !tbaa !125, !range !126, !noundef !127
  store i8 %i.el, ptr %i.az, align 4, !tbaa !128
  store i8 0, ptr %i.bu, align 4, !tbaa !128
  %i.em = load i8, ptr %i.bv, align 1, !tbaa !34
  store i8 %i.em, ptr %i.bb, align 1, !tbaa !129
  store i8 0, ptr %i.bv, align 1, !tbaa !129
  %i.en = load ptr, ptr %i.bw, align 8, !tbaa !130
  store ptr null, ptr %i.bw, align 8, !tbaa !130
  %i.eo = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  store ptr %i.en, ptr %i.bd, align 8, !tbaa !130
  %.not.i.i.i.i.i71 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i71, label %_ZN7rocksdb6StatusD2Ev.exit76, label %_ZN7rocksdb6StatusaSEOS0_.exit73

_ZN7rocksdb6StatusaSEOS0_.exit73:                 ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #31
  %.pr154 = load ptr, ptr %i.bw, align 8, !tbaa !130 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.pr154, null
  br i1 %.not.i.i74, label %_ZN7rocksdb6StatusD2Ev.exit76, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i75

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i75: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit73
  call void @_ZdaPv(ptr noundef nonnull %.pr154) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit76

_ZN7rocksdb6StatusD2Ev.exit76:                    ; preds = %bb.ab, %_ZN7rocksdb6StatusaSEOS0_.exit73, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.critedge2

bb.ac:                                            ; preds = %bb.aa
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ah

bb.ad:                                            ; preds = %bb.o
  %i.eq = invoke noundef i64 @_ZN7rocksdb3log6Reader13LastRecordEndEv(ptr noundef nonnull align 8 dereferenceable(288) %1)
          to label %bb.ae unwind label %bb.x

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.eq, ptr %i.bi, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.er = load ptr, ptr %0, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(7456) %9, ptr noundef nonnull %i.b)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eu = load <4 x i8>, ptr %15, align 8, !tbaa !34
  store <4 x i8> %i.eu, ptr %8, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !34
  %i.ev = load i8, ptr %i.bj, align 4, !tbaa !125, !range !126, !noundef !127
  store i8 %i.ev, ptr %i.az, align 4, !tbaa !128
  store i8 0, ptr %i.bj, align 4, !tbaa !128
  %i.ew = load i8, ptr %i.bk, align 1, !tbaa !34
  store i8 %i.ew, ptr %i.bb, align 1, !tbaa !129
  store i8 0, ptr %i.bk, align 1, !tbaa !129
  %i.ex = load ptr, ptr %i.bl, align 8, !tbaa !130
  store ptr null, ptr %i.bl, align 8, !tbaa !130
  %i.ey = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  store ptr %i.ex, ptr %i.bd, align 8, !tbaa !130
  %.not.i.i.i.i.i77 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i77, label %_ZN7rocksdb6StatusaSEOS0_.exit79.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit79

_ZN7rocksdb6StatusaSEOS0_.exit79:                 ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.ey) #31
  %.pr156 = load ptr, ptr %i.bl, align 8, !tbaa !130 ; 2 uses
  %.not.i.i80 = icmp eq ptr %.pr156, null
  br i1 %.not.i.i80, label %_ZN7rocksdb6StatusaSEOS0_.exit79.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit79
  call void @_ZdaPv(ptr noundef nonnull %.pr156) #31
  br label %_ZN7rocksdb6StatusaSEOS0_.exit79.thread

_ZN7rocksdb6StatusaSEOS0_.exit79.thread:          ; preds = %bb.af, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81, %_ZN7rocksdb6StatusaSEOS0_.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.critedge2

bb.ag:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.ah

.critedge2:                                       ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit67.thread, %_ZN7rocksdb6StatusD2Ev.exit64, %_ZN7rocksdb6StatusaSEOS0_.exit79.thread, %bb.q, %_ZN7rocksdb6StatusD2Ev.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.thread

bb.ah:                                            ; preds = %bb.y, %bb.x, %bb.ag, %bb.ac, %bb.u
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.ag ], [ %i.ep, %bb.ac ], [ %i.eg, %bb.y ], [ %i.ds, %bb.u ], [ %i.ef, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.ai

.thread:                                          ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %.critedge2, %_ZN7rocksdb6StatusaSEOS0_.exit55.thread
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.b, !llvm.loop !691

bb.ai:                                            ; preds = %bb.ah, %bb.n, %bb.m
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.ah ], [ %i.cv, %bb.m ], [ %i.cw, %bb.n ]
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.g, %bb.c, %bb.f
  %.pr158 = load i8, ptr %8, align 8, !tbaa !62
  %i.fa = icmp eq i8 %.pr158, 0
  br i1 %i.fa, label %bb.ak, label %_ZN7rocksdb6StatusaSERKS0_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fb = load i8, ptr %2, align 8, !tbaa !62
  %i.fc = icmp eq i8 %i.fb, 0
  %.not.i = icmp eq ptr %8, %2
  %or.cond = or i1 %.not.i, %i.fc
  br i1 %or.cond, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %21 = load <4 x i8>, ptr %2, align 8, !tbaa !34
  store <4 x i8> %21, ptr %8, align 8, !tbaa !34
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %22 = load i8, ptr %i.fd, align 4, !tbaa !128, !range !126, !noundef !127
  store i8 %22, ptr %i.az, align 4, !tbaa !128
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !129
  store i8 %i.ff, ptr %i.bb, align 1, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !130 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i83, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull %i.fh)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.am
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !130
  br label %bb.an

bb.an:                                            ; preds = %.noexc, %bb.al
  %i.fi = phi ptr [ %.pre.i, %.noexc ], [ null, %bb.al ]
  store ptr null, ptr %5, align 8, !tbaa !130
  %i.fj = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  store ptr %i.fi, ptr %i.bd, align 8, !tbaa !130
  %.not.i.i.i.i.i84 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i84, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #31
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !130  ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i85

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i85: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #31
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i85, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %bb.d, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, %bb.ak, %bb.aj
  %i.fk = load ptr, ptr %0, align 8, !tbaa !41
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %8)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit
  %i.fn = load i8, ptr %8, align 8, !tbaa !62     ; 2 uses
  switch i8 %i.fn, label %bb.bl [
    i8 0, label %bb.bo
    i8 2, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 3 uses
  %.not = icmp eq ptr %i.fo, null
  br i1 %.not, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.fq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fo) #32
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull %i.fo, i64 noundef %i.fq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !34
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !41
  %i.ft = getelementptr i8, ptr %i.fs, i64 -24
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds i8, ptr %i.fp, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !706
  %.not.i89 = icmp eq i64 %i.fx, 0
  br i1 %.not.i89, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.av ; 0 uses

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.av:                                            ; preds = %bb.aw, %bb.at, %bb.as, %bb.ar
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.39, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !707 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.gg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.gg, ptr %17, align 8, !tbaa !38, !alias.scope !708
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !33, !noalias !708 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !39, !noalias !708 ; 8 uses
  %i.gk = icmp ugt i64 %i.gj, 15
  br i1 %i.gk, label %bb.ax, label %._crit_edge.i.i.i

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.gl = icmp slt i64 %i.gj, 0
  br i1 %i.gl, label %.noexc.i.i, label %bb.ay

.noexc.i.i:                                       ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #33
          to label %.noexc94 unwind label %bb.bg

.noexc94:                                         ; preds = %.noexc.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.gm = add nuw i64 %i.gj, 1                    ; 2 uses
  %i.gn = icmp slt i64 %i.gm, 0
  br i1 %i.gn, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !138

.noexc6.i.i:                                      ; preds = %bb.ay
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc95 unwind label %bb.bg

.noexc95:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ay
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #34
          to label %.noexc96 unwind label %bb.bg  ; 2 uses

.noexc96:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.go, ptr %17, align 8, !tbaa !33, !alias.scope !708
  store i64 %i.gj, ptr %i.gg, align 8, !tbaa !34, !alias.scope !708
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc96, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.gp = phi ptr [ %i.go, %.noexc96 ], [ %i.gg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 ] ; 3 uses
  switch i64 %i.gj, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i
  %i.gq = load i8, ptr %i.gh, align 1, !tbaa !34
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !34
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr align 1 %i.gh, i64 %i.gj, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.gj, ptr %i.gr, align 8, !tbaa !39, !alias.scope !708
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gj
  store i8 0, ptr %i.gs, align 1, !tbaa !34
  %i.gt = load ptr, ptr %17, align 8, !tbaa !33
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !39
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gt, i64 noundef %i.gu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bb
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.40, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.bh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.gx = load ptr, ptr %17, align 8, !tbaa !33   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gg
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.gz = load i64, ptr %i.gg, align 8, !tbaa !34
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.hb = load i8, ptr %8, align 8, !tbaa !62
  %i.hc = load i8, ptr %i.aw, align 1, !tbaa !139
  %i.hd = load i8, ptr %i.ax, align 2, !tbaa !709
end_hunk_1
