Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/arena_wrapped_db_iter?download=true
inline.NumInlined: 968
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@__cxx_global_array_dtor.24:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6: ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.5
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 184), align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #20
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.6

_ZN7rocksdb18OperationStageInfoD2Ev.exit.6:       ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 128), align 16, !tbaa !9 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 144)
  br i1 %i.ad, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7: ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.6
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 144), align 16, !tbaa !15
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #20
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.7

_ZN7rocksdb18OperationStageInfoD2Ev.exit.7:       ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 88), align 8, !tbaa !9 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 104)
  br i1 %i.ah, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8: ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.7
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 104), align 8, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #20
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.8

_ZN7rocksdb18OperationStageInfoD2Ev.exit.8:       ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 48), align 16, !tbaa !9 ; 2 uses
  %i.al = icmp eq ptr %i.ak, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 64)
  br i1 %i.al, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.9: ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.8
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 64), align 16, !tbaa !15
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #20
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.9

_ZN7rocksdb18OperationStageInfoD2Ev.exit.9:       ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.9
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 8), align 8, !tbaa !9 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 24)
  br i1 %i.ap, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10: ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.9
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 24), align 8, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #20
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.10

_ZN7rocksdb18OperationStageInfoD2Ev.exit.10:      ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.27(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 48), align 16, !tbaa !9 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 64)
  br i1 %i.b, label %_ZN7rocksdb9StateInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 64), align 16, !tbaa !15
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #20
  br label %_ZN7rocksdb9StateInfoD2Ev.exit

_ZN7rocksdb9StateInfoD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 8), align 8, !tbaa !9 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24)
  br i1 %i.f, label %_ZN7rocksdb9StateInfoD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24), align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #20
  br label %_ZN7rocksdb9StateInfoD2Ev.exit.1

_ZN7rocksdb9StateInfoD2Ev.exit.1:                 ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.35(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !9 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), align 16, !tbaa !15
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !9 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !9 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), align 16, !tbaa !15
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !9 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104)
  br i1 %i.n, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3

_ZN7rocksdb17OperationPropertyD2Ev.exit.3:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !9 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64)
  br i1 %i.r, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4

_ZN7rocksdb17OperationPropertyD2Ev.exit.4:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !9 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24)
  br i1 %i.v, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5

_ZN7rocksdb17OperationPropertyD2Ev.exit.5:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.38(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 88), align 8, !tbaa !9 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104), align 8, !tbaa !15
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 48), align 16, !tbaa !9 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64), align 16, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 8), align 8, !tbaa !9 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24), align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #20
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18ArenaWrappedDBIter11GetPropertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 16 dereferenceable(2808) %1, ptr noundef align 8 %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq i64 %i.b, 37
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !9      ; 3 uses
  %i.e = load i256, ptr %i.d, align 1
  %i.f = xor i256 %i.e, 49834683657831839740678055641158017972495267034648039648250003337349169377138
  %i.g = getelementptr i8, ptr %i.d, i64 5
  %i.h = load i256, ptr %i.g, align 1
  %i.i = xor i256 %i.h, 51742795614178019792490292367311854871731481855441157776993985515156170236516
  %i.j = or i256 %i.f, %i.i
  %i.k = icmp ne i256 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread63

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %i.o = load i8, ptr %i.n, align 8, !tbaa !17, !range !74, !noundef !75
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %i.r = load i64, ptr %i.q, align 16, !tbaa !76  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.s = icmp ult i64 %i.r, 10
  br i1 %i.s, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !80, !alias.scope !77
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.i
  %.029.i.i = phi i32 [ %i.ab, %bb.i ], [ 1, %bb.c ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.r, %bb.c ] ; 5 uses
  %i.u = icmp ult i64 %.02328.i.i, 100
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = udiv i64 %.02328.i.i, 10000
  %i.ab = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ac = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ac, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !81

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %.022.i.i = phi i32 [ %i.z, %bb.h ], [ %i.v, %bb.d ], [ %i.x, %bb.f ], [ %i.ab, %bb.i ] ; 3 uses
  %i.ad = zext i32 %.022.i.i to i64               ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !80, !alias.scope !77
  %i.af = icmp ugt i32 %.022.i.i, 15
  br i1 %i.af, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ag = add nuw nsw i64 %i.ad, 1
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #22 ; 2 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !9, !alias.scope !77
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !15, !alias.scope !77
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.022.i.i, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.ai = phi ptr [ %i.t, %.thread.i ], [ %i.ae, %bb.j ] ; 2 uses
  store i8 0, ptr %i.ai, align 1, !tbaa !15, !alias.scope !77
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %.noexc.i
  %i.aj = phi ptr [ %i.ah, %.noexc.i ], [ %i.ae, %bb.j ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.ad, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = phi i64 [ 0, %bb.j ], [ %i.ad, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.j ], [ %i.aj, %bb.l ], [ %i.ai, %bb.k ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !16, !alias.scope !77
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !15
  %i.ao = load ptr, ptr %5, align 8, !tbaa !9, !alias.scope !77 ; 4 uses
  %i.ap = icmp ugt i64 %i.r, 99
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !16, !alias.scope !77
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ar, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.av, %.lr.ph.i4.i ], [ %i.r, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bf, %.lr.ph.i4.i ], [ %i.as, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.at = urem i64 %.020.i.i, 100
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15, !noalias !77
  %i.az = zext i32 %.01819.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !15
  %i.bb = load i8, ptr %i.aw, align 2, !tbaa !15, !noalias !77
  %i.bc = add i32 %.01819.i.i, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !15
  %i.bf = add i32 %.01819.i.i, -2
  %i.bg = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bg, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !83

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %bb.m
  %.0.lcssa.i.i = phi i64 [ %i.r, %bb.m ], [ %i.av, %.lr.ph.i4.i ] ; 3 uses
  %i.bh = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bi = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15, !noalias !77
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !15
  %i.bn = load i8, ptr %i.bj, align 2, !tbaa !15, !noalias !77
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bo = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bp = or disjoint i8 %i.bo, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.n, %bb.o
  %storemerge.i.i = phi i8 [ %i.bp, %bb.o ], [ %i.bn, %bb.n ]
  store i8 %storemerge.i.i, ptr %i.ao, align 1, !tbaa !15
  %i.bq = load ptr, ptr %3, align 8, !tbaa !9     ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  %i.bt = load ptr, ptr %5, align 8, !tbaa !9     ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  br i1 %i.bv, label %bb.p, label %.thread.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  br i1 %i.bv, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bw = load i64, ptr %i.am, align 8, !tbaa !16 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %.not21.i = icmp eq ptr %5, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.q, !prof !84

bb.q:                                             ; preds = %bb.p
  switch i64 %i.bw, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !15
  store i8 %i.by, ptr %i.bq, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bz = load i64, ptr %i.am, align 8, !tbaa !16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !16
  %i.cb = load ptr, ptr %3, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i10:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bt, ptr %3, align 8, !tbaa !9
  %i.ce = load <2 x i64>, ptr %i.am, align 8, !tbaa !15
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !tbaa !15
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !15
  store ptr %i.bt, ptr %3, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load <2 x i64>, ptr %i.am, align 8, !tbaa !15
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bq, ptr %5, align 8, !tbaa !9
  store i64 %i.cf, ptr %i.bu, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i10
  store ptr %i.bu, ptr %5, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.ci = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bq, %bb.t ], [ %i.bu, %bb.u ], [ %i.bt, %bb.p ]
  store i64 0, ptr %i.am, align 8, !tbaa !16
  store i8 0, ptr %i.ci, align 1, !tbaa !15
  %i.cj = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.co, align 8, !tbaa !85, !alias.scope !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !87
  br label %_ZNK7rocksdb6DBIter6statusEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !80
  %11 = call noalias noundef nonnull dereferenceable(38) ptr @_Znwm(i64 noundef 38) #22 ; 3 uses
  store ptr %11, ptr %7, align 8, !tbaa !9
  store i64 37, ptr %i.cr, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %11, ptr noundef nonnull align 1 dereferenceable(37) %i.d, i64 37, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 37, ptr %i.cs, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 37
  store i8 0, ptr %i.ct, align 1, !tbaa !15
  invoke void @_ZN7rocksdb6DBIter11GetPropertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2304) %i.cq, ptr noundef nonnull align 8 %7, ptr noundef %3)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cu = load i8, ptr %6, align 8, !tbaa !91
  %i.cv = icmp eq i8 %i.cu, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.v, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.cy = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cr
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.da = load i64, ptr %i.cr, align 8, !tbaa !15
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %i.cv, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %i.dd = load i64, ptr %i.dc, align 16, !tbaa !76 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.de = icmp ult i64 %i.dd, 10
  br i1 %i.de, label %.thread.i29, label %.lr.ph.i.i16

.thread.i29:                                      ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.df, ptr %8, align 8, !tbaa !80, !alias.scope !102
  br label %bb.ae

.lr.ph.i.i16:                                     ; preds = %bb.w, %bb.ac
  %.029.i.i17 = phi i32 [ %i.dn, %bb.ac ], [ 1, %bb.w ] ; 4 uses
  %.02328.i.i18 = phi i64 [ %i.dm, %bb.ac ], [ %i.dd, %bb.w ] ; 5 uses
  %i.dg = icmp ult i64 %.02328.i.i18, 100
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i16
  %i.dh = add i32 %.029.i.i17, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19

bb.y:                                             ; preds = %.lr.ph.i.i16
  %i.di = icmp ult i64 %.02328.i.i18, 1000
  br i1 %i.di, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dj = add i32 %.029.i.i17, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19

bb.aa:                                            ; preds = %bb.y
  %i.dk = icmp ult i64 %.02328.i.i18, 10000
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = add i32 %.029.i.i17, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19

bb.ac:                                            ; preds = %bb.aa
  %i.dm = udiv i64 %.02328.i.i18, 10000
  %i.dn = add i32 %.029.i.i17, 4                  ; 2 uses
  %i.do = icmp ult i64 %.02328.i.i18, 100000
  br i1 %i.do, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19, label %.lr.ph.i.i16, !llvm.loop !81

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19:  ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x
  %.022.i.i20 = phi i32 [ %i.dl, %bb.ab ], [ %i.dh, %bb.x ], [ %i.dj, %bb.z ], [ %i.dn, %bb.ac ] ; 3 uses
  %i.dp = zext i32 %.022.i.i20 to i64             ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.dq, ptr %8, align 8, !tbaa !80, !alias.scope !102
  %i.dr = icmp ugt i32 %.022.i.i20, 15
  br i1 %i.dr, label %.noexc.i28, label %bb.ad

.noexc.i28:                                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19
  %i.ds = add nuw nsw i64 %i.dp, 1
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #22 ; 2 uses
  store ptr %i.dt, ptr %8, align 8, !tbaa !9, !alias.scope !102
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !15, !alias.scope !102
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i19
  switch i32 %.022.i.i20, label %bb.af [
    i32 0, label %bb.ag
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %.thread.i29
  %i.du = phi ptr [ %i.df, %.thread.i29 ], [ %i.dq, %bb.ad ] ; 2 uses
  store i8 0, ptr %i.du, align 1, !tbaa !15, !alias.scope !102
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %.noexc.i28
  %i.dv = phi ptr [ %i.dt, %.noexc.i28 ], [ %i.dq, %bb.ad ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dv, i8 0, i64 %i.dp, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dw = phi i64 [ 0, %bb.ad ], [ %i.dp, %bb.af ], [ 1, %bb.ae ] ; 2 uses
  %i.dx = phi ptr [ %i.dq, %bb.ad ], [ %i.dv, %bb.af ], [ %i.du, %bb.ae ]
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !16, !alias.scope !102
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !15
  %i.ea = load ptr, ptr %8, align 8, !tbaa !9, !alias.scope !102 ; 4 uses
  %i.eb = icmp ugt i64 %i.dd, 99
  br i1 %i.eb, label %.lr.ph.preheader.i.i24, label %._crit_edge.i.i21

.lr.ph.preheader.i.i24:                           ; preds = %bb.ag
  %i.ec = load i64, ptr %i.dy, align 8, !tbaa !16, !alias.scope !102
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = add i32 %i.ed, -1
  br label %.lr.ph.i4.i25

.lr.ph.i4.i25:                                    ; preds = %.lr.ph.i4.i25, %.lr.ph.preheader.i.i24
  %.020.i.i26 = phi i64 [ %i.eh, %.lr.ph.i4.i25 ], [ %i.dd, %.lr.ph.preheader.i.i24 ] ; 3 uses
  %.01819.i.i27 = phi i32 [ %i.er, %.lr.ph.i4.i25 ], [ %i.ee, %.lr.ph.preheader.i.i24 ] ; 3 uses
  %i.ef = urem i64 %.020.i.i26, 100
  %i.eg = shl nuw nsw i64 %i.ef, 1
  %i.eh = udiv i64 %.020.i.i26, 100               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.eg ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !15, !noalias !102
  %i.el = zext i32 %.01819.i.i27 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.el
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !15
  %i.en = load i8, ptr %i.ei, align 2, !tbaa !15, !noalias !102
  %i.eo = add i32 %.01819.i.i27, -1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ep
  store i8 %i.en, ptr %i.eq, align 1, !tbaa !15
  %i.er = add i32 %.01819.i.i27, -2
  %i.es = icmp ugt i64 %.020.i.i26, 9999
  br i1 %i.es, label %.lr.ph.i4.i25, label %._crit_edge.i.i21, !llvm.loop !83

._crit_edge.i.i21:                                ; preds = %.lr.ph.i4.i25, %bb.ag
  %.0.lcssa.i.i22 = phi i64 [ %i.dd, %bb.ag ], [ %i.eh, %.lr.ph.i4.i25 ] ; 3 uses
  %i.et = icmp samesign ugt i64 %.0.lcssa.i.i22, 9
  br i1 %i.et, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i21
  %i.eu = shl nuw nsw i64 %.0.lcssa.i.i22, 1
  %i.ev = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15, !noalias !102
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !15
  %i.ez = load i8, ptr %i.ev, align 2, !tbaa !15, !noalias !102
  br label %_ZNSt7__cxx119to_stringEm.exit30

bb.ai:                                            ; preds = %._crit_edge.i.i21
  %i.fa = trunc nuw nsw i64 %.0.lcssa.i.i22 to i8
  %i.fb = or disjoint i8 %i.fa, 48
  br label %_ZNSt7__cxx119to_stringEm.exit30

_ZNSt7__cxx119to_stringEm.exit30:                 ; preds = %bb.ah, %bb.ai
  %storemerge.i.i23 = phi i8 [ %i.fb, %bb.ai ], [ %i.ez, %bb.ah ]
  store i8 %storemerge.i.i23, ptr %i.ea, align 1, !tbaa !15
  %i.fc = load ptr, ptr %3, align 8, !tbaa !9     ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  %i.ff = load ptr, ptr %8, align 8, !tbaa !9     ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg                ; 2 uses
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37: ; preds = %_ZNSt7__cxx119to_stringEm.exit30
  br i1 %i.fh, label %bb.aj, label %.thread.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31: ; preds = %_ZNSt7__cxx119to_stringEm.exit30
  br i1 %i.fh, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37
  %i.fi = load i64, ptr %i.dy, align 8, !tbaa !16 ; 3 uses
  %i.fj = icmp ult i64 %i.fi, 16
  call void @llvm.assume(i1 %i.fj)
  %.not21.i34 = icmp eq ptr %8, %3
  br i1 %.not21.i34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit39, label %bb.ak, !prof !84

bb.ak:                                            ; preds = %bb.aj
  switch i64 %i.fi, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i35
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fk = load i8, ptr %i.ff, align 1, !tbaa !15
end_hunk_0
