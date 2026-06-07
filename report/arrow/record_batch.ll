inline.NumInlined: 4880
inline.NumDeleted: 1990
begin_hunk_0_@_ZNK5arrow11RecordBatch9AddColumnEiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_5ArrayEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bj = load ptr, ptr %1, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49 ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bo, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !53
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !inline_history !59
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !inline_history !59
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i13 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i13, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.x:                                             ; preds = %bb.v
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i15 = phi i32 [ %i.br, %bb.w ], [ %i.cb, %bb.x ]
  %i.cc = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.cc, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  %i.ce = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.a
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.z
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.aa ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.cd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch15GetColumnByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = load ptr, ptr %2, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
  %i.f = tail call noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 %i.e, ptr %i.c) ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret i32 %i.c
}

declare noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow11RecordBatchC2ESt10shared_ptrINS_6SchemaEEl(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow11RecordBatchE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !50
  store ptr null, ptr %i.c, align 8, !tbaa !49
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !50
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.e, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.30") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !67
  %i.b = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28, !noalias !68 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !51, !noalias !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !53, !noalias !73
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !54, !noalias !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !73

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #27, !noalias !73
  resume { ptr, i32 } %i.f

_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_9ArrayDataEESaIS6_EENS_20DeviceAllocationTypeES1_INS_6Device9SyncEventEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.30") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef signext %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !67
  store i8 %4, ptr %i.b, align 1, !tbaa !77
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28, !noalias !79, !inline_history !84 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !51, !noalias !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !53, !noalias !85
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !54, !noalias !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaIS8_EERNS0_20DeviceAllocationTypeES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !85, !inline_history !86

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #27, !noalias !85, !inline_history !84
  resume { ptr, i32 } %i.g

_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.f, ptr %0, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11RecordBatch9MakeEmptyESt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::vector", align 16      ; 13 uses
  %4 = alloca %"class.arrow::Result.47", align 8  ; 10 uses
  %5 = alloca %"class.std::shared_ptr.9", align 16 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %7 = alloca %"class.std::vector", align 16      ; 7 uses
  %8 = alloca %"class.std::shared_ptr.36", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !61
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  store i64 0, ptr %3, align 16
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.f = shl nuw nsw i64 %i.d, 4                  ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  store ptr %i.g, ptr %3, align 16, !tbaa !87
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.f
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink.i = phi ptr [ %i.h, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.j, align 16, !tbaa !90
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ], [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !61
  %i.o = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.o to i64
  %.not = icmp slt i64 %indvars.iv, %i.p
  br i1 %.not, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.r = load ptr, ptr %1, align 8, !tbaa !61
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef %i.s)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !50
  store <2 x ptr> %i.y, ptr %5, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i27 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.f, %bb.h, %bb.i
  invoke void @_ZN5arrow14MakeEmptyArrayESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.47") align 8 %4, ptr noundef nonnull %5, ptr noundef %2)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !49  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.af, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !53
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26, !inline_history !58
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26, !inline_history !58
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i28 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.n ], [ %i.as, %bb.o ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !57

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l, %bb.j
  %i.au = load ptr, ptr %4, align 8, !tbaa !95
  %i.av = icmp eq ptr %i.au, null                 ; 2 uses
  br i1 %i.av, label %bb.u, label %bb.r, !prof !98

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %bb.bk

bb.u:                                             ; preds = %bb.q
  %i.ay = load <2 x ptr>, ptr %i.l, align 8, !tbaa !50, !noalias !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.az = load ptr, ptr %3, align 16, !tbaa !87
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 8 uses
  store <2 x ptr> %i.ay, ptr %i.ba, align 8, !tbaa !50
  %.not.i.i.i.i29 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i29, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bd, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !53
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !104
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.y ], [ %i.bq, %bb.z ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %bb.r
  %i.bs = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ab, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !98

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !49  ; 8 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i34, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bv, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !53
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #26, !inline_history !105
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #26, !inline_history !105
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.af ], [ %i.ci, %bb.ag ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.ah, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !57

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad
  %.pr.i.pr = load ptr, ptr %4, align 8, !tbaa !95 ; 2 uses
  %.not.i.i35 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i35, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ck = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.bs, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !107, !range !114, !noundef !115
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.ab, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.av, label %bb.b, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !116

.critedge:                                        ; preds = %bb.c
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load <2 x ptr>, ptr %1, align 8, !tbaa !50
  store ptr null, ptr %i.cp, align 8, !tbaa !49
  store <2 x ptr> %i.cq, ptr %6, align 16, !tbaa !50
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cs = load <2 x ptr>, ptr %3, align 16, !tbaa !118
  store <2 x ptr> %i.cs, ptr %7, align 16, !tbaa !118
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.j, align 16, !tbaa !90
  store ptr %i.cu, ptr %i.ct, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !67, !noalias !119
  %i.cv = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc36 unwind label %bb.bc  ; 6 uses

.noexc36:                                         ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 1, ptr %i.cw, align 8, !tbaa !51, !noalias !122
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 1, ptr %i.cx, align 4, !tbaa !53, !noalias !122
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cv, align 8, !tbaa !54, !noalias !122
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !122

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc36
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 160) #27, !noalias !122
  br label %.body

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !74
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cv, ptr %i.db, align 8, !tbaa !49
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.de, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !53
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #26, !inline_history !125
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i42 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i42, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

bb.an:                                            ; preds = %bb.al
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i44 = phi i32 [ %i.dh, %bb.am ], [ %i.dr, %bb.an ]
  %i.ds = icmp eq i32 %.0.i.i.i.i44, 1
  br i1 %i.ds, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43, %bb.ao
  %i.dt = load ptr, ptr %7, align 16, !tbaa !87   ; 3 uses
  %i.du = load ptr, ptr %i.cr, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.dt, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dx, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !53
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #26, !inline_history !126
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ea, %bb.as ], [ %i.ek, %bb.at ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.el, label %bb.au, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aq, %.lr.ph.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.em, %i.du
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i46 = load ptr, ptr %7, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.en = phi ptr [ %.pr.i46, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.dt, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.eo = load ptr, ptr %i.ct, align 16, !tbaa !90
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.av
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !49 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.es, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.et, align 8, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !53
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !54
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #26, !inline_history !128
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i48 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i48, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ba:                                            ; preds = %bb.ay
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i50 = phi i32 [ %i.ew, %bb.az ], [ %i.fg, %bb.ba ]
  %i.fh = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.fh, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bc:                                            ; preds = %.critedge
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.bc
end_hunk_0
begin_hunk_1_@_ZN5arrow11RecordBatch15FromStructArrayERKSt10shared_ptrINS_5ArrayEEPNS_10MemoryPoolE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %.pn.pn.pn.pn.pn, %bb.bs ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !150
  br label %common.resume

_ZN5arrow6Status9TypeErrorIJRA50_KcRNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !150
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.s = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !98

bb.e:                                             ; preds = %_ZN5arrow6Status9TypeErrorIJRA50_KcRNS_8DataTypeEEEES0_DpOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !107, !range !114, !noundef !115
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status9TypeErrorIJRA50_KcRNS_8DataTypeEEEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bt

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.i, %bb.g
  store ptr %i.b, ptr %5, align 8, !tbaa !155, !alias.scope !158
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !49, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK5arrow11StructArray7FlattenEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.63") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %2)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ae = load ptr, ptr %6, align 8, !tbaa !95
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.n, label %bb.l, !prof !98

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %bb.bl

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !118, !noalias !169
  store <2 x ptr> %i.aj, ptr %7, align 16, !tbaa !118, !alias.scope !169
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90, !noalias !169
  store ptr %i.am, ptr %i.ak, align 16, !tbaa !90, !alias.scope !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !noalias !169
  %i.an = load ptr, ptr %1, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !131 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !170 ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !171 ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i.i22, label %.noexc23, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp ugt i64 %i.ax, 9223372036854775792
  br i1 %i.ay, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.o
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #28
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge unwind label %bb.bg

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !172
  %.pre73 = load ptr, ptr %i.as, align 8, !tbaa !172
  br label %.noexc23

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge, %bb.n
  %i.ba = phi ptr [ %i.at, %bb.n ], [ %.pre73, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge ] ; 2 uses
  %i.bb = phi ptr [ %i.au, %bb.n ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge ] ; 2 uses
  %i.bc = phi ptr [ null, %bb.n ], [ %i.az, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i..noexc23_crit_edge ] ; 5 uses
  store ptr %i.bc, ptr %9, align 8, !tbaa !171
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !170
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ax
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !173
  %i.bg = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc23, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bc, %.noexc23 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bb, %.noexc23 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !50
  store <2 x ptr> %i.bj, ptr %.08.i.i.i.i.i, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.ba
  br i1 %i.br, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !174

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc23
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc23 ], [ %i.bq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.21") align 8 %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
          to label %bb.s unwind label %bb.bh

bb.s:                                             ; preds = %.loopexit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !175
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.by = load <2 x ptr>, ptr %7, align 16, !tbaa !118
  store <2 x ptr> %i.by, ptr %11, align 16, !tbaa !118
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.ak, align 16, !tbaa !90
  store ptr %i.ca, ptr %i.bz, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !67, !noalias !194
  %i.cb = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc24 unwind label %bb.bi  ; 6 uses

.noexc24:                                         ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cc, align 8, !tbaa !51, !noalias !197
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 1, ptr %i.cd, align 4, !tbaa !53, !noalias !197
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8, !tbaa !54, !noalias !197
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !197

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc24
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 160) #27, !noalias !197
  br label %.body

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !74
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cb, ptr %i.ch, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ck, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !53
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !54
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #26, !inline_history !125
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i30 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i30, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.x:                                             ; preds = %bb.v
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i32 = phi i32 [ %i.cn, %bb.w ], [ %i.cx, %bb.x ]
  %i.cy = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.cy, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.y
  %i.cz = load ptr, ptr %11, align 16, !tbaa !87  ; 3 uses
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cz, %i.da
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ds, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.cz, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.dd, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26, !inline_history !126
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.ac ], [ %i.dq, %bb.ad ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.ae, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aa, %.lr.ph.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ds, %i.da
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.cz, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.du = load ptr, ptr %i.bz, align 16, !tbaa !90
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i34 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i34, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ea, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !53
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !54
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #26, !inline_history !128
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !54
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i35 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i35, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36

bb.ak:                                            ; preds = %bb.ai
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i37 = phi i32 [ %i.ed, %bb.aj ], [ %i.en, %bb.ak ]
  %i.eo = icmp eq i32 %.0.i.i.i.i37, 1
  br i1 %i.eo, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36, %bb.al
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !49 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am
end_hunk_1
begin_hunk_2_@_ZNK5arrow11RecordBatch13ReplaceSchemaESt10shared_ptrINS_6SchemaEE:bb.a
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gg, align 8, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4, !tbaa !53
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !54
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #26, !inline_history !58
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !54
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #26, !inline_history !58
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i55 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i55, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56

bb.bd:                                            ; preds = %bb.bb
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i57 = phi i32 [ %i.gj, %bb.bc ], [ %i.gt, %bb.bd ]
  %i.gu = icmp eq i32 %.0.i.i.i.i57, 1
  br i1 %i.gu, label %bb.be, label %bb.bf, !prof !57

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56, %bb.ba, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.gv = load i32, ptr %i.d, align 4, !tbaa !3
  %i.gw = add nsw i32 %i.gv, 1                    ; 3 uses
  store i32 %i.gw, ptr %i.d, align 4, !tbaa !3
  %.not19 = icmp slt i32 %i.gw, %i.bj
  br i1 %.not19, label %bb.m, label %._crit_edge, !llvm.loop !242

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.fb, %bb.ap ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ao
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bg ], [ %i.fa, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.cx

bb.bi:                                            ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40, %bb.aj, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

._crit_edge:                                      ; preds = %bb.bf, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gz = load <2 x ptr>, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %i.gy, align 8, !tbaa !49
  store <2 x ptr> %i.gz, ptr %12, align 16, !tbaa !50
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !64
  %i.hc = load ptr, ptr %1, align 8, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.he(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bj unwind label %bb.cl     ; 3 uses

bb.bj:                                            ; preds = %._crit_edge
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !91 ; 2 uses
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !87 ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i59 = icmp eq ptr %i.hh, %i.hi
  br i1 %.not.i.i.i.i59, label %.noexc68, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hm = icmp ugt i64 %i.hl, 9223372036854775792
  br i1 %i.hm, label %.noexc.i.i66, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i66:                                     ; preds = %bb.bk
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc67 unwind label %bb.cl

.noexc67:                                         ; preds = %.noexc.i.i66
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bk
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #28
          to label %.noexc68 unwind label %bb.cl

.noexc68:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %bb.bj
  %i.ho = phi ptr [ null, %bb.bj ], [ %i.hn, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ho, ptr %13, align 8, !tbaa !87
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !91
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !90
  %i.hs = load ptr, ptr %i.hf, align 8, !tbaa !118 ; 2 uses
  %i.ht = load ptr, ptr %i.hg, align 8, !tbaa !118 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %.loopexit, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.noexc68, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i61 = phi ptr [ %i.ie, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ho, %.noexc68 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i62 = phi ptr [ %i.id, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.hs, %.noexc68 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i62, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !49 ; 2 uses
  %i.hx = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i62, align 8, !tbaa !50
  store <2 x ptr> %i.hx, ptr %.08.i.i.i.i.i61, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i63 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i63, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i60
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 3 uses
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i64 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i64, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.ic = atomicrmw volatile add ptr %i.hy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.bn, %bb.bm, %.lr.ph.i.i.i.i.i60
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i62, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i61, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ht
  br i1 %i.if, label %.loopexit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !243

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc68
  %.0.lcssa.i.i.i.i.i65 = phi ptr [ %i.ho, %.noexc68 ], [ %i.ie, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i65, ptr %i.hp, align 8, !tbaa !91
  %i.ig = load ptr, ptr %1, align 8, !tbaa !54
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 120
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ii(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bo unwind label %bb.cm     ; 2 uses

bb.bo:                                            ; preds = %.loopexit
  %i.ik = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !49 ; 2 uses
  %i.in = load <2 x ptr>, ptr %i.ij, align 8, !tbaa !50
  store <2 x ptr> %i.in, ptr %14, align 16, !tbaa !50
  %.not.i.i.i69 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i69, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 3 uses
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i70 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i70, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !3
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.io, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.br:                                            ; preds = %bb.bp
  %i.is = atomicrmw volatile add ptr %i.io, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.bo, %bb.bq, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.hb, ptr %i.a, align 8, !tbaa !67, !noalias !244
  %i.it = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc71 unwind label %bb.cn  ; 6 uses

.noexc71:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i32 1, ptr %i.iu, align 8, !tbaa !51, !noalias !247
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 1, ptr %i.iv, align 4, !tbaa !53, !noalias !247
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.it, align 8, !tbaa !54, !noalias !247
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.iw, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !247

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc71
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 160) #27, !noalias !247
  br label %.body72

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iw, ptr %i.iy, align 8, !tbaa !74
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.it, ptr %i.iz, align 8, !tbaa !49
  %i.ja = load ptr, ptr %i.ik, align 8, !tbaa !49 ; 8 uses
  %.not.i.i78 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i78, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.jb, align 8, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !53
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !54
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #26, !inline_history !125
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !54
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i79 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i79, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

bb.bw:                                            ; preds = %bb.bu
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i81 = phi i32 [ %i.je, %bb.bv ], [ %i.jo, %bb.bw ]
  %i.jp = icmp eq i32 %.0.i.i.i.i81, 1
  br i1 %i.jp, label %bb.bx, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80, %bb.bx
  %i.jq = load ptr, ptr %13, align 8, !tbaa !87   ; 3 uses
  %i.jr = load ptr, ptr %i.hp, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jq, %i.jr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kj, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.jq, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ju, align 8, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !53
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !54
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #26, !inline_history !126
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kg = add nsw i32 %i.jx, -1
  store i32 %i.kg, ptr %i.ju, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.kh = atomicrmw volatile add ptr %i.ju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jx, %bb.cb ], [ %i.kh, %bb.cc ]
  %i.ki = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ki, label %bb.cd, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bz, %.lr.ph.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.kj, %i.jr
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.jq, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.kl = load ptr, ptr %i.hr, align 8, !tbaa !90
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ce
  %i.kp = load ptr, ptr %i.gx, align 8, !tbaa !49 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 4 uses
  %i.kr = load atomic i64, ptr %i.kq acquire, align 8 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 4294967297
  %i.kt = trunc i64 %i.kr to i32                  ; 2 uses
  br i1 %i.ks, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.kq, align 8, !tbaa !51
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store i32 0, ptr %i.ku, align 4, !tbaa !53
  %i.kv = load ptr, ptr %i.kp, align 8, !tbaa !54
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #26, !inline_history !128
  %i.ky = load ptr, ptr %i.kp, align 8, !tbaa !54
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i84 = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i84, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lc = add nsw i32 %i.kt, -1
  store i32 %i.lc, ptr %i.kq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.cj:                                            ; preds = %bb.ch
  %i.ld = atomicrmw volatile add ptr %i.kq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i86 = phi i32 [ %i.kt, %bb.ci ], [ %i.ld, %bb.cj ]
  %i.le = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.le, label %bb.ck, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cl:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i66, %._crit_edge
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cm:                                            ; preds = %.loopexit
  %i.lg = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZNK5arrow11RecordBatch13RenameColumnsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.v ], [ %i.cr, %bb.w ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.cu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef %i.bi)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.cw = load ptr, ptr %2, align 8, !tbaa !250
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %indvars.iv
  invoke void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %6, align 16, !tbaa !171
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %indvars.iv ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load <2 x ptr>, ptr %8, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !49 ; 8 uses
  store <2 x ptr> %i.db, ptr %i.cz, align 8, !tbaa !50
  %.not.i.i.i.i35 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i35, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dd, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26, !inline_history !264
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26, !inline_history !264
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i36 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i36, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37

bb.ae:                                            ; preds = %bb.ac
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i38 = phi i32 [ %i.dg, %bb.ad ], [ %i.dq, %bb.ae ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i38, 1
  br i1 %i.dr, label %bb.af, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, !prof !57

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit:    ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37, %bb.af
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !49 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dt, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !53
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #26, !inline_history !59
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #26, !inline_history !59
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i40 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i40, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.ak:                                            ; preds = %bb.ai
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i42 = phi i32 [ %i.dw, %bb.aj ], [ %i.eg, %bb.ak ]
  %i.eh = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.eh, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #26
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next, %i.ej
  br i1 %i.ek, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !265

bb.am:                                            ; preds = %bb.k
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.cs

bb.an:                                            ; preds = %bb.y, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.cs

bb.ao:                                            ; preds = %._crit_edge
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !64
  %i.ep = load ptr, ptr %5, align 8, !tbaa !87
  store ptr %i.ep, ptr %12, align 8, !tbaa !87
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.ax, align 8, !tbaa !91
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !91
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.ay, align 8, !tbaa !90
  store ptr %i.et, ptr %i.es, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.eu = load ptr, ptr %1, align 8, !tbaa !54
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 120
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ap unwind label %bb.co     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !49 ; 2 uses
  %i.fb = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !50
  store <2 x ptr> %i.fb, ptr %13, align 16, !tbaa !50
  %.not.i.i.i43 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i43, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 3 uses
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i44 = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i.i44, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.as:                                            ; preds = %bb.aq
  %i.fg = atomicrmw volatile add ptr %i.fc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.ap, %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.eo, ptr %i.a, align 8, !tbaa !67, !noalias !266
  %i.fh = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc45 unwind label %bb.cp  ; 6 uses

.noexc45:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 1, ptr %i.fi, align 8, !tbaa !51, !noalias !269
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 1, ptr %i.fj, align 4, !tbaa !53, !noalias !269
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fh, align 8, !tbaa !54, !noalias !269
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !269

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc45
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 160) #27, !noalias !269
  br label %.body

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !74
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fh, ptr %i.fn, align 8, !tbaa !49
  %i.fo = load ptr, ptr %i.ey, align 8, !tbaa !49 ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fp, align 8, !tbaa !51
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !53
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #26, !inline_history !125
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !54
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i51 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i51, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

bb.ax:                                            ; preds = %bb.av
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i53 = phi i32 [ %i.fs, %bb.aw ], [ %i.gc, %bb.ax ]
  %i.gd = icmp eq i32 %.0.i.i.i.i53, 1
  br i1 %i.gd, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52, %bb.ay
  %i.ge = load ptr, ptr %12, align 8, !tbaa !87   ; 3 uses
  %i.gf = load ptr, ptr %i.eq, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ge, %i.gf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gx, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ge, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 4294967297
  %i.gl = trunc i64 %i.gj to i32                  ; 2 uses
  br i1 %i.gk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gi, align 8, !tbaa !51
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gm, align 4, !tbaa !53
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !54
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #26, !inline_history !126
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !54
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gu = add nsw i32 %i.gl, -1
  store i32 %i.gu, ptr %i.gi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gv = atomicrmw volatile add ptr %i.gi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gl, %bb.bc ], [ %i.gv, %bb.bd ]
  %i.gw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gw, label %bb.be, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ba, %.lr.ph.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gx, %i.gf
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ge, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gz = load ptr, ptr %i.es, align 8, !tbaa !90
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bf
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !49 ; 8 uses
  %.not.i.i55 = icmp eq ptr %i.he, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load atomic i64, ptr %i.hf acquire, align 8 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 4294967297
  %i.hi = trunc i64 %i.hg to i32                  ; 2 uses
  br i1 %i.hh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.hf, align 8, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 0, ptr %i.hj, align 4, !tbaa !53
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26, !inline_history !128
  %i.hn = load ptr, ptr %i.he, align 8, !tbaa !54
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.hq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i56 = icmp eq i8 %i.hq, 0
  br i1 %.not.i.i.i56, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hr = add nsw i32 %i.hi, -1
  store i32 %i.hr, ptr %i.hf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.bk:                                            ; preds = %bb.bi
  %i.hs = atomicrmw volatile add ptr %i.hf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i58 = phi i32 [ %i.hi, %bb.bj ], [ %i.hs, %bb.bk ]
  %i.ht = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.ht, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.bl
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !49 ; 8 uses
  %.not.i.i59 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i59, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

end_hunk_3
begin_hunk_4_@_ZNK5arrow11RecordBatch13SelectColumnsERKSt6vectorIiSaIiEE:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.bi, %bb.q ], [ %.pr.pre.i.i.i, %bb.r ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bp, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !53
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26, !inline_history !281
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26, !inline_history !281
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i9.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.bs, %bb.v ], [ %i.cc, %bb.w ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.x, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !57

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !49
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit:   ; preds = %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !3
  %i.cf = load ptr, ptr %1, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ce)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit
  %i.ci = load ptr, ptr %5, align 16, !tbaa !87
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load <2 x ptr>, ptr %7, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 8 uses
  store <2 x ptr> %i.cl, ptr %i.cj, align 8, !tbaa !50
  %.not.i.i.i.i46 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i46, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cn, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !53
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #26, !inline_history !104
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #26, !inline_history !104
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.cq, %bb.ac ], [ %i.da, %bb.ad ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.db, label %bb.ae, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !57

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #26
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ae
  %i.dc = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.dd, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26, !inline_history !231
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i47 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i47, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.ai ], [ %i.dq, %bb.aj ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge34, label %bb.d, !llvm.loop !282

bb.al:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ds, %bb.al ], [ %i.ax, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.cl

.critedge34:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !61
  %i.dv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %bb.an unwind label %bb.bs

bb.an:                                            ; preds = %.critedge34
  %i.dw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
          to label %.noexc48 unwind label %bb.bs  ; 6 uses

.noexc48:                                         ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 1, ptr %i.dx, align 8, !tbaa !51, !noalias !283
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 1, ptr %i.dy, align 4, !tbaa !53, !noalias !283
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dw, align 8, !tbaa !54, !noalias !283
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_(ptr noundef nonnull %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %bb.ao unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !283

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc48
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 48) #27, !noalias !283
  br label %.body49

bb.ao:                                            ; preds = %.noexc48
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.dz, ptr %9, align 8, !tbaa !61
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !49
  store ptr %i.dw, ptr %i.ec, align 8, !tbaa !49
  store ptr null, ptr %8, align 8, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !64
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eg = load <2 x ptr>, ptr %5, align 16, !tbaa !118
  store <2 x ptr> %i.eg, ptr %10, align 16, !tbaa !118
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.y, align 16, !tbaa !90
  store ptr %i.ei, ptr %i.eh, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ej = load ptr, ptr %1, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 120
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ap unwind label %bb.bt     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !49 ; 2 uses
  %i.eq = load <2 x ptr>, ptr %i.em, align 8, !tbaa !50
  store <2 x ptr> %i.eq, ptr %11, align 16, !tbaa !50
  %.not.i.i.i51 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i51, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i52 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = load i32, ptr %i.er, align 4, !tbaa !3
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.as:                                            ; preds = %bb.aq
  %i.ev = atomicrmw volatile add ptr %i.er, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.ap, %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ee, ptr %i.a, align 8, !tbaa !67, !noalias !286
  %i.ew = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc53 unwind label %bb.bu  ; 6 uses

.noexc53:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 1, ptr %i.ex, align 8, !tbaa !51, !noalias !289
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 1, ptr %i.ey, align 4, !tbaa !53, !noalias !289
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ew, align 8, !tbaa !54, !noalias !289
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !289

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc53
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 160) #27, !noalias !289
  br label %.body54

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ew, ptr %i.fc, align 8, !tbaa !49
  %i.fd = load ptr, ptr %i.en, align 8, !tbaa !49 ; 8 uses
  %.not.i.i60 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i60, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fe, align 8, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !53
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !54
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #26, !inline_history !125
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !54
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i61 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i61, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

bb.ax:                                            ; preds = %bb.av
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i63 = phi i32 [ %i.fh, %bb.aw ], [ %i.fr, %bb.ax ]
  %i.fs = icmp eq i32 %.0.i.i.i.i63, 1
  br i1 %i.fs, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62, %bb.ay
  %i.ft = load ptr, ptr %10, align 16, !tbaa !87  ; 3 uses
  %i.fu = load ptr, ptr %i.ef, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ft, %i.fu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gm, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ft, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fx, align 8, !tbaa !51
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !53
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #26, !inline_history !126
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !54
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ga, %bb.bc ], [ %i.gk, %bb.bd ]
  %i.gl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gl, label %bb.be, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ba, %.lr.ph.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.gm, %i.fu
  br i1 %.not.i.i.i64, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ft, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.go = load ptr, ptr %i.eh, align 16, !tbaa !90
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bf
  %i.gs = load ptr, ptr %i.ec, align 8, !tbaa !49 ; 8 uses
  %.not.i.i65 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i65, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 4 uses
  %i.gu = load atomic i64, ptr %i.gt acquire, align 8 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 4294967297
  %i.gw = trunc i64 %i.gu to i32                  ; 2 uses
  br i1 %i.gv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gt, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 0, ptr %i.gx, align 4, !tbaa !53
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !54
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #26, !inline_history !128
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i66 = icmp eq i8 %i.he, 0
  br i1 %.not.i.i.i66, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hf = add nsw i32 %i.gw, -1
  store i32 %i.hf, ptr %i.gt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67

bb.bk:                                            ; preds = %bb.bi
  %i.hg = atomicrmw volatile add ptr %i.gt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i68 = phi i32 [ %i.gw, %bb.bj ], [ %i.hg, %bb.bk ]
  %i.hh = icmp eq i32 %.0.i.i.i.i68, 1
  br i1 %i.hh, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67, %bb.bl
  %i.hi = load ptr, ptr %i.eb, align 8, !tbaa !49 ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZNK5arrow11RecordBatch13SelectColumnsERKSt6vectorIiSaIiEE:bb.a
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i89, !llvm.loop !201

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i96 = load ptr, ptr %4, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit87
  %i.ju = phi ptr [ %.pr.i96, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ja, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit87 ] ; 3 uses
  %.not.i.i1.i97 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i1.i97, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.jv = load ptr, ptr %i.v, align 8, !tbaa !173
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jy) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.cl:                                            ; preds = %.body49, %bb.am
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %.body49 ], [ %.pn, %bb.am ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.c
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.cl ], [ %i.ab, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch5SliceEl(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %i.c = sub nsw i64 %i.b, %2
  %i.d = load ptr, ptr %1, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN5arrow11PrettyPrintERKNS_11RecordBatchEiPSo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.b, !prof !98

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull @.str.11, i32 noundef 452, i32 noundef 3)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(24) @.str.12)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(19) @.str.13)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA27_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(27) @.str.14)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(2) @.str.15)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(11) @.str.16)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(3) @.str.17)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.critedge unwind label %bb.t  ; 0 uses

.critedge:                                        ; preds = %bb.j
  %i.k = load ptr, ptr %6, align 8, !tbaa !37     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %.critedge30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.n = load i64, ptr %i.l, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %.critedge30

.critedge30:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr = load ptr, ptr %3, align 8, !tbaa !95     ; 2 uses
  %.not.i31 = icmp eq ptr %.pr, null
  br i1 %.not.i31, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.k, !prof !205

bb.k:                                             ; preds = %.critedge30
  %i.p = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !107, !range !114, !noundef !115
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge30, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !33, !alias.scope !298
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !39, !alias.scope !298
  store i8 0, ptr %i.s, align 8, !tbaa !40, !alias.scope !298
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !299, !noalias !298 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !noalias !298 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !303, !noalias !298 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !37, !alias.scope !298 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !40, !alias.scope !298
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %.body

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.al = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !54
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !54
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ar, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !40
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ar, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !54
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bb = getelementptr i8, ptr %i.az, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !304
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.p:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit39

bb.q:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.t:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.t
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.s
  %.pn21 = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.bi, %bb.r ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %5) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.u ], [ %i.bh, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bq = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %.not.i38 = icmp eq ptr %i.bq, null
  br i1 %.not.i38, label %_ZN5arrow6StatusD2Ev.exit39, label %bb.w, !prof !98

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !107, !range !114, !noundef !115
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN5arrow6StatusD2Ev.exit39, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit39

_ZN5arrow6StatusD2Ev.exit39:                      ; preds = %bb.x, %bb.w, %bb.v, %bb.p
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %.pn21.pn.pn, %bb.v ], [ %.pn21.pn.pn, %bb.w ], [ %.pn21.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit39
  %.pn26 = phi { ptr, i32 } [ %.pn21.pn.pn.pn, %_ZN5arrow6StatusD2Ev.exit39 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.af, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn26
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare void @_ZN5arrow11PrettyPrintERKNS_11RecordBatchEiPSo(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(19) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA27_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(27) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
end_hunk_5
begin_hunk_6_@_ZNK5arrow11RecordBatch6CopyToERKSt10shared_ptrINS_13MemoryManagerEE:bb.a
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !49
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !49
  store ptr null, ptr %i.aj, align 8, !tbaa !49
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !49
  store ptr null, ptr %5, align 16, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ba, ptr %i.al, align 8, !tbaa !91
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ae

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.n, %bb.o
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bc, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !53
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !231
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bf, %bb.s ], [ %i.bp, %bb.t ]
  %i.bq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bq, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.k
  %i.br = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !98

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bu, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !53
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #26, !inline_history !105
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #26, !inline_history !105
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.z:                                             ; preds = %bb.x
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.aa ], [ %i.ch, %bb.ab ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.ac, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !57

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.y
  %.pr.i.pr = load ptr, ptr %4, align 8, !tbaa !95 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.v
  %i.cj = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.br, %bb.v ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !107, !range !114, !noundef !115
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.as, label %bb.f, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bj

.critedge:                                        ; preds = %bb.f, %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.b, align 8, !tbaa !50
  store <2 x ptr> %i.cr, ptr %6, align 16, !tbaa !50
  %.not.i.i.i31 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i31, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.af

bb.af:                                            ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i32 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i32, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.cw = atomicrmw volatile add ptr %i.cs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %.critedge, %bb.ag, %bb.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.da = load <2 x ptr>, ptr %3, align 16, !tbaa !118
  store <2 x ptr> %i.da, ptr %7, align 16, !tbaa !118
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.g, align 16, !tbaa !90
  store ptr %i.dc, ptr %i.db, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !67, !noalias !319
  %i.dd = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc33 unwind label %bb.bb  ; 6 uses

.noexc33:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 1, ptr %i.de, align 8, !tbaa !51, !noalias !322
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 1, ptr %i.df, align 4, !tbaa !53, !noalias !322
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dd, align 8, !tbaa !54, !noalias !322
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !322

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc33
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 160) #27, !noalias !322
  br label %.body

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dm, align 8, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !53
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !125
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i39 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i39, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

bb.am:                                            ; preds = %bb.ak
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i41 = phi i32 [ %i.dp, %bb.al ], [ %i.dz, %bb.am ]
  %i.ea = icmp eq i32 %.0.i.i.i.i41, 1
  br i1 %i.ea, label %bb.an, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40, %bb.an
  %i.eb = load ptr, ptr %7, align 16, !tbaa !87   ; 3 uses
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eu, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.eb, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ef, align 8, !tbaa !51
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !53
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !54
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26, !inline_history !126
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ei, %bb.ar ], [ %i.es, %bb.as ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.et, label %bb.at, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ap, %.lr.ph.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.eu, %i.ec
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i43 = load ptr, ptr %7, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ev = phi ptr [ %.pr.i43, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.eb, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ew = load ptr, ptr %i.db, align 16, !tbaa !90
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.au
  %i.fa = load ptr, ptr %i.co, align 8, !tbaa !49 ; 8 uses
  %.not.i.i44 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i44, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fb, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !53
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !54
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #26, !inline_history !128
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !54
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i45 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i45, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

bb.az:                                            ; preds = %bb.ax
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i47 = phi i32 [ %i.fe, %bb.ay ], [ %i.fo, %bb.az ]
  %i.fp = icmp eq i32 %.0.i.i.i.i47, 1
  br i1 %i.fp, label %bb.ba, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.bb
end_hunk_6
begin_hunk_7_@_ZNK5arrow11RecordBatch12ViewOrCopyToERKSt10shared_ptrINS_13MemoryManagerEE:bb.a
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !49
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !49
  store ptr null, ptr %i.aj, align 8, !tbaa !49
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !49
  store ptr null, ptr %5, align 16, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ba, ptr %i.al, align 8, !tbaa !91
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ae

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.n, %bb.o
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bc, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !53
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !231
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bf, %bb.s ], [ %i.bp, %bb.t ]
  %i.bq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bq, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.k
  %i.br = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !98

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bu, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !53
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #26, !inline_history !105
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #26, !inline_history !105
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.z:                                             ; preds = %bb.x
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.aa ], [ %i.ch, %bb.ab ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.ac, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !57

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.y
  %.pr.i.pr = load ptr, ptr %4, align 8, !tbaa !95 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.v
  %i.cj = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.br, %bb.v ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !107, !range !114, !noundef !115
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.w, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.as, label %bb.f, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bj

.critedge:                                        ; preds = %bb.f, %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.b, align 8, !tbaa !50
  store <2 x ptr> %i.cr, ptr %6, align 16, !tbaa !50
  %.not.i.i.i31 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i31, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.af

bb.af:                                            ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i32 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i32, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.cw = atomicrmw volatile add ptr %i.cs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %.critedge, %bb.ag, %bb.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.da = load <2 x ptr>, ptr %3, align 16, !tbaa !118
  store <2 x ptr> %i.da, ptr %7, align 16, !tbaa !118
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.g, align 16, !tbaa !90
  store ptr %i.dc, ptr %i.db, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !67, !noalias !337
  %i.dd = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc33 unwind label %bb.bb  ; 6 uses

.noexc33:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 1, ptr %i.de, align 8, !tbaa !51, !noalias !340
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 1, ptr %i.df, align 4, !tbaa !53, !noalias !340
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dd, align 8, !tbaa !54, !noalias !340
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !340

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc33
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 160) #27, !noalias !340
  br label %.body

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dm, align 8, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !53
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !125
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i39 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i39, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

bb.am:                                            ; preds = %bb.ak
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i41 = phi i32 [ %i.dp, %bb.al ], [ %i.dz, %bb.am ]
  %i.ea = icmp eq i32 %.0.i.i.i.i41, 1
  br i1 %i.ea, label %bb.an, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40, %bb.an
  %i.eb = load ptr, ptr %7, align 16, !tbaa !87   ; 3 uses
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eu, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.eb, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ef, align 8, !tbaa !51
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !53
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !54
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26, !inline_history !126
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ei, %bb.ar ], [ %i.es, %bb.as ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.et, label %bb.at, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ap, %.lr.ph.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.eu, %i.ec
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i43 = load ptr, ptr %7, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ev = phi ptr [ %.pr.i43, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.eb, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ew = load ptr, ptr %i.db, align 16, !tbaa !90
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.au
  %i.fa = load ptr, ptr %i.co, align 8, !tbaa !49 ; 8 uses
  %.not.i.i44 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i44, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fb, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !53
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !54
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #26, !inline_history !128
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !54
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i45 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i45, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

bb.az:                                            ; preds = %bb.ax
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i47 = phi i32 [ %i.fe, %bb.ay ], [ %i.fo, %bb.az ]
  %i.fp = icmp eq i32 %.0.i.i.i.i47, 1
  br i1 %i.fp, label %bb.ba, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.bb
end_hunk_7
begin_hunk_8_@_ZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS_10MemoryPoolE:bb.a
bb.cm:                                            ; preds = %bb.cl
  %i.js = add nsw i32 %i.jj, -1
  store i32 %i.js, ptr %i.jg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i165

bb.cn:                                            ; preds = %bb.cl
  %i.jt = atomicrmw volatile add ptr %i.jg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i165

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i165: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i166 = phi i32 [ %i.jj, %bb.cm ], [ %i.jt, %bb.cn ]
  %i.ju = icmp eq i32 %.0.i.i.i.i166, 1
  br i1 %i.ju, label %bb.co, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167, !prof !57

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i165
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jf) #26
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i165, %bb.co
  %i.jv = load ptr, ptr %i.ce, align 8, !tbaa !49 ; 8 uses
  %.not.i.i168 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i168, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 4 uses
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 4294967297
  %i.jz = trunc i64 %i.jx to i32                  ; 2 uses
  br i1 %i.jy, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.jw, align 8, !tbaa !51
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !53
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !54
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #26, !inline_history !58
  %i.ke = load ptr, ptr %i.jv, align 8, !tbaa !54
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172

bb.cr:                                            ; preds = %bb.cp
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i169 = icmp eq i8 %i.kh, 0
  br i1 %.not.i.i.i169, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ki = add nsw i32 %i.jz, -1
  store i32 %i.ki, ptr %i.jw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i170

bb.ct:                                            ; preds = %bb.cr
  %i.kj = atomicrmw volatile add ptr %i.jw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i170

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i170: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i171 = phi i32 [ %i.jz, %bb.cs ], [ %i.kj, %bb.ct ]
  %i.kk = icmp eq i32 %.0.i.i.i.i171, 1
  br i1 %i.kk, label %bb.cu, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172, !prof !57

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i170
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i170, %bb.cu
  %i.kl = load ptr, ptr %16, align 8, !tbaa !37   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ca
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172
  %i.kn = load i64, ptr %i.ca, align 8, !tbaa !40
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !356
  store ptr null, ptr %25, align 16, !tbaa !359, !alias.scope !356
  %i.kp = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow14NumericBuilderINS4_9Int32TypeEEESaIvEJRPNS4_10MemoryPoolEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cv unwind label %bb.du

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !49, !noalias !362 ; 2 uses
  %i.ks = load <2 x ptr>, ptr %25, align 16, !tbaa !50, !noalias !362
  store <2 x ptr> %i.ks, ptr %26, align 16, !tbaa !50, !alias.scope !362
  %.not.i.i.i.i177 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i177, label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_14NumericBuilderINS0_9Int32TypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 3 uses
  %i.ku = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !362
  %.not.i.i.i.i.i = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i.i.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kv = load i32, ptr %i.kt, align 4, !tbaa !3, !noalias !362
  %i.kw = add nsw i32 %i.kv, 1
  store i32 %i.kw, ptr %i.kt, align 4, !tbaa !3, !noalias !362
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_14NumericBuilderINS0_9Int32TypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.cy:                                            ; preds = %bb.cw
  %i.kx = atomicrmw volatile add ptr %i.kt, i32 1 acq_rel, align 4, !noalias !362 ; 0 uses
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_14NumericBuilderINS0_9Int32TypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_14NumericBuilderINS0_9Int32TypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.cv, %bb.cx, %bb.cy
  %i.ky = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !365 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.lb = load ptr, ptr %i.la, align 16, !tbaa !368
  %.not.i.i178 = icmp eq ptr %i.kz, %i.lb
  br i1 %.not.i.i178, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_14NumericBuilderINS0_9Int32TypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.lc = load <2 x ptr>, ptr %26, align 16, !tbaa !50
  store ptr null, ptr %i.kq, align 8, !tbaa !49
  store <2 x ptr> %i.lc, ptr %i.kz, align 8, !tbaa !50
  store ptr null, ptr %26, align 16, !tbaa !369
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %i.ld, ptr %i.ky, align 8, !tbaa !365
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit

bb.da:                                            ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_14NumericBuilderINS0_9Int32TypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %26)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit unwind label %bb.dv

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.cz, %bb.da
  %i.le = load ptr, ptr %i.kq, align 8, !tbaa !49 ; 8 uses
  %.not.i.i180 = icmp eq ptr %i.le, null
  br i1 %.not.i.i180, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 4 uses
  %i.lg = load atomic i64, ptr %i.lf acquire, align 8 ; 2 uses
  %i.lh = icmp eq i64 %i.lg, 4294967297
  %i.li = trunc i64 %i.lg to i32                  ; 2 uses
  br i1 %i.lh, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.lf, align 8, !tbaa !51
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  store i32 0, ptr %i.lj, align 4, !tbaa !53
  %i.lk = load ptr, ptr %i.le, align 8, !tbaa !54
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %i.le) #26, !inline_history !372
  %i.ln = load ptr, ptr %i.le, align 8, !tbaa !54
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %i.le) #26, !inline_history !372
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dd:                                            ; preds = %bb.db
  %i.lq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i181 = icmp eq i8 %i.lq, 0
  br i1 %.not.i.i.i181, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lr = add nsw i32 %i.li, -1
  store i32 %i.lr, ptr %i.lf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182

bb.df:                                            ; preds = %bb.dd
  %i.ls = atomicrmw volatile add ptr %i.lf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i183 = phi i32 [ %i.li, %bb.de ], [ %i.ls, %bb.df ]
  %i.lt = icmp eq i32 %.0.i.i.i.i183, 1
  br i1 %i.lt, label %bb.dg, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.le) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit, %bb.dc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.lu = invoke noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #28
          to label %.noexc184 unwind label %bb.dw ; 6 uses

.noexc184:                                        ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i32 1, ptr %i.lv, align 8, !tbaa !51, !noalias !373
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store i32 1, ptr %i.lw, align 4, !tbaa !53, !noalias !373
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS0_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lu, align 8, !tbaa !54, !noalias !373
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.lx, i8 0, i64 392, i1 false), !noalias !373
  %i.ly = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %.noexc.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS1_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !373

.noexc.i.i.i.i:                                   ; preds = %.noexc184
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEEC2IS5_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeE(ptr noundef nonnull align 8 dereferenceable(392) %i.lx, ptr noundef %i.ly)
          to label %bb.dh unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS1_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !373

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS1_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc.i.i.i.i, %.noexc184
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 408) #27, !noalias !373
  br label %.body

bb.dh:                                            ; preds = %.noexc.i.i.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow19Dictionary32BuilderINS_10StringTypeEEE, i64 16), ptr %i.lx, align 8, !tbaa !54, !noalias !373
  store ptr %i.lu, ptr %i.ma, align 8, !tbaa !49, !alias.scope !373
  store ptr %i.lx, ptr %27, align 16, !tbaa !376, !alias.scope !373
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.mb = load ptr, ptr %4, align 8, !tbaa !172   ; 2 uses
  %i.mc = load ptr, ptr %i.u, align 8, !tbaa !172 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dh
  %i.me = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  br label %bb.dx

bb.di:                                            ; preds = %bb.k, %bb.j, %_ZN5arrow6StatusD2Ev.exit106
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.dj:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.dk:                                            ; preds = %.loopexit365
  %i.mj = landingpad { ptr, i32 }
          cleanup
  %i.mk = load ptr, ptr %12, align 8, !tbaa !353  ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIaSaIaEED2Ev.exit186, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ml = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !355
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mp) #27
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit186

_ZNSt6vectorIaSaIaEED2Ev.exit186:                 ; preds = %bb.dk, %bb.dl
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  br label %bb.jk

bb.dm:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dn:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.do:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit127
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dp:                                            ; preds = %bb.aj
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit364

bb.dq:                                            ; preds = %bb.ak
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit364.loopexit

bb.dr:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #26
  br label %.loopexit364.loopexit

.loopexit364.loopexit:                            ; preds = %bb.dr, %bb.dq
  %.pn60 = phi { ptr, i32 } [ %i.mv, %bb.dr ], [ %i.mu, %bb.dq ]
  %i.mw = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.mw) #26
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #26
  br label %.loopexit364

.loopexit364:                                     ; preds = %.loopexit364.loopexit, %bb.dp
  %i.mx = phi i1 [ false, %bb.dp ], [ true, %.loopexit364.loopexit ]
  %.pn60.pn = phi { ptr, i32 } [ %i.mt, %bb.dp ], [ %.pn60, %.loopexit364.loopexit ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #26
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit364, %bb.do
  %.146 = phi i1 [ %i.mx, %.loopexit364 ], [ false, %bb.do ] ; 2 uses
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %.loopexit364 ], [ %i.ms, %bb.do ] ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #26
  %i.my = load ptr, ptr %19, align 8, !tbaa !37   ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.co
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ds
  %i.na = load i64, ptr %i.co, align 8, !tbaa !40
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.dn
  %.051 = phi ptr [ %15, %bb.dn ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.cn, %bb.ds ]
  %.348 = phi i1 [ false, %bb.dn ], [ %.146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.146, %bb.ds ]
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mr, %bb.dn ], [ %.pn60.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn60.pn.pn, %bb.ds ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #26
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.dm
  %.152 = phi ptr [ %.051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %15, %bb.dm ] ; 2 uses
  %.449 = phi i1 [ %.348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ false, %bb.dm ]
  %.pn60.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.mq, %bb.dm ]
  %i.nc = load ptr, ptr %16, align 8, !tbaa !37   ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.ca
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.dt
  %i.ne = load i64, ptr %i.ca, align 8, !tbaa !40
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.ng = icmp eq ptr %15, %.152
  %or.cond = select i1 %.449, i1 true, i1 %i.ng
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %.preheader
  %i.nh = phi ptr [ %i.ni, %.preheader ], [ %.152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ]
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #26
  %i.nj = icmp eq ptr %i.ni, %15
  br i1 %i.nj, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.jj

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.dv:                                            ; preds = %bb.da
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.jh

bb.dw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dx:                                            ; preds = %.lr.ph, %bb.ej
  %.sroa.0350.0367 = phi ptr [ %i.mb, %.lr.ph ], [ %i.pa, %bb.ej ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store ptr null, ptr %29, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.nn = load ptr, ptr %i.a, align 8, !tbaa !343
  %i.no = load ptr, ptr %.sroa.0350.0367, align 8, !tbaa !92
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 56
  invoke void @_ZN5arrow11MakeBuilderEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEEPSt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %31, ptr noundef %i.nn, ptr noundef nonnull align 8 dereferenceable(16) %i.np, ptr noundef nonnull %29)
          to label %_ZN5arrow6StatusD2Ev.exit194 unwind label %bb.ea

_ZN5arrow6StatusD2Ev.exit194:                     ; preds = %bb.dx
  %i.nq = load ptr, ptr %31, align 8, !tbaa !95   ; 2 uses
  store ptr %i.nq, ptr %30, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %_ZN5arrow6StatusD2Ev.exit201, label %.critedge93, !prof !98

.critedge93:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit194
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %30) #26
  %i.ns = load ptr, ptr %30, align 8, !tbaa !95   ; 2 uses
  %.not.i195 = icmp eq ptr %i.ns, null
  br i1 %.not.i195, label %_ZN5arrow6StatusD2Ev.exit196, label %bb.dy, !prof !98

bb.dy:                                            ; preds = %.critedge93
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !107, !range !114, !noundef !115
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN5arrow6StatusD2Ev.exit196, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #26
  br label %_ZN5arrow6StatusD2Ev.exit196

_ZN5arrow6StatusD2Ev.exit196:                     ; preds = %.critedge93, %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.nw = load ptr, ptr %29, align 8, !tbaa !380  ; 3 uses
  %.not.i197 = icmp eq ptr %i.nw, null
  br i1 %.not.i197, label %bb.eo, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit196
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !54
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.nw) #26, !inline_history !381
  br label %bb.eo

bb.ea:                                            ; preds = %bb.dx
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.en

_ZN5arrow6StatusD2Ev.exit201:                     ; preds = %_ZN5arrow6StatusD2Ev.exit194
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  invoke void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.ek

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit201
  %i.ob = load ptr, ptr %i.me, align 8, !tbaa !365 ; 5 uses
  %i.oc = load ptr, ptr %i.mf, align 8, !tbaa !368
  %.not.i.i203 = icmp eq ptr %i.ob, %i.oc
  br i1 %.not.i.i203, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store ptr null, ptr %i.od, align 8, !tbaa !49
  %i.oe = load <2 x ptr>, ptr %32, align 16, !tbaa !50
  store ptr null, ptr %i.mg, align 8, !tbaa !49
  store <2 x ptr> %i.oe, ptr %i.ob, align 8, !tbaa !50
  store ptr null, ptr %32, align 16, !tbaa !369
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store ptr %i.of, ptr %i.me, align 8, !tbaa !365
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit205

bb.ec:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ob, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit205 unwind label %bb.el

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit205: ; preds = %bb.eb, %bb.ec
  %i.og = load ptr, ptr %i.mg, align 8, !tbaa !49 ; 8 uses
  %.not.i.i206 = icmp eq ptr %i.og, null
  br i1 %.not.i.i206, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit205
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 4 uses
  %i.oi = load atomic i64, ptr %i.oh acquire, align 8 ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 4294967297
  %i.ok = trunc i64 %i.oi to i32                  ; 2 uses
  br i1 %i.oj, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 0, ptr %i.oh, align 8, !tbaa !51
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 0, ptr %i.ol, align 4, !tbaa !53
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !54
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #26, !inline_history !372
  %i.op = load ptr, ptr %i.og, align 8, !tbaa !54
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #26, !inline_history !372
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210

bb.ef:                                            ; preds = %bb.ed
  %i.os = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i207 = icmp eq i8 %i.os, 0
  br i1 %.not.i.i.i207, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ot = add nsw i32 %i.ok, -1
  store i32 %i.ot, ptr %i.oh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208

bb.eh:                                            ; preds = %bb.ef
  %i.ou = atomicrmw volatile add ptr %i.oh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208: ; preds = %bb.eh, %bb.eg
  %.0.i.i.i.i209 = phi i32 [ %i.ok, %bb.eg ], [ %i.ou, %bb.eh ]
  %i.ov = icmp eq i32 %.0.i.i.i.i209, 1
  br i1 %i.ov, label %bb.ei, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210, !prof !57

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit205, %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.ow = load ptr, ptr %29, align 8, !tbaa !380  ; 3 uses
  %.not.i211 = icmp eq ptr %i.ow, null
  br i1 %.not.i211, label %bb.ej, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i212

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i212: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !54
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ow) #26, !inline_history !381
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i212, %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0350.0367, i64 16 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.mc
  br i1 %i.pb, label %.critedge95, label %bb.dx

bb.ek:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit201
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.ec
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #26
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.pn70 = phi { ptr, i32 } [ %i.pd, %bb.el ], [ %i.pc, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ea
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %bb.em ], [ %i.oa, %bb.ea ]
  %i.pe = load ptr, ptr %29, align 8, !tbaa !380  ; 3 uses
  %.not.i214 = icmp eq ptr %i.pe, null
  br i1 %.not.i214, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit216, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i215

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i215: ; preds = %bb.en
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !54
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.pe) #26, !inline_history !381
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit216

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit216: ; preds = %bb.en, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.jg

bb.eo:                                            ; preds = %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i, %_ZN5arrow6StatusD2Ev.exit196
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.hn

.critedge95:                                      ; preds = %bb.ej, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.pi = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #28
          to label %.noexc217 unwind label %bb.gh ; 13 uses

.noexc217:                                        ; preds = %.critedge95
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i32 1, ptr %i.pj, align 8, !tbaa !51, !noalias !382
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store i32 1, ptr %i.pk, align 4, !tbaa !53, !noalias !382
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.pi, align 8, !tbaa !54, !noalias !382
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 4 uses
  %i.pm = load ptr, ptr %i.a, align 8, !tbaa !343, !noalias !382 ; 2 uses
  invoke void @_ZN5arrow17BasicUnionBuilderC2EPNS_10MemoryPoolElRKSt6vectorISt10shared_ptrINS_12ArrayBuilderEESaIS6_EERKS4_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(368) %i.pl, ptr noundef %i.pm, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ep unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !382

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc217
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef 384) #27, !noalias !382
  br label %.body218

bb.ep:                                            ; preds = %.noexc217
  %i.po = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17DenseUnionBuilderE, i64 16), ptr %i.pl, align 8, !tbaa !54, !noalias !382
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pi, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pp, i8 0, i64 16, i1 false), !noalias !382
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 344
  store ptr %i.pm, ptr %i.pq, align 8, !tbaa !385, !noalias !382
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pi, i64 352
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.pr, align 8, !tbaa !390, !noalias !382
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 360
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pi, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false), !noalias !382
  store i64 64, ptr %i.pt, align 8, !tbaa !391, !noalias !382
  store ptr %i.pi, ptr %i.po, align 8, !tbaa !49, !alias.scope !382
  store ptr %i.pl, ptr %33, align 16, !tbaa !392, !alias.scope !382
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.pu = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.pv = load ptr, ptr %i.ma, align 8, !tbaa !49, !noalias !394 ; 2 uses
  %i.pw = load <2 x ptr>, ptr %27, align 16, !tbaa !50, !noalias !394
  store <2 x ptr> %i.pw, ptr %35, align 16, !tbaa !50, !alias.scope !394
  %.not.i.i.i.i220 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i220, label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 3 uses
  %i.py = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !394
  %.not.i.i.i.i.i221 = icmp eq i8 %i.py, 0
  br i1 %.not.i.i.i.i.i221, label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.pz = load i32, ptr %i.px, align 4, !tbaa !3, !noalias !394
  %i.qa = add nsw i32 %i.pz, 1
  store i32 %i.qa, ptr %i.px, align 4, !tbaa !3, !noalias !394
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.ep, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  store ptr %i.pl, ptr %36, align 16, !tbaa !369, !alias.scope !397
  %i.qb = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store ptr %i.pi, ptr %i.qb, align 8, !tbaa !49, !alias.scope !397
  br label %bb.es

_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.eq
  %i.qc = atomicrmw volatile add ptr %i.px, i32 1 acq_rel, align 4, !noalias !394 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.qd = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %.pre369 = load ptr, ptr %i.po, align 8, !tbaa !49, !noalias !400 ; 2 uses
  %i.qe = load <2 x ptr>, ptr %33, align 16, !tbaa !50, !noalias !400
  store <2 x ptr> %i.qe, ptr %36, align 16, !tbaa !50, !alias.scope !400
  %.not.i.i.i.i222 = icmp eq ptr %.pre369, null
  br i1 %.not.i.i.i.i222, label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_17DenseUnionBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.es

bb.es:                                            ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.qf = phi ptr [ %i.qb, %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread ], [ %i.qd, %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit ] ; 2 uses
  %i.qg = phi ptr [ %i.pi, %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread ], [ %.pre369, %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 3 uses
  %i.qi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !400
  %.not.i.i.i.i.i223 = icmp eq i8 %i.qi, 0
  br i1 %.not.i.i.i.i.i223, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qj = load i32, ptr %i.qh, align 4, !tbaa !3, !noalias !400
  %i.qk = add nsw i32 %i.qj, 1
  store i32 %i.qk, ptr %i.qh, align 4, !tbaa !3, !noalias !400
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_17DenseUnionBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.eu:                                            ; preds = %bb.es
  %i.ql = atomicrmw volatile add ptr %i.qh, i32 1 acq_rel, align 4, !noalias !400 ; 0 uses
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_17DenseUnionBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_17DenseUnionBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.et, %bb.eu
  %i.qm = phi ptr [ %i.qd, %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_19Dictionary32BuilderINS0_10StringTypeEEEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.qf, %bb.et ], [ %i.qf, %bb.eu ]
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  store ptr null, ptr %34, align 16, !tbaa !405, !alias.scope !402
  %i.qn = invoke noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #28
          to label %.noexc224 unwind label %bb.gi ; 6 uses

.noexc224:                                        ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_17DenseUnionBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i32 1, ptr %i.qo, align 8, !tbaa !51, !noalias !402
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  store i32 1, ptr %i.qp, align 4, !tbaa !53, !noalias !402
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qn, align 8, !tbaa !54, !noalias !402
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 16 ; 2 uses
  %i.qr = load ptr, ptr %i.a, align 8, !tbaa !343, !noalias !402
  invoke void @_ZN5arrow10MapBuilderC1EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_b(ptr noundef nonnull align 8 dereferenceable(296) %i.qq, ptr noundef %i.qr, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, i1 noundef zeroext false)
          to label %bb.ev unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !402

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc224
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef 312) #27, !noalias !402
  br label %.body225

bb.ev:                                            ; preds = %.noexc224
  %i.qt = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  store ptr %i.qn, ptr %i.qt, align 8, !tbaa !49, !alias.scope !402
  store ptr %i.qq, ptr %34, align 16, !tbaa !408, !alias.scope !402
  %i.qu = load ptr, ptr %i.qm, align 8, !tbaa !49 ; 8 uses
  %.not.i.i227 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i227, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8 ; 4 uses
  %i.qw = load atomic i64, ptr %i.qv acquire, align 8 ; 2 uses
  %i.qx = icmp eq i64 %i.qw, 4294967297
  %i.qy = trunc i64 %i.qw to i32                  ; 2 uses
  br i1 %i.qx, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.qv, align 8, !tbaa !51
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  store i32 0, ptr %i.qz, align 4, !tbaa !53
  %i.ra = load ptr, ptr %i.qu, align 8, !tbaa !54
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #26, !inline_history !372
  %i.rd = load ptr, ptr %i.qu, align 8, !tbaa !54
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #26, !inline_history !372
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231

bb.ey:                                            ; preds = %bb.ew
  %i.rg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i228 = icmp eq i8 %i.rg, 0
  br i1 %.not.i.i.i228, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rh = add nsw i32 %i.qy, -1
  store i32 %i.rh, ptr %i.qv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i229

bb.fa:                                            ; preds = %bb.ey
  %i.ri = atomicrmw volatile add ptr %i.qv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i229

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i229: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i230 = phi i32 [ %i.qy, %bb.ez ], [ %i.ri, %bb.fa ]
  %i.rj = icmp eq i32 %.0.i.i.i.i230, 1
  br i1 %i.rj, label %bb.fb, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231, !prof !57

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i229
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231: ; preds = %bb.ev, %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i229, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.rk = load ptr, ptr %i.pu, align 8, !tbaa !49 ; 8 uses
  %.not.i.i232 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i232, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 4 uses
  %i.rm = load atomic i64, ptr %i.rl acquire, align 8 ; 2 uses
  %i.rn = icmp eq i64 %i.rm, 4294967297
  %i.ro = trunc i64 %i.rm to i32                  ; 2 uses
  br i1 %i.rn, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i32 0, ptr %i.rl, align 8, !tbaa !51
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  store i32 0, ptr %i.rp, align 4, !tbaa !53
  %i.rq = load ptr, ptr %i.rk, align 8, !tbaa !54
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rk) #26, !inline_history !372
  %i.rt = load ptr, ptr %i.rk, align 8, !tbaa !54
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(16) %i.rk) #26, !inline_history !372
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236

bb.fe:                                            ; preds = %bb.fc
  %i.rw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i233 = icmp eq i8 %i.rw, 0
  br i1 %.not.i.i.i233, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.rx = add nsw i32 %i.ro, -1
  store i32 %i.rx, ptr %i.rl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234

bb.fg:                                            ; preds = %bb.fe
  %i.ry = atomicrmw volatile add ptr %i.rl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234: ; preds = %bb.fg, %bb.ff
  %.0.i.i.i.i235 = phi i32 [ %i.ro, %bb.ff ], [ %i.ry, %bb.fg ]
  %i.rz = icmp eq i32 %.0.i.i.i.i235, 1
  br i1 %i.rz, label %bb.fh, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236, !prof !57

bb.fh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rk) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit231, %bb.fd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.sa = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.sb = load ptr, ptr %i.qt, align 8, !tbaa !49, !noalias !409 ; 2 uses
  %i.sc = load <2 x ptr>, ptr %34, align 16, !tbaa !50, !noalias !409
  store <2 x ptr> %i.sc, ptr %37, align 16, !tbaa !50, !alias.scope !409
  %.not.i.i.i.i237 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i.i237, label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_10MapBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 8 ; 3 uses
  %i.se = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !409
  %.not.i.i.i.i.i238 = icmp eq i8 %i.se, 0
  br i1 %.not.i.i.i.i.i238, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.sf = load i32, ptr %i.sd, align 4, !tbaa !3, !noalias !409
  %i.sg = add nsw i32 %i.sf, 1
  store i32 %i.sg, ptr %i.sd, align 4, !tbaa !3, !noalias !409
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_10MapBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.fk:                                            ; preds = %bb.fi
  %i.sh = atomicrmw volatile add ptr %i.sd, i32 1 acq_rel, align 4, !noalias !409 ; 0 uses
  br label %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_10MapBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_10MapBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit236, %bb.fj, %bb.fk
  %i.si = load ptr, ptr %i.ky, align 8, !tbaa !365 ; 4 uses
  %i.sj = load ptr, ptr %i.la, align 16, !tbaa !368
  %.not.i.i239 = icmp eq ptr %i.si, %i.sj
  br i1 %.not.i.i239, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_10MapBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.sk = load <2 x ptr>, ptr %37, align 16, !tbaa !50
  store ptr null, ptr %i.sa, align 8, !tbaa !49
  store <2 x ptr> %i.sk, ptr %i.si, align 8, !tbaa !50
  store ptr null, ptr %37, align 16, !tbaa !369
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  store ptr %i.sl, ptr %i.ky, align 8, !tbaa !365
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit241

bb.fm:                                            ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_10MapBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr %i.si, ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit241 unwind label %bb.gj

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit241: ; preds = %bb.fl, %bb.fm
  %i.sm = load ptr, ptr %i.sa, align 8, !tbaa !49 ; 8 uses
  %.not.i.i242 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i242, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit246, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backEOS3_.exit241
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 4 uses
  %i.so = load atomic i64, ptr %i.sn acquire, align 8 ; 2 uses
  %i.sp = icmp eq i64 %i.so, 4294967297
  %i.sq = trunc i64 %i.so to i32                  ; 2 uses
  br i1 %i.sp, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.sn, align 8, !tbaa !51
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  store i32 0, ptr %i.sr, align 4, !tbaa !53
  %i.ss = load ptr, ptr %i.sm, align 8, !tbaa !54
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #26, !inline_history !372
  %i.sv = load ptr, ptr %i.sm, align 8, !tbaa !54
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #26, !inline_history !372
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit246

bb.fp:                                            ; preds = %bb.fn
  %i.sy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i243 = icmp eq i8 %i.sy, 0
  br i1 %.not.i.i.i243, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.sz = add nsw i32 %i.sq, -1
  store i32 %i.sz, ptr %i.sn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244

bb.fr:                                            ; preds = %bb.fp
  %i.ta = atomicrmw volatile add ptr %i.sn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i244: ; preds = %bb.fr, %bb.fq
end_hunk_8
begin_hunk_9_@_ZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS_10MemoryPoolE:bb.a
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(16) %i.tk) #26, !inline_history !414
  %i.tt = load ptr, ptr %i.tk, align 8, !tbaa !54
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8
  call void %i.tv(ptr noundef nonnull align 8 dereferenceable(16) %i.tk) #26, !inline_history !414
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.fw:                                            ; preds = %bb.fu
  %i.tw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i251 = icmp eq i8 %i.tw, 0
  br i1 %.not.i.i.i.i.i.i.i.i251, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.tx = add nsw i32 %i.to, -1
  store i32 %i.tx, ptr %i.tl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i252

bb.fy:                                            ; preds = %bb.fw
  %i.ty = atomicrmw volatile add ptr %i.tl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i252

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i252: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i.i.i.i253 = phi i32 [ %i.to, %bb.fx ], [ %i.ty, %bb.fy ]
  %i.tz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i253, 1
  br i1 %i.tz, label %bb.fz, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !57

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i252
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tk) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i252, %bb.fv, %.lr.ph.i.i.i248
  %i.ua = getelementptr inbounds nuw i8, ptr %.05.i.i.i249, i64 16 ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.ua, %i.ti
  br i1 %.not.i.i.i254, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i248, !llvm.loop !415

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i255 = load ptr, ptr %39, align 16, !tbaa !413
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.ft
  %i.ub = phi ptr [ %.pr.i255, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.th, %bb.ft ] ; 3 uses
  %.not.i.i1.i256 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i1.i256, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.uc = load ptr, ptr %i.te, align 16, !tbaa !368
  %i.ud = ptrtoint ptr %i.uc to i64
  %i.ue = ptrtoint ptr %i.ub to i64
  %i.uf = sub i64 %i.ud, %i.ue
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef %i.uf) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  %i.ug = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  %i.uh = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %bb.gb unwind label %bb.gl     ; 8 uses

bb.gb:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ui = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %38, ptr %i.uh, align 16, !tbaa !416
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  store ptr %25, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !418
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  store ptr %34, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !420
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  store ptr %27, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !422
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  store ptr %5, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !347
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 40
  store ptr %33, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !424
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  store ptr %28, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !426
  store ptr %i.uh, ptr %42, align 8, !tbaa !50
  store ptr @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1E9_M_invokeERKSt9_Any_dataS5_", ptr %i.ui, align 8, !tbaa !349
  store ptr @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.ug, align 8, !tbaa !352
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_119EnumerateStatisticsERKNS_11RecordBatchESt8functionIFNS_6StatusERKNS0_20EnumeratedStatisticsEEE(ptr dead_on_unwind noalias writable align 8 %41, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %42)
          to label %_ZN5arrow6StatusD2Ev.exit259 unwind label %bb.gm

_ZN5arrow6StatusD2Ev.exit259:                     ; preds = %bb.gb
  %i.uj = load ptr, ptr %41, align 8, !tbaa !95   ; 2 uses
  store ptr %i.uj, ptr %40, align 8, !tbaa !95
  %i.uk = load ptr, ptr %i.ug, align 8, !tbaa !352 ; 2 uses
  %.not.i260 = icmp eq ptr %i.uk, null
  br i1 %.not.i260, label %_ZNSt14_Function_baseD2Ev.exit261, label %bb.gc

bb.gc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit259
  %i.ul = invoke noundef zeroext i1 %i.uk(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit261thread-pre-split unwind label %bb.gd ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.um = landingpad { ptr, i32 }
          catch ptr null
  %i.un = extractvalue { ptr, i32 } %i.um, 0
  call void @__clang_call_terminate(ptr %i.un) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit261thread-pre-split: ; preds = %bb.gc
  %.pr363 = load ptr, ptr %40, align 8, !tbaa !95
  br label %_ZNSt14_Function_baseD2Ev.exit261

_ZNSt14_Function_baseD2Ev.exit261:                ; preds = %_ZNSt14_Function_baseD2Ev.exit261thread-pre-split, %_ZN5arrow6StatusD2Ev.exit259
  %i.uo = phi ptr [ %.pr363, %_ZNSt14_Function_baseD2Ev.exit261thread-pre-split ], [ %i.uj, %_ZN5arrow6StatusD2Ev.exit259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %_ZN5arrow6StatusD2Ev.exit269, label %bb.ge, !prof !98

bb.ge:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit261
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  %i.uq = load ptr, ptr %40, align 8, !tbaa !95   ; 2 uses
  %.not.i262 = icmp eq ptr %i.uq, null
  br i1 %.not.i262, label %_ZN5arrow6StatusD2Ev.exit263, label %bb.gf, !prof !98

bb.gf:                                            ; preds = %bb.ge
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %_ZN5arrow6StatusD2Ev.exit263, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  br label %_ZN5arrow6StatusD2Ev.exit263

_ZN5arrow6StatusD2Ev.exit263:                     ; preds = %bb.ge, %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.gq

bb.gh:                                            ; preds = %.critedge95
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body218

bb.gi:                                            ; preds = %_ZSt19static_pointer_castIN5arrow12ArrayBuilderENS0_17DenseUnionBuilderEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %.body225

.body225:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.gi
  %eh.lpad-body226 = phi { ptr, i32 } [ %i.uv, %bb.gi ], [ %i.qs, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.hm

bb.gj:                                            ; preds = %bb.fm
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.hl

bb.gk:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit246
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %39) #26
  br label %bb.hk

bb.gl:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit267

bb.gm:                                            ; preds = %bb.gb
  %i.uz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.va = load ptr, ptr %i.ug, align 8, !tbaa !352 ; 2 uses
  %.not.i266 = icmp eq ptr %i.va, null
  br i1 %.not.i266, label %_ZNSt14_Function_baseD2Ev.exit267, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.vb = invoke noundef zeroext i1 %i.va(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit267 unwind label %bb.go ; 0 uses

bb.go:                                            ; preds = %bb.gn
  %i.vc = landingpad { ptr, i32 }
          catch ptr null
  %i.vd = extractvalue { ptr, i32 } %i.vc, 0
  call void @__clang_call_terminate(ptr %i.vd) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit267:                ; preds = %bb.gn, %bb.gm, %bb.gl
  %.pn73.pn = phi { ptr, i32 } [ %i.uy, %bb.gl ], [ %i.uz, %bb.gm ], [ %i.uz, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.hj

_ZN5arrow6StatusD2Ev.exit269:                     ; preds = %_ZNSt14_Function_baseD2Ev.exit261
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.47") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %38)
          to label %bb.gq unwind label %bb.gp

bb.gp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit269
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.gq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit263, %_ZN5arrow6StatusD2Ev.exit269
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StructBuilderE, i64 16), ptr %38, align 8, !tbaa !54
  %i.vf = getelementptr inbounds nuw i8, ptr %38, i64 152
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i270 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i270, label %_ZN5arrow13StructBuilderD2Ev.exit, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 4 uses
  %i.vi = load atomic i64, ptr %i.vh acquire, align 8 ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 4294967297
  %i.vk = trunc i64 %i.vi to i32                  ; 2 uses
  br i1 %i.vj, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %i.vh, align 8, !tbaa !51
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 12
  store i32 0, ptr %i.vl, align 4, !tbaa !53
  %i.vm = load ptr, ptr %i.vg, align 8, !tbaa !54
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #26, !inline_history !428
  %i.vp = load ptr, ptr %i.vg, align 8, !tbaa !54
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #26, !inline_history !428
  br label %_ZN5arrow13StructBuilderD2Ev.exit

bb.gt:                                            ; preds = %bb.gr
  %i.vs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i271 = icmp eq i8 %i.vs, 0
  br i1 %.not.i.i.i.i271, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vt = add nsw i32 %i.vk, -1
  store i32 %i.vt, ptr %i.vh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.gv:                                            ; preds = %bb.gt
  %i.vu = atomicrmw volatile add ptr %i.vh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.gv, %bb.gu
  %.0.i.i.i.i.i = phi i32 [ %i.vk, %bb.gu ], [ %i.vu, %bb.gv ]
  %i.vv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.vv, label %bb.gw, label %_ZN5arrow13StructBuilderD2Ev.exit, !prof !57

bb.gw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #26
  br label %_ZN5arrow13StructBuilderD2Ev.exit

_ZN5arrow13StructBuilderD2Ev.exit:                ; preds = %bb.gq, %bb.gs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.gw
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(160) %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.vw = load ptr, ptr %i.qt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i272 = icmp eq ptr %i.vw, null
  br i1 %.not.i.i272, label %_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.gx

bb.gx:                                            ; preds = %_ZN5arrow13StructBuilderD2Ev.exit
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8 ; 4 uses
  %i.vy = load atomic i64, ptr %i.vx acquire, align 8 ; 2 uses
  %i.vz = icmp eq i64 %i.vy, 4294967297
  %i.wa = trunc i64 %i.vy to i32                  ; 2 uses
  br i1 %i.vz, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  store i32 0, ptr %i.vx, align 8, !tbaa !51
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 12
  store i32 0, ptr %i.wb, align 4, !tbaa !53
  %i.wc = load ptr, ptr %i.vw, align 8, !tbaa !54
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(16) %i.vw) #26, !inline_history !429
  %i.wf = load ptr, ptr %i.vw, align 8, !tbaa !54
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 24
  %i.wh = load ptr, ptr %i.wg, align 8
  call void %i.wh(ptr noundef nonnull align 8 dereferenceable(16) %i.vw) #26, !inline_history !429
  br label %_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gz:                                            ; preds = %bb.gx
  %i.wi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i273 = icmp eq i8 %i.wi, 0
  br i1 %.not.i.i.i273, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.wj = add nsw i32 %i.wa, -1
  store i32 %i.wj, ptr %i.vx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i274

bb.hb:                                            ; preds = %bb.gz
  %i.wk = atomicrmw volatile add ptr %i.vx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i274

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i274: ; preds = %bb.hb, %bb.ha
  %.0.i.i.i.i275 = phi i32 [ %i.wa, %bb.ha ], [ %i.wk, %bb.hb ]
  %i.wl = icmp eq i32 %.0.i.i.i.i275, 1
  br i1 %i.wl, label %bb.hc, label %_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.hc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i274
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vw) #26
  br label %_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow13StructBuilderD2Ev.exit, %bb.gy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i274, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.wm = load ptr, ptr %i.po, align 8, !tbaa !49 ; 8 uses
  %.not.i.i276 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i276, label %_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 4 uses
  %i.wo = load atomic i64, ptr %i.wn acquire, align 8 ; 2 uses
  %i.wp = icmp eq i64 %i.wo, 4294967297
  %i.wq = trunc i64 %i.wo to i32                  ; 2 uses
  br i1 %i.wp, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store i32 0, ptr %i.wn, align 8, !tbaa !51
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 0, ptr %i.wr, align 4, !tbaa !53
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !54
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #26, !inline_history !430
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !54
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #26, !inline_history !430
  br label %_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.hf:                                            ; preds = %bb.hd
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i277 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i277, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.wz = add nsw i32 %i.wq, -1
  store i32 %i.wz, ptr %i.wn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i278

bb.hh:                                            ; preds = %bb.hf
  %i.xa = atomicrmw volatile add ptr %i.wn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i278

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i278: ; preds = %bb.hh, %bb.hg
  %.0.i.i.i.i279 = phi i32 [ %i.wq, %bb.hg ], [ %i.xa, %bb.hh ]
  %i.xb = icmp eq i32 %.0.i.i.i.i279, 1
  br i1 %i.xb, label %bb.hi, label %_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.hi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i278
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #26
  br label %_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.he, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i278, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.hn

bb.hj:                                            ; preds = %bb.gp, %_ZNSt14_Function_baseD2Ev.exit267
  %.pn76 = phi { ptr, i32 } [ %i.ve, %bb.gp ], [ %.pn73.pn, %_ZNSt14_Function_baseD2Ev.exit267 ]
  call void @_ZN5arrow13StructBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %38) #26
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.gk
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.hj ], [ %i.ux, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.gj
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.hk ], [ %i.uw, %bb.gj ]
  call void @_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #26
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %.body225
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn, %bb.hl ], [ %eh.lpad-body226, %.body225 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #26
  br label %.body218

.body218:                                         ; preds = %bb.gh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.hm
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn, %bb.hm ], [ %i.uu, %bb.gh ], [ %i.pn, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.jg

bb.hn:                                            ; preds = %bb.eo, %_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.xc = load ptr, ptr %28, align 8, !tbaa !413  ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !365 ; 2 uses
  %.not4.i.i.i280 = icmp eq ptr %i.xc, %i.xe
  br i1 %.not4.i.i.i280, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i291, label %.lr.ph.i.i.i281

.lr.ph.i.i.i281:                                  ; preds = %bb.hn, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i287
  %.05.i.i.i282 = phi ptr [ %i.xw, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i287 ], [ %i.xc, %bb.hn ] ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.05.i.i.i282, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i283 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i.i.i.i.i.i283, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i287, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph.i.i.i281
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8 ; 4 uses
  %i.xi = load atomic i64, ptr %i.xh acquire, align 8 ; 2 uses
  %i.xj = icmp eq i64 %i.xi, 4294967297
  %i.xk = trunc i64 %i.xi to i32                  ; 2 uses
  br i1 %i.xj, label %bb.hp, label %bb.hq
end_hunk_9
begin_hunk_10_@_ZN5arrow12_GLOBAL__N_119EnumerateStatisticsERKNS_11RecordBatchESt8functionIFNS_6StatusERKNS0_20EnumeratedStatisticsEEE:bb.a
bb.x:                                             ; preds = %bb.v
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow15ArrayStatisticsEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow15ArrayStatisticsEEC2ERKS2_.exit: ; preds = %bb.u, %bb.w, %bb.x
  %i.by = load ptr, ptr %i.bd, align 8, !tbaa !49 ; 8 uses
  %.not.i.i112 = icmp eq ptr %i.by, null
  br i1 %.not.i.i112, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow15ArrayStatisticsEEC2ERKS2_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bz, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !53
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26, !inline_history !231
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i113 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i113, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.cc, %bb.ab ], [ %i.cm, %bb.ac ]
  %i.cn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cn, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow15ArrayStatisticsEEC2ERKS2_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.co = load ptr, ptr %7, align 16, !tbaa !457  ; 6 uses
  %.not380 = icmp eq ptr %i.co, null
  br i1 %.not380, label %.critedge90, label %bb.ag

bb.ae:                                            ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.af:                                            ; preds = %bb.t
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.gp

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i8 1, ptr %i.a, align 4, !tbaa !447
  %.sroa.0.0.insert.insert = or disjoint i64 %indvars.iv, 4294967296
  store i64 %.sroa.0.0.insert.insert, ptr %i.f, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !458, !range !114, !noundef !115
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ah, label %bb.bo

bb.ah:                                            ; preds = %bb.ag
  %i.cu = load i32, ptr %5, align 8, !tbaa !435
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %5, align 8, !tbaa !435
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !460
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.ai, label %bb.ay

bb.ai:                                            ; preds = %bb.ah
  store ptr @.str.34, ptr %i.c, align 8, !tbaa !449
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %bb.aj unwind label %.loopexit ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !131
  store ptr %i.da, ptr %i.h, align 8, !tbaa !131
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !49 ; 4 uses
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i.i115, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit125, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not7.i.i.i116 = icmp eq ptr %i.dc, null
  br i1 %.not7.i.i.i116, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i118, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i117 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i117, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i118

bb.an:                                            ; preds = %bb.al
  %i.di = atomicrmw volatile add ptr %i.de, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i124 = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i118

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i118: ; preds = %bb.an, %bb.am, %bb.ak
  %i.dj = phi ptr [ %i.dd, %bb.ak ], [ %i.dd, %bb.am ], [ %.pr.pre.i.i.i124, %bb.an ] ; 8 uses
  %.not8.i.i.i119 = icmp eq ptr %i.dj, null
  br i1 %.not8.i.i.i119, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i118
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dk, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !53
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !54
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #26, !inline_history !450
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #26, !inline_history !450
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123

bb.aq:                                            ; preds = %bb.ao
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i120 = icmp eq i8 %i.dv, 0
  br i1 %.not.i9.i.i.i120, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i121

bb.as:                                            ; preds = %bb.aq
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i121

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i121: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i122 = phi i32 [ %i.dn, %bb.ar ], [ %i.dx, %bb.as ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i122, 1
  br i1 %i.dy, label %bb.at, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123, !prof !57

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i121
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123: ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i121, %bb.ap, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i118
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !49
  %.pre419 = load ptr, ptr %7, align 16, !tbaa !457
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit125

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit125: ; preds = %bb.aj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123
  %i.dz = phi ptr [ %i.co, %bb.aj ], [ %.pre419, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i123 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !458, !range !114, !noundef !115
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit127, label %.invoke

.invoke:                                          ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit125, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit352, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit321, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit288, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit257, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit236, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit203, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit182, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit153
  invoke void @_ZSt27__throw_bad_optional_accessv() #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit127: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit125
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !460
  %.not.i.i128 = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i128, label %_ZSt3getIlJldEERT_RSt7variantIJDpT0_EE.exit, label %.invoke475

.invoke475:                                       ; preds = %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit127, %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit259, %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit238, %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit205, %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit184, %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit155
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.eg, align 8, !tbaa !54
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr @.str.47, ptr %i.eh, align 8, !tbaa !462
  invoke void @__cxa_throw(ptr nonnull %i.eg, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
          to label %.cont476 unwind label %.loopexit.split-lp

.cont476:                                         ; preds = %.invoke475
  unreachable

_ZSt3getIlJldEERT_RSt7variantIJDpT0_EE.exit:      ; preds = %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit127
  %i.ei = load i8, ptr %i.d, align 8, !tbaa !433
  switch i8 %i.ei, label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJRlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i [
    i8 1, label %_ZSt3getILm1EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i132
    i8 4, label %bb.au
  ]

_ZSt3getILm1EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i132: ; preds = %_ZSt3getIlJldEERT_RSt7variantIJDpT0_EE.exit
  %i.ej = load i64, ptr %i.ea, align 8, !tbaa !67
  store i64 %i.ej, ptr %i.ak, align 8, !tbaa !67
  br label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS6_E4typeESC_.exit

bb.au:                                            ; preds = %_ZSt3getIlJldEERT_RSt7variantIJDpT0_EE.exit
  %i.ek = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.be
  br i1 %i.el, label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJRlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i130: ; preds = %bb.au
  %i.em = load i64, ptr %i.be, align 8, !tbaa !40
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJRlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i

_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJRlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i130, %_ZSt3getIlJldEERT_RSt7variantIJDpT0_EE.exit
  %i.eo = load i64, ptr %i.ea, align 8, !tbaa !67
  store i64 %i.eo, ptr %i.ak, align 8, !tbaa !451
  store i8 1, ptr %i.d, align 8, !tbaa !433
  br label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS6_E4typeESC_.exit

_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS6_E4typeESC_.exit: ; preds = %_ZSt3getILm1EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i132, %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJRlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ep = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !465
  %.not.i.i133 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i133, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS6_E4typeESC_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc134 unwind label %.loopexit.split-lp387

.noexc134:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIRlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS6_E4typeESC_.exit
  %i.eq = load ptr, ptr %i.at, align 8, !tbaa !349, !noalias !465
  invoke void %i.eq(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN5arrow6StatusD2Ev.exit138 unwind label %.loopexit386, !inline_history !456

_ZN5arrow6StatusD2Ev.exit138:                     ; preds = %bb.aw
  %i.er = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  store ptr %i.er, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN5arrow6StatusD2Ev.exit142, label %.critedge90

.loopexit:                                        ; preds = %bb.ai, %bb.ay, %bb.bq, %bb.cd, %bb.cv, %bb.di, %bb.dz, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.ev, %_ZNRSt8optionalISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE5valueEv.exit, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fr, %_ZNRSt8optionalISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE5valueEv.exit354
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

.loopexit.split-lp:                               ; preds = %.invoke475, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

.loopexit386:                                     ; preds = %bb.aw
  %lpad.loopexit388 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp387:                            ; preds = %bb.av
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp387, %.loopexit386
  %lpad.phi390 = phi { ptr, i32 } [ %lpad.loopexit388, %.loopexit386 ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp387 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.go

bb.ay:                                            ; preds = %bb.ah
  store ptr @.str.35, ptr %i.c, align 8, !tbaa !449
  %i.et = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev()
          to label %bb.az unwind label %.loopexit ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !131
  store ptr %i.eu, ptr %i.h, align 8, !tbaa !131
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !49 ; 4 uses
  %i.ex = load ptr, ptr %i.j, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i.i143, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit153, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not7.i.i.i144 = icmp eq ptr %i.ew, null
  br i1 %.not7.i.i.i144, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i146, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i145 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i145, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i146

bb.bd:                                            ; preds = %bb.bb
  %i.fc = atomicrmw volatile add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i152 = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i146

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i146: ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.fd = phi ptr [ %i.ex, %bb.ba ], [ %i.ex, %bb.bc ], [ %.pr.pre.i.i.i152, %bb.bd ] ; 8 uses
  %.not8.i.i.i147 = icmp eq ptr %i.fd, null
  br i1 %.not8.i.i.i147, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151, label %bb.be

bb.be:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i146
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.fe, align 8, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !53
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !54
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #26, !inline_history !450
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !54
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #26, !inline_history !450
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151

bb.bg:                                            ; preds = %bb.be
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i148 = icmp eq i8 %i.fp, 0
  br i1 %.not.i9.i.i.i148, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149

bb.bi:                                            ; preds = %bb.bg
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i150 = phi i32 [ %i.fh, %bb.bh ], [ %i.fr, %bb.bi ]
  %i.fs = icmp eq i32 %.0.i.i.i.i.i150, 1
  br i1 %i.fs, label %bb.bj, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151, !prof !57

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i149, %bb.bf, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i146
  store ptr %i.ew, ptr %i.j, align 8, !tbaa !49
  %.pre = load ptr, ptr %7, align 16, !tbaa !457
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit153

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit153: ; preds = %bb.az, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151
  %i.ft = phi ptr [ %i.co, %bb.az ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i151 ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !458, !range !114, !noundef !115
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit155, label %.invoke

_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit155: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit153
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !460
  %.not.i.i156 = icmp eq i8 %i.fz, 1
  br i1 %.not.i.i156, label %_ZSt3getIdJldEERT_RSt7variantIJDpT0_EE.exit, label %.invoke475

_ZSt3getIdJldEERT_RSt7variantIJDpT0_EE.exit:      ; preds = %_ZNRSt8optionalISt7variantIJldEEE5valueEv.exit155
  %i.ga = load i8, ptr %i.d, align 8, !tbaa !433
  switch i8 %i.ga, label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm3EJRdEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i [
    i8 3, label %_ZSt3getILm3EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i
    i8 4, label %bb.bk
  ]

_ZSt3getILm3EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i: ; preds = %_ZSt3getIdJldEERT_RSt7variantIJDpT0_EE.exit
  %i.gb = load double, ptr %i.fu, align 8, !tbaa !218
  store double %i.gb, ptr %i.ak, align 8, !tbaa !218
end_hunk_10
begin_hunk_11_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !57

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !37
  store i64 %i.c, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !40
  store i8 %i.j, ptr %i.i, align 1, !tbaa !40
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !40
  ret void
}

declare void @_ZN5arrow3mapESt10shared_ptrINS_8DataTypeEES2_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.9") align 8, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow11MakeBuilderEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEEPSt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS8_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN5arrow13StructBuilderC1ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolESt6vectorIS1_INS_12ArrayBuilderEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !413    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !365  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !53
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !515
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !515
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !415

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !413
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !368
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.47") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow13StructBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StructBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !58
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10MapBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17DenseUnionBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow19Dictionary32BuilderINS0_10StringTypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_11
begin_hunk_12_@_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEED2Ev:bb.a
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i.i, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !539

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !537
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !533
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #27
  br label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit

_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit.thread, !prof !106

_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit
  %i.ae = phi ptr [ %.pr, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EEE7DestroyEv.exit.thread, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17RecordBatchReader4MakeESt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EES2_INS_6SchemaEENS_20DeviceAllocationTypeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.154") align 8 %0, ptr noundef %1, ptr noundef %2, i8 noundef signext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i8 %3, ptr %i.a, align 1, !tbaa !77
  %i.b = load ptr, ptr %2, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !530
  %i.e = load ptr, ptr %1, align 8, !tbaa !537    ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !74   ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.20)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_17RecordBatchReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.h = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !98

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !107, !range !114, !noundef !115
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  store ptr %i.m, ptr %2, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not7.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.w = phi ptr [ %i.q, %bb.h ], [ %i.q, %bb.j ], [ %.pr.pre.i.i.i, %bb.k ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.x, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !53
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !549
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !549
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.o ], [ %i.ak, %bb.p ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !57

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !49
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit:  ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.g, %bb.a
  %i.am = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28, !noalias !550 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !51, !noalias !555
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !53, !noalias !555
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.am, align 8, !tbaa !54, !noalias !555
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow23SimpleRecordBatchReaderEJSt6vectorISt10shared_ptrINS0_11RecordBatchEESaIS5_EES3_INS0_6SchemaEERNS0_20DeviceAllocationTypeEEEvPT_DpOT0_(ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt12__shared_ptrIN5arrow23SimpleRecordBatchReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !555

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 72) #27, !noalias !555
  resume { ptr, i32 } %i.aq

_ZNSt12__shared_ptrIN5arrow23SimpleRecordBatchReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !556
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.as, align 8, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow23SimpleRecordBatchReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_17RecordBatchReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !95
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !95
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !57

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17RecordBatchReader16MakeFromIteratorENS_8IteratorISt10shared_ptrINS_11RecordBatchEEEES2_INS_6SchemaEENS_20DeviceAllocationTypeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.154") align 8 %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i8 noundef signext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZNSt12__shared_ptrIN5arrow23SimpleRecordBatchReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(25) @.str.21)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_17RecordBatchReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.b = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %.not.i1 = icmp eq ptr %i.b, null
  br i1 %.not.i1, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !107, !range !114, !noundef !115
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

_ZNSt12__shared_ptrIN5arrow23SimpleRecordBatchReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28, !noalias !559 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !51, !noalias !564
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !53, !noalias !564
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !54, !noalias !564
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !565, !noalias !564
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load <2 x i64>, ptr %1, align 8, !tbaa !50, !noalias !564
  store ptr null, ptr %i.j, align 8, !tbaa !50, !noalias !564
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !50, !noalias !564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !564
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow23SimpleRecordBatchReaderE, i64 16), ptr %i.i, align 8, !tbaa !54, !noalias !564
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !50, !noalias !564
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !50, !noalias !564
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.l, ptr %i.q, align 8, !tbaa !565, !noalias !564
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 %3, ptr %i.r, align 8, !tbaa !575, !noalias !564
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.s, align 8, !tbaa !556
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.t, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow23SimpleRecordBatchReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow17RecordBatchReaderD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow17RecordBatchReaderD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #11 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow24ConcatenateRecordBatchesERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.std::shared_ptr.21", align 16 ; 9 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %6 = alloca %"class.std::shared_ptr.36", align 8 ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector", align 16     ; 15 uses
  %13 = alloca %"class.std::vector", align 8      ; 12 uses
  %14 = alloca %"class.std::shared_ptr.15", align 16 ; 9 uses
  %15 = alloca %"class.arrow::Result.47", align 8 ; 12 uses
  %16 = alloca %"class.std::shared_ptr.15", align 16 ; 8 uses
  %17 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %18 = alloca %"class.std::vector", align 16     ; 7 uses
  %19 = alloca %"class.std::shared_ptr.36", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !530
  %i.e = load ptr, ptr %1, align 8, !tbaa !537    ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(35) @.str.23)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !107, !range !114, !noundef !115
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.dv

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.o = load ptr, ptr %1, align 8, !tbaa !537    ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.q, align 8, !tbaa !50
  store <2 x ptr> %i.u, ptr %5, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !537
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.e, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !67
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !530
  %.not191.not = icmp eq ptr %i.ab, %i.aa
  br i1 %.not191.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.am
  %i.ad = phi ptr [ %i.aa, %.lr.ph ], [ %i.ea, %bb.am ]
  %.0193 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.am ]
  %storemerge192 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %storemerge192
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %bb.j unwind label %bb.r       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !578 ; 3 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !578
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49 ; 3 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !49
  %.not.i.i.i75 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i75, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i76 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  %.pre202 = load ptr, ptr %6, align 8, !tbaa !578
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.j, %bb.l, %bb.m
  %i.as = phi ptr [ %i.ak, %bb.j ], [ %i.ak, %bb.l ], [ %.pre202, %bb.m ] ; 3 uses
  %.not185 = icmp eq ptr %i.as, null
  br i1 %.not185, label %.critedge72, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %_ZN5arrow6StatusD2Ev.exit78 unwind label %bb.s

_ZN5arrow6StatusD2Ev.exit78:                      ; preds = %bb.n
  %i.aw = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ax = icmp eq ptr %i.aw, null
end_hunk_12
begin_hunk_13_@_ZN5arrow24ConcatenateRecordBatchesERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS3_EEPNS_10MemoryPoolE:bb.a
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126, %bb.bi
  %i.hh = load ptr, ptr %15, align 8, !tbaa !95   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.bu, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !98

bb.bu:                                            ; preds = %bb.bt
  %i.hj = load ptr, ptr %i.er, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.hk, align 8, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !53
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !54
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #26, !inline_history !105
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #26, !inline_history !105
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.hn, %bb.by ], [ %i.hx, %bb.bz ]
  %i.hy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hy, label %bb.ca, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !57

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bw
  %.pr.i.pr = load ptr, ptr %15, align 8, !tbaa !95 ; 2 uses
  %.not.i.i127 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i127, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.bt
  %i.hz = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.hh, %bb.bt ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.bu, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.id = load ptr, ptr %13, align 8, !tbaa !87   ; 3 uses
  %i.ie = load ptr, ptr %i.en, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.id, %i.ie
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.iw, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.id, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 4 uses
  %i.ii = load atomic i64, ptr %i.ih acquire, align 8 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 4294967297
  %i.ik = trunc i64 %i.ii to i32                  ; 2 uses
  br i1 %i.ij, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.ih, align 8, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store i32 0, ptr %i.il, align 4, !tbaa !53
  %i.im = load ptr, ptr %i.ig, align 8, !tbaa !54
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #26, !inline_history !126
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.it = add nsw i32 %i.ik, -1
  store i32 %i.it, ptr %i.ih, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.iu = atomicrmw volatile add ptr %i.ih, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ik, %bb.cf ], [ %i.iu, %bb.cg ]
  %i.iv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.iv, label %bb.ch, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.cd, %.lr.ph.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.iw, %i.ie
  br i1 %.not.i.i.i128, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i129 = load ptr, ptr %13, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.ix = phi ptr [ %.pr.i129, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.id, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.iy = load ptr, ptr %i.em, align 8, !tbaa !90
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jb) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br i1 %i.gi, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cj:                                            ; preds = %bb.bm
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj, %bb.cj, %bb.bg
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %bb.bg ], [ %i.gj, %bb.bj ], [ %i.jc, %bb.cj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.dm

.critedge74.loopexit:                             ; preds = %bb.aq
  %i.jd = load <2 x ptr>, ptr %12, align 16, !tbaa !118
  %.pre205 = load ptr, ptr %i.eh, align 16, !tbaa !90
  br label %.critedge74

.critedge74:                                      ; preds = %bb.ap, %.critedge74.loopexit
  %i.je = phi ptr [ %.pre205, %.critedge74.loopexit ], [ null, %bb.ap ]
  %i.jf = phi <2 x ptr> [ %i.jd, %.critedge74.loopexit ], [ splat (ptr null), %bb.ap ]
  %i.jg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jh = load <2 x ptr>, ptr %5, align 16, !tbaa !50
  store ptr null, ptr %i.r, align 8, !tbaa !49
  store <2 x ptr> %i.jh, ptr %17, align 16, !tbaa !50
  store ptr null, ptr %5, align 16, !tbaa !61
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x ptr> %i.jf, ptr %18, align 16, !tbaa !118
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.je, ptr %i.jj, align 16, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !67, !noalias !595
  %i.jk = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc130 unwind label %bb.de ; 6 uses

.noexc130:                                        ; preds = %.critedge74
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i32 1, ptr %i.jl, align 8, !tbaa !51, !noalias !598
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store i32 1, ptr %i.jm, align 4, !tbaa !53, !noalias !598
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.jk, align 8, !tbaa !54, !noalias !598
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !598

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc130
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef 160) #27, !noalias !598
  br label %.body131

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jn, ptr %i.jp, align 8, !tbaa !74
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jk, ptr %i.jq, align 8, !tbaa !49
  %i.jr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !49 ; 8 uses
  %.not.i.i137 = icmp eq ptr %i.js, null
  br i1 %.not.i.i137, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 4 uses
  %i.ju = load atomic i64, ptr %i.jt acquire, align 8 ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 4294967297
  %i.jw = trunc i64 %i.ju to i32                  ; 2 uses
  br i1 %i.jv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.jt, align 8, !tbaa !51
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  store i32 0, ptr %i.jx, align 4, !tbaa !53
  %i.jy = load ptr, ptr %i.js, align 8, !tbaa !54
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.js) #26, !inline_history !125
  %i.kb = load ptr, ptr %i.js, align 8, !tbaa !54
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.js) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

bb.cn:                                            ; preds = %bb.cl
  %i.ke = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i138 = icmp eq i8 %i.ke, 0
  br i1 %.not.i.i.i138, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kf = add nsw i32 %i.jw, -1
  store i32 %i.kf, ptr %i.jt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

bb.cp:                                            ; preds = %bb.cn
  %i.kg = atomicrmw volatile add ptr %i.jt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i140 = phi i32 [ %i.jw, %bb.co ], [ %i.kg, %bb.cp ]
  %i.kh = icmp eq i32 %.0.i.i.i.i140, 1
  br i1 %i.kh, label %bb.cq, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, !prof !57

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.js) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139, %bb.cq
  %i.ki = load ptr, ptr %18, align 16, !tbaa !87  ; 3 uses
  %i.kj = load ptr, ptr %i.ji, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i142 = icmp eq ptr %i.ki, %i.kj
  br i1 %.not4.i.i.i142, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i153, label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149
  %.05.i.i.i144 = phi ptr [ %i.lb, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149 ], [ %i.ki, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141 ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.05.i.i.i144, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i145 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i.i.i145, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i.i143
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 4 uses
  %i.kn = load atomic i64, ptr %i.km acquire, align 8 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 4294967297
  %i.kp = trunc i64 %i.kn to i32                  ; 2 uses
  br i1 %i.ko, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.km, align 8, !tbaa !51
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 0, ptr %i.kq, align 4, !tbaa !53
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !54
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #26, !inline_history !126
  %i.ku = load ptr, ptr %i.kl, align 8, !tbaa !54
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149

bb.ct:                                            ; preds = %bb.cr
  %i.kx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i146 = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i.i.i.i.i.i146, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ky = add nsw i32 %i.kp, -1
  store i32 %i.ky, ptr %i.km, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i147

bb.cv:                                            ; preds = %bb.ct
  %i.kz = atomicrmw volatile add ptr %i.km, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i147

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i147: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i.i.i.i148 = phi i32 [ %i.kp, %bb.cu ], [ %i.kz, %bb.cv ]
  %i.la = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i148, 1
  br i1 %i.la, label %bb.cw, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149, !prof !57

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i147
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149: ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i147, %bb.cs, %.lr.ph.i.i.i143
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i144, i64 16 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.lb, %i.kj
  br i1 %.not.i.i.i150, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i151, label %.lr.ph.i.i.i143, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i151: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i149
  %.pr.i152 = load ptr, ptr %18, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i153

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i153: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i151, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  %i.lc = phi ptr [ %.pr.i152, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i151 ], [ %i.ki, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141 ] ; 3 uses
  %.not.i.i1.i154 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i1.i154, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit155, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i153
  %i.ld = load ptr, ptr %i.jj, align 16, !tbaa !90
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lg) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit155

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit155: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i153, %bb.cx
  %i.lh = load ptr, ptr %i.jg, align 8, !tbaa !49 ; 8 uses
  %.not.i.i156 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i156, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit155
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %i.lj = load atomic i64, ptr %i.li acquire, align 8 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 4294967297
  %i.ll = trunc i64 %i.lj to i32                  ; 2 uses
  br i1 %i.lk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.li, align 8, !tbaa !51
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 0, ptr %i.lm, align 4, !tbaa !53
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !54
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #26, !inline_history !128
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !54
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.da:                                            ; preds = %bb.cy
  %i.lt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i157 = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.i157, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lu = add nsw i32 %i.ll, -1
  store i32 %i.lu, ptr %i.li, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158

bb.dc:                                            ; preds = %bb.da
  %i.lv = atomicrmw volatile add ptr %i.li, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i159 = phi i32 [ %i.ll, %bb.db ], [ %i.lv, %bb.dc ]
  %i.lw = icmp eq i32 %.0.i.i.i.i159, 1
  br i1 %i.lw, label %bb.dd, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.de:                                            ; preds = %.critedge74
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.body131:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.de
  %eh.lpad-body132 = phi { ptr, i32 } [ %i.lx, %bb.de ], [ %i.jo, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #26
  br label %bb.dm

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158, %bb.cz, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit155
  %i.ly = load ptr, ptr %12, align 16, !tbaa !87  ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i160 = icmp eq ptr %i.ly, %i.ma
  br i1 %.not4.i.i.i160, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i161

.lr.ph.i.i.i161:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167
  %.05.i.i.i162 = phi ptr [ %i.ms, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167 ], [ %i.ly, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.05.i.i.i162, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i163 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i.i.i163, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i161
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 4 uses
  %i.me = load atomic i64, ptr %i.md acquire, align 8 ; 2 uses
  %i.mf = icmp eq i64 %i.me, 4294967297
  %i.mg = trunc i64 %i.me to i32                  ; 2 uses
  br i1 %i.mf, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.md, align 8, !tbaa !51
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  store i32 0, ptr %i.mh, align 4, !tbaa !53
  %i.mi = load ptr, ptr %i.mc, align 8, !tbaa !54
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #26, !inline_history !126
  %i.ml = load ptr, ptr %i.mc, align 8, !tbaa !54
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167

bb.dh:                                            ; preds = %bb.df
  %i.mo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i164 = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i.i.i.i.i.i164, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mp = add nsw i32 %i.mg, -1
  store i32 %i.mp, ptr %i.md, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i165

bb.dj:                                            ; preds = %bb.dh
  %i.mq = atomicrmw volatile add ptr %i.md, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i165

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i165: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i.i.i.i.i.i166 = phi i32 [ %i.mg, %bb.di ], [ %i.mq, %bb.dj ]
  %i.mr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i166, 1
  br i1 %i.mr, label %bb.dk, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167, !prof !57

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i165
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mc) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167: ; preds = %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i165, %bb.dg, %.lr.ph.i.i.i161
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i162, i64 16 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.ms, %i.ma
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i169, label %.lr.ph.i.i.i161, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i169: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i167
  %.pr.i170 = load ptr, ptr %12, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i171

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i171: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i169, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.mt = phi ptr [ %.pr.i170, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i169 ], [ %i.ly, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i172 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i1.i172, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit173, label %bb.dl

bb.dl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i171
  %i.mu = load ptr, ptr %i.eh, align 16, !tbaa !90
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mx) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit173

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit173: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i171, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.dn

bb.dm:                                            ; preds = %.body131, %bb.ck, %bb.ar
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %bb.ck ], [ %eh.lpad-body132, %.body131 ], [ %i.eu, %bb.ar ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.du

bb.dn:                                            ; preds = %.thread, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit173
  %i.my = load ptr, ptr %i.r, align 8, !tbaa !49  ; 8 uses
  %.not.i.i174 = icmp eq ptr %i.my, null
  br i1 %.not.i.i174, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 4 uses
  %i.na = load atomic i64, ptr %i.mz acquire, align 8 ; 2 uses
  %i.nb = icmp eq i64 %i.na, 4294967297
  %i.nc = trunc i64 %i.na to i32                  ; 2 uses
  br i1 %i.nb, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 0, ptr %i.mz, align 8, !tbaa !51
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  store i32 0, ptr %i.nd, align 4, !tbaa !53
  %i.ne = load ptr, ptr %i.my, align 8, !tbaa !54
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #26, !inline_history !128
  %i.nh = load ptr, ptr %i.my, align 8, !tbaa !54
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178

bb.dq:                                            ; preds = %bb.do
  %i.nk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i175 = icmp eq i8 %i.nk, 0
  br i1 %.not.i.i.i175, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nl = add nsw i32 %i.nc, -1
  store i32 %i.nl, ptr %i.mz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i176

bb.ds:                                            ; preds = %bb.dq
  %i.nm = atomicrmw volatile add ptr %i.mz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i176

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i176: ; preds = %bb.ds, %bb.dr
  %.0.i.i.i.i177 = phi i32 [ %i.nc, %bb.dr ], [ %i.nm, %bb.ds ]
  %i.nn = icmp eq i32 %.0.i.i.i.i177, 1
  br i1 %i.nn, label %bb.dt, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, !prof !57

bb.dt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i176
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178: ; preds = %bb.dn, %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i176, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.dv

bb.du:                                            ; preds = %bb.dm, %bb.an
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn, %bb.dm ], [ %.pn57.pn.pn, %bb.an ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn66.pn.pn.pn

bb.dv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.47") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11RecordBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow11RecordBatchE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !128
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11RecordBatchD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader8ReadNextEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.182") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(30) @.str.55)
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  %i.a = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !107, !range !114, !noundef !115
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !601
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZNK5arrow17RecordBatchReader11device_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !53
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !604
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !604
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !605
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !605
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

end_hunk_13
begin_hunk_14_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !39
  store i8 0, ptr %i.c, align 1, !tbaa !40
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !40
  store i8 %i.s, ptr %i.q, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !39
  %i.u = load ptr, ptr %0, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_120EnumeratedStatisticsD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !433
  %i.c = icmp eq i8 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !53
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !58
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462
  ret ptr %i.b
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #20 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.48
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSA_EUlOT_T0_E_JRKSt7variantIJblmdS9_EEEEDcOSF_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !433
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !499    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !433
  switch i8 %i.e, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 0, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %1, align 8, !tbaa !220, !range !114, !noundef !115
  store i8 %i.f, ptr %i.c, align 8, !tbaa !220
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.l = load i8, ptr %1, align 8, !tbaa !220, !range !114, !noundef !115
  store i8 %i.l, ptr %i.c, align 8, !tbaa !620
  store i8 0, ptr %i.d, align 8, !tbaa !433
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !499    ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !433
  switch i8 %i.o, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKlEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 1, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %1, align 8, !tbaa !67
  store i64 %i.p, ptr %i.m, align 8, !tbaa !67
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKlEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !40
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKlEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKlEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14, %bb.e
  %i.v = load i64, ptr %1, align 8, !tbaa !67
  store i64 %i.v, ptr %i.m, align 8, !tbaa !451
  store i8 1, ptr %i.n, align 8, !tbaa !433
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !499    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !433
  switch i8 %i.y, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 2, label %bb.i
    i8 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %1, align 8, !tbaa !67
  store i64 %i.z, ptr %i.w, align 8, !tbaa !67
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !37  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16, %bb.h
  %i.af = load i64, ptr %1, align 8, !tbaa !67
  store i64 %i.af, ptr %i.w, align 8, !tbaa !622
  store i8 2, ptr %i.x, align 8, !tbaa !433
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.k:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !499   ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !433
  switch i8 %i.ai, label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKdEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aj = load double, ptr %1, align 8, !tbaa !218
  store double %i.aj, ptr %i.ag, align 8, !tbaa !218
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKdEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i18: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKdEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm3ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKdEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i18, %bb.k
  %i.ap = load double, ptr %1, align 8, !tbaa !218
  store double %i.ap, ptr %i.ag, align 8, !tbaa !468
  store i8 3, ptr %i.ah, align 8, !tbaa !433
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.n:                                             ; preds = %bb.a
  tail call void @_ZZNSt8__detail9__variant17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS8_ENUlOT_T0_E_clIRKS7_St17integral_constantImLm4EEEEDaSC_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_EUlOT_T0_E_RKSt7variantIJblmdSA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SM_.exit: ; preds = %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKdEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.l, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKlEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.c, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt8__detail9__variant17_Copy_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS8_ENUlOT_T0_E_clIRKS7_St17integral_constantImLm4EEEEDaSC_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.286, align 8            ; 4 uses
  %3 = alloca %"class.std::variant", align 8      ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !499    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !433
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !33
  %i.f = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
end_hunk_14
begin_hunk_15_@_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOS9_EUlOT_T0_E_JRS8_St17integral_constantImLm4EEEESB_St14__invoke_otherOSD_DpOT1_:bb.a
  switch i64 %i.l, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.i, align 1, !tbaa !40
  store i8 %i.n, ptr %i.g, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.o = load i64, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !39
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !40
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.a, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  store i64 %i.u, ptr %i.s, align 8, !tbaa !39
  %i.v = load i64, ptr %i.f, align 8, !tbaa !40
  store i64 %i.v, ptr %i.e, align 8, !tbaa !40
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.w = load i64, ptr %i.e, align 8, !tbaa !40
  store ptr %i.i, ptr %i.a, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !39
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !40
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.g, ptr %1, align 8, !tbaa !37
  store i64 %i.w, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.f, ptr %1, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.c
  %i.ab = phi ptr [ %i.g, %bb.g ], [ %i.f, %bb.h ], [ %i.i, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !39
  store i8 0, ptr %i.ab, align 1, !tbaa !40
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm4EEEEDaSB_SC_.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i: ; preds = %bb.a
  store i8 -1, ptr %i.b, align 8, !tbaa !433
  store ptr %i.e, ptr %i.a, align 8, !tbaa !33
  %i.ad = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.ai, i1 false)
  br label %_ZNSt8__detail9__variant9__emplaceILm4ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !37
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !40
  store i64 %i.aj, ptr %i.e, align 8, !tbaa !40
  br label %_ZNSt8__detail9__variant9__emplaceILm4ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

_ZNSt8__detail9__variant9__emplaceILm4ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !39
  store ptr %i.f, ptr %1, align 8, !tbaa !37
  store i64 0, ptr %i.ak, align 8, !tbaa !39
  store i8 0, ptr %i.f, align 8, !tbaa !40
  store i8 4, ptr %i.b, align 8, !tbaa !433
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm4EEEEDaSB_SC_.exit

_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm4EEEEDaSB_SC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNSt8__detail9__variant9__emplaceILm4ELb0EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !413    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %i.r, align 8, !tbaa !49
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !50
  store ptr null, ptr %2, align 8, !tbaa !369
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !630, !noalias !627
  store ptr null, ptr %i.t, align 8, !tbaa !49, !alias.scope !630, !noalias !627
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !627, !noalias !630
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !369, !alias.scope !630, !noalias !627
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !632

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !50, !alias.scope !636, !noalias !633
  store ptr null, ptr %i.y, align 8, !tbaa !49, !alias.scope !636, !noalias !633
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !50, !alias.scope !633, !noalias !636
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !369, !alias.scope !636, !noalias !633
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !632

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !368
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !413
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !365
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !368
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !365  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !53
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #26, !inline_history !414
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #26, !inline_history !414
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !415

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !413
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !368
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !53
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !638
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !638
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !57

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

declare void @_ZN5arrow8internal17ValidateArrayFullERKNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

declare void @_ZN5arrow8internal13ValidateArrayERKNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.f = load i32, ptr %2, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %3) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(25) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.l = load ptr, ptr %4, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.q = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %5) #26
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(5) %5, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.t = load ptr, ptr %6, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA8_KcRiRA25_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit
end_hunk_15
begin_hunk_16_@_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_5ArrayEESaIS8_EES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !53
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #26, !inline_history !125
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ac = load ptr, ptr %6, align 16, !tbaa !87   ; 3 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !91  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ac, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ag, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !53
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #26, !inline_history !126
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.l ], [ %i.at, %bb.m ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ax = load ptr, ptr %i.g, align 16, !tbaa !90
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.o
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !49  ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bc, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !53
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !128
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i8 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i10 = phi i32 [ %i.bf, %bb.s ], [ %i.bp, %bb.t ]
  %i.bq = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.bq, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.u
  ret void

bb.v:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  resume { ptr, i32 } %i.br
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17SimpleRecordBatchC2ESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.b, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.c, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow17SimpleRecordBatchE, i64 16), ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !118
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  store ptr %i.j, ptr %i.h, align 8, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !666
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !50
  store ptr null, ptr %i.n, align 8, !tbaa !49
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !50
  store ptr null, ptr %4, align 8, !tbaa !578
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = invoke noundef signext i8 @_ZNK5arrow9ArrayData11device_typeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.t)
          to label %_ZNK5arrow5Array11device_typeEv.exit unwind label %bb.b

_ZNK5arrow5Array11device_typeEv.exit:             ; preds = %bb.a
  store i8 %i.u, ptr %i.k, align 8, !tbaa !666
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !91
  %.pre13 = load ptr, ptr %i.e, align 8, !tbaa !87
  br label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #26
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  tail call void @_ZN5arrow11RecordBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  resume { ptr, i32 } %i.v

bb.c:                                             ; preds = %_ZNK5arrow5Array11device_typeEv.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = phi ptr [ %.pre13, %_ZNK5arrow5Array11device_typeEv.exit ], [ %i.p, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.x = phi ptr [ %.pre, %_ZNK5arrow5Array11device_typeEv.exit ], [ %i.p, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = ashr exact i64 %i.aa, 4                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !674 ; 5 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !675 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4                 ; 3 uses
  %i.aj = icmp ugt i64 %i.ab, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = sub nuw nsw i64 %i.ab, %i.ai
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ak)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit_crit_edge unwind label %bb.b

._ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit_crit_edge: ; preds = %bb.d
  %.pre14 = load ptr, ptr %i.ac, align 8, !tbaa !674
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.al = icmp ult i64 %i.ab, %i.ai
  br i1 %i.al, label %bb.f, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.ad, %i.am
  br i1 %.not.i.i7, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i ], [ %i.am, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ap, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !53
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #26, !inline_history !676
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #26, !inline_history !676
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.as, %bb.j ], [ %i.bc, %bb.k ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, !prof !57

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.ad
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !674
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit_crit_edge, %bb.e, %bb.f, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bf = phi ptr [ %.pre14, %._ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.am, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !675 ; 2 uses
  %.not12 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  %i.bh = phi ptr [ %i.co, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit ], [ %i.bg, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.bi = phi ptr [ %i.cp, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit ], [ %i.bf, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit ]
  %.011 = phi i64 [ %i.cq, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit ], [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.011
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.011 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !46
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 4 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i8, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %.not7.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i9 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.by = phi ptr [ %i.bs, %bb.m ], [ %i.bs, %bb.o ], [ %.pr.pre.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bz, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !53
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26, !inline_history !678
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26, !inline_history !678
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i9.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.cc, %bb.t ], [ %i.cm, %bb.u ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !57

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !49
  %.pre15 = load ptr, ptr %i.ac, align 8, !tbaa !674
  %.pre16 = load ptr, ptr %i.d, align 8, !tbaa !675
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %.lr.ph, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.co = phi ptr [ %i.bh, %.lr.ph ], [ %.pre16, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.cp = phi ptr [ %i.bi, %.lr.ph ], [ %.pre15, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.cq = add nuw i64 %.011, 1                    ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 4
  %i.cv = icmp ult i64 %i.cq, %i.cu
  br i1 %i.cv, label %.lr.ph, label %._crit_edge, !llvm.loop !679
}

declare noundef signext i8 @_ZNK5arrow9ArrayData11device_typeEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !675    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !674  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !53
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !680
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !680
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !681
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17SimpleRecordBatchD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow17SimpleRecordBatchE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !125
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !53
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !126
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.am, %i.u
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !675 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.au, %i.aw
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.bo, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.au, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.az, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !53
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #26, !inline_history !682
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i6 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i7

bb.s:                                             ; preds = %bb.q
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i7: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i8 = phi i32 [ %i.bc, %bb.r ], [ %i.bm, %bb.s ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i8, 1
  br i1 %i.bn, label %bb.t, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i7, %bb.p, %.lr.ph.i.i.i3
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 16 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bo, %i.aw
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i10 = load ptr, ptr %i.at, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.bp = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !681
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow11RecordBatchE, i64 16), ptr %0, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i12, label %_ZN5arrow11RecordBatchD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bx, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !53
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #26, !inline_history !683
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #26, !inline_history !683
  br label %_ZN5arrow11RecordBatchD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.ca, %bb.y ], [ %i.ck, %bb.z ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.aa, label %_ZN5arrow11RecordBatchD2Ev.exit, !prof !57

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #26, !inline_history !684
  br label %_ZN5arrow11RecordBatchD2Ev.exit

_ZN5arrow11RecordBatchD2Ev.exit:                  ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aa
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17SimpleRecordBatchD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow17SimpleRecordBatchD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow17SimpleRecordBatch7columnsEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.h = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_ZNK5arrow11RecordBatch11num_columnsEv.exit unwind label %bb.d

_ZNK5arrow11RecordBatch11num_columnsEv.exit:      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  %i.k = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  ret ptr %i.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.e:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !675
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load <2 x ptr>, ptr %1, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !49   ; 8 uses
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !53
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26, !inline_history !104
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26, !inline_history !104
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !49  ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.al, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.am, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !53
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #26, !inline_history !231
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q
end_hunk_16
begin_hunk_17_@_ZNK5arrow17SimpleRecordBatch9AddColumnEiRKSt10shared_ptrINS_5FieldEERKS1_INS_5ArrayEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.body
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.br = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %common.resume

bb.p:                                             ; preds = %.critedge52
  %i.bw = load ptr, ptr %4, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !175 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !64
  %.not41 = icmp eq i64 %i.ca, %i.cc
  br i1 %.not41, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.ca, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !691
  call void @_ZN5arrow8internal12JoinToStringIJRA73_KcRKlRA17_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(73) @.str.67, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 1 dereferenceable(17) @.str.68, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !691
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %5, align 8, !tbaa !37, !noalias !691 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67: ; preds = %bb.r
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !40, !noalias !691
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #27
  br label %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %5, align 8, !tbaa !37, !noalias !691 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i64: ; preds = %bb.s
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !40, !noalias !691
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65 ], [ %.pn42, %bb.bm ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.bj, %bb.m ], [ %i.bi, %bb.l ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !691
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !691
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #26
  %i.co = load ptr, ptr %13, align 8, !tbaa !95   ; 2 uses
  %.not.i69 = icmp eq ptr %i.co, null
  br i1 %.not.i69, label %_ZN5arrow6StatusD2Ev.exit70, label %bb.t, !prof !98

bb.t:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !107, !range !114, !noundef !115
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN5arrow6StatusD2Ev.exit70, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #26
  br label %_ZN5arrow6StatusD2Ev.exit70

_ZN5arrow6StatusD2Ev.exit70:                      ; preds = %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bw

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !61
  call void @_ZNK5arrow6Schema8AddFieldEiRKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.309") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.cu = load ptr, ptr %14, align 8, !tbaa !95
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.x, label %bb.w, !prof !98

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #26
  br label %bb.bn

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !49
  %i.da = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !50, !noalias !696
  store ptr null, ptr %i.cy, align 8, !tbaa !49, !noalias !696
  store ptr null, ptr %i.cw, align 8, !tbaa !61, !noalias !696
  store <2 x ptr> %i.da, ptr %16, align 16, !tbaa !50
  store ptr null, ptr %15, align 8, !tbaa !61
  %i.db = load i64, ptr %i.cb, align 8, !tbaa !64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = sext i32 %2 to i64
  %i.de = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !49 ; 2 uses
  %i.dj = load <2 x ptr>, ptr %i.df, align 8, !tbaa !50
  store <2 x ptr> %i.dj, ptr %18, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.do = atomicrmw volatile add ptr %i.dk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.x, %bb.z, %bb.aa
  invoke void @_ZN5arrow8internal16AddVectorElementISt10shared_ptrINS_9ArrayDataEEEESt6vectorIT_SaIS6_EERKS8_mS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %i.dd, ptr noundef nonnull %18)
          to label %bb.ab unwind label %bb.bk

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.dp = load i8, ptr %i.l, align 8, !tbaa !666
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !49 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !50
  store <2 x ptr> %i.du, ptr %19, align 16, !tbaa !50
  %.not.i.i.i71 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i71, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i72 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i72, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dz = atomicrmw volatile add ptr %i.dv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.ab, %bb.ad, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.db, ptr %i.a, align 8, !tbaa !67, !noalias !701
  store i8 %i.dp, ptr %i.b, align 1, !tbaa !77, !noalias !701
  %i.ea = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc73 unwind label %bb.bl, !inline_history !704 ; 6 uses

.noexc73:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 1, ptr %i.eb, align 8, !tbaa !51, !noalias !705
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 1, ptr %i.ec, align 4, !tbaa !53, !noalias !705
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ea, align 8, !tbaa !54, !noalias !705
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaIS8_EERNS0_20DeviceAllocationTypeES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, !noalias !705, !inline_history !708

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i: ; preds = %.noexc73
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 160) #27, !noalias !705, !inline_history !709
  br label %.body74

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ea, ptr %i.eg, align 8, !tbaa !49
  %i.eh = load ptr, ptr %i.dr, align 8, !tbaa !49 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ei, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !53
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #26, !inline_history !125
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i78 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i78, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

bb.aj:                                            ; preds = %bb.ah
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i80 = phi i32 [ %i.el, %bb.ai ], [ %i.ev, %bb.aj ]
  %i.ew = icmp eq i32 %.0.i.i.i.i80, 1
  br i1 %i.ew, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79, %bb.ak
  %i.ex = load ptr, ptr %17, align 8, !tbaa !675  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ex, %i.ez
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.ex, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.fc, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !53
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #26, !inline_history !682
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ff, %bb.ao ], [ %i.fp, %bb.ap ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fq, label %bb.aq, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.am, %.lr.ph.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.fr, %i.ez
  br i1 %.not.i.i.i81, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ex, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !681
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ar
  %i.fy = load ptr, ptr %i.dg, align 8, !tbaa !49 ; 8 uses
  %.not.i.i82 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i82, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fz, align 8, !tbaa !51
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !53
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !54
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #26, !inline_history !212
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #26, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i83 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i83, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

bb.aw:                                            ; preds = %bb.au
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i85 = phi i32 [ %i.gc, %bb.av ], [ %i.gm, %bb.aw ]
  %i.gn = icmp eq i32 %.0.i.i.i.i85, 1
  br i1 %i.gn, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84, %bb.ax
  %i.go = load ptr, ptr %i.cz, align 8, !tbaa !49 ; 8 uses
  %.not.i.i86 = icmp eq ptr %i.go, null
  br i1 %.not.i.i86, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay
end_hunk_17
begin_hunk_18_@_ZNK5arrow17SimpleRecordBatch9SetColumnEiRKSt10shared_ptrINS_5FieldEERKS1_INS_5ArrayEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.body
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.br = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %common.resume

bb.p:                                             ; preds = %.critedge52
  %i.bw = load ptr, ptr %4, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !175 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !64
  %.not41 = icmp eq i64 %i.ca, %i.cc
  br i1 %.not41, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.ca, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !716
  call void @_ZN5arrow8internal12JoinToStringIJRA73_KcRKlRA17_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(73) @.str.67, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 1 dereferenceable(17) @.str.68, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !716
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %5, align 8, !tbaa !37, !noalias !716 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67: ; preds = %bb.r
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !40, !noalias !716
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #27
  br label %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %5, align 8, !tbaa !37, !noalias !716 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i64: ; preds = %bb.s
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !40, !noalias !716
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65 ], [ %.pn42, %bb.bm ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.bj, %bb.m ], [ %i.bi, %bb.l ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i65: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !716
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !716
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #26
  %i.co = load ptr, ptr %13, align 8, !tbaa !95   ; 2 uses
  %.not.i69 = icmp eq ptr %i.co, null
  br i1 %.not.i69, label %_ZN5arrow6StatusD2Ev.exit70, label %bb.t, !prof !98

bb.t:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !107, !range !114, !noundef !115
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN5arrow6StatusD2Ev.exit70, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #26
  br label %_ZN5arrow6StatusD2Ev.exit70

_ZN5arrow6StatusD2Ev.exit70:                      ; preds = %_ZN5arrow6Status7InvalidIJRA73_KcRKlRA17_S2_lEEES0_DpOT_.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bw

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !61
  call void @_ZNK5arrow6Schema8SetFieldEiRKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.309") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.cu = load ptr, ptr %14, align 8, !tbaa !95
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.x, label %bb.w, !prof !98

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #26
  br label %bb.bn

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !49
  %i.da = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !50, !noalias !721
  store ptr null, ptr %i.cy, align 8, !tbaa !49, !noalias !721
  store ptr null, ptr %i.cw, align 8, !tbaa !61, !noalias !721
  store <2 x ptr> %i.da, ptr %16, align 16, !tbaa !50
  store ptr null, ptr %15, align 8, !tbaa !61
  %i.db = load i64, ptr %i.cb, align 8, !tbaa !64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = sext i32 %2 to i64
  %i.de = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !49 ; 2 uses
  %i.dj = load <2 x ptr>, ptr %i.df, align 8, !tbaa !50
  store <2 x ptr> %i.dj, ptr %18, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.do = atomicrmw volatile add ptr %i.dk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.x, %bb.z, %bb.aa
  invoke void @_ZN5arrow8internal20ReplaceVectorElementISt10shared_ptrINS_9ArrayDataEEEESt6vectorIT_SaIS6_EERKS8_mS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %i.dd, ptr noundef nonnull %18)
          to label %bb.ab unwind label %bb.bk

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.dp = load i8, ptr %i.l, align 8, !tbaa !666
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !49 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !50
  store <2 x ptr> %i.du, ptr %19, align 16, !tbaa !50
  %.not.i.i.i71 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i71, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i72 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i72, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dz = atomicrmw volatile add ptr %i.dv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.ab, %bb.ad, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.db, ptr %i.a, align 8, !tbaa !67, !noalias !726
  store i8 %i.dp, ptr %i.b, align 1, !tbaa !77, !noalias !726
  %i.ea = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc73 unwind label %bb.bl, !inline_history !704 ; 6 uses

.noexc73:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 1, ptr %i.eb, align 8, !tbaa !51, !noalias !729
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 1, ptr %i.ec, align 4, !tbaa !53, !noalias !729
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ea, align 8, !tbaa !54, !noalias !729
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaIS8_EERNS0_20DeviceAllocationTypeES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, !noalias !729, !inline_history !708

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i: ; preds = %.noexc73
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 160) #27, !noalias !729, !inline_history !709
  br label %.body74

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ea, ptr %i.eg, align 8, !tbaa !49
  %i.eh = load ptr, ptr %i.dr, align 8, !tbaa !49 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ei, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !53
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #26, !inline_history !125
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i78 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i78, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

bb.aj:                                            ; preds = %bb.ah
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i80 = phi i32 [ %i.el, %bb.ai ], [ %i.ev, %bb.aj ]
  %i.ew = icmp eq i32 %.0.i.i.i.i80, 1
  br i1 %i.ew, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79, %bb.ak
  %i.ex = load ptr, ptr %17, align 8, !tbaa !675  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ex, %i.ez
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.ex, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.fc, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !53
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #26, !inline_history !682
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ff, %bb.ao ], [ %i.fp, %bb.ap ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fq, label %bb.aq, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.am, %.lr.ph.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.fr, %i.ez
  br i1 %.not.i.i.i81, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ex, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !681
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ar
  %i.fy = load ptr, ptr %i.dg, align 8, !tbaa !49 ; 8 uses
  %.not.i.i82 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i82, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fz, align 8, !tbaa !51
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !53
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !54
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #26, !inline_history !212
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #26, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i83 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i83, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

bb.aw:                                            ; preds = %bb.au
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i85 = phi i32 [ %i.gc, %bb.av ], [ %i.gm, %bb.aw ]
  %i.gn = icmp eq i32 %.0.i.i.i.i85, 1
  br i1 %i.gn, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84, %bb.ax
  %i.go = load ptr, ptr %i.cz, align 8, !tbaa !49 ; 8 uses
  %.not.i.i86 = icmp eq ptr %i.go, null
  br i1 %.not.i.i86, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay
end_hunk_18
begin_hunk_19_@_ZNK5arrow17SimpleRecordBatch9SetColumnEiRKSt10shared_ptrINS_5FieldEERKS1_INS_5ArrayEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i93 = phi i32 [ %i.hi, %bb.bh ], [ %i.hs, %bb.bi ]
  %i.ht = icmp eq i32 %.0.i.i.i.i93, 1
  br i1 %i.ht, label %bb.bj, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit94, !prof !57

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit94

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit94: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bn

bb.bk:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, %bb.bl
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.hv, %bb.bl ], [ %i.ee, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #26
  br label %bb.bm

bb.bm:                                            ; preds = %.body74, %bb.bk
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body75, %.body74 ], [ %i.hu, %bb.bk ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %common.resume

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit94, %bb.w
  %i.hw = load ptr, ptr %14, align 8, !tbaa !95   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.bo, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !98

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 4 uses
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.ia, align 8, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !53
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !54
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #26, !inline_history !710
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !54
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #26, !inline_history !710
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.id, %bb.bs ], [ %i.in, %bb.bt ]
  %i.io = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.io, label %bb.bu, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !57

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bq, %bb.bo
  %.pr.i95 = load ptr, ptr %14, align 8, !tbaa !95 ; 2 uses
  %.not.i.i96 = icmp eq ptr %.pr.i95, null
  br i1 %.not.i.i96, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.bn
  %i.ip = phi ptr [ %.pr.i95, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.hw, %bb.bn ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !107, !range !114, !noundef !115
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow17SimpleRecordBatch12RemoveColumnEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.arrow::Result.309", align 8 ; 13 uses
  %4 = alloca %"class.std::shared_ptr.21", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %6 = alloca %"class.std::vector.42", align 8    ; 7 uses
  %7 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  call void @_ZNK5arrow6Schema11RemoveFieldEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.309") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %2)
  %i.e = load ptr, ptr %3, align 8, !tbaa !95
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !49
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !50, !noalias !732
  store ptr null, ptr %i.i, align 8, !tbaa !49, !noalias !732
  store ptr null, ptr %i.g, align 8, !tbaa !61, !noalias !732
  store <2 x ptr> %i.k, ptr %5, align 16, !tbaa !50
  store ptr null, ptr %4, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = sext i32 %2 to i64
  invoke void @_ZN5arrow8internal19DeleteVectorElementISt10shared_ptrINS_9ArrayDataEEEESt6vectorIT_SaIS6_EERKS8_m(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.o)
          to label %bb.d unwind label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = load i8, ptr %i.p, align 8, !tbaa !666
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !50
  store <2 x ptr> %i.v, ptr %7, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %i.a, align 8, !tbaa !67, !noalias !737
  store i8 %i.q, ptr %i.b, align 1, !tbaa !77, !noalias !737
  %i.ab = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc unwind label %bb.ah, !inline_history !704 ; 6 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 1, ptr %i.ac, align 8, !tbaa !51, !noalias !740
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 1, ptr %i.ad, align 4, !tbaa !53, !noalias !740
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ab, align 8, !tbaa !54, !noalias !740
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaIS8_EERNS0_20DeviceAllocationTypeES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, !noalias !740, !inline_history !708

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i: ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 160) #27, !noalias !740, !inline_history !709
  br label %.body

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !49
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !49  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aj, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !53
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26, !inline_history !125
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i13 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.l:                                             ; preds = %bb.j
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i15 = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.ax, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.m
  %i.ay = load ptr, ptr %6, align 8, !tbaa !675   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.ay, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bd, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !53
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !682
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.q ], [ %i.bq, %bb.r ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.s, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.o, %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.bs, %i.ba
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ay, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !681
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.t
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !49  ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ca, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !53
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #26, !inline_history !128
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i18 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i18, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.y:                                             ; preds = %bb.w
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i20 = phi i32 [ %i.cd, %bb.x ], [ %i.cn, %bb.y ]
  %i.co = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.co, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.z
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !49  ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, label %bb.aa
end_hunk_19
begin_hunk_20_@_ZNK5arrow17SimpleRecordBatch12RemoveColumnEi:bb.a
bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dl, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !53
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #26, !inline_history !710
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #26, !inline_history !710
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.an:                                            ; preds = %bb.al
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.do, %bb.ao ], [ %i.dy, %bb.ap ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.aq, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !57

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.am, %bb.ak
  %.pr.i26 = load ptr, ptr %3, align 8, !tbaa !95 ; 2 uses
  %.not.i.i27 = icmp eq ptr %.pr.i26, null
  br i1 %.not.i.i27, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.aj
  %i.ea = phi ptr [ %.pr.i26, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.dh, %bb.aj ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow17SimpleRecordBatch21ReplaceSchemaMetadataERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::shared_ptr.21", align 16 ; 8 uses
  %4 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %5 = alloca %"class.std::vector.42", align 8    ; 11 uses
  %6 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  call void @_ZNK5arrow6Schema12WithMetadataERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load <2 x ptr>, ptr %3, align 16, !tbaa !50
  store ptr null, ptr %i.f, align 8, !tbaa !49
  store <2 x ptr> %i.g, ptr %4, align 16, !tbaa !50
  store ptr null, ptr %3, align 16, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !674  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !675  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %.noexc5.thread, label %bb.b

.noexc5.thread:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr null, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !681
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.t = icmp ugt i64 %i.p, 9223372036854775792
  br i1 %i.t, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28
          to label %.noexc5 unwind label %bb.ai   ; 4 uses

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !675
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !674
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !681
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc5, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.u, %.noexc5 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %.noexc5 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !50
  store <2 x ptr> %i.aa, ptr %.08.i.i.i.i.i, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.l
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !743

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc5.thread
  %i.aj = phi ptr [ %i.s, %.noexc5.thread ], [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ak = phi ptr [ %i.q, %.noexc5.thread ], [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc5.thread ], [ %i.ah, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !674
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.am = load i8, ptr %i.al, align 8, !tbaa !666
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.an, align 8, !tbaa !50
  store <2 x ptr> %i.ar, ptr %6, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i6 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %.loopexit, %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.a, align 8, !tbaa !67, !noalias !744
  store i8 %i.am, ptr %i.b, align 1, !tbaa !77, !noalias !744
  %i.ax = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc7 unwind label %bb.aj, !inline_history !704 ; 6 uses

.noexc7:                                          ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 1, ptr %i.ay, align 8, !tbaa !51, !noalias !747
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 1, ptr %i.az, align 4, !tbaa !53, !noalias !747
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ax, align 8, !tbaa !54, !noalias !747
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaIS8_EERNS0_20DeviceAllocationTypeES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, !noalias !747, !inline_history !708

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i: ; preds = %.noexc7
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 160) #27, !noalias !747, !inline_history !709
  br label %.body

bb.i:                                             ; preds = %.noexc7
  store ptr %i.ba, ptr %0, align 8, !tbaa !74, !alias.scope !744
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !49, !alias.scope !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.be, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !53
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #26, !inline_history !125
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i8 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.m ], [ %i.br, %bb.n ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.bt = load ptr, ptr %5, align 8, !tbaa !675   ; 3 uses
  %i.bu = load ptr, ptr %i.ak, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cm, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.bt, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bx, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !53
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #26, !inline_history !682
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.s ], [ %i.ck, %bb.t ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.u, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.cm, %i.bu
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bt, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !681
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.v
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !49  ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ct, align 8, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !53
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #26, !inline_history !128
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i11 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i11, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.aa:                                            ; preds = %bb.y
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i13 = phi i32 [ %i.cw, %bb.z ], [ %i.dg, %bb.aa ]
  %i.dh = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.dh, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.ab
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !49  ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.di, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dj, align 8, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !53
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #26, !inline_history !128
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

bb.ae:                                            ; preds = %bb.ac
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i15 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.ag:                                            ; preds = %bb.ae
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i17 = phi i32 [ %i.dm, %bb.af ], [ %i.dw, %bb.ag ]
  %i.dx = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.dx, label %bb.ah, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, !prof !57

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.dz, %bb.aj ], [ %i.bb, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.ai
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dy, %bb.ai ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow17SimpleRecordBatch5SliceEll(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.42", align 8    ; 15 uses
  %5 = alloca %"class.std::shared_ptr.18", align 16 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZNK5arrow11RecordBatch11num_columnsEv.exit unwind label %bb.e ; 2 uses

_ZNK5arrow11RecordBatch11num_columnsEv.exit:      ; preds = %bb.a
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #29
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !681
  %i.i = load ptr, ptr %4, align 8, !tbaa !675    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 4
  %i.n = icmp ult i64 %i.m, %i.e
  br i1 %i.n, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !674  ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.k
  %i.s = shl nuw nsw i64 %i.e, 4
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc11 unwind label %bb.e   ; 4 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.noexc11 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.i, %.noexc11 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !50, !alias.scope !753, !noalias !750
  store ptr null, ptr %i.u, align 8, !tbaa !49, !alias.scope !753, !noalias !750
  store <2 x ptr> %i.v, ptr %.012.i.i.i.i, align 8, !tbaa !50, !alias.scope !750, !noalias !753
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !46, !alias.scope !753, !noalias !750
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !755

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc11
  %.not.i8.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.t, ptr %4, align 8, !tbaa !675
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store ptr %i.y, ptr %i.o, align 8, !tbaa !674
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.e
  store ptr %i.z, ptr %i.g, align 8, !tbaa !681
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !756 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !756 ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64
  %i.aj = sub nsw i64 %i.ai, %2
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %3, i64 %i.aj)
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !67
  %i.ak = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc12 unwind label %bb.z, !inline_history !757 ; 6 uses

.noexc12:                                         ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !51, !noalias !758
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !53, !noalias !758
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ak, align 8, !tbaa !54, !noalias !758
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJRKSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaISA_EERKNS0_20DeviceAllocationTypeERKS2_INS0_6Device9SyncEventEEEEvPT_DpOT0_(ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !758, !inline_history !761

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc12
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 160) #27, !noalias !758, !inline_history !762
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i, %bb.b, %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.f:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.022.028 = phi ptr [ %i.ab, %.lr.ph ], [ %i.bo, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %.sroa.022.028, align 8, !tbaa !46
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %i.as, i64 noundef %2, i64 noundef %3)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !674 ; 5 uses
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !681
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !49
  %i.aw = load <2 x ptr>, ptr %5, align 16, !tbaa !50
  store ptr null, ptr %i.ag, align 8, !tbaa !49
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !50
  store ptr null, ptr %5, align 16, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !674
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.q

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.i, %bb.h
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.az, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !53
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #26, !inline_history !212
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #26, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.m ], [ %i.bm, %bb.n ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ad
  br i1 %i.bp, label %._crit_edge, label %bb.f

bb.p:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.bq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.aa

_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc12
  store ptr %i.ap, ptr %0, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.bs, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bt = load ptr, ptr %4, align 8, !tbaa !675   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.bt, %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.by, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !53
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #26, !inline_history !682
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.v ], [ %i.cl, %bb.w ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.x, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.t, %.lr.ph.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.cn, %i.bv
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.co = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bt, %_ZNSt12__shared_ptrIN5arrow17SimpleRecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !681
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_20
begin_hunk_21_@_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJRKSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaISA_EERKNS0_20DeviceAllocationTypeERKS2_INS0_6Device9SyncEventEEEEvPT_DpOT0_:bb.a
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !53
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !125
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i9 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.ap = load ptr, ptr %7, align 16, !tbaa !675  ; 3 uses
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.ap, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.at, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !53
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #26, !inline_history !682
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.r ], [ %i.bg, %bb.s ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.t, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.p, %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.bi, %i.aq
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bk = load ptr, ptr %i.m, align 16, !tbaa !681
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.u
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !49  ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bp, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !53
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26, !inline_history !128
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i12 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i12, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

bb.z:                                             ; preds = %bb.x
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i14 = phi i32 [ %i.bs, %bb.y ], [ %i.cc, %bb.z ]
  %i.cd = icmp eq i32 %.0.i.i.i.i14, 1
  br i1 %i.cd, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13, %bb.aa
  ret void

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  resume { ptr, i32 } %i.ce
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17SimpleRecordBatchC2ESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_9ArrayDataEESaIS6_EENS_20DeviceAllocationTypeES1_INS_6Device9SyncEventEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef signext %4, ptr noundef %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.b, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.c, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow17SimpleRecordBatchE, i64 16), ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load <2 x ptr>, ptr %3, align 8, !tbaa !756
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !756
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !681
  store ptr %i.h, ptr %i.f, align 8, !tbaa !681
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store i8 %4, ptr %i.k, align 8, !tbaa !666
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load <2 x ptr>, ptr %5, align 8, !tbaa !50
  store ptr null, ptr %i.n, align 8, !tbaa !49
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !50
  store ptr null, ptr %5, align 8, !tbaa !578
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.q = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.a unwind label %bb.k

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91   ; 3 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4                   ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.r
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = sub nuw nsw i64 %i.r, %i.y
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.aa)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp ugt i64 %i.y, %i.r
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.r ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i4, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.af, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !53
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26, !inline_history !793
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26, !inline_history !793
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.as, %bb.i ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i, !prof !57

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !91
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  ret void

bb.k:                                             ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #26
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  tail call void @_ZN5arrow11RecordBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow5ArrayEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow5ArrayEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !91
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !797, !noalias !794
  store ptr null, ptr %i.x, align 8, !tbaa !49, !alias.scope !797, !noalias !794
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !794, !noalias !797
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !41, !alias.scope !797, !noalias !794
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !311

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #27
end_hunk_21
begin_hunk_22_@_ZSt10_ConstructIN5arrow17SimpleRecordBatchEJSt10shared_ptrINS0_6SchemaEERlSt6vectorIS2_INS0_9ArrayDataEESaIS8_EERNS0_20DeviceAllocationTypeES2_INS0_6Device9SyncEventEEEEvPT_DpOT0_:bb.a

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ad = load ptr, ptr %7, align 16, !tbaa !675  ; 3 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !674 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.ad, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !53
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26, !inline_history !682
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26, !inline_history !682
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.l ], [ %i.au, %bb.m ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !57

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.aw, %i.ae
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !675
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ay = load ptr, ptr %i.g, align 16, !tbaa !681
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.o
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !49  ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bd, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !53
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !128
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i9 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i11 = phi i32 [ %i.bg, %bb.s ], [ %i.bq, %bb.t ]
  %i.br = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.br, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.u
  ret void

bb.v:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  resume { ptr, i32 } %i.bs
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(50) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(50) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow11StructArrayESaIvEJSt10shared_ptrINS4_8DataTypeEERKlSt6vectorIS7_INS4_5ArrayEESaISE_EEDniiEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.79", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !802 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.e = load i64, ptr %4, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.f = load i32, ptr %7, align 4, !tbaa !3
  %i.g = sext i32 %i.f to i64
  %i.h = load i32, ptr %8, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64
  invoke void @_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKSt6vectorIS1_INS_5ArrayEESaIS8_EES1_INS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %9, i64 noundef %i.g, i64 noundef %i.i)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !53
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !805
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !805
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #27
  resume { ptr, i32 } %i.aa

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  store ptr %i.d, ptr %1, align 8, !tbaa !806
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow11StructArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26, !inline_history !807
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !664  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKSt6vectorIS1_INS_5ArrayEESaIS8_EES1_INS_6BufferEEll(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.f = load i32, ptr %2, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIiEEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIiEEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSH_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %3) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(36) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSH_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIiEEDaSH_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.l = load i32, ptr %4, align 4, !tbaa !3
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSH_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSH_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIiEEDaSH_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSH_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIiEEDaSH_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.n, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
end_hunk_22
begin_hunk_23_@"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0E9_M_invokeERKSt9_Any_dataS5_":bb.a

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %.critedge.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !826, !noalias !821, !nonnull !115, !align !619 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !827, !noalias !821 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !355, !noalias !821
  %.not.i.i.i.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %.0.lcssa.i.i.i, ptr %i.df, align 1, !tbaa !40, !noalias !821
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !827, !noalias !821
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.de, align 8, !tbaa !827, !noalias !821
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

bb.ah:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !353, !noalias !821 ; 4 uses
  %i.dl = ptrtoint ptr %i.df to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 8 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775807
  br i1 %i.do, label %bb.ai, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29, !noalias !821
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.ah
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.dp = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.dn ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.dn
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 9223372036854775807)
  %i.ds = select i1 %i.dq, i64 9223372036854775807, i64 %i.dr ; 3 uses
  %.not.i.i.i25.i.i.i = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i25.i.i.i)
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #28, !noalias !821 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dn ; 2 uses
  store i8 %.0.lcssa.i.i.i, ptr %i.du, align 1, !tbaa !40, !noalias !821
  %i.dv = icmp sgt i64 %i.dn, 0
  br i1 %i.dv, label %bb.aj, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

bb.aj:                                            ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr align 1 %i.dk, i64 %i.dn, i1 false), !noalias !821
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.aj, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dn) #27, !noalias !821
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ak, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.dt, ptr %i.dd, align 8, !tbaa !353, !noalias !821
  store ptr %i.dw, ptr %i.de, align 8, !tbaa !827, !noalias !821
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store ptr %i.dx, ptr %i.dg, align 8, !tbaa !355, !noalias !821
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.ag, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !828
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !818
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS_10MemoryPoolEE3$_0", ptr %0, align 8, !tbaa !831
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !50
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !833
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %i.r, align 8, !tbaa !49
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !50
  store ptr null, ptr %2, align 8, !tbaa !92
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !837, !noalias !834
  store ptr null, ptr %i.t, align 8, !tbaa !49, !alias.scope !837, !noalias !834
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !834, !noalias !837
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !92, !alias.scope !837, !noalias !834
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !839

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !50, !alias.scope !843, !noalias !840
  store ptr null, ptr %i.y, align 8, !tbaa !49, !alias.scope !843, !noalias !840
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !50, !alias.scope !840, !noalias !843
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !92, !alias.scope !843, !noalias !840
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !839

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !171
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !170
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow14NumericBuilderINS4_9Int32TypeEEESaIvEJRPNS4_10MemoryPoolEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28, !noalias !845 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS0_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !343    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !848
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 64, ptr %i.g, align 8, !tbaa !854
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.e, ptr %i.i, align 8, !tbaa !385
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.j, align 8, !tbaa !390
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.l, align 8, !tbaa !391
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %i.d, align 8, !tbaa !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc.i.i.i unwind label %.body.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49, !noalias !855 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.n, align 8, !tbaa !50, !noalias !855
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !50, !alias.scope !855
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !855
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3, !noalias !855
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3, !noalias !855
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4, !noalias !855 ; 0 uses
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %i.d) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 232) #27
  resume { ptr, i32 } %i.x

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %.noexc.i.i.i, %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.e, ptr %i.z, align 8, !tbaa !385
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.aa, align 8, !tbaa !390
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ac, align 8, !tbaa !391
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  store ptr %i.d, ptr %1, align 8, !tbaa !858
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS0_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS0_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow14NumericBuilderINS3_9Int32TypeEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(216) %i.a) #26, !inline_history !859
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS0_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS0_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !664  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !860
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !860
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !53
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !58
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !861
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !861
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !862
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !53
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !863
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !863
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !862
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %0) #26, !inline_history !862
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !864
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !67, !noalias !865
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.71)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !864, !noalias !865
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.72, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.73, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.71)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !95     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = shl i64 %.sroa.speculated, 2
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.h, i1 noundef zeroext true)
  %i.i = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8, !tbaa !868
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !53
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !869
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
end_hunk_23
begin_hunk_24_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !960
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !57

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ad = load ptr, ptr %6, align 8, !tbaa !868   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #26, !inline_history !961
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !98

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !868 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #26, !inline_history !962
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !868   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #26, !inline_history !961
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !952   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !963
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !969
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !970, !range !114, !noundef !115
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !114
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !98
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !98
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !390
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !971
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.381") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !868  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #26, !inline_history !974
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !106

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !107, !range !114, !noundef !115
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !868    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !952
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !868
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !975
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !49 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !53
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !977
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !977
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !57

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !49
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !51
  store i32 0, ptr %i.f, align 4, !tbaa !53
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !60
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !978  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #26, !inline_history !980
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
end_hunk_24
begin_hunk_25_@_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb:_ZN5arrow6StatusD2Ev.exit
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cs, align 8, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !53
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !54
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26, !inline_history !1003
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26, !inline_history !1003
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ai, label %_ZN5arrow13BufferBuilder5ResetEv.exit, !prof !57

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

_ZN5arrow13BufferBuilder5ResetEv.exit:            ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1004
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow13BufferBuilder5ResetEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !95
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !95
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !57

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.411") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !998  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #26, !inline_history !1007
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !106

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !107, !range !114, !noundef !115
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !998    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !919
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !998
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1008
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !49 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !53
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !977
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !977
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !57

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !49
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !51
  store i32 0, ptr %i.f, align 4, !tbaa !53
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !60
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1010 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #26, !inline_history !1012
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
end_hunk_25
begin_hunk_26_@_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS0_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 408) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS0_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow19Dictionary32BuilderINS3_10StringTypeEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(392) %i.a) #26, !inline_history !1013
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS0_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS1_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 408) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS0_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !664  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEEC2IS5_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.9", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev(), !noalias !1014 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49, !noalias !1014 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !50, !noalias !1014
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !50, !alias.scope !1014
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10StringTypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !1014
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !1014
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !1014
  br label %_ZN5arrow10TypeTraitsINS_10StringTypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !1014 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_10StringTypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_10StringTypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEEC2IS5_EENSt9enable_ifIXntsr25is_fixed_size_binary_typeIT_EE5valueERKSt10shared_ptrINS_8DataTypeEEE4typeEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %1, i64 noundef 64)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10StringTypeEE14type_singletonEv.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !53
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !58
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.l:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10StringTypeEE14type_singletonEv.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !58
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %i.r, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !53
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !861
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !861
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !862
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i:     ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i1, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.al, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !53
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !863
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !863
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.ao, %bb.q ], [ %i.ay, %bb.r ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.az, label %bb.s, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, !prof !57

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !862
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %i.r) #26, !inline_history !862
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1017 ; 3 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTableESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTableEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTableEEclEPS2_.exit.i: ; preds = %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit
  tail call void @_ZN5arrow8internal19DictionaryMemoTableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 8) #27
  br label %_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTableESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTableESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTableEEclEPS2_.exit.i
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19Dictionary32BuilderINS_10StringTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !67, !noalias !1019
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.71)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !864, !noalias !1019
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.72, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.73, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.71)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !95     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %i.g, i64 noundef %.sroa.speculated)
  %i.h = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.k = load i64, ptr %i.j, align 8, !tbaa !870
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.k, ptr %i.l, align 8, !tbaa !870
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1022
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.a, align 8, !tbaa !868
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
end_hunk_26
begin_hunk_27_@_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  invoke void @_ZN5arrow11StringArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !53
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !212
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i64, ptr %i.u, align 8, !tbaa !870, !noalias !1100 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !54, !noalias !1100
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1100
  %i.z = invoke noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(144) %1)
          to label %.noexc unwind label %bb.k, !inline_history !874

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = add nsw i64 %i.z, %4                    ; 2 uses
  %.not.i = icmp sgt i64 %i.aa, %i.v
  br i1 %.not.i, label %bb.i, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc
  store ptr null, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN5arrow6StatusD2Ev.exit47

bb.i:                                             ; preds = %.noexc
  %i.ab = shl nsw i64 %i.v, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.smax.i64(i64 %i.aa, i64 %i.ab)
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54, !noalias !1100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1100
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.k, !inline_history !874

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i
  %.pr = load ptr, ptr %8, align 8, !tbaa !95     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.af = icmp eq ptr %.pr, null
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit47, label %.critedge

bb.j:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ad

bb.k:                                             ; preds = %bb.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

_ZN5arrow6StatusD2Ev.exit47:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !134
  switch i32 %i.al, label %bb.u [
    i32 2, label %bb.l
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
  ]

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIhEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.m:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIaEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplItEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIsEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIjEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIiEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.s:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplImEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  invoke void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIlEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
          to label %.critedge unwind label %bb.m

bb.u:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !1103
  invoke void @_ZN5arrow8internal12JoinToStringIJRA21_KcRKNS_14DictionaryTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(21) @.str.74, ptr noundef nonnull align 8 dereferenceable(105) %i.a)
          to label %.noexc48 unwind label %bb.m

.noexc48:                                         ; preds = %bb.u
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc48
  %i.an = load ptr, ptr %5, align 8, !tbaa !37, !noalias !1103 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN5arrow6Status9TypeErrorIJRA21_KcRKNS_14DictionaryTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !40, !noalias !1103
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #27
  br label %_ZN5arrow6Status9TypeErrorIJRA21_KcRKNS_14DictionaryTypeEEEES0_DpOT_.exit

bb.w:                                             ; preds = %.noexc48
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !37, !noalias !1103 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.w
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !40, !noalias !1103
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !1103
  br label %.body

_ZN5arrow6Status9TypeErrorIJRA21_KcRKNS_14DictionaryTypeEEEES0_DpOT_.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !1103
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6Status9TypeErrorIJRA21_KcRKNS_14DictionaryTypeEEEES0_DpOT_.exit, %_ZN5arrow6StatusD2Ev.exit, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %6, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i49 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i49, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ba, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !53
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #26, !inline_history !1108
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #26, !inline_history !1108
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.aa ], [ %i.bn, %bb.ab ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.ac, label %_ZN5arrow5ArrayD2Ev.exit, !prof !57

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #26, !inline_history !1109
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %.critedge, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

.body:                                            ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.k
  %.pn39 = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.am, %bb.m ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #26
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.j
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.std::shared_ptr.18", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.9", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1110
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef %2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !95, !noalias !1110 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1110
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit20.i, label %.critedge

_ZN5arrow6StatusD2Ev.exit20.i:                    ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1110
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1017, !noalias !1110
  invoke void @_ZN5arrow8internal19DictionaryMemoTable12GetArrayDataElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0, ptr noundef nonnull %5)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit20.i
  %i.f = load ptr, ptr %4, align 8, !tbaa !95, !noalias !1110 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1110
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.noexc14
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1017, !noalias !1110
  %i.i = invoke noundef i32 @_ZNK5arrow8internal19DictionaryMemoTable4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 %i.i, ptr %i.j, align 8, !tbaa !1113, !noalias !1110
  invoke void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(392) %1)
          to label %_ZN5arrow6StatusD2Ev.exit20 unwind label %bb.c

bb.c:                                             ; preds = %.noexc15, %bb.b, %_ZN5arrow6StatusD2Ev.exit20.i, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %.noexc15
  store ptr null, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.l = load ptr, ptr %1, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %6, ptr noundef nonnull align 8 dereferenceable(392) %1)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit20
  %i.o = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load <2 x ptr>, ptr %6, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !49   ; 8 uses
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !53
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !1123
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !1123
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, !prof !57

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !49  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aj, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !53
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26, !inline_history !58
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
end_hunk_27
begin_hunk_28_@_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.bo, %bb.x ], [ %i.by, %bb.y ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !57

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !49
  br label %.critedge

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit20
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ah

.critedge:                                        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.noexc, %.noexc14
  %storemerge = phi ptr [ %i.f, %.noexc14 ], [ %i.b, %.noexc ], [ null, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !95
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49 ; 8 uses
  %.not.i.i23 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i23, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cd, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !53
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26, !inline_history !212
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i24 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i24, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

bb.af:                                            ; preds = %bb.ad
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i26 = phi i32 [ %i.cg, %bb.ae ], [ %i.cq, %bb.af ]
  %i.cr = icmp eq i32 %.0.i.i.i.i26, 1
  br i1 %i.cr, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.ah:                                            ; preds = %bb.aa, %bb.c
  %.pn12 = phi { ptr, i32 } [ %i.ca, %bb.aa ], [ %i.k, %bb.c ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.9", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49, !noalias !1124 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !50, !noalias !1124
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !50, !alias.scope !1124
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !1124
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !1124
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !1124
  br label %_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !1124 ; 0 uses
  br label %_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv.exit

_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 376
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !53
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !58
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.l:                                             ; preds = %_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEEC2IS5_EENSt9enable_ifIXntsr25is_fixed_size_binary_typeIT_EE5valueERKSt10shared_ptrINS_8DataTypeEEE4typeEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !848
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8, !tbaa !854
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.d, align 8, !tbaa !385
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %3, ptr %i.g, align 8, !tbaa !391
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28
          to label %bb.b unwind label %bb.k       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow8internal19DictionaryMemoTableC1EPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.i, align 8, !tbaa !1017
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.k, align 8, !tbaa !1113
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 -1, ptr %i.l, align 4, !tbaa !1127
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %2, ptr %i.n, align 8, !tbaa !848
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %3, ptr %i.o, align 8, !tbaa !854
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %2, ptr %i.q, align 8, !tbaa !385
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.r, align 8, !tbaa !390
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %3, ptr %i.t, align 8, !tbaa !391
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %i.m, align 8, !tbaa !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc.i unwind label %.body  ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49, !noalias !1128 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !50, !noalias !1128
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !50, !alias.scope !1128
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !1128
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !1128
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !1128
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !1128 ; 0 uses
  br label %bb.g

.body:                                            ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %i.m) #26
  tail call void @_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTableESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #26
  br label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e, %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %2, ptr %i.ah, align 8, !tbaa !385
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ai, align 8, !tbaa !390
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i64 %3, ptr %i.ak, align 8, !tbaa !391
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %1, align 8, !tbaa !50
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.g, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 8) #27
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.af, %.body ], [ %i.av, %bb.l ], [ %i.au, %bb.k ]
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #26
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow8internal19DictionaryMemoTableC1EPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTableESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1017   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTableEEclEPS2_.exit

_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTableEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN5arrow8internal19DictionaryMemoTableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTableEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19DictionaryMemoTableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE16AppendScalarImplINS_9UInt8TypeEEENS_6StatusERKNS_11StringArrayERKNS_6ScalarEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(41) %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1066, !range !114, !noundef !115
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1131
  %i.f = zext i8 %i.e to i64                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1134 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 6 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1136
  %i.m = add nsw i64 %i.l, %i.f                   ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40
  %i.q = trunc i64 %i.m to i8
  %i.r = and i8 %i.q, 7
  %i.s = lshr i8 %i.p, %i.r
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !134
  switch i32 %i.w, label %bb.g [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit
    i32 28, label %bb.e
    i32 38, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 noundef %i.f)
  br i1 %i.x, label %bb.j, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 noundef %i.f)
  br i1 %i.y, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !175
  %.not25 = icmp eq i64 %i.aa, %i.ad
  br i1 %.not25, label %bb.j, label %bb.h

_ZNK5arrow5Array7IsValidEl.exit:                  ; preds = %bb.d
  %i.ae = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 noundef %i.f)
  br i1 %i.ae, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.c, %_ZNK5arrow5Array7IsValidEl.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1137
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.f ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1140
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ah, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = sub nsw i32 %i.ao, %i.ai
  %i.aq = sext i32 %i.ap to i64
  %.not27 = icmp sgt i64 %4, 0
  br i1 %.not27, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge.sink.split
end_hunk_28
begin_hunk_29_@_ZZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplImEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEllENKUllE_clEl:bb.a
  call void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.ax, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !1636, !inline_history !1548
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !95, !noalias !1636 ; 2 uses
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !95, !alias.scope !1636
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1636
  %i.bj = icmp eq ptr %.pr.i.i, null
  br i1 %i.bj, label %bb.i, label %_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit9.thread.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !390, !noalias !1636
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !875, !noalias !1636
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  store i32 0, ptr %i.bo, align 1, !noalias !1636
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !875, !noalias !1636
  %i.bq = add nsw i64 %i.bp, 4
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !875, !noalias !1636
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !390, !noalias !1636
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !876, !noalias !1636 ; 2 uses
  %i.bv = sdiv i64 %i.bu, 8
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !40, !noalias !1636
  %i.by = srem i64 %i.bu, 8
  %i.bz = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40, !noalias !1636
  %i.cb = xor i8 %i.ca, -1
  %i.cc = and i8 %i.bx, %i.cb
  store i8 %i.cc, ptr %i.bw, align 1, !tbaa !40, !noalias !1636
  %i.cd = load <2 x i64>, ptr %i.bt, align 8, !tbaa !67, !noalias !1636
  %i.ce = add nsw <2 x i64> %i.cd, splat (i64 1)
  store <2 x i64> %i.ce, ptr %i.bt, align 8, !tbaa !67, !noalias !1636
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !67, !noalias !1636
  %i.ch = add nsw <2 x i64> %i.cg, splat (i64 1)
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !67, !noalias !1636
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1640
  br label %_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit

_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit: ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE20AppendArraySliceImplIlEENS_6StatusERKNS_11StringArrayERKNS_9ArraySpanEllENKUllE_clEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1496 ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1643, !nonnull !115, !align !619
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1460
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %2
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1644, !nonnull !115, !align !619 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1134 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 6 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1136
  %i.o = add nsw i64 %i.n, %i.f                   ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %i.s = trunc i64 %i.o to i8
  %i.t = and i8 %i.s, 7
  %i.u = lshr i8 %i.r, %i.t
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !134
  switch i32 %i.y, label %bb.f [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit
    i32 28, label %bb.d
    i32 38, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 noundef %i.f)
  br i1 %i.z, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 noundef %i.f)
  br i1 %i.aa, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ac = load atomic i64, ptr %i.ab seq_cst, align 8
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !175
  %.not = icmp eq i64 %i.ac, %i.af
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow5Array7IsValidEl.exit:                  ; preds = %bb.c
  %i.ag = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 noundef %i.f)
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %_ZNK5arrow5Array7IsValidEl.exit
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !1644, !nonnull !115, !align !619 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1137
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.f ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1140
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ak, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = sub nsw i32 %i.ar, %i.al
  %i.at = sext i32 %i.as to i64
  tail call void @_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i64 %i.at, ptr %i.ap)
  br label %_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %_ZNK5arrow5Array7IsValidEl.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.au, align 8, !tbaa !67, !noalias !1645
  %i.aw = add nsw <2 x i64> %i.av, splat (i64 1)
  store <2 x i64> %i.aw, ptr %i.au, align 8, !tbaa !67, !noalias !1645
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1651
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !870, !noalias !1652 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !54, !noalias !1652
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1652
  %i.bd = tail call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(216) %i.ax), !noalias !1652, !inline_history !1548 ; 2 uses
  %.not.i.not.i.i = icmp slt i64 %i.bd, %i.az
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit9.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit9.thread.i.i:            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1651
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.h
  %i.be = add nsw i64 %i.bd, 1
  %i.bf = shl nsw i64 %i.az, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.be, i64 %i.bf)
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !54, !noalias !1652
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1652
  call void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.ax, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !1651, !inline_history !1548
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !95, !noalias !1651 ; 2 uses
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !95, !alias.scope !1651
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1651
  %i.bj = icmp eq ptr %.pr.i.i, null
  br i1 %i.bj, label %bb.i, label %_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit9.thread.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !390, !noalias !1651
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !875, !noalias !1651
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  store i32 0, ptr %i.bo, align 1, !noalias !1651
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !875, !noalias !1651
  %i.bq = add nsw i64 %i.bp, 4
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !875, !noalias !1651
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !390, !noalias !1651
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !876, !noalias !1651 ; 2 uses
  %i.bv = sdiv i64 %i.bu, 8
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !40, !noalias !1651
  %i.by = srem i64 %i.bu, 8
  %i.bz = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40, !noalias !1651
  %i.cb = xor i8 %i.ca, -1
  %i.cc = and i8 %i.bx, %i.cb
  store i8 %i.cc, ptr %i.bw, align 1, !tbaa !40, !noalias !1651
  %i.cd = load <2 x i64>, ptr %i.bt, align 8, !tbaa !67, !noalias !1651
  %i.ce = add nsw <2 x i64> %i.cd, splat (i64 1)
  store <2 x i64> %i.ce, ptr %i.bt, align 8, !tbaa !67, !noalias !1651
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !67, !noalias !1651
  %i.ch = add nsw <2 x i64> %i.cg, splat (i64 1)
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !67, !noalias !1651
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1655
  br label %_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit

_ZN5arrow8internal21DictionaryBuilderBaseINS_14NumericBuilderINS_9Int32TypeEEENS_10StringTypeEE10AppendNullEv.exit: ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !212
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !212
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !1108
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !1108
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !1109
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

declare void @_ZN5arrow8internal19DictionaryMemoTable12GetArrayDataElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK5arrow8internal19DictionaryMemoTable4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !380    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !369
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !380
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1658
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !49 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !53
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !977
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !977
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !57

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !49
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !51
  store i32 0, ptr %i.f, align 4, !tbaa !53
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !60
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1660 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #26, !inline_history !1662
  br label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !664  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow12ArrayBuilderEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(43) @_ZTSSt14default_deleteIN5arrow12ArrayBuilderEE) #26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17DenseUnionBuilderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(368) %i.a) #26, !inline_history !1663
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17DenseUnionBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_29
begin_hunk_30_@_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1922
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(49) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1925
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1925
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610, !noalias !1925, !nonnull !115, !align !619
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %2) #26, !noalias !1925
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(49) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1925 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1925
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1925
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow23SimpleRecordBatchReaderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(49) %i.a) #26, !inline_history !1928
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow23SimpleRecordBatchReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !664  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow23SimpleRecordBatchReaderEJSt6vectorISt10shared_ptrINS0_11RecordBatchEESaIS5_EES3_INS0_6SchemaEERNS0_20DeviceAllocationTypeEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::VectorIterator", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.145", align 8   ; 4 uses
  %6 = alloca %"class.std::vector.145", align 8   ; 4 uses
  %7 = alloca %"class.std::vector.145", align 8   ; 2 uses
  %8 = alloca %"class.std::shared_ptr.21", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !537    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !530  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !533  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %3, align 1, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow23SimpleRecordBatchReaderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !49
  %i.j = load <2 x ptr>, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %i.g, align 8, !tbaa !49
  store ptr null, ptr %2, align 8, !tbaa !61
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !50
  store ptr null, ptr %8, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !1929
  store ptr %i.a, ptr %4, align 8, !tbaa !537, !noalias !1929
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !530, !noalias !1929
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.l, align 8, !tbaa !533, !noalias !1929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !1929
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.m, align 8, !tbaa !1932, !noalias !1929
  %i.n = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit unwind label %.body.i, !noalias !1929 ; 5 uses

.body.i:                                          ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow14VectorIteratorISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #26, !noalias !1929
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26, !noalias !1929
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #26
  resume { ptr, i32 } %i.o

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8, !tbaa !537, !noalias !1929
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.c, ptr %i.q, align 8, !tbaa !530, !noalias !1929
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.e, ptr %i.r, align 8, !tbaa !533, !noalias !1929
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %i.s, align 8, !tbaa !1932, !noalias !1929
  store ptr @_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE6DeleteINS_14VectorIteratorIS3_EEEEvPv, ptr %i.p, align 8, !tbaa !1937, !alias.scope !1929
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.t, align 8, !tbaa !1938, !alias.scope !1929
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextINS_14VectorIteratorIS3_EEEENS_6ResultIS3_EEPv, ptr %i.u, align 8, !tbaa !565, !alias.scope !1929
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.h, ptr %i.v, align 8, !tbaa !575
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow23SimpleRecordBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow23SimpleRecordBatchReaderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !53
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !128
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !128
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow23SimpleRecordBatchReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow23SimpleRecordBatchReaderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i unwind label %bb.c, !inline_history !1939

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30, !inline_history !1939
  unreachable

_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZN5arrow23SimpleRecordBatchReaderD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !53
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !1940
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !1940
  br label %_ZN5arrow23SimpleRecordBatchReaderD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZN5arrow23SimpleRecordBatchReaderD2Ev.exit, !prof !57

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26, !inline_history !1939
  br label %_ZN5arrow23SimpleRecordBatchReaderD2Ev.exit

_ZN5arrow23SimpleRecordBatchReaderD2Ev.exit:      ; preds = %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow23SimpleRecordBatchReader6schemaEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !50
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow23SimpleRecordBatchReader8ReadNextEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result", align 8     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !1941 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !565, !noalias !1941
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %3, ptr noundef nonnull %i.c), !inline_history !1944
  %i.f = load ptr, ptr %3, align 8, !tbaa !95, !alias.scope !1941 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1941
  %i.j = icmp eq ptr %i.i, null
  %or.cond.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !1941 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !50, !noalias !1941
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !50, !noalias !1941
  invoke void %i.l(ptr noundef nonnull %i.k)
          to label %._ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split_crit_edge unwind label %bb.e

._ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split_crit_edge: ; preds = %bb.d
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !95, !noalias !1945
  br label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #30
  unreachable

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  store i64 0, ptr %3, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  br label %bb.f

_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split: ; preds = %._ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split_crit_edge, %bb.b
  %.pr = phi ptr [ %.pr.pre, %._ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split_crit_edge ], [ %i.f, %bb.b ]
  %i.o = icmp eq ptr %.pr, null
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  br i1 %i.o, label %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split._crit_edge, label %_ZNO5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE6statusEv.exit.i

_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split._crit_edge: ; preds = %bb.c, %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split
  %i.p = load <2 x ptr>, ptr %i.h, align 8, !tbaa !50, !noalias !1948
  br label %bb.f

_ZNO5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE6statusEv.exit.i: ; preds = %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split
  call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE6statusEv.exit.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !95, !noalias !1954
  %i.r = load ptr, ptr %0, align 8, !tbaa !95, !alias.scope !1954 ; 2 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !95, !noalias !1954
  br label %bb.m

bb.f:                                             ; preds = %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split._crit_edge, %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.s = phi <2 x ptr> [ %i.p, %_ZN5arrow8IteratorISt10shared_ptrINS_11RecordBatchEEE4NextEv.exitthread-pre-split._crit_edge ], [ splat (ptr null), %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !1945
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49, !noalias !1945 ; 8 uses
  store <2 x ptr> %i.s, ptr %2, align 8, !tbaa !50, !noalias !1945
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8, !noalias !1945 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.w, align 8, !tbaa !51, !noalias !1945
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !53, !noalias !1945
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !54, !noalias !1945
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1945
end_hunk_30
