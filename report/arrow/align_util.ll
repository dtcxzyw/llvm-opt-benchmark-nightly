inline.NumInlined: 1025
inline.NumDeleted: 513
begin_hunk_0_@_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_6BufferEElPNS_10MemoryPoolE:bb.a
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bd) #19, !inline_history !136
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i17, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %i.bc

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.n
  %i.bh = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.r, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !114

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.r
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bk) #19, !inline_history !137
  %.pr.pre.i = load ptr, ptr %7, align 8, !tbaa !111 ; 2 uses
  %.not.i.i19 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i19, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.q
  %i.bo = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bh, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !115, !range !123, !noundef !124
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.r, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.u

bb.t:                                             ; preds = %_ZN5arrow4util14CheckAlignmentERKNS_6BufferEl.exit
  store ptr null, ptr %0, align 8, !tbaa !111
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.bs, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !95
  store ptr null, ptr %i.bu, align 8, !tbaa !95
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !95
  store ptr null, ptr %1, align 8, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit14, %_ZN5arrow6StatusD2Ev.exit12, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.114", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !111
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !101

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !100
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !139    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !100
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !139    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !100
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.51") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #19, !inline_history !140
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !138

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !115, !range !123, !noundef !124
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.57") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 16      ; 14 uses
  %5 = alloca %"class.arrow::Result", align 8     ; 10 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %7 = alloca %"class.arrow::Result.57", align 8  ; 10 uses
  %8 = alloca %"class.std::shared_ptr.18", align 16 ; 4 uses
  %9 = alloca %"class.arrow::Result.57", align 8  ; 10 uses
  %10 = alloca %"class.std::shared_ptr.18", align 16 ; 4 uses
  %11 = alloca %"class.std::shared_ptr.18", align 16 ; 5 uses
  %12 = alloca %"class.std::shared_ptr.10", align 8 ; 4 uses
  %13 = alloca %"class.std::vector", align 16     ; 7 uses
  %14 = alloca %"class.std::vector.13", align 8   ; 8 uses
  %15 = alloca %"class.std::shared_ptr.18", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !77
  %i.b = tail call noundef zeroext i1 @_ZN5arrow4util14CheckAlignmentERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 noundef %2)
  br i1 %i.b, label %bb.en, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !76
  %.pre193 = load ptr, ptr %i.e, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre193, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6BufferEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.o, ptr %4, align 16, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.r, align 16, !tbaa !141
  %i.s = icmp eq ptr %i.n, %i.m
  br i1 %i.s, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.n, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %i.v = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !135
  store <2 x ptr> %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.m
  br i1 %i.ad, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !142

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !77
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit.loopexit, %bb.d
  %i.ae = phi ptr [ %i.c, %bb.d ], [ %.pre194, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit.loopexit ] ; 2 uses
  %i.af = phi ptr [ %i.o, %bb.d ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit.loopexit ] ; 3 uses
  store ptr %i.af, ptr %i.p, align 8, !tbaa !69
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %.noexc unwind label %bb.k, !inline_history !143 ; 2 uses

.noexc:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit
  %i.al = icmp eq i32 %i.ak, 29
  br i1 %i.al, label %bb.h, label %_ZN5arrow4util12_GLOBAL__N_117GetTypeForBuffersERKNS_9ArrayDataE.exit

bb.h:                                             ; preds = %.noexc
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !53
  %i.ap = icmp eq i32 %i.ao, 31
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.07.i = phi ptr [ %i.ar, %bb.i ], [ %i.am, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i32, ptr %i.au, align 8, !tbaa !53
  br label %_ZN5arrow4util12_GLOBAL__N_117GetTypeForBuffersERKNS_9ArrayDataE.exit

_ZN5arrow4util12_GLOBAL__N_117GetTypeForBuffersERKNS_9ArrayDataE.exit: ; preds = %.noexc, %bb.j
  %.0.i = phi i32 [ %i.av, %bb.j ], [ %i.ak, %.noexc ]
  %i.aw = load ptr, ptr %4, align 16, !tbaa !72   ; 2 uses
  %.not186.not = icmp eq ptr %i.af, %i.aw
  br i1 %.not186.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow4util12_GLOBAL__N_117GetTypeForBuffersERKNS_9ArrayDataE.exit
  %i.ax = icmp eq i64 %2, -3
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEC2ERKS5_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.l:                                             ; preds = %.lr.ph, %bb.ap
  %i.bc = phi ptr [ %i.aw, %.lr.ph ], [ %i.du, %bb.ap ] ; 2 uses
  %i.bd = phi ptr [ %i.af, %.lr.ph ], [ %i.dv, %bb.ap ]
  %.047187 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.ap ] ; 4 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.047187 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73 ; 2 uses
  %.not182 = icmp eq ptr %i.bf, null
  br i1 %.not182, label %bb.ap, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ax, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bg = trunc i64 %.047187 to i32
  %i.bh = invoke noundef i32 @_ZN5arrow31RequiredValueAlignmentForBufferENS_4Type4typeEi(i32 noundef %.0.i, i32 noundef %i.bg)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = sext i32 %i.bh to i64
  %.pre195 = load ptr, ptr %i.be, align 8, !tbaa !73
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.q:                                             ; preds = %bb.o, %bb.m
  %16 = phi ptr [ %.pre195, %bb.o ], [ %i.bf, %bb.m ]
  %.053 = phi i64 [ %i.bi, %bb.o ], [ %2, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %16, ptr %6, align 8, !tbaa !73
  store ptr null, ptr %i.ay, align 8, !tbaa !95
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %17 = load ptr, ptr %i.bk, align 8, !tbaa !95
  store ptr null, ptr %i.bk, align 8, !tbaa !95
  store ptr %17, ptr %i.ay, align 8, !tbaa !95
  store ptr null, ptr %i.be, align 8, !tbaa !73
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_6BufferEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, ptr noundef nonnull %6, i64 noundef %.053, ptr noundef %3)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bm, align 8, !tbaa !96
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !98
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #19, !inline_history !144
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #19, !inline_history !144
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.v ], [ %i.bz, %bb.w ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #19
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  %i.cb = load ptr, ptr %5, align 8, !tbaa !111
  %i.cc = icmp eq ptr %i.cb, null                 ; 2 uses
  br i1 %i.cc, label %bb.aa, label %bb.y, !prof !114

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

bb.z:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  br label %bb.em

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ce = load <2 x ptr>, ptr %i.az, align 8, !tbaa !135, !noalias !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.cf = load ptr, ptr %4, align 16, !tbaa !72
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.047187 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ce, ptr %i.cg, align 8, !tbaa !135
  %.not.i.i.i.i66 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cj, align 8, !tbaa !96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !98
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #19, !inline_history !150
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #19, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.ae ], [ %i.cw, %bb.af ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, !prof !101

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #19
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag, %bb.y
  %i.cy = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ah, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !114

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  %i.da = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i72, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.db, align 8, !tbaa !96
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !98
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #19, !inline_history !151
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #19, !inline_history !151
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.de, %bb.al ], [ %i.do, %bb.am ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.an, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !101

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj
  %.pr.i.pr = load ptr, ptr %5, align 8, !tbaa !111 ; 2 uses
  %.not.i.i73 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i73, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  %i.dq = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.cy, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !115, !range !123, !noundef !124
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ah, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.cc, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge, label %.loopexit183

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pre196.a = load ptr, ptr %i.p, align 8, !tbaa !69
  %.pre197.a = load ptr, ptr %4, align 16, !tbaa !72
end_hunk_0
begin_hunk_1_@_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE:bb.a
  store ptr null, ptr %.sroa.0176.0189, align 8, !tbaa !77
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.57") align 8 %7, ptr noundef nonnull %8, i64 noundef %2, ptr noundef %3)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !95 ; 8 uses
  %.not.i.i74 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i74, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ep, align 8, !tbaa !96
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 0, ptr %i.et, align 4, !tbaa !98
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !50
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #19, !inline_history !153
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #19, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i75 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i75, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fb = add nsw i32 %i.es, -1
  store i32 %i.fb, ptr %i.ep, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

bb.ax:                                            ; preds = %bb.av
  %i.fc = atomicrmw volatile add ptr %i.ep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i77 = phi i32 [ %i.es, %bb.aw ], [ %i.fc, %bb.ax ]
  %i.fd = icmp eq i32 %.0.i.i.i.i77, 1
  br i1 %i.fd, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.as, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76, %bb.ay
  %i.fe = load ptr, ptr %7, align 8, !tbaa !111
  %i.ff = icmp eq ptr %i.fe, null                 ; 2 uses
  br i1 %i.ff, label %bb.bb, label %bb.az, !prof !114

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.ba:                                            ; preds = %bb.ar
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #19
  br label %bb.em

bb.bb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fh = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !135, !noalias !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false)
  %i.fi = load ptr, ptr %i.em, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.fh, ptr %.sroa.0176.0189, align 8, !tbaa !135
  %.not.i.i.i.i78 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i78, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.fj, align 8, !tbaa !96
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !98
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19, !inline_history !159
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19, !inline_history !159
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.be:                                            ; preds = %bb.bc
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i79 = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i79, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80

bb.bg:                                            ; preds = %bb.be
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i81 = phi i32 [ %i.fm, %bb.bf ], [ %i.fw, %bb.bg ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i81, 1
  br i1 %i.fx, label %bb.bh, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, !prof !101

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86: ; preds = %bb.bb, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80, %bb.bh, %bb.az
  %i.fy = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !114

bb.bi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %i.ga = load ptr, ptr %i.ej, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i87, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.gb, align 8, !tbaa !96
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !98
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !50
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #19, !inline_history !160
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !50
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #19, !inline_history !160
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i88 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i.i.i88, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89

bb.bn:                                            ; preds = %bb.bl
  %i.go = atomicrmw volatile add ptr %i.gb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i90 = phi i32 [ %i.ge, %bb.bm ], [ %i.go, %bb.bn ]
  %i.gp = icmp eq i32 %.0.i.i.i.i.i.i.i90, 1
  br i1 %i.gp, label %bb.bo, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !101

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89, %bb.bk
  %.pr.i91.pr = load ptr, ptr %7, align 8, !tbaa !111 ; 2 uses
  %.not.i.i92 = icmp eq ptr %.pr.i91.pr, null
  br i1 %.not.i.i92, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %i.gq = phi ptr [ %.pr.i91.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.fy, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !115, !range !123, !noundef !124
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %bb.bi, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.ff, label %bb.aq, label %.loopexit183

.critedge65.loopexit:                             ; preds = %bb.aq
  %.pre198.a = load ptr, ptr %1, align 8, !tbaa !77
  br label %.critedge65

.critedge65:                                      ; preds = %.critedge65.loopexit, %.critedge
  %i.gu = phi ptr [ %.pre198.a, %.critedge65.loopexit ], [ %i.eb, %.critedge ] ; 4 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !47 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !53
  %i.gy = icmp eq i32 %i.gx, 29
  br i1 %i.gy, label %bb.bq, label %bb.cp

bb.bq:                                            ; preds = %.critedge65
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 88 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.hb = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !135
  store ptr null, ptr %i.ha, align 8, !tbaa !95
  store <2 x ptr> %i.hb, ptr %10, align 16, !tbaa !135
  store ptr null, ptr %i.gz, align 8, !tbaa !77
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.57") align 8 %9, ptr noundef nonnull %10, i64 noundef %2, ptr noundef %3)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !95 ; 8 uses
  %.not.i.i93 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i93, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4294967297
  %i.hh = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.hg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.he, align 8, !tbaa !96
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !98
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #19, !inline_history !153
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #19, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

bb.bu:                                            ; preds = %bb.bs
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i94 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i94, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hq = add nsw i32 %i.hh, -1
  store i32 %i.hq, ptr %i.he, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

bb.bw:                                            ; preds = %bb.bu
  %i.hr = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i96 = phi i32 [ %i.hh, %bb.bv ], [ %i.hr, %bb.bw ]
  %i.hs = icmp eq i32 %.0.i.i.i.i96, 1
  br i1 %i.hs, label %bb.bx, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, !prof !101

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97: ; preds = %bb.br, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95, %bb.bx
  %i.ht = load ptr, ptr %9, align 8, !tbaa !111
  %i.hu = icmp eq ptr %i.ht, null                 ; 2 uses
  br i1 %i.hu, label %bb.ca, label %bb.by, !prof !114

bb.by:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.bz:                                            ; preds = %bb.bq
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #19
  br label %bb.em

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hx = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !135, !noalias !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  %i.hy = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 88
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.hx, ptr %i.hz, align 8, !tbaa !135
  %.not.i.i.i.i98 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i98, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.id = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 4294967297
  %i.if = trunc i64 %i.id to i32                  ; 2 uses
  br i1 %i.ie, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.ic, align 8, !tbaa !96
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ig, align 4, !tbaa !98
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #19, !inline_history !159
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !50
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #19, !inline_history !159
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.cd:                                            ; preds = %bb.cb
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i99 = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i.i99, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.io = add nsw i32 %i.if, -1
  store i32 %i.io, ptr %i.ic, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100

bb.cf:                                            ; preds = %bb.cd
  %i.ip = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i101 = phi i32 [ %i.if, %bb.ce ], [ %i.ip, %bb.cf ]
  %i.iq = icmp eq i32 %.0.i.i.i.i.i.i101, 1
  br i1 %i.iq, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, !prof !101

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100, %bb.cg, %bb.by
  %i.ir = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108, !prof !114

bb.ch:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i109 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i109, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 4 uses
  %i.iw = load atomic i64, ptr %i.iv acquire, align 8 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 4294967297
  %i.iy = trunc i64 %i.iw to i32                  ; 2 uses
  br i1 %i.ix, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iv, align 8, !tbaa !96
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !98
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !50
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #19, !inline_history !160
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !50
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #19, !inline_history !160
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113

bb.ck:                                            ; preds = %bb.ci
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i110 = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i110, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jh = add nsw i32 %i.iy, -1
  store i32 %i.jh, ptr %i.iv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111

bb.cm:                                            ; preds = %bb.ck
  %i.ji = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i112 = phi i32 [ %i.iy, %bb.cl ], [ %i.ji, %bb.cm ]
  %i.jj = icmp eq i32 %.0.i.i.i.i.i.i.i112, 1
  br i1 %i.jj, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, !prof !101

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111, %bb.cj, %bb.ch
  %.pr.i114 = load ptr, ptr %9, align 8, !tbaa !111 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.pr.i114, null
  br i1 %.not.i.i115, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.jk = phi ptr [ %.pr.i114, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113 ], [ %i.ir, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !115, !range !123, !noundef !124
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %i.hu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge, label %.loopexit183

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116
  %.pre199.a = load ptr, ptr %1, align 8, !tbaa !77 ; 2 uses
  %.pre200 = load ptr, ptr %.pre199.a, align 8, !tbaa !47
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge, %.critedge65
  %18 = phi ptr [ %.pre200, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge ], [ %i.gv, %.critedge65 ]
  %i.jo = phi ptr [ %.pre199.a, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge ], [ %i.gu, %.critedge65 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %18, ptr %12, align 8, !tbaa !47
  %i.jp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !95     ; 3 uses
  store ptr %20, ptr %i.jp, align 8, !tbaa !95
  %.not.i.i.i117 = icmp eq ptr %20, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.jr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i118 = icmp eq i8 %i.jr, 0
  br i1 %.not.i.i.i.i118, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !3
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.jq, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.cs:                                            ; preds = %bb.cq
  %i.ju = atomicrmw volatile add ptr %i.jq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre201.a = load ptr, ptr %1, align 8, !tbaa !77
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.cp, %bb.cr, %bb.cs
  %i.jv = phi ptr [ %i.jo, %bb.cp ], [ %i.jo, %bb.cr ], [ %.pre201.a, %bb.cs ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !166
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jz = load <2 x ptr>, ptr %4, align 16, !tbaa !76
  store <2 x ptr> %i.jz, ptr %13, align 16, !tbaa !76
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.kb = load ptr, ptr %i.r, align 16, !tbaa !141
  store ptr %i.kb, ptr %i.ka, align 16, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 64 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 72 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !182 ; 3 uses
  %i.kf = load ptr, ptr %i.kc, align 8, !tbaa !183 ; 3 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i119 = icmp eq ptr %i.ke, %i.kf
  br i1 %.not.i.i.i.i119, label %.noexc128, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.kj = icmp ugt i64 %i.ki, 9223372036854775792
  br i1 %i.kj, label %.noexc.i.i126, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i126:                                    ; preds = %bb.ct
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc127 unwind label %bb.ec

.noexc127:                                        ; preds = %.noexc.i.i126
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ct
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ki) #23
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc128_crit_edge unwind label %bb.ec

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc128_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i
  %.pre202.a = load ptr, ptr %i.kc, align 8, !tbaa !80
  %.pre203.a = load ptr, ptr %i.kd, align 8, !tbaa !80
  br label %.noexc128

.noexc128:                                        ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc128_crit_edge, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.kl = phi ptr [ %i.ke, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %.pre203.a, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc128_crit_edge ] ; 2 uses
  %i.km = phi ptr [ %i.kf, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %.pre202.a, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc128_crit_edge ] ; 2 uses
  %i.kn = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %i.kk, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc128_crit_edge ] ; 5 uses
  store ptr %i.kn, ptr %14, align 8, !tbaa !183
  %i.ko = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !182
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ki
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !184
  %i.kr = icmp eq ptr %i.km, %i.kl
  br i1 %i.kr, label %.loopexit, label %.lr.ph.i.i.i.i.i120

.lr.ph.i.i.i.i.i120:                              ; preds = %.noexc128, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i121 = phi ptr [ %i.lb, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.kn, %.noexc128 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i122 = phi ptr [ %i.la, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.km, %.noexc128 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i122, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !95 ; 2 uses
  %i.ku = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i122, align 8, !tbaa !135
  store <2 x ptr> %i.ku, ptr %.08.i.i.i.i.i121, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i123 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i123, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i.i120
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 3 uses
  %i.kw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i.i124 = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i124, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kx = load i32, ptr %i.kv, align 4, !tbaa !3
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.kv, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.kz = atomicrmw volatile add ptr %i.kv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.cw, %bb.cv, %.lr.ph.i.i.i.i.i120
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i122, i64 16 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i121, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.kl
  br i1 %i.lc, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i120, !llvm.loop !185

.loopexit.loopexit:                               ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre204 = load ptr, ptr %1, align 8, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc128
  %i.ld = phi ptr [ %i.jv, %.noexc128 ], [ %.pre204, %.loopexit.loopexit ] ; 4 uses
  %.0.lcssa.i.i.i.i.i125 = phi ptr [ %i.kn, %.noexc128 ], [ %i.lb, %.loopexit.loopexit ]
  store ptr %.0.lcssa.i.i.i.i.i125, ptr %i.ko, align 8, !tbaa !182
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  %i.lf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 96
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !95 ; 2 uses
  %i.li = load <2 x ptr>, ptr %i.le, align 8, !tbaa !135
  store <2 x ptr> %i.li, ptr %15, align 16, !tbaa !135
  %.not.i.i.i129 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i129, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.cx

bb.cx:                                            ; preds = %.loopexit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 3 uses
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i130 = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i130, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ll = load i32, ptr %i.lj, align 4, !tbaa !3
  %i.lm = add nsw i32 %i.ll, 1
  store i32 %i.lm, ptr %i.lj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.ln = atomicrmw volatile add ptr %i.lj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre205 = load ptr, ptr %1, align 8, !tbaa !77
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %.loopexit, %bb.cy, %bb.cz
  %i.lo = phi ptr [ %i.ld, %.loopexit ], [ %i.ld, %bb.cy ], [ %.pre205, %bb.cz ]
  %i.lp = invoke noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lo)
          to label %bb.da unwind label %bb.ed

bb.da:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.lq = load ptr, ptr %1, align 8, !tbaa !77
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !186
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EES4_IS1_IS0_ESaIS9_EES9_ll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %11, ptr noundef nonnull %12, i64 noundef %i.jx, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef %i.lp, i64 noundef %i.ls)
          to label %bb.db unwind label %bb.ed

bb.db:                                            ; preds = %bb.da
  %i.lt = load ptr, ptr %i.lf, align 8, !tbaa !95 ; 8 uses
  %.not.i.i131 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i131, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %i.lv = load atomic i64, ptr %i.lu acquire, align 8 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 4294967297
  %i.lx = trunc i64 %i.lv to i32                  ; 2 uses
  br i1 %i.lw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.lu, align 8, !tbaa !96
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 0, ptr %i.ly, align 4, !tbaa !98
  %i.lz = load ptr, ptr %i.lt, align 8, !tbaa !50
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #19, !inline_history !153
  %i.mc = load ptr, ptr %i.lt, align 8, !tbaa !50
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #19, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

bb.de:                                            ; preds = %bb.dc
  %i.mf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i132 = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i132, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mg = add nsw i32 %i.lx, -1
  store i32 %i.mg, ptr %i.lu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

bb.dg:                                            ; preds = %bb.de
  %i.mh = atomicrmw volatile add ptr %i.lu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133: ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i134 = phi i32 [ %i.lx, %bb.df ], [ %i.mh, %bb.dg ]
  %i.mi = icmp eq i32 %.0.i.i.i.i134, 1
  br i1 %i.mi, label %bb.dh, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, !prof !101

bb.dh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135: ; preds = %bb.db, %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133, %bb.dh
  %i.mj = load ptr, ptr %14, align 8, !tbaa !183  ; 3 uses
  %i.mk = load ptr, ptr %i.ko, align 8, !tbaa !182 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mj, %i.mk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nc, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.mj, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 4 uses
  %i.mo = load atomic i64, ptr %i.mn acquire, align 8 ; 2 uses
  %i.mp = icmp eq i64 %i.mo, 4294967297
  %i.mq = trunc i64 %i.mo to i32                  ; 2 uses
  br i1 %i.mp, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %i.mn, align 8, !tbaa !96
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i32 0, ptr %i.mr, align 4, !tbaa !98
  %i.ms = load ptr, ptr %i.mm, align 8, !tbaa !50
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #19, !inline_history !187
  %i.mv = load ptr, ptr %i.mm, align 8, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #19, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.my = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.my, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mz = add nsw i32 %i.mq, -1
  store i32 %i.mz, ptr %i.mn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.na = atomicrmw volatile add ptr %i.mn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.mq, %bb.dl ], [ %i.na, %bb.dm ]
  %i.nb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nb, label %bb.dn, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !101

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.dn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.dj, %.lr.ph.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.nc, %i.mk
  br i1 %.not.i.i.i136, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i137 = load ptr, ptr %14, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.nd = phi ptr [ %.pr.i137, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.mj, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ne = load ptr, ptr %i.kq, align 8, !tbaa !184
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = ptrtoint ptr %i.nd to i64
  %i.nh = sub i64 %i.nf, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.nh) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.do
  %i.ni = load ptr, ptr %13, align 16, !tbaa !72  ; 3 uses
  %i.nj = load ptr, ptr %i.jy, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i138 = icmp eq ptr %i.ni, %i.nj
  br i1 %.not4.i.i.i138, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i140 = phi ptr [ %i.ob, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.ni, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i.i139
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 4 uses
  %i.nn = load atomic i64, ptr %i.nm acquire, align 8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967297
  %i.np = trunc i64 %i.nn to i32                  ; 2 uses
  br i1 %i.no, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.nm, align 8, !tbaa !96
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i32 0, ptr %i.nq, align 4, !tbaa !98
  %i.nr = load ptr, ptr %i.nl, align 8, !tbaa !50
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #19, !inline_history !189
  %i.nu = load ptr, ptr %i.nl, align 8, !tbaa !50
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #19, !inline_history !189
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.nx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i142 = icmp eq i8 %i.nx, 0
  br i1 %.not.i.i.i.i.i.i.i.i142, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ny = add nsw i32 %i.np, -1
  store i32 %i.ny, ptr %i.nm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143

bb.dt:                                            ; preds = %bb.dr
  %i.nz = atomicrmw volatile add ptr %i.nm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i.i.i.i.i144 = phi i32 [ %i.np, %bb.ds ], [ %i.nz, %bb.dt ]
  %i.oa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i144, 1
  br i1 %i.oa, label %bb.du, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !101

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143, %bb.dq, %.lr.ph.i.i.i139
  %i.ob = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 16 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ob, %i.nj
  br i1 %.not.i.i.i145, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i139, !llvm.loop !190

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i146 = load ptr, ptr %13, align 16, !tbaa !72
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.oc = phi ptr [ %.pr.i146, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ni, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i147 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i1.i147, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.od = load ptr, ptr %i.ka, align 16, !tbaa !141
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = ptrtoint ptr %i.oc to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.og) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.dv
  %i.oh = load ptr, ptr %i.jp, align 8, !tbaa !95 ; 8 uses
  %.not.i.i148 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i148, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 4 uses
  %i.oj = load atomic i64, ptr %i.oi acquire, align 8 ; 2 uses
  %i.ok = icmp eq i64 %i.oj, 4294967297
  %i.ol = trunc i64 %i.oj to i32                  ; 2 uses
  br i1 %i.ok, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.oi, align 8, !tbaa !96
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 0, ptr %i.om, align 4, !tbaa !98
  %i.on = load ptr, ptr %i.oh, align 8, !tbaa !50
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(16) %i.oh) #19, !inline_history !191
  %i.oq = load ptr, ptr %i.oh, align 8, !tbaa !50
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.oh) #19, !inline_history !191
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156

bb.dy:                                            ; preds = %bb.dw
  %i.ot = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i149 = icmp eq i8 %i.ot, 0
  br i1 %.not.i.i.i149, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ou = add nsw i32 %i.ol, -1
  store i32 %i.ou, ptr %i.oi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

bb.ea:                                            ; preds = %bb.dy
  %i.ov = atomicrmw volatile add ptr %i.oi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i151 = phi i32 [ %i.ol, %bb.dz ], [ %i.ov, %bb.ea ]
  %i.ow = icmp eq i32 %.0.i.i.i.i151, 1
  br i1 %i.ow, label %bb.eb, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, !prof !101

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oh) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156: ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150, %bb.dx, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !111
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oy = load <2 x ptr>, ptr %11, align 16, !tbaa !135
  store <2 x ptr> %i.oy, ptr %i.ox, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.loopexit183

bb.ec:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i126
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.da, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #19
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #19
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn61 = phi { ptr, i32 } [ %i.pa, %bb.ed ], [ %i.oz, %bb.ec ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.em

.loopexit183:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156
  %i.pb = load ptr, ptr %4, align 16, !tbaa !72   ; 3 uses
  %i.pc = load ptr, ptr %i.p, align 8, !tbaa !69  ; 2 uses
  %.not4.i.i.i157 = icmp eq ptr %i.pb, %i.pc
  br i1 %.not4.i.i.i157, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168, label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %.loopexit183, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164
  %.05.i.i.i159 = phi ptr [ %i.pu, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164 ], [ %i.pb, %.loopexit183 ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i.i160 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i.i.i.i.i160, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i.i158
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 4 uses
  %i.pg = load atomic i64, ptr %i.pf acquire, align 8 ; 2 uses
  %i.ph = icmp eq i64 %i.pg, 4294967297
  %i.pi = trunc i64 %i.pg to i32                  ; 2 uses
  br i1 %i.ph, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.pf, align 8, !tbaa !96
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  store i32 0, ptr %i.pj, align 4, !tbaa !98
  %i.pk = load ptr, ptr %i.pe, align 8, !tbaa !50
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(16) %i.pe) #19, !inline_history !189
  %i.pn = load ptr, ptr %i.pe, align 8, !tbaa !50
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load ptr, ptr %i.po, align 8
  call void %i.pp(ptr noundef nonnull align 8 dereferenceable(16) %i.pe) #19, !inline_history !189
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164

bb.eh:                                            ; preds = %bb.ef
  %i.pq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i161 = icmp eq i8 %i.pq, 0
  br i1 %.not.i.i.i.i.i.i.i.i161, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pr = add nsw i32 %i.pi, -1
  store i32 %i.pr, ptr %i.pf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162

bb.ej:                                            ; preds = %bb.eh
  %i.ps = atomicrmw volatile add ptr %i.pf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i.i.i163 = phi i32 [ %i.pi, %bb.ei ], [ %i.ps, %bb.ej ]
  %i.pt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i163, 1
  br i1 %i.pt, label %bb.ek, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164, !prof !101

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pe) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164: ; preds = %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162, %bb.eg, %.lr.ph.i.i.i158
  %i.pu = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 16 ; 2 uses
  %.not.i.i.i165 = icmp eq ptr %i.pu, %i.pc
  br i1 %.not.i.i.i165, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166, label %.lr.ph.i.i.i158, !llvm.loop !190

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164
  %.pr.i167 = load ptr, ptr %4, align 16, !tbaa !72
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166, %.loopexit183
  %i.pv = phi ptr [ %.pr.i167, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166 ], [ %i.pb, %.loopexit183 ] ; 3 uses
  %.not.i.i1.i169 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i1.i169, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170, label %bb.el

bb.el:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168
  %i.pw = load ptr, ptr %i.r, align 16, !tbaa !141
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = ptrtoint ptr %i.pv to i64
  %i.pz = sub i64 %i.px, %i.py
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.pz) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.eo

bb.em:                                            ; preds = %bb.ba, %bb.bz, %bb.p, %bb.z, %bb.ee, %bb.k
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.ee ], [ %i.cd, %bb.z ], [ %i.hv, %bb.bz ], [ %i.bb, %bb.k ], [ %i.bj, %bb.p ], [ %i.fg, %bb.ba ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn61.pn

bb.en:                                            ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !111
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qc = load <2 x ptr>, ptr %1, align 8, !tbaa !135
  store ptr null, ptr %i.qb, align 8, !tbaa !95
  store <2 x ptr> %i.qc, ptr %i.qa, align 8, !tbaa !135
  store ptr null, ptr %1, align 8, !tbaa !77
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170
  ret void
}

declare noundef i32 @_ZN5arrow31RequiredValueAlignmentForBufferENS_4Type4typeEi(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.114", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !111
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !101

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
end_hunk_1
begin_hunk_2_@_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_5ArrayEElPNS_10MemoryPoolE:bb.a
bb.v:                                             ; preds = %bb.u
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.w:                                             ; preds = %bb.u
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i18 = phi i32 [ %i.ay, %bb.v ], [ %i.bi, %bb.w ]
  %i.bj = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.bj, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19, !prof !101

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19, %bb.l
  %i.bk = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.z, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !114

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bo, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !98
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #19, !inline_history !160
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #19, !inline_history !160
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.ad ], [ %i.cb, %bb.ae ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.af, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !101

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ab, %bb.z
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !111  ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %bb.y
  %i.cd = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.bk, %bb.y ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !115, !range !123, !noundef !124
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.ah:                                            ; preds = %bb.q, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.q ], [ %i.ad, %bb.m ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.114", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !111
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !101

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !100
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !139    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !100
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !139    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !100
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable
}

declare void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.40") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_12ChunkedArrayEElPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.75") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.24", align 8    ; 12 uses
  %5 = alloca %"class.std::vector.28", align 8    ; 13 uses
  %6 = alloca %"class.arrow::Result.71", align 8  ; 10 uses
  %7 = alloca %"class.std::shared_ptr.40", align 8 ; 4 uses
  %8 = alloca %"class.std::vector.28", align 8    ; 7 uses
  %9 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !203
  %i.e = load ptr, ptr %1, align 8, !tbaa !106
  %i.f = invoke noundef zeroext i1 @_ZN5arrow4util14CheckAlignmentERKNS_12ChunkedArrayElPSt6vectorIbSaIbEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 noundef %2, ptr noundef nonnull %4, i32 noundef 0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.bl, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = load ptr, ptr %1, align 8, !tbaa !106    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %.noexc32, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i64 %i.m, 9223372036854775792
  br i1 %i.n, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge unwind label %bb.i

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !206
  %.pre74 = load ptr, ptr %i.h, align 8, !tbaa !206
  br label %.noexc32

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge, %bb.c
  %i.p = phi ptr [ %i.i, %bb.c ], [ %.pre74, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge ] ; 4 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge ] ; 2 uses
  %i.r = phi ptr [ null, %bb.c ], [ %i.o, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge ] ; 5 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !207
  %i.v = icmp eq ptr %i.q, %i.p
  br i1 %i.v, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc32, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.r, %.noexc32 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.q, %.noexc32 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 2 uses
  %i.y = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !135
  store <2 x ptr> %i.y, ptr %.08.i.i.i.i.i, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.p
  br i1 %i.ag, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !208

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre75 = load ptr, ptr %1, align 8, !tbaa !106 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre75, i64 8
  %.pre76 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86
  %.pre77 = load ptr, ptr %.pre75, align 8, !tbaa !89
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit, %.noexc32
  %i.ah = phi ptr [ %i.p, %.noexc32 ], [ %.pre77, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit ] ; 2 uses
  %i.ai = phi ptr [ %i.p, %.noexc32 ], [ %.pre76, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit ]
  %i.aj = phi ptr [ %i.g, %.noexc32 ], [ %.pre75, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %.noexc32 ], [ %i.af, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !86
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 4
  %i.ao = trunc i64 %i.an to i32
  %.not71 = icmp sgt i32 %i.ao, 0
  br i1 %.not71, label %.lr.ph, label %.critedge31

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.j:                                             ; preds = %.lr.ph, %.critedge
  %i.au = phi ptr [ %i.ah, %.lr.ph ], [ %i.dq, %.critedge ] ; 2 uses
  %i.av = phi ptr [ %i.aj, %.lr.ph ], [ %i.dr, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !82
  %i.ax = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.ax, 67108863
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.zext
  %i.az = and i64 %indvars.iv, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !93
  %i.bc = and i64 %i.bb, %i.ba
  %.not69 = icmp eq i64 %i.bc, 0
  br i1 %.not69, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %5, align 8, !tbaa !89
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !90 ; 2 uses
  %.not70 = icmp eq ptr %i.bf, null
  br i1 %.not70, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.bf, ptr %7, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %10 = load ptr, ptr %i.bg, align 8, !tbaa !95
  store ptr null, ptr %i.bg, align 8, !tbaa !95
  store ptr %10, ptr %i.ap, align 8, !tbaa !95
  store ptr null, ptr %i.be, align 8, !tbaa !90
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_5ArrayEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.71") align 8 %6, ptr noundef nonnull %7, i64 noundef %2, ptr noundef %3)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bi, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !98
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #19, !inline_history !99
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #19, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bl, %bb.q ], [ %i.bv, %bb.r ]
  %i.bw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bw, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  %i.bx = load ptr, ptr %6, align 8, !tbaa !111
  %i.by = icmp eq ptr %i.bx, null                 ; 2 uses
  br i1 %i.by, label %bb.v, label %bb.t, !prof !114

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

bb.u:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  br label %bb.bj

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !135, !noalias !209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.cb = load ptr, ptr %5, align 8, !tbaa !89
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ca, ptr %i.cc, align 8, !tbaa !135
  %.not.i.i.i.i33 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i33, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cf, align 8, !tbaa !96
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !98
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #19, !inline_history !214
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #19, !inline_history !214
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

bb.y:                                             ; preds = %bb.w
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.z ], [ %i.cs, %bb.aa ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38, !prof !101

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab, %bb.t
  %i.cu = load ptr, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ac, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !114

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38
  %i.cw = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i39, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cx, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !98
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #19, !inline_history !215
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #19, !inline_history !215
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.da, %bb.ag ], [ %i.dk, %bb.ah ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dl, label %bb.ai, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !101

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae
  %.pr.i.pr = load ptr, ptr %6, align 8, !tbaa !111 ; 2 uses
  %.not.i.i40 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i40, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38
  %i.dm = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.cu, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !115, !range !123, !noundef !124
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.ac, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.by, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit..critedge_crit_edge, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit..critedge_crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %.pre78 = load ptr, ptr %1, align 8, !tbaa !106 ; 2 uses
  %.pre79 = load ptr, ptr %.pre78, align 8, !tbaa !89
end_hunk_2
begin_hunk_3_@_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_12ChunkedArrayEElPNS_10MemoryPoolE:bb.a
  %i.hp = load ptr, ptr %i.d, align 8, !tbaa !203 ; 2 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = ashr exact i64 %i.hs, 3
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hu
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hs) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit65

_ZNSt13_Bvector_baseISaIbEED2Ev.exit65:           ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn26.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.114", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !111
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !101

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !100
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !139    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !100
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !139    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !100
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable
}

declare void @_ZN5arrow12ChunkedArray4MakeESt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EES2_INS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.75") align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !98
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !219
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !219
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !218

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !207
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_11RecordBatchEElPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.79") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.24", align 8    ; 12 uses
  %5 = alloca %"class.std::vector.28", align 16   ; 13 uses
  %6 = alloca %"class.arrow::Result.71", align 8  ; 10 uses
  %7 = alloca %"class.std::shared_ptr.40", align 8 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.83", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.43", align 16 ; 4 uses
  %10 = alloca %"class.std::vector.28", align 16  ; 7 uses
  %11 = alloca %"class.std::shared_ptr.86", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !203
  %i.e = load ptr, ptr %1, align 8, !tbaa !220
  %i.f = invoke noundef zeroext i1 @_ZN5arrow4util14CheckAlignmentERKNS_11RecordBatchElPSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.bu, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = load ptr, ptr %1, align 8, !tbaa !220    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.l       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !89   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %.noexc32, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.q, 9223372036854775792
  br i1 %i.r, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge unwind label %bb.l

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !206
  %.pre80 = load ptr, ptr %i.l, align 8, !tbaa !206
  br label %.noexc32

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge, %bb.d
  %i.t = phi ptr [ %i.m, %bb.d ], [ %.pre80, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge ] ; 2 uses
  %i.u = phi ptr [ %i.n, %bb.d ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge ] ; 2 uses
  %i.v = phi ptr [ null, %bb.d ], [ %i.s, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc32_crit_edge ] ; 5 uses
  store ptr %i.v, ptr %5, align 16, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.y, align 16, !tbaa !207
  %i.z = icmp eq ptr %i.u, %i.t
  br i1 %i.z, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc32, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.v, %.noexc32 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.u, %.noexc32 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !135
  store <2 x ptr> %i.ac, ptr %.08.i.i.i.i.i, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.t
  br i1 %i.ak, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !208

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc32
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %.noexc32 ], [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.w, align 8, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit, %.critedge
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit ], [ %indvars.iv.next, %.critedge ] ; 6 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !220
  %i.ap = invoke noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aq = sext i32 %i.ap to i64
  %.not = icmp slt i64 %indvars.iv, %i.aq
  br i1 %.not, label %bb.n, label %.critedge31

bb.k:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.l:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.m:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.n:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %4, align 8, !tbaa !82
  %i.av = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.av, 67108863
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.zext
  %i.ax = and i64 %indvars.iv, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !93
  %i.ba = and i64 %i.az, %i.ay
  %.not77 = icmp eq i64 %i.ba, 0
  br i1 %.not77, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %5, align 16, !tbaa !89
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90 ; 2 uses
  %.not78 = icmp eq ptr %i.bd, null
  br i1 %.not78, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.bd, ptr %7, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %12 = load ptr, ptr %i.be, align 8, !tbaa !95
  store ptr null, ptr %i.be, align 8, !tbaa !95
  store ptr %12, ptr %i.al, align 8, !tbaa !95
  store ptr null, ptr %i.bc, align 8, !tbaa !90
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_5ArrayEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.71") align 8 %6, ptr noundef nonnull %7, i64 noundef %2, ptr noundef %3)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bg, align 8, !tbaa !96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !98
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #19, !inline_history !99
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #19, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.u ], [ %i.bt, %bb.v ]
  %i.bu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bu, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  %i.bv = load ptr, ptr %6, align 8, !tbaa !111
  %i.bw = icmp eq ptr %i.bv, null                 ; 2 uses
  br i1 %i.bw, label %bb.z, label %bb.x, !prof !114

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

bb.y:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  br label %bb.bs

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.by = load <2 x ptr>, ptr %i.am, align 8, !tbaa !135, !noalias !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.bz = load ptr, ptr %5, align 16, !tbaa !89
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.by, ptr %i.ca, align 8, !tbaa !135
  %.not.i.i.i.i33 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i33, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cd, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !98
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #19, !inline_history !214
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #19, !inline_history !214
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

bb.ac:                                            ; preds = %bb.aa
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.ad ], [ %i.cq, %bb.ae ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38, !prof !101

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af, %bb.x
  %i.cs = load ptr, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ag, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !114

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38
  %i.cu = load ptr, ptr %i.an, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i39, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cv, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !98
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #19, !inline_history !215
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #19, !inline_history !215
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.am, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !101

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ai
  %.pr.i.pr = load ptr, ptr %6, align 8, !tbaa !111 ; 2 uses
  %.not.i.i40 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i40, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38
  %i.dk = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.cs, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !115, !range !123, !noundef !124
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.ag, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.bw, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.n, %bb.o, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.i, !llvm.loop !228
end_hunk_3
begin_hunk_4_@_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE:bb.a
_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !101

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !100
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !139    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !100
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !139    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !100
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable
}

declare void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.83") align 8, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !195
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !195
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !195
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !195
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_5TableEElPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.89") align 8 %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.24", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.96", align 16   ; 15 uses
  %6 = alloca %"class.std::vector.28", align 8    ; 16 uses
  %7 = alloca %"class.arrow::Result.71", align 8  ; 10 uses
  %8 = alloca %"class.std::shared_ptr.40", align 8 ; 4 uses
  %9 = alloca %"class.arrow::Result.75", align 8  ; 10 uses
  %10 = alloca %"class.std::vector.28", align 8   ; 7 uses
  %11 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.93", align 16 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.43", align 16 ; 4 uses
  %14 = alloca %"class.std::vector.96", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !203
  %i.e = load ptr, ptr %1, align 8, !tbaa !234
  %i.f = invoke noundef zeroext i1 @_ZN5arrow4util14CheckAlignmentERKNS_5TableElPSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.dk, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = load ptr, ptr %1, align 8, !tbaa !234    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.k       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !240  ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %.noexc71, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.q, 9223372036854775792
  br i1 %i.r, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge unwind label %bb.k

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !241
  %.pre187 = load ptr, ptr %i.l, align 8, !tbaa !241
  br label %.noexc71

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge, %bb.d
  %i.t = phi ptr [ %i.m, %bb.d ], [ %.pre187, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ] ; 2 uses
  %i.u = phi ptr [ %i.n, %bb.d ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ] ; 2 uses
  %i.v = phi ptr [ null, %bb.d ], [ %i.s, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ] ; 5 uses
  store ptr %i.v, ptr %5, align 16, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !237
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.y, align 16, !tbaa !242
  %i.z = icmp eq ptr %i.u, %i.t
  br i1 %i.z, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc71, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.v, %.noexc71 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.u, %.noexc71 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !135
  store <2 x ptr> %i.ac, ptr %.08.i.i.i.i.i, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.t
  br i1 %i.ak, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !243

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc71
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %.noexc71 ], [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.w, align 8, !tbaa !237
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit, %.critedge
  %indvars.iv = phi i64 [ 1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EEC2ERKS5_.exit ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !234
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.ay = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK5arrow5Table11num_columnsEv.exit unwind label %bb.l

_ZNK5arrow5Table11num_columnsEv.exit:             ; preds = %bb.i
  %i.az = sext i32 %i.ay to i64
  %.not = icmp sgt i64 %indvars.iv, %i.az
  br i1 %.not, label %.critedge70, label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.l:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.m:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  %i.bd = add nsw i64 %indvars.iv, -1             ; 5 uses
  %i.be = load ptr, ptr %5, align 16, !tbaa !240
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !106 ; 4 uses
  %.not176 = icmp eq ptr %i.bg, null
  br i1 %.not176, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86 ; 2 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !89 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = lshr exact i64 %i.bm, 4
  %i.bo = trunc i64 %i.bn to i32
  %.05152 = add i32 %i.bo, 1
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  %i.bq = mul i32 %.05152, %i.bp
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !82
  %i.bu = sdiv i32 %i.br, 64
  %.sext = sext i32 %i.bu to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.sext
  %i.bw = and i64 %i.bs, -9223372036854775745
  %i.bx = icmp ugt i64 %i.bw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bx, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bv, i64 %storemerge.idx.i.i.i.i.i
  %i.by = and i64 %i.bs, 63
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !93
  %i.cb = and i64 %i.bz, %i.ca
  %.not177 = icmp eq i64 %i.cb, 0
  br i1 %.not177, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i73 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i73, label %.noexc82, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = icmp ugt i64 %i.bm, 9223372036854775792
  br i1 %i.cc, label %.noexc.i.i80, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i80:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %.noexc.i.i80
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #23
          to label %.noexc82 unwind label %.loopexit

.noexc82:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %bb.o
  %i.ce = phi ptr [ null, %bb.o ], [ %i.cd, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ce, ptr %6, align 8, !tbaa !89
  store ptr %i.ce, ptr %i.al, align 8, !tbaa !86
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bm
  store ptr %i.cf, ptr %i.am, align 8, !tbaa !207
  %i.cg = load ptr, ptr %i.bg, align 8, !tbaa !206 ; 2 uses
  %i.ch = load ptr, ptr %i.bh, align 8, !tbaa !206 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.critedge66, label %.lr.ph.i.i.i.i.i74

.lr.ph.i.i.i.i.i74:                               ; preds = %.noexc82, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i75 = phi ptr [ %i.cs, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ce, %.noexc82 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i76 = phi ptr [ %i.cr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cg, %.noexc82 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i76, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i76, align 8, !tbaa !135
  store <2 x ptr> %i.cl, ptr %.08.i.i.i.i.i75, align 8, !tbaa !135
  %.not.i.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i.i.i77, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i.i78 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i78, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i.i74
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i76, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i75, i64 16 ; 5 uses
  %i.ct = icmp eq ptr %i.cr, %i.ch
  br i1 %i.ct, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i74, !llvm.loop !208

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre188 = load ptr, ptr %6, align 8, !tbaa !89 ; 3 uses
  store ptr %i.cs, ptr %i.al, align 8, !tbaa !86
  %.not55182.not = icmp eq ptr %i.cs, %.pre188
  br i1 %.not55182.not, label %.critedge66, label %.lr.ph

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp:                               ; preds = %.noexc.i.i80
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit, %.critedge5
  %i.cu = phi ptr [ %i.ge, %.critedge5 ], [ %.pre188, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit ] ; 3 uses
  %i.cv = phi ptr [ %i.gf, %.critedge5 ], [ %i.cs, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit ] ; 2 uses
  %.045183 = phi i64 [ %i.gg, %.critedge5 ], [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2ERKS5_.exit ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.045183 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !90 ; 2 uses
  %.not178 = icmp eq ptr %i.cx, null
  br i1 %.not178, label %.critedge5, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cy = load ptr, ptr %5, align 16, !tbaa !240
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.bd
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !86
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !89
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = shl i64 %i.dg, 28
  %sext = add i64 %i.dh, 4294967296
  %i.di = ashr i64 %sext, 32
  %i.dj = mul nsw i64 %i.di, %i.bd
  %i.dk = add i64 %.045183, %i.dj                 ; 3 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !82
  %i.dm = sdiv i64 %i.dk, 64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = and i64 %i.dk, -9223372036854775745
  %i.dp = icmp ugt i64 %i.do, -9223372036854775808
  %storemerge.idx.i.i.i.i.i83 = select i1 %i.dp, i64 -8, i64 0
  %storemerge.i.i.i.i.i84 = getelementptr inbounds i8, ptr %i.dn, i64 %storemerge.idx.i.i.i.i.i83
  %i.dq = and i64 %i.dk, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = load i64, ptr %storemerge.i.i.i.i.i84, align 8, !tbaa !93
  %i.dt = and i64 %i.dr, %i.ds
  %.not179 = icmp eq i64 %i.dt, 0
  br i1 %.not179, label %.critedge5, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.cx, ptr %8, align 8, !tbaa !90
  store ptr null, ptr %i.an, align 8, !tbaa !95
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %15 = load ptr, ptr %i.du, align 8, !tbaa !95
  store ptr null, ptr %i.du, align 8, !tbaa !95
  store ptr %15, ptr %i.an, align 8, !tbaa !95
  store ptr null, ptr %i.cw, align 8, !tbaa !90
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_5ArrayEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.71") align 8 %7, ptr noundef nonnull %8, i64 noundef %2, ptr noundef %3)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dw, align 8, !tbaa !96
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !98
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #19, !inline_history !99
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !50
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #19, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.dz, %bb.z ], [ %i.ej, %bb.aa ]
  %i.ek = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ek, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  %i.el = load ptr, ptr %7, align 8, !tbaa !111
  %i.em = icmp eq ptr %i.el, null                 ; 2 uses
  br i1 %i.em, label %bb.ae, label %bb.ac, !prof !114

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

bb.ad:                                            ; preds = %bb.u
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #19
  br label %bb.ci

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eo = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !135, !noalias !244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ep = load ptr, ptr %6, align 8, !tbaa !89
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %.045183 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.eo, ptr %i.eq, align 8, !tbaa !135
  %.not.i.i.i.i87 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i87, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.et, align 8, !tbaa !96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !98
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !50
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #19, !inline_history !214
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #19, !inline_history !214
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

bb.ah:                                            ; preds = %bb.af
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.ew, %bb.ai ], [ %i.fg, %bb.aj ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fh, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, !prof !101

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92: ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ak, %bb.ac
  %i.fi = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !114

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92
  %i.fk = load ptr, ptr %i.ap, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i93, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fl, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !98
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !215
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !215
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.ap ], [ %i.fy, %bb.aq ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !101

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an
  %.pr.i.pr = load ptr, ptr %7, align 8, !tbaa !111 ; 2 uses
  %.not.i.i94 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i94, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92
  %i.ga = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.fi, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92 ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !115, !range !123, !noundef !124
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.al, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.em, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit..critedge5_crit_edge, label %.critedge68

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit..critedge5_crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %.pre189 = load ptr, ptr %i.al, align 8, !tbaa !86
  %.pre190 = load ptr, ptr %6, align 8, !tbaa !89
end_hunk_4
