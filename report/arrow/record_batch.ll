inline.NumInlined: 4880
inline.NumDeleted: 1990
begin_hunk_0_@_ZNK5arrow11RecordBatch9AddColumnEiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_5ArrayEE:bb.a
  store i32 0, ptr %i.au, align 4, !tbaa !53
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26, !inline_history !58
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i9 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i11 = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.r
  %i.bf = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !40
  %i.bi = add i64 %i.bh, 1
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
define void @_ZNK5arrow11RecordBatch15GetColumnByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
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
define noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret i32 %i.c
}

declare noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow11RecordBatchC2ESt10shared_ptrINS_6SchemaEEl(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef captures(none) %1, i64 noundef %2) unnamed_addr #4 align 2 {
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
define void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.30") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
define void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_9ArrayDataEESaIS6_EENS_20DeviceAllocationTypeES1_INS_6Device9SyncEventEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.30") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef signext %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
define void @_ZN5arrow11RecordBatch9MakeEmptyESt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, label %bb.b

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
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !130
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !130
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
define void @_ZN5arrow11RecordBatch15FromStructArrayERKSt10shared_ptrINS_5ArrayEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.std::shared_ptr.60", align 8 ; 6 uses
  %6 = alloca %"class.arrow::Result.63", align 8  ; 10 uses
  %7 = alloca %"class.std::vector", align 16      ; 11 uses
  %8 = alloca %"class.std::shared_ptr.21", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.55", align 8    ; 8 uses
  %10 = alloca %"class.std::shared_ptr.12", align 8 ; 4 uses
  %11 = alloca %"class.std::vector", align 16     ; 7 uses
  %12 = alloca %"class.std::shared_ptr.36", align 8 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !134
  %.not = icmp eq i32 %i.g, 26
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !150
  call void @_ZN5arrow8internal12JoinToStringIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(50) @.str, ptr noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !150
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !37, !noalias !150 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN5arrow6Status9TypeErrorIJRA50_KcRNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40, !noalias !150
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN5arrow6Status9TypeErrorIJRA50_KcRNS_8DataTypeEEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8, !tbaa !37, !noalias !150 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40, !noalias !150
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
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
end_hunk_1
begin_hunk_2_@_ZNK5arrow11RecordBatch8ToTensorEbbPNS_10MemoryPoolE:bb.a
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.j, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !53
  %i.o = load ptr, ptr %.pre, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #26, !inline_history !216
  %i.r = load ptr, ptr %.pre, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #26, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #26
  br label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

declare void @_ZN5arrow8internal19RecordBatchToTensorERKNS_11RecordBatchEbbPNS_10MemoryPoolEPSt10shared_ptrINS_6TensorEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow11RecordBatch11column_nameB5cxx11Ei(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow11RecordBatch6EqualsERKS0_bRKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.arrow::EqualOptions", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = zext i1 %2 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !217
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 %i.a, ptr %i.b, align 4, !tbaa !223, !alias.scope !225
  %i.c = call noundef zeroext i1 @_ZNK5arrow11RecordBatch6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow11RecordBatch6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.15", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.15", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val28 = load i8, ptr %i.b, align 8, !tbaa !228, !range !114, !noundef !115
  %i.c = trunc nuw i8 %.val28 to i1
  br i1 %i.c, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %.val) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.08.012.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_116ContainFloatTypeERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 16 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.l, %i.h
  %or.cond.i = select i1 %i.k, i1 true, i1 %.not15.i.i
  br i1 %or.cond.i, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit, label %.lr.ph.i.i

_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit: ; preds = %.lr.ph.i.i
  br i1 %i.k, label %bb.i, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %.not = icmp eq i32 %i.o, %i.r
  br i1 %.not, label %bb.e, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !64
  %.not25 = icmp eq i64 %i.t, %i.v
  br i1 %.not25, label %bb.f, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !229, !range !114, !noundef !115
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !223, !range !114, !noundef !115
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = tail call noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i1 noundef zeroext %i.ad)
  br i1 %i.ae, label %bb.h, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %0, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.not26 = icmp eq i8 %i.ai, %i.am
  br i1 %.not26, label %bb.i, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread

bb.i:                                             ; preds = %bb.h, %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34
  %i.at = add nuw nsw i32 %.02036, 1              ; 2 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.av = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %.not38 = icmp slt i32 %i.at, %i.av
  br i1 %.not38, label %bb.k, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread, !llvm.loop !230

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.02036 = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aw = load ptr, ptr %0, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.02036)
  %i.az = load ptr, ptr %3, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ba = load ptr, ptr %1, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.02036)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.bd = invoke noundef zeroext i1 @_ZNK5arrow5Array6EqualsERKSt10shared_ptrIS0_ERKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.aa      ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.be, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !53
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26, !inline_history !231
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !49 ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bv, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !53
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #26, !inline_history !231
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #26, !inline_history !231
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.v:                                             ; preds = %bb.t
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i31 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

bb.x:                                             ; preds = %bb.v
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i33 = phi i32 [ %i.by, %bb.w ], [ %i.ci, %bb.x ]
  %i.cj = icmp eq i32 %.0.i.i.i.i33, 1
  br i1 %i.cj, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, !prof !57

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.bd, label %bb.j, label %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread

bb.z:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.aa ], [ %i.ck, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn

_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit.thread: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, %bb.j, %bb.i, %bb.c, %bb.b, %bb.h, %bb.g, %bb.d, %bb.e, %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.h ], [ true, %bb.c ], [ true, %_ZN5arrow12_GLOBAL__N_122CanIgnoreNaNInEqualityERKNS_11RecordBatchERKNS_12EqualOptionsE.exit ], [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.i ], [ %i.bd, %bb.j ], [ %i.bd, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34 ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow5Array6EqualsERKSt10shared_ptrIS0_ERKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch13ReplaceSchemaESt10shared_ptrINS_6SchemaEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::vector.55", align 8    ; 11 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %7 = alloca %"class.std::shared_ptr.9", align 16 ; 8 uses
  %8 = alloca %"class.std::shared_ptr.9", align 16 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr.21", align 16 ; 4 uses
  %13 = alloca %"class.std::vector", align 8      ; 8 uses
  %14 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.h = load ptr, ptr %2, align 8, !tbaa !61
  %i.i = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %.not = icmp eq i32 %i.g, %i.i
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.k = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  store i32 %i.k, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.l = load ptr, ptr %2, align 8, !tbaa !61
  %i.m = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  store i32 %i.m, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !232
  call void @_ZN5arrow8internal12JoinToStringIJRA26_KciRA36_S2_iEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(26) @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(36) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c), !noalias !232
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !37, !noalias !232 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN5arrow6Status7InvalidIJRA26_KciRA36_S2_iEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40, !noalias !232
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZN5arrow6Status7InvalidIJRA26_KciRA36_S2_iEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %4, align 8, !tbaa !37, !noalias !232 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !40, !noalias !232
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn20.pn.pn, %bb.cx ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !232
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA26_KciRA36_S2_iEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !232
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.y = load ptr, ptr %5, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !98

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA26_KciRA36_S2_iEEES0_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA26_KciRA36_S2_iEEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.cy

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.ad = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !170 ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !171 ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775792
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #28
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !172
  %.pre107 = load ptr, ptr %i.ae, align 8, !tbaa !172
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, %bb.g
  %i.am = phi ptr [ %i.af, %bb.g ], [ %.pre107, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.an = phi ptr [ %i.ag, %bb.g ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ null, %bb.g ], [ %i.al, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !171
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !170
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !173
  %i.as = icmp eq ptr %i.an, %i.am
  br i1 %i.as, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bc, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.an, %bb.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.av = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !50
  store <2 x ptr> %i.av, ptr %.08.i.i.i.i.i, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.am
  br i1 %i.bd, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !174

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre108 = load ptr, ptr %6, align 8, !tbaa !171
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit.loopexit, %bb.i
  %i.be = phi ptr [ %i.ao, %bb.i ], [ %.pre108, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.bc, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !170
  %i.bf = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 4
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %.not19104 = icmp sgt i32 %i.bj, 0
  br i1 %.not19104, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.bf
  %storemerge105 = phi i32 [ 0, %.lr.ph ], [ %i.gw, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bm = sext i32 %storemerge105 to i64
  %i.bn = load ptr, ptr %6, align 8, !tbaa !171
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
end_hunk_2
begin_hunk_3_@_ZNK5arrow11RecordBatch13ReplaceSchemaESt10shared_ptrINS_6SchemaEE:bb.a
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
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.cn
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.lh, %bb.cn ], [ %i.ix, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  br label %bb.co

bb.co:                                            ; preds = %.body72, %bb.cm
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body73, %.body72 ], [ %i.lg, %bb.cm ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #26
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.co ], [ %i.lf, %bb.cl ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #26
  br label %bb.cx

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.cg, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.bi
  %i.li = load ptr, ptr %6, align 8, !tbaa !171   ; 3 uses
  %i.lj = load ptr, ptr %i.ap, align 8, !tbaa !170 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %i.li, %i.lj
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i89 = phi ptr [ %i.mb, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.li, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i90 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i.i.i.i90, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i.i88
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 4 uses
  %i.ln = load atomic i64, ptr %i.lm acquire, align 8 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 4294967297
  %i.lp = trunc i64 %i.ln to i32                  ; 2 uses
  br i1 %i.lo, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.lm, align 8, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  store i32 0, ptr %i.lq, align 4, !tbaa !53
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !54
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #26, !inline_history !200
  %i.lu = load ptr, ptr %i.ll, align 8, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #26, !inline_history !200
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.lx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i91 = icmp eq i8 %i.lx, 0
  br i1 %.not.i.i.i.i.i.i.i.i91, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ly = add nsw i32 %i.lp, -1
  store i32 %i.ly, ptr %i.lm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

bb.cu:                                            ; preds = %bb.cs
  %i.lz = atomicrmw volatile add ptr %i.lm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i.i.i.i93 = phi i32 [ %i.lp, %bb.ct ], [ %i.lz, %bb.cu ]
  %i.ma = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i93, 1
  br i1 %i.ma, label %bb.cv, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !57

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92, %bb.cr, %.lr.ph.i.i.i88
  %i.mb = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.mb, %i.lj
  br i1 %.not.i.i.i94, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i88, !llvm.loop !201

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i95 = load ptr, ptr %6, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.mc = phi ptr [ %.pr.i95, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.li, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i96 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i1.i96, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.md = load ptr, ptr %i.ar, align 8, !tbaa !173
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mg) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cp, %bb.bh
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.cp ], [ %.pn.pn.pn.pn, %bb.bh ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

bb.cy:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch11ColumnNamesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector.89") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 5 uses
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.f = shl nuw nsw i64 %i.d, 5
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 6 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !250
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !252
  %xtraiter = and i64 %i.d, 3
  %i.j = and i32 %i.c, 3
  %lcmp.mod.not = icmp eq i32 %i.j, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.k, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !39
  store i8 0, ptr %i.k, align 8, !tbaa !40
  %i.m = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !253

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.g, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %i.o = icmp ult i32 %i.c, 4
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.p, ptr %.08.i.i.i.i.i, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !39
  store i8 0, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !39
  store i8 0, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.w, align 8, !tbaa !39
  store i8 0, ptr %i.v, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.z, align 8, !tbaa !39
  store i8 0, ptr %i.y, align 8, !tbaa !40
  %i.aa = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !255

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %i.ac = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !256
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %.loopexit ] ; 4 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.af = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNK5arrow11RecordBatch11num_columnsEv.exit unwind label %bb.c

_ZNK5arrow11RecordBatch11num_columnsEv.exit:      ; preds = %bb.b
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.e, %bb.b, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ai

bb.d:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef %i.ak)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !257

bb.f:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !256  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !258

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !252
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch13RenameColumnsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector", align 8       ; 15 uses
  %6 = alloca %"class.std::vector.55", align 16   ; 15 uses
  %7 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %9 = alloca %"class.std::shared_ptr.21", align 8 ; 4 uses
  %10 = alloca %"class.std::vector.55", align 16  ; 7 uses
  %11 = alloca %"class.std::shared_ptr.12", align 8 ; 4 uses
  %12 = alloca %"class.std::vector", align 8      ; 7 uses
  %13 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 5 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !256
  %i.i = load ptr, ptr %2, align 8, !tbaa !250
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %.not = icmp eq i32 %i.f, %i.n
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.m, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !259
  call void @_ZN5arrow8internal12JoinToStringIJRA35_KcRiRA19_S2_mRA21_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(35) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.8), !noalias !259
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %3, align 8, !tbaa !37, !noalias !259 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN5arrow6Status7InvalidIJRA35_KcRiRA19_S2_mRA21_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !40, !noalias !259
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZN5arrow6Status7InvalidIJRA35_KcRiRA19_S2_mRA21_S2_EEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !37, !noalias !259 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !40, !noalias !259
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

common.resume:                                    ; preds = %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ], [ %.pn21.pn.pn.pn, %bb.cu ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !259
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA35_KcRiRA19_S2_mRA21_S2_EEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !259
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.z = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !98

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA35_KcRiRA19_S2_mRA21_S2_EEES0_DpOT_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !107, !range !114, !noundef !115
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA35_KcRiRA19_S2_mRA21_S2_EEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.cv

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ad = sext i32 %i.f to i64                    ; 3 uses
  %i.ae = icmp slt i32 %i.f, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.af = shl nuw nsw i64 %i.ad, 4                ; 6 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28
          to label %.lr.ph.preheader.i.i.i.i.i28 unwind label %bb.i ; 4 uses

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ag, ptr %5, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.af, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !90
  store ptr %scevgep.i.i.i.i.i, ptr %i.am, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28
          to label %.lr.ph unwind label %bb.j     ; 4 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i28
  store ptr %i.ao, ptr %6, align 16, !tbaa !171
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.af, i1 false)
  %scevgep.i.i.i.i.i29 = getelementptr i8, ptr %i.ao, i64 %i.af
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 16, !tbaa !173
  store ptr %scevgep.i.i.i.i.i29, ptr %i.aq, align 8, !tbaa !170
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = load <2 x ptr>, ptr %6, align 16, !tbaa !172
  %.pre109 = load ptr, ptr %i.ar, align 16, !tbaa !173
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %._crit_edge.loopexit
  %i.av = phi ptr [ %i.ar, %._crit_edge.loopexit ], [ %i.ak, %.thread ]
  %i.aw = phi ptr [ %i.aq, %._crit_edge.loopexit ], [ %i.aj, %.thread ]
  %i.ax = phi ptr [ %i.am, %._crit_edge.loopexit ], [ %i.ah, %.thread ] ; 2 uses
  %i.ay = phi ptr [ %i.an, %._crit_edge.loopexit ], [ %i.ai, %.thread ] ; 2 uses
  %i.az = phi ptr [ %.pre109, %._crit_edge.loopexit ], [ null, %.thread ]
  %i.ba = phi <2 x ptr> [ %i.au, %._crit_edge.loopexit ], [ splat (ptr null), %.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x ptr> %i.ba, ptr %10, align 16, !tbaa !172
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.bc, align 16, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.21") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.ao unwind label %bb.cn

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i28
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.k:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bf = load ptr, ptr %1, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  invoke void %i.bh(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bi)
          to label %bb.l unwind label %bb.am

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %5, align 8, !tbaa !87
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load <2 x ptr>, ptr %7, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
end_hunk_3
begin_hunk_4_@_ZNK5arrow11RecordBatch13RenameColumnsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.jo, align 8, !tbaa !51
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  store i32 0, ptr %i.js, align 4, !tbaa !53
  %i.jt = load ptr, ptr %i.jn, align 8, !tbaa !54
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #26, !inline_history !200
  %i.jw = load ptr, ptr %i.jn, align 8, !tbaa !54
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #26, !inline_history !200
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i80

bb.cb:                                            ; preds = %bb.bz
  %i.jz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i77 = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i.i.i.i.i.i77, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ka = add nsw i32 %i.jr, -1
  store i32 %i.ka, ptr %i.jo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78

bb.cd:                                            ; preds = %bb.cb
  %i.kb = atomicrmw volatile add ptr %i.jo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i.i79 = phi i32 [ %i.jr, %bb.cc ], [ %i.kb, %bb.cd ]
  %i.kc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i79, 1
  br i1 %i.kc, label %bb.ce, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i80, !prof !57

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i80

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i80: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i78, %bb.ca, %.lr.ph.i.i.i74
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 16 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.kd, %i.jl
  br i1 %.not.i.i.i81, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i82, label %.lr.ph.i.i.i74, !llvm.loop !201

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i82: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i80
  %.pr.i83 = load ptr, ptr %6, align 16, !tbaa !171
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i84

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i84: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i82, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit
  %i.ke = phi ptr [ %.pr.i83, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i82 ], [ %i.jk, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i85 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i1.i85, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i84
  %i.kf = load ptr, ptr %i.av, align 8, !tbaa !173
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.ki) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i84, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.kj = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %i.kk = load ptr, ptr %i.ax, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94
  %.05.i.i.i89 = phi ptr [ %i.lc, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94 ], [ %i.kj, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i90 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i.i.i90, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i88
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 4 uses
  %i.ko = load atomic i64, ptr %i.kn acquire, align 8 ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 4294967297
  %i.kq = trunc i64 %i.ko to i32                  ; 2 uses
  br i1 %i.kp, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.kn, align 8, !tbaa !51
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i32 0, ptr %i.kr, align 4, !tbaa !53
  %i.ks = load ptr, ptr %i.km, align 8, !tbaa !54
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #26, !inline_history !126
  %i.kv = load ptr, ptr %i.km, align 8, !tbaa !54
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #26, !inline_history !126
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94

bb.ci:                                            ; preds = %bb.cg
  %i.ky = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i91 = icmp eq i8 %i.ky, 0
  br i1 %.not.i.i.i.i.i.i.i.i91, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kz = add nsw i32 %i.kq, -1
  store i32 %i.kz, ptr %i.kn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

bb.ck:                                            ; preds = %bb.ci
  %i.la = atomicrmw volatile add ptr %i.kn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i.i.i.i93 = phi i32 [ %i.kq, %bb.cj ], [ %i.la, %bb.ck ]
  %i.lb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i93, 1
  br i1 %i.lb, label %bb.cl, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94, !prof !57

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94: ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92, %bb.ch, %.lr.ph.i.i.i88
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.lc, %i.kk
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96, label %.lr.ph.i.i.i88, !llvm.loop !127

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94
  %.pr.i97 = load ptr, ptr %5, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86
  %i.ld = phi ptr [ %.pr.i97, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96 ], [ %i.kj, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit86 ] ; 3 uses
  %.not.i.i1.i99 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i1.i99, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98
  %i.le = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lh) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.cv

bb.cn:                                            ; preds = %._crit_edge
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.co:                                            ; preds = %bb.ao
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.cp
  %eh.lpad-body = phi { ptr, i32 } [ %i.lk, %bb.cp ], [ %i.fl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17SimpleRecordBatchESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #26
  br label %bb.cq

bb.cq:                                            ; preds = %.body, %bb.co
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.lj, %bb.co ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #26
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cq ], [ %i.li, %bb.cn ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #26
  br label %bb.cs

bb.cs:                                            ; preds = %bb.am, %bb.an, %bb.cr
  %.pn21.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cr ], [ %i.em, %bb.an ], [ %i.el, %bb.am ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.j
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.cs ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.i
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.ct ], [ %i.bd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %common.resume

bb.cv:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

declare void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow11RecordBatch13SelectColumnsERKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::vector.55", align 8    ; 14 uses
  %5 = alloca %"class.std::vector", align 16      ; 14 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.21", align 8 ; 6 uses
  %9 = alloca %"class.std::shared_ptr.21", align 8 ; 4 uses
  %10 = alloca %"class.std::vector", align 16     ; 7 uses
  %11 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.e = load ptr, ptr %2, align 8, !tbaa !275
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr i64 %i.h, 2                         ; 2 uses
  %i.j = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %sext = shl i64 %i.h, 30                        ; 3 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = icmp ugt i64 %i.k, 576460752303423487
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.m = ashr exact i64 %sext, 28                 ; 6 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 4 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !171
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !173
  store ptr %scevgep.i.i.i.i.i, ptr %i.p, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28
          to label %.noexc42 unwind label %bb.c   ; 4 uses

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 0, ptr %5, align 16
  br label %bb.b

.noexc42:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.r, ptr %5, align 16, !tbaa !87
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.m, i1 false)
  %scevgep.i.i.i.i.i38 = getelementptr i8, ptr %i.r, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.noexc42, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.v = phi ptr [ %i.t, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.q, %.noexc42 ]
  %i.w = phi ptr [ %i.s, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.p, %.noexc42 ]
  %.sink.i39 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.u, %.noexc42 ]
  %.0.lcssa.i.i.i.i.i40 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %scevgep.i.i.i.i.i38, %.noexc42 ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sink.i39, ptr %i.y, align 16, !tbaa !90
  store ptr %.0.lcssa.i.i.i.i.i40, ptr %i.x, align 8, !tbaa !91
  %.not26103 = icmp sgt i32 %i.j, 0
  br i1 %.not26103, label %.lr.ph, label %.critedge34

.lr.ph:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.d:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ac = load ptr, ptr %2, align 8, !tbaa !275
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 3 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !3
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ah = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNK5arrow11RecordBatch11num_columnsEv.exit unwind label %bb.k

_ZNK5arrow11RecordBatch11num_columnsEv.exit:      ; preds = %bb.e
  %.not = icmp slt i32 %i.ae, %i.ah
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !276
  invoke void @_ZN5arrow8internal12JoinToStringIJRA22_KcRiRA20_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(22) @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(20) @.str.10)
          to label %.noexc44 unwind label %bb.l

.noexc44:                                         ; preds = %bb.f
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc44
  %i.ai = load ptr, ptr %3, align 8, !tbaa !37, !noalias !276 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !40, !noalias !276
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #27
  br label %.critedge

bb.h:                                             ; preds = %.noexc44
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !37, !noalias !276 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.h
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !40, !noalias !276
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !276
  br label %.body

.critedge:                                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !276
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.at = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !98

bb.i:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !107, !range !114, !noundef !115
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.critedge, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bw

bb.k:                                             ; preds = %bb.e, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.l:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.am

bb.m:                                             ; preds = %_ZNK5arrow11RecordBatch11num_columnsEv.exit
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.ba)
          to label %bb.n unwind label %bb.k       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %4, align 8, !tbaa !171
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !92
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49 ; 4 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit, label %bb.o
end_hunk_4
begin_hunk_5_@_ZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS_10MemoryPoolE:bb.a
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #26, !inline_history !58
  %i.aby = load ptr, ptr %i.abp, align 8, !tbaa !54
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8
  call void %i.aca(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #26, !inline_history !58
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit330

bb.jc:                                            ; preds = %bb.ja
  %i.acb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i327 = icmp eq i8 %i.acb, 0
  br i1 %.not.i.i.i327, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.acc = add nsw i32 %i.abt, -1
  store i32 %i.acc, ptr %i.abq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i328

bb.je:                                            ; preds = %bb.jc
  %i.acd = atomicrmw volatile add ptr %i.abq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i328

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i328: ; preds = %bb.je, %bb.jd
  %.0.i.i.i.i329 = phi i32 [ %i.abt, %bb.jd ], [ %i.acd, %bb.je ]
  %i.ace = icmp eq i32 %.0.i.i.i.i329, 1
  br i1 %i.ace, label %bb.jf, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit330, !prof !57

bb.jf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i328
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit330

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit330: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit325, %bb.jb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i328, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.jm

bb.jg:                                            ; preds = %.body218, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit216
  %.pn76.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn, %.body218 ], [ %.pn70.pn, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit216 ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @_ZNSt12__shared_ptrIN5arrow19Dictionary32BuilderINS0_10StringTypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #26
  br label %.body

.body:                                            ; preds = %bb.dw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS1_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.jg
  %.pn76.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn, %bb.jg ], [ %i.nm, %bb.dw ], [ %i.lz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19Dictionary32BuilderINS1_10StringTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.jh

bb.jh:                                            ; preds = %.body, %bb.dv
  %.pn76.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn, %.body ], [ %i.nl, %bb.dv ]
  call void @_ZNSt12__shared_ptrIN5arrow14NumericBuilderINS0_9Int32TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #26
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.du
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn, %bb.jh ], [ %i.nk, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #26
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %.loopexit
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ji ], [ %.pn60.pn.pn.pn.pn.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #26
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %_ZNSt6vectorIaSaIaEED2Ev.exit186, %bb.dj
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jj ], [ %i.mj, %_ZNSt6vectorIaSaIaEED2Ev.exit186 ], [ %i.mi, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.di
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jk ], [ %i.mh, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.jv

bb.jm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit100, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit330
  %i.acf = load ptr, ptr %5, align 8, !tbaa !353  ; 3 uses
  %.not.i.i.i331 = icmp eq ptr %i.acf, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorIaSaIaEED2Ev.exit332, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.acg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !355
  %i.aci = ptrtoint ptr %i.ach to i64
  %i.acj = ptrtoint ptr %i.acf to i64
  %i.ack = sub i64 %i.aci, %i.acj
  call void @_ZdlPvm(ptr noundef nonnull %i.acf, i64 noundef %i.ack) #27
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit332

_ZNSt6vectorIaSaIaEED2Ev.exit332:                 ; preds = %bb.jm, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.acl = load ptr, ptr %4, align 8, !tbaa !171  ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !170 ; 2 uses
  %.not4.i.i.i333 = icmp eq ptr %i.acl, %i.acn
  br i1 %.not4.i.i.i333, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i344, label %.lr.ph.i.i.i334

.lr.ph.i.i.i334:                                  ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit332, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340
  %.05.i.i.i335 = phi ptr [ %i.adf, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340 ], [ %i.acl, %_ZNSt6vectorIaSaIaEED2Ev.exit332 ] ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.05.i.i.i335, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i336 = icmp eq ptr %i.acp, null
  br i1 %.not.i.i.i.i.i.i.i336, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340, label %bb.jo

bb.jo:                                            ; preds = %.lr.ph.i.i.i334
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8 ; 4 uses
  %i.acr = load atomic i64, ptr %i.acq acquire, align 8 ; 2 uses
  %i.acs = icmp eq i64 %i.acr, 4294967297
  %i.act = trunc i64 %i.acr to i32                ; 2 uses
  br i1 %i.acs, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  store i32 0, ptr %i.acq, align 8, !tbaa !51
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 12
  store i32 0, ptr %i.acu, align 4, !tbaa !53
  %i.acv = load ptr, ptr %i.acp, align 8, !tbaa !54
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8
  call void %i.acx(ptr noundef nonnull align 8 dereferenceable(16) %i.acp) #26, !inline_history !200
  %i.acy = load ptr, ptr %i.acp, align 8, !tbaa !54
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  %i.ada = load ptr, ptr %i.acz, align 8
  call void %i.ada(ptr noundef nonnull align 8 dereferenceable(16) %i.acp) #26, !inline_history !200
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340

bb.jq:                                            ; preds = %bb.jo
  %i.adb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i337 = icmp eq i8 %i.adb, 0
  br i1 %.not.i.i.i.i.i.i.i.i337, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.adc = add nsw i32 %i.act, -1
  store i32 %i.adc, ptr %i.acq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i338

bb.js:                                            ; preds = %bb.jq
  %i.add = atomicrmw volatile add ptr %i.acq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i338

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i338: ; preds = %bb.js, %bb.jr
  %.0.i.i.i.i.i.i.i.i.i339 = phi i32 [ %i.act, %bb.jr ], [ %i.add, %bb.js ]
  %i.ade = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i339, 1
  br i1 %i.ade, label %bb.jt, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340, !prof !57

bb.jt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i338
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acp) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340: ; preds = %bb.jt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i338, %bb.jp, %.lr.ph.i.i.i334
  %i.adf = getelementptr inbounds nuw i8, ptr %.05.i.i.i335, i64 16 ; 2 uses
  %.not.i.i.i341 = icmp eq ptr %i.adf, %i.acn
  br i1 %.not.i.i.i341, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i342, label %.lr.ph.i.i.i334, !llvm.loop !201

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i342: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i340
  %.pr.i343 = load ptr, ptr %4, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i344

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i344: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i342, %_ZNSt6vectorIaSaIaEED2Ev.exit332
  %i.adg = phi ptr [ %.pr.i343, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i342 ], [ %i.acl, %_ZNSt6vectorIaSaIaEED2Ev.exit332 ] ; 3 uses
  %.not.i.i1.i345 = icmp eq ptr %i.adg, null
  br i1 %.not.i.i1.i345, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit346, label %bb.ju

bb.ju:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i344
  %i.adh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !173
  %i.adj = ptrtoint ptr %i.adi to i64
  %i.adk = ptrtoint ptr %i.adg to i64
  %i.adl = sub i64 %i.adj, %i.adk
  call void @_ZdlPvm(ptr noundef nonnull %i.adg, i64 noundef %i.adl) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit346

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit346: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i344, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.jv:                                            ; preds = %bb.jl, %_ZNSt14_Function_baseD2Ev.exit104
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jl ], [ %i.n, %_ZNSt14_Function_baseD2Ev.exit104 ]
  %i.adm = load ptr, ptr %5, align 8, !tbaa !353  ; 3 uses
  %.not.i.i.i347 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i347, label %_ZNSt6vectorIaSaIaEED2Ev.exit348, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.adn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !355
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %i.adm to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %i.adm, i64 noundef %i.adr) #27
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit348

_ZNSt6vectorIaSaIaEED2Ev.exit348:                 ; preds = %bb.jv, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119EnumerateStatisticsERKNS_11RecordBatchESt8functionIFNS_6StatusERKNS0_20EnumeratedStatisticsEEE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.275, align 8            ; 4 uses
  %4 = alloca %class.anon.275, align 8            ; 4 uses
  %5 = alloca %"struct.arrow::(anonymous namespace)::EnumeratedStatistics", align 8 ; 37 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::shared_ptr.193", align 16 ; 17 uses
  %8 = alloca %"class.std::shared_ptr.15", align 8 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 18 uses
  store i8 0, ptr %i.d, align 8, !tbaa !433
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  store i32 0, ptr %5, align 8, !tbaa !435
  store i8 1, ptr %i.a, align 4, !tbaa !447
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.b, align 4, !tbaa !448
  store ptr @.str.33, ptr %i.c, align 8, !tbaa !449
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %bb.b unwind label %bb.p       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 10 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !131
  store ptr %i.i, ptr %i.h, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 31 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.s = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !53
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !450
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !450
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.j ], [ %i.ag, %bb.k ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !57

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !49
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.b, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 27 uses
  %i.al = load i8, ptr %i.d, align 8, !tbaa !433
  switch i8 %i.al, label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i [
    i8 1, label %_ZSt3getILm1EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i
    i8 4, label %bb.m
  ]

_ZSt3getILm1EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !67
  br label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !40
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i

_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !451
  store i8 1, ptr %i.d, align 8, !tbaa !433
  br label %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit

_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit: ; preds = %_ZSt3getILm1EJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i, %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm1EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJblmdS5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !453
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZNSt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJblmdS5_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !349, !noalias !453
  invoke void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.q, !inline_history !456

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.o
  %i.av = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit109, label %.critedge

bb.p:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.gx

_ZN5arrow6StatusD2Ev.exit109:                     ; preds = %_ZN5arrow6StatusD2Ev.exit
  store i8 0, ptr %i.a, align 4, !tbaa !447
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61
  %i.bb = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.preheader unwind label %bb.r ; 2 uses

.preheader:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit109
  %.not416 = icmp sgt i32 %i.bb, 0
  br i1 %.not416, label %.lr.ph, label %.critedge104

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 14 uses
  %wide.trip.count = zext nneg i32 %i.bb to i64
end_hunk_5
begin_hunk_6_@_ZN5arrow17RecordBatchReader4MakeESt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EES2_INS_6SchemaEENS_20DeviceAllocationTypeE:bb.a
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
define void @_ZN5arrow17RecordBatchReader16MakeFromIteratorENS_8IteratorISt10shared_ptrINS_11RecordBatchEEEES2_INS_6SchemaEENS_20DeviceAllocationTypeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.154") align 8 %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i8 noundef signext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
define void @_ZN5arrow17RecordBatchReaderD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
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
define void @_ZN5arrow17RecordBatchReaderD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #11 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow24ConcatenateRecordBatchesERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit84, label %bb.o, !prof !98

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit78
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  %i.ay = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %.not.i79 = icmp eq ptr %i.ay, null
  br i1 %.not.i79, label %_ZN5arrow6StatusD2Ev.exit80, label %bb.p, !prof !98

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !107, !range !114, !noundef !115
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit80, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  br label %_ZN5arrow6StatusD2Ev.exit80

_ZN5arrow6StatusD2Ev.exit80:                      ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread

bb.r:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.s:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br label %bb.ah

_ZN5arrow6StatusD2Ev.exit84:                      ; preds = %_ZN5arrow6StatusD2Ev.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge72

.critedge72:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit84, %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 8 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.critedge72
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow6Status11DeleteStateEv:bb.a
bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !40
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #27
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !607
  call void @_ZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(8) %6), !noalias !607
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %7, align 8, !tbaa !37, !noalias !607 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40, !noalias !607
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZN5arrow6Status8FromArgsIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %7, align 8, !tbaa !37, !noalias !607 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40, !noalias !607
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !607
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !607
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.f = load i32, ptr %2, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %3) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(23) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.l = load i64, ptr %4, align 8, !tbaa !67
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.o = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %5) #26
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(5) %5, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !115, !align !619
  %i.r = load i64, ptr %6, align 8, !tbaa !67
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSM_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSM_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRiRA23_S2_RKlRA5_S2_lEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIlEEDaSM_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.t, %bb.c ], [ %i.u, %bb.d ], [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn18
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_116ContainFloatTypeERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !134
  %.off.i = add i32 %i.c, -10
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !172  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.09.013, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_116ContainFloatTypeERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.k, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #27
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !37
  store i64 %.0, ptr %i.d, align 8, !tbaa !40
  br label %.split12

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
define internal fastcc void @_ZN5arrow12_GLOBAL__N_120EnumeratedStatisticsD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_7
begin_hunk_8_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.55", align 16   ; 7 uses
  %4 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !172
  store <2 x ptr> %i.b, ptr %3, align 16, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173
  store ptr %i.e, ptr %i.c, align 16, !tbaa !173
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = load <2 x ptr>, ptr %2, align 8, !tbaa !50
  store <2 x ptr> %i.i, ptr %4, align 16, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5arrow6SchemaC1ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EES2_IKNS_16KeyValueMetadataEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !53
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !56
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !56
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = load ptr, ptr %3, align 16, !tbaa !171  ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ai, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !53
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !200
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !200
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.o ], [ %i.av, %bb.p ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !57

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.af
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !201

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !171
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.az = load ptr, ptr %i.c, align 16, !tbaa !173
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.r
  ret void

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  resume { ptr, i32 } %i.bd
}

declare void @_ZN5arrow6SchemaC1ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EES2_IKNS_16KeyValueMetadataEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0E9_M_invokeERKSt9_Any_dataS5_"(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.9", align 16 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.12", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !818
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !818
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !818
  %i.a = load ptr, ptr %1, align 8, !tbaa !819, !noalias !821, !nonnull !115, !align !619 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172, !noalias !821 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172, !noalias !821 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.033.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.026.032.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.026.032.i.i.i, align 8, !tbaa !92, !noalias !821
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131, !noalias !821
  %i.j = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i1 noundef zeroext false), !noalias !821
  br i1 %i.j, label %.critedge.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i8 %.033.i.i.i, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %.critedge.loopexit.i.i.i, label %bb.b

.critedge.loopexit.i.i.i:                         ; preds = %bb.c, %bb.b
  %.0.lcssa.ph.i.i.i = phi i8 [ %i.k, %bb.c ], [ %.033.i.i.i, %bb.b ]
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !819, !noalias !821 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %.pre36.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !170, !noalias !821
  %.pre37.i.i.i = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !171, !noalias !821
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.a
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre37.i.i.i, %.critedge.loopexit.i.i.i ]
  %i.o = phi ptr [ %i.b, %bb.a ], [ %.pre36.i.i.i, %.critedge.loopexit.i.i.i ]
  %i.p = phi ptr [ %i.a, %bb.a ], [ %.pre.i.i.i, %.critedge.loopexit.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i8 [ 0, %bb.a ], [ %.0.lcssa.ph.i.i.i, %.critedge.loopexit.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 4
  %i.v = trunc i64 %i.u to i8
  %i.w = icmp eq i8 %.0.lcssa.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %bb.af

bb.d:                                             ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !821
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !131, !noalias !821 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54, !noalias !821
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !821
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.y), !noalias !821, !inline_history !822
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49, !noalias !821 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.x, align 8, !tbaa !50, !noalias !821
  store <2 x ptr> %i.af, ptr %5, align 16, !tbaa !50, !noalias !821
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !821
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !821
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3, !noalias !821
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !821 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !noalias !821
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i1 noundef zeroext true, ptr noundef nonnull %6)
          to label %bb.h unwind label %bb.ac, !noalias !821

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !170, !noalias !821 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !173, !noalias !821
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !49, !noalias !821
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load <2 x ptr>, ptr %3, align 16, !tbaa !50, !noalias !821
  store ptr null, ptr %i.ap, align 8, !tbaa !49, !noalias !821
  store <2 x ptr> %i.aq, ptr %i.al, align 8, !tbaa !50, !noalias !821
  store ptr null, ptr %3, align 16, !tbaa !92, !noalias !821
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ar, ptr %i.q, align 8, !tbaa !170, !noalias !821
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit.i.i.i unwind label %bb.ad, !noalias !821

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49, !noalias !821 ; 8 uses
  %.not.i.i12.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i12.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !821 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.au, align 8, !tbaa !51, !noalias !821
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !53, !noalias !821
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !54, !noalias !821
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !821
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !noalias !821, !inline_history !823
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !54, !noalias !821
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !821
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !noalias !821, !inline_history !823
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !821
  %.not.i.i.i13.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i13.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !noalias !821
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49, !noalias !821 ; 8 uses
  %.not.i.i14.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i14.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !821 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bl, align 8, !tbaa !51, !noalias !821
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !53, !noalias !821
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !54, !noalias !821
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !821
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26, !noalias !821, !inline_history !824
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !54, !noalias !821
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !821
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26, !noalias !821, !inline_history !824
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !821
  %.not.i.i.i15.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i15.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i17.i.i.i = phi i32 [ %i.bo, %bb.t ], [ %i.by, %bb.u ]
  %i.bz = icmp eq i32 %.0.i.i.i.i17.i.i.i, 1
  br i1 %i.bz, label %bb.v, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26, !noalias !821
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i, %bb.r, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !49, !noalias !821 ; 8 uses
  %.not.i.i18.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i18.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8, !noalias !821 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !51, !noalias !821
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !53, !noalias !821
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !54, !noalias !821
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !821
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !noalias !821, !inline_history !825
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !54, !noalias !821
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !821
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !noalias !821, !inline_history !825
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !821
  %.not.i.i.i19.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i19.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i21.i.i.i = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i21.i.i.i, 1
  br i1 %i.cp, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !noalias !821
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i, %bb.x, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.cq = load ptr, ptr %4, align 8, !tbaa !37, !noalias !821 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !40, !noalias !821
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #27, !noalias !821
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !821
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26, !noalias !821
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.ad ], [ %i.cv, %bb.ac ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26, !noalias !821
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26, !noalias !821
  %i.cx = load ptr, ptr %4, align 8, !tbaa !37, !noalias !821 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !40, !noalias !821
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27, !noalias !821
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !821
  resume { ptr, i32 } %.pn.i.i.i

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
  %.not.i.i.i25.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i25.i.i.i, label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i.i, label %7

7:                                                ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %8 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #28, !noalias !821
  br label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %7, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %9 = phi ptr [ %8, %7 ], [ null, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %i.dn ; 2 uses
  store i8 %.0.lcssa.i.i.i, ptr %10, align 1, !tbaa !40, !noalias !821
  %11 = icmp sgt i64 %i.dn, 0
  br i1 %11, label %bb.aj, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %i.dk, i64 %i.dn, i1 false), !noalias !821
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.aj, %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dn) #27, !noalias !821
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ak, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %9, ptr %i.dd, align 8, !tbaa !353, !noalias !821
  store ptr %i.dt, ptr %i.de, align 8, !tbaa !827, !noalias !821
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 %i.ds
  store ptr %i.du, ptr %i.dg, align 8, !tbaa !355, !noalias !821
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.ag, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !828
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !818
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_8
begin_hunk_9_@_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
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

declare void @_ZN5arrow17BasicUnionBuilderC2EPNS_10MemoryPoolElRKSt6vectorISt10shared_ptrINS_12ArrayBuilderEESaIS6_EERKS4_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow10MapBuilderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(296) %i.a) #26, !inline_history !1664
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10MapBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
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

declare void @_ZN5arrow10MapBuilderC1EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_b(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1E9_M_invokeERKSt9_Any_dataS5_"(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.std::shared_ptr.9", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 12 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !50    ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !447, !range !114, !noalias !1674, !noundef !115
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit77.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1675, !noalias !1674, !nonnull !115, !align !619 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !1677
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !870, !noalias !1680 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !1680
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1680
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(160) %i.d), !noalias !1680, !inline_history !1683 ; 2 uses
  %.not.i.not.i.i.i.i = icmp slt i64 %i.j, %i.f
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i.i.i:       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !1677
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %bb.b
  %i.k = add nsw i64 %i.j, 1
  %i.l = shl nsw i64 %i.f, 1
  %.sroa.speculated.i.i.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.k, i64 %i.l)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !1680
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1680
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 noundef %.sroa.speculated.i.i.i.i.i.i), !noalias !1677, !inline_history !1683
  %.pr.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !95, !noalias !1677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !1677
  %i.p = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  store ptr %.pr.i.i.i.i, ptr %0, align 8, !tbaa !95, !alias.scope !1674
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !390, !noalias !1677
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !876, !noalias !1677 ; 2 uses
  %i.u = sdiv i64 %i.t, 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40, !noalias !1677
  %i.x = srem i64 %i.t, 8
  %i.y = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40, !noalias !1677
  %i.aa = or i8 %i.z, %i.w
  store i8 %i.aa, ptr %i.v, align 1, !tbaa !40, !noalias !1677
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !876, !noalias !1677
  %.sink.i.i.i.i = add nsw i64 %i.ab, 1
  store i64 %.sink.i.i.i.i, ptr %i.s, align 8, !tbaa !876, !noalias !1677
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67, !noalias !1677
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !67, !noalias !1677
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1674
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !448, !range !114, !noalias !1674, !noundef !115
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNKRSt8optionalIiE5valueEv.exit.i.i.i, label %bb.f

_ZNKRSt8optionalIiE5valueEv.exit.i.i.i:           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1684, !noalias !1674, !nonnull !115, !align !619
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !359, !noalias !1674 ; 10 uses
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !3, !noalias !1674
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !1685
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !870, !noalias !1688 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !1688
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1688
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(216) %i.al), !noalias !1688, !inline_history !1691 ; 2 uses
  %.not.i.not.i49.i.i.i = icmp slt i64 %i.as, %i.ao
  br i1 %.not.i.not.i49.i.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i53.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i50.i.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i53.i.i.i:     ; preds = %_ZNKRSt8optionalIiE5valueEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !1685
  br label %.thread96.i.i.i

_ZN5arrow6StatusD2Ev.exit.i50.i.i.i:              ; preds = %_ZNKRSt8optionalIiE5valueEv.exit.i.i.i
  %i.at = add nsw i64 %i.as, 1
  %i.au = shl nsw i64 %i.ao, 1
  %.sroa.speculated.i.i.i51.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.at, i64 %i.au)
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !1688
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1688
  call void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(216) %i.al, i64 noundef %.sroa.speculated.i.i.i51.i.i.i), !noalias !1685, !inline_history !1691
  %.pr.i52.i.i.i = load ptr, ptr %12, align 8, !tbaa !95, !noalias !1685 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !1685
  %i.ay = icmp eq ptr %.pr.i52.i.i.i, null
  br i1 %i.ay, label %.thread96.i.i.i, label %bb.e

.thread96.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i50.i.i.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i53.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !390, !noalias !1685
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !876, !noalias !1685 ; 2 uses
  %i.bd = sdiv i64 %i.bc, 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40, !noalias !1685
  %i.bg = srem i64 %i.bc, 8
  %i.bh = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !40, !noalias !1685
  %i.bj = or i8 %i.bi, %i.bf
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !40, !noalias !1685
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !876, !noalias !1685
  %i.bl = add nsw i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bb, align 8, !tbaa !876, !noalias !1685
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !67, !noalias !1685
  %i.bo = add nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !67, !noalias !1685
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !390, !noalias !1685
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 200 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !875, !noalias !1685
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %i.bs
  store i32 %i.am, ptr %i.bt, align 1, !noalias !1685
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !875, !noalias !1685
  %i.bv = add nsw i64 %i.bu, 4
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !875, !noalias !1685
  br label %_ZN5arrow6StatusD2Ev.exit71.i.i.i

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i50.i.i.i
  store ptr %.pr.i52.i.i.i, ptr %0, align 8, !tbaa !95, !alias.scope !1674
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

bb.f:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1684, !noalias !1674, !nonnull !115, !align !619
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !359, !noalias !1674 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !1692
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !870, !noalias !1695 ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !54, !noalias !1695
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1695
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(216) %i.by), !noalias !1695, !inline_history !1698 ; 2 uses
  %.not.i.not.i60.i.i.i = icmp slt i64 %i.ce, %i.ca
  br i1 %.not.i.not.i60.i.i.i, label %_ZN5arrow6StatusD2Ev.exit9.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i61.i.i.i

_ZN5arrow6StatusD2Ev.exit9.thread.i.i.i.i:        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !1692
  br label %.thread98.i.i.i

_ZN5arrow6StatusD2Ev.exit.i61.i.i.i:              ; preds = %bb.f
  %i.cf = add nsw i64 %i.ce, 1
  %i.cg = shl nsw i64 %i.ca, 1
  %.sroa.speculated.i.i.i62.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.cf, i64 %i.cg)
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !54, !noalias !1695
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1695
  call void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(216) %i.by, i64 noundef %.sroa.speculated.i.i.i62.i.i.i), !noalias !1692, !inline_history !1698
  %.pr.i63.i.i.i = load ptr, ptr %11, align 8, !tbaa !95, !noalias !1692 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !1692
  %i.ck = icmp eq ptr %.pr.i63.i.i.i, null
  br i1 %i.ck, label %.thread98.i.i.i, label %bb.g

.thread98.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i61.i.i.i, %_ZN5arrow6StatusD2Ev.exit9.thread.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !390, !noalias !1692
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 200 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !875, !noalias !1692
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  store i32 0, ptr %i.cp, align 1, !noalias !1692
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !875, !noalias !1692
  %i.cr = add nsw i64 %i.cq, 4
  store i64 %i.cr, ptr %i.cn, align 8, !tbaa !875, !noalias !1692
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !390, !noalias !1692
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !876, !noalias !1692 ; 2 uses
  %i.cw = sdiv i64 %i.cv, 8
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !40, !noalias !1692
end_hunk_9
begin_hunk_10_@"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1E9_M_invokeERKSt9_Any_dataS5_":bb.a
  br i1 %i.md, label %bb.t, label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !98

bb.t:                                             ; preds = %bb.s
  %i.me = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.eo, i64 176
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !390, !noalias !1799
  %i.mh = getelementptr inbounds nuw i8, ptr %i.eo, i64 192 ; 3 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !875, !noalias !1799
  %i.mj = getelementptr inbounds i8, ptr %i.mg, i64 %i.mi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mj, ptr align 1 %i.lk, i64 %i.me, i1 false), !noalias !1799
  %i.mk = load i64, ptr %i.mh, align 8, !tbaa !875, !noalias !1799
  %i.ml = add nsw i64 %i.mk, %i.me
  store i64 %i.ml, ptr %i.mh, align 8, !tbaa !875, !noalias !1799
  br label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  store ptr null, ptr %17, align 8, !tbaa !95, !alias.scope !1807, !noalias !1674
  br label %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120StringBuilderVisitorEJRPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1810
  %i.mm = load ptr, ptr %i.kr, align 8, !tbaa !54, !noalias !1810
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !1810
  invoke void %i.mo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.kr, i1 noundef zeroext false)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !1813, !inline_history !1814

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.invoke.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1815
  invoke void @_ZN5arrow8internal12JoinToStringIJRA57_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(57) @.str.77, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.w, !noalias !1810

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.u unwind label %bb.v, !noalias !1674

bb.u:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.mp = load ptr, ptr %3, align 8, !tbaa !37, !noalias !1815 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !40, !noalias !1815
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #27, !noalias !1674
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %i.mv = load ptr, ptr %3, align 8, !tbaa !37, !noalias !1815 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !40, !noalias !1815
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.mz) #27, !noalias !1674
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1815
  br label %.body.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1815
  %i.na = load ptr, ptr %4, align 8, !tbaa !37, !noalias !1810 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZN5arrow12_GLOBAL__N_120StringBuilderVisitor5VisitERKNS_8DataTypeEPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !40, !noalias !1810
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #27, !noalias !1674
  br label %_ZN5arrow12_GLOBAL__N_120StringBuilderVisitor5VisitERKNS_8DataTypeEPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.nf, %bb.w ], [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ng = load ptr, ptr %4, align 8, !tbaa !37, !noalias !1810 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !40, !noalias !1810
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #27, !noalias !1674
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1810
  br label %.body.i.i.i.i.i.i.i.i

_ZN5arrow12_GLOBAL__N_120StringBuilderVisitor5VisitERKNS_8DataTypeEPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1810
  br label %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120StringBuilderVisitorEJRPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.q
  invoke void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.76)
          to label %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120StringBuilderVisitorEJRPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !1674

_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120StringBuilderVisitorEJRPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZN5arrow12_GLOBAL__N_120StringBuilderVisitor5VisitERKNS_8DataTypeEPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i.i.i.i.i, %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i.i, %.invoke52.i.i.i.i.i.i.i.i.i, %.invoke53.i.i.i.i.i.i.i.i.i, %.invoke54.i.i.i.i.i.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !49, !noalias !1787 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit89.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120StringBuilderVisitorEJRPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 4 uses
  %i.no = load atomic i64, ptr %i.nn acquire, align 8, !noalias !1674 ; 2 uses
  %i.np = icmp eq i64 %i.no, 4294967297
  %i.nq = trunc i64 %i.no to i32                  ; 2 uses
  br i1 %i.np, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.nn, align 8, !tbaa !51, !noalias !1674
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i32 0, ptr %i.nr, align 4, !tbaa !53, !noalias !1674
  %i.ns = load ptr, ptr %i.nm, align 8, !tbaa !54, !noalias !1674
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !noalias !1674
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #26, !noalias !1674, !inline_history !1820
  %i.nv = load ptr, ptr %i.nm, align 8, !tbaa !54, !noalias !1674
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !1674
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #26, !noalias !1674, !inline_history !1820
  br label %_ZN5arrow6StatusD2Ev.exit89.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ny = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !1787
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ny, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nz = add nsw i32 %i.nq, -1
  store i32 %i.nz, ptr %i.nn, align 8, !tbaa !3, !noalias !1674
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.oa = atomicrmw volatile add ptr %i.nn, i32 -1 acq_rel, align 4, !noalias !1674
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nq, %bb.ab ], [ %i.oa, %bb.ac ]
  %i.ob = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ob, label %bb.ad, label %_ZN5arrow6StatusD2Ev.exit89.i.i.i, !prof !57

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #26, !noalias !1674
  br label %_ZN5arrow6StatusD2Ev.exit89.i.i.i

bb.ae:                                            ; preds = %bb.x, %.invoke.i.i.i.i.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.invoke52.i.i.i.i.i.i.i.i.i, %.invoke53.i.i.i.i.i.i.i.i.i, %.invoke54.i.i.i.i.i.i.i.i.i
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.oc, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26, !noalias !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !1787
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit87.i.i.i
  unreachable

_ZN5arrow6StatusD2Ev.exit89.thread.i.i.i:         ; preds = %bb.p, %bb.n, %bb.l, %_ZN5arrow14BooleanBuilder12UnsafeAppendEb.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !1674
  br label %_ZN5arrow6StatusD2Ev.exit93.i.i.i

_ZN5arrow6StatusD2Ev.exit89.thread100.i.i.i:      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i30.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i25.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i20.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %.ph.i.i.i = phi ptr [ %.pr.i.i.i.i.i27.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i25.i.i.i.i.i ], [ %.pr.i.i.i.i.i32.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i30.i.i.i.i.i ], [ %.pr.i.i.i.i.i22.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i20.i.i.i.i.i ], [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.ph.i.i.i, ptr %0, align 8, !tbaa !95, !alias.scope !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !1674
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

_ZN5arrow6StatusD2Ev.exit89.i.i.i:                ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z, %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120StringBuilderVisitorEJRPNS_12ArrayBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !1787
  %.pr.i.i.i = load ptr, ptr %17, align 8, !tbaa !95, !noalias !1674 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !95, !alias.scope !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !1674
  %i.od = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.od, label %_ZN5arrow6StatusD2Ev.exit93.i.i.i, label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

_ZN5arrow6StatusD2Ev.exit93.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit89.i.i.i, %_ZN5arrow6StatusD2Ev.exit89.thread.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1821
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.c, %bb.e, %bb.g, %_ZN5arrow6StatusD2Ev.exit71.i.i.i, %_ZN5arrow6StatusD2Ev.exit77.i.i.i, %_ZN5arrow6StatusD2Ev.exit83.i.i.i, %_ZN5arrow6StatusD2Ev.exit89.thread100.i.i.i, %_ZN5arrow6StatusD2Ev.exit89.i.i.i, %_ZN5arrow6StatusD2Ev.exit93.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS_10MemoryPoolEE3$_1", ptr %0, align 8, !tbaa !831
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %.val, ptr %0, align 8, !tbaa !50
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !1824
  store ptr %i.a, ptr %0, align 8, !tbaa !50
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !50 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #27
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN5arrow10MapBuilder6AppendEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(296)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17DenseUnionBuilder6AppendEa(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, i8 noundef signext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !875, !noalias !1825 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i64, ptr %i.c, align 8, !tbaa !969, !noalias !1825 ; 2 uses
  %.not.i = icmp slt i64 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !98

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = add nsw i64 %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1825
  %i.g = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.f, i64 %i.g)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false), !noalias !1825
  %i.h = load ptr, ptr %4, align 8, !tbaa !95, !noalias !1825 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1825
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %bb.b

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !875, !noalias !1825
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !95
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.c:                                             ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i
  %i.j = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.b, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !390, !noalias !1825
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.j
  store i8 %2, ptr %i.m, align 1, !noalias !1825
  %i.n = load i64, ptr %i.a, align 8, !tbaa !875, !noalias !1825
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr %i.a, align 8, !tbaa !875, !noalias !1825
  store ptr null, ptr %0, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = sext i8 %2 to i64                        ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !1830
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !380  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.t)
  %i.y = icmp eq i64 %i.x, 2147483646
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(82) @.str.75)
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !1830
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !380 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %i.ab)
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !875, !noalias !1839 ; 2 uses
  %i.aj = add nsw i64 %i.ai, 4                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !969, !noalias !1839 ; 2 uses
  %i.am = icmp sgt i64 %i.aj, %i.al
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit.i.i14, label %bb.f, !prof !57

_ZN5arrow6StatusD2Ev.exit.i.i14:                  ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1839
  %i.ao = shl nsw i64 %i.al, 1
  %.sroa.speculated.i.i.i15 = call noundef i64 @llvm.smax.i64(i64 %i.aj, i64 %i.ao)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 noundef %.sroa.speculated.i.i.i15, i1 noundef zeroext false), !noalias !1839
  %i.ap = load ptr, ptr %3, align 8, !tbaa !95, !noalias !1839 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !95, !alias.scope !1839
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1839
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16, label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16:       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i14
  %.pre.i.i17 = load i64, ptr %i.ah, align 8, !tbaa !875, !noalias !1839
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16, %bb.e
  %i.ar = phi i64 [ %.pre.i.i17, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16 ], [ %i.ai, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !390, !noalias !1839
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ar
  store i32 %i.ag, ptr %i.au, align 1, !noalias !1839
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !875, !noalias !1839
  %i.aw = add nsw i64 %i.av, 4
  store i64 %i.aw, ptr %i.ah, align 8, !tbaa !875, !noalias !1839
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !1840
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit:  ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i.i14, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(82) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1843
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1843
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610, !noalias !1843, !nonnull !115, !align !619
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %2) #26, !noalias !1843
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(82) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1843 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1843
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1843
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
end_hunk_10
