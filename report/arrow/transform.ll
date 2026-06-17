inline.NumInlined: 802
inline.NumDeleted: 420
begin_hunk_0_@_ZN5arrow2io20TransformInputStream4ReadEl:bb.a
_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit47: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i46, %bb.x
  %.pn24.pn63 = phi { ptr, i32 } [ %.pn24.pn62, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i46 ], [ %.pn24, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn24.pn63

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, %bb.f
  %i.bj = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.z, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !76

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.z
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(80) %i.bm) #25, !inline_history !95
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !62 ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i48, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !96

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.y
  %i.bq = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bj, %bb.y ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !67, !range !57, !noundef !58
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.z, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit32.thread, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !62
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !47

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !97     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !97     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !97     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

declare void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.7") align 8, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #25, !inline_history !98
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !96

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !57, !noundef !58
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n40_N5arrow2io20TransformInputStream4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN5arrow2io20TransformInputStream4ReadEl(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io20TransformInputStream4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.19") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.2", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.2", align 8 ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.arrow::Result", align 8     ; 15 uses
  %10 = alloca %"class.std::shared_ptr.2", align 16 ; 12 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 16 uses
  %12 = alloca %"class.std::shared_ptr.2", align 8 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.2", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !33, !range !57, !noalias !99, !noundef !58
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(25) @.str)
  %.pr = load ptr, ptr %7, align 8, !tbaa !62     ; 2 uses
  store ptr %.pr, ptr %6, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %bb.e, label %bb.b, !prof !65

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %.pr138 = load ptr, ptr %6, align 8, !tbaa !62  ; 2 uses
  %.not.i50 = icmp eq ptr %.pr138, null
  br i1 %.not.i50, label %_ZN5arrow6StatusD2Ev.exit51.thread, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.pr138, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !57, !noundef !58
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit51.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit51.thread

_ZN5arrow6StatusD2Ev.exit51.thread:               ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.dg

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.dg

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit unwind label %bb.i

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre155 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !102
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %.pre155, i64 24
  %.pre157 = load i64, ptr %.phi.trans.insert156, align 8, !tbaa !103
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit, %bb.g
  %.036 = phi i64 [ %.pre157, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ 0, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, %bb.j
  %.137 = phi i64 [ %.036, %bb.j ], [ %.339185, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75 ] ; 5 uses
  %i.v = icmp slt i64 %.137, %2
  br i1 %i.v, label %bb.l, label %bb.bb

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr i8, ptr %i.y, i64 -64
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %9, align 8, !tbaa !62
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %bb.n, !prof !76

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #25
  br label %66

bb.o:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ai = load <2 x ptr>, ptr %i.o, align 8, !tbaa !93, !noalias !110
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !102, !noalias !110
  store ptr null, ptr %i.q, align 8, !tbaa !15, !noalias !110
  store <2 x ptr> %i.ai, ptr %10, align 16, !tbaa !93, !alias.scope !110
  store ptr null, ptr %i.o, align 8, !tbaa !102, !noalias !110
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !103
  %i.am = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19, !noalias !111
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt25__throw_bad_function_callv() #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16, !noalias !111
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKSt8functionIFN5arrow6ResultISt10shared_ptrINS0_6BufferEEEERKS4_EEclES7_.exit unwind label %.loopexit, !inline_history !114

_ZNKSt8functionIFN5arrow6ResultISt10shared_ptrINS0_6BufferEEEERKS4_EEclES7_.exit: ; preds = %bb.r
  %i.at = load ptr, ptr %11, align 8, !tbaa !62
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.ac, !prof !76

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.s:                                             ; preds = %bb.ab
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ba

bb.t:                                             ; preds = %_ZNKSt8functionIFN5arrow6ResultISt10shared_ptrINS0_6BufferEEEERKS4_EEclES7_.exit
  %i.aw = load <2 x ptr>, ptr %i.r, align 8, !tbaa !93, !noalias !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !15  ; 8 uses
  store <2 x ptr> %i.aw, ptr %10, align 16, !tbaa !93
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ay, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !44
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !120
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !120
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i55 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.x ], [ %i.bl, %bb.y ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %bb.t
  %i.bn = load ptr, ptr %10, align 16, !tbaa !102 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !103
  %i.bq = add nsw i64 %i.bp, %.137                ; 3 uses
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !121 ; 5 uses
  %i.bs = load ptr, ptr %i.u, align 8, !tbaa !124
  %.not.i.i57 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i57, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !15
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !15
  store ptr null, ptr %i.p, align 8, !tbaa !15
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !15
  store ptr null, ptr %10, align 16, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !121
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.br, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit unwind label %bb.s

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.aa, %bb.ab
  %. = select i1 %i.am, i32 7, i32 0              ; 3 uses
  %14 = load ptr, ptr %11, align 8, !tbaa !62     ; 2 uses
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !76

bb.ac:                                            ; preds = %_ZNKSt8functionIFN5arrow6ResultISt10shared_ptrINS0_6BufferEEEERKS4_EEclES7_.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #25
  %i.bw = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ad, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.a, !prof !76

16:                                               ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit
  %17 = load ptr, ptr %i.s, align 8, !tbaa !15    ; 8 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %17, null
  br i1 %.not.i.i.i.i.i59, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %18

bb.ad:                                            ; preds = %bb.ac
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !15  ; 8 uses
  %.not.i.i.i.i.i59.a = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i59.a, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a, label %bb.ae

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %20 = load atomic i64, ptr %19 acquire, align 8 ; 2 uses
  %21 = icmp eq i64 %20, 4294967297
  %22 = trunc i64 %20 to i32                      ; 2 uses
  br i1 %21, label %23, label %31

bb.ae:                                            ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.af, label %bb.ag

23:                                               ; preds = %18
  store i32 0, ptr %19, align 8, !tbaa !42
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 0, ptr %24, align 4, !tbaa !44
  %25 = load ptr, ptr %17, align 8, !tbaa !7
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull align 8 dereferenceable(16) %17) #25, !inline_history !125
  %28 = load ptr, ptr %17, align 8, !tbaa !7
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull align 8 dereferenceable(16) %17) #25, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.bz, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !44
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25, !inline_history !125
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a

31:                                               ; preds = %18
  %32 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i60 = icmp eq i8 %32, 0
  br i1 %.not.i.i.i.i.i.i60, label %35, label %33

bb.ag:                                            ; preds = %bb.ae
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i60.a = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i60.a, label %bb.ai, label %bb.ah

33:                                               ; preds = %31
  %34 = add nsw i32 %22, -1
  store i32 %34, ptr %19, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.a

35:                                               ; preds = %31
  %36 = atomicrmw volatile add ptr %19, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %35, %33
  %.0.i.i.i.i.i.i.i = phi i32 [ %22, %33 ], [ %36, %35 ]
  %37 = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %37, label %38, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.a: ; preds = %bb.ah, %bb.ai
  %.0.i.i.i.i.i.i.i.a = phi i32 [ %i.cm, %bb.ai ], [ %i.cc, %bb.ah ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i.i.a, 1
  br i1 %i.cn, label %bb.aj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a, !prof !47

38:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %38, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %23
  %.pr.i.pr = load ptr, ptr %11, align 8, !tbaa !62 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !96

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.a, %bb.aj, %bb.af
  %.pr.i.pr.a = load ptr, ptr %11, align 8, !tbaa !62 ; 2 uses
  %.not.i.i61.a = icmp eq ptr %.pr.i.pr.a, null
  br i1 %.not.i.i61.a, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.a, !prof !96

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit
  %39 = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %14, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit ]
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !67, !range !57, !noundef !58
  %42 = trunc nuw i8 %41 to i1
  br i1 %42, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %43

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.a: ; preds = %bb.ac, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a
  %i.co = phi ptr [ %i.bw, %bb.ac ], [ %.pr.i.pr.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !67, !range !57, !noundef !58
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a, label %bb.ak

43:                                               ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

bb.ak:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.a
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %16, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %43
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %44 = load ptr, ptr %i.p, align 8, !tbaa !15    ; 8 uses
  %.not.i.i62 = icmp eq ptr %44, null
  br i1 %.not.i.i62, label %bb.ar, label %45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a: ; preds = %bb.ad, %bb.ak, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !15  ; 8 uses
  %.not.i.i62.a = icmp eq ptr %i.cs, null
  br i1 %.not.i.i62.a, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.al

45:                                               ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  %47 = load atomic i64, ptr %46 acquire, align 8 ; 2 uses
  %48 = icmp eq i64 %47, 4294967297
  %49 = trunc i64 %47 to i32                      ; 2 uses
  br i1 %48, label %50, label %58

bb.al:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.am, label %bb.an

50:                                               ; preds = %45
  store i32 0, ptr %46, align 8, !tbaa !42
  %51 = getelementptr inbounds nuw i8, ptr %44, i64 12
  store i32 0, ptr %51, align 4, !tbaa !44
  %52 = load ptr, ptr %44, align 8, !tbaa !7
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull align 8 dereferenceable(16) %44) #25, !inline_history !126
  %55 = load ptr, ptr %44, align 8, !tbaa !7
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 24
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull align 8 dereferenceable(16) %44) #25, !inline_history !126
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ct, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !126
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

58:                                               ; preds = %45
  %59 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i63 = icmp eq i8 %59, 0
  br i1 %.not.i.i.i63, label %62, label %60

bb.an:                                            ; preds = %bb.al
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i63.a = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i63.a, label %bb.ap, label %bb.ao

60:                                               ; preds = %58
  %61 = add nsw i32 %49, -1
  store i32 %61, ptr %46, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.ao:                                            ; preds = %bb.an
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.a

62:                                               ; preds = %58
  %63 = atomicrmw volatile add ptr %46, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.ap:                                            ; preds = %bb.an
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %62, %60
  %.0.i.i.i.i65 = phi i32 [ %49, %60 ], [ %63, %62 ]
  %64 = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %64, label %65, label %bb.ar, !prof !47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.a: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i.i65.a = phi i32 [ %i.dg, %bb.ap ], [ %i.cw, %bb.ao ]
  %i.dh = icmp eq i32 %.0.i.i.i.i65.a, 1
  br i1 %i.dh, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, !prof !47

65:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %44) #25
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.a, %bb.aq, %bb.am, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %66

bb.ar:                                            ; preds = %65, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %50, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.di = load ptr, ptr %9, align 8, !tbaa !62    ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %69, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, !prof !76

66:                                               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, %bb.n
  %67 = load ptr, ptr %9, align 8, !tbaa !62      ; 2 uses
  %68 = icmp eq ptr %67, null
  br i1 %68, label %bb.as, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, !prof !76

69:                                               ; preds = %bb.ar
  %70 = load ptr, ptr %i.q, align 8, !tbaa !15    ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %70, null
  br i1 %.not.i.i.i.i.i68, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, label %bb.at

bb.as:                                            ; preds = %66
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !15  ; 2 uses
  %.not.i.i.i.i.i68.a = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i68.a, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a, label %bb.at

bb.at:                                            ; preds = %bb.as, %69
  %71 = phi ptr [ %i.dk, %bb.as ], [ %70, %69 ]   ; 7 uses
  %.235188 = phi i32 [ 1, %bb.as ], [ %., %69 ]   ; 2 uses
  %.339184 = phi i64 [ %.137, %bb.as ], [ %i.bq, %69 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dl, align 8, !tbaa !42
  %i.dp = getelementptr inbounds nuw i8, ptr %71, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !44
  %i.dq = load ptr, ptr %71, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %71) #25, !inline_history !125
  %i.dt = load ptr, ptr %71, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %71) #25, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72

bb.av:                                            ; preds = %bb.at
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i69 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i69, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70

bb.ax:                                            ; preds = %bb.av
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i71 = phi i32 [ %i.do, %bb.aw ], [ %i.dy, %bb.ax ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i.i71, 1
  br i1 %i.dz, label %bb.ay, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72, !prof !47

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %71) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70, %bb.au
  %.pr.i73.pr = load ptr, ptr %9, align 8, !tbaa !62 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.pr.i73.pr, null
  br i1 %.not.i.i74, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, !prof !96

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a: ; preds = %bb.as
  %.pr.i73.pr.a = load ptr, ptr %9, align 8, !tbaa !62 ; 2 uses
  %.not.i.i74.a = icmp eq ptr %.pr.i73.pr.a, null
  br i1 %.not.i.i74.a, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75.jt1, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, !prof !96

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a, %66, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72, %bb.ar
  %.235186 = phi i32 [ 1, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a ], [ 1, %66 ], [ %.235188, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72 ], [ %., %bb.ar ] ; 2 uses
  %.339182 = phi i64 [ %.137, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a ], [ %.137, %66 ], [ %.339184, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72 ], [ %i.bq, %bb.ar ] ; 2 uses
  %72 = phi ptr [ %.pr.i73.pr.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a ], [ %67, %66 ], [ %.pr.i73.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72 ], [ %i.di, %bb.ar ]
  %i.ea = getelementptr inbounds nuw i8, ptr %72, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !67, !range !57, !noundef !58
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, label %bb.az

bb.az:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75: ; preds = %69, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, %bb.az
  %.235189 = phi i32 [ %.235188, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72 ], [ %.235186, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67 ], [ %.235186, %bb.az ], [ %., %69 ]
  %.339185 = phi i64 [ %.339184, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72 ], [ %.339182, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67 ], [ %.339182, %bb.az ], [ %i.bq, %69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  switch i32 %.235189, label %.loopexit142 [
    i32 0, label %bb.k
    i32 7, label %bb.bb
  ], !llvm.loop !127

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75.jt1: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit142

bb.ba:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.df

bb.bb:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, %bb.k
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !121 ; 2 uses
  %i.ee = load ptr, ptr %8, align 8, !tbaa !129   ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %.not150 = icmp eq i64 %i.eh, 16
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, %bb.bb
  %.0137.lcssa = phi i64 [ 0, %bb.bb ], [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.0.lcssa = phi i64 [ %2, %bb.bb ], [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.026.lcssa = phi ptr [ %3, %bb.bb ], [ %i.fm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.lcssa = phi ptr [ %i.ed, %bb.bb ], [ %i.gf, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ei = getelementptr inbounds i8, ptr %.lcssa, i64 -16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !102 ; 6 uses
  store ptr %i.ej, ptr %12, align 8, !tbaa !102
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %.lcssa, i64 -8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !15 ; 3 uses
  store ptr null, ptr %i.el, align 8, !tbaa !15
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !15
  store ptr null, ptr %i.ei, align 8, !tbaa !102
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !103
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.0.lcssa, i64 %i.eo) ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 9
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !86, !range !57, !noundef !58
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = select i1 %i.er, ptr %i.et, ptr null, !prof !76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.026.lcssa, ptr align 1 %i.eu, i64 %.sroa.speculated, i1 false)
  %i.ev = add nsw i64 %.sroa.speculated, %.0137.lcssa ; 2 uses
  %i.ew = load i64, ptr %i.en, align 8, !tbaa !103 ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, %.sroa.speculated
  br i1 %i.ex, label %bb.bi, label %bb.cl

.lr.ph:                                           ; preds = %bb.bb, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80
  %i.ey = phi ptr [ %i.gg, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %i.ee, %bb.bb ]
  %.025146 = phi i64 [ %i.ge, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ 0, %bb.bb ] ; 2 uses
  %.026145 = phi ptr [ %i.fm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %3, %bb.bb ] ; 2 uses
  %.0144 = phi i64 [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %2, %bb.bb ]
  %.0137143 = phi i64 [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ 0, %bb.bb ]
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %.025146 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !102 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15 ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !86, !range !57, !noundef !58
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = select i1 %i.ff, ptr %i.fh, ptr null, !prof !76
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.026145, ptr align 1 %i.fi, i64 %i.fk, i1 false)
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !103 ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.026145, i64 %i.fl ; 2 uses
  %i.fn = sub nsw i64 %.0144, %i.fl               ; 2 uses
  %i.fo = add nsw i64 %i.fl, %.0137143            ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i76, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.fp, align 8, !tbaa !42
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !44
  %i.fu = load ptr, ptr %i.fc, align 8, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #25, !inline_history !126
  %i.fx = load ptr, ptr %i.fc, align 8, !tbaa !7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #25, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

bb.be:                                            ; preds = %bb.bc
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i77 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i77, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

bb.bg:                                            ; preds = %bb.be
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i79 = phi i32 [ %i.fs, %bb.bf ], [ %i.gc, %bb.bg ]
  %i.gd = icmp eq i32 %.0.i.i.i.i79, 1
  br i1 %i.gd, label %bb.bh, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, !prof !47

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80: ; preds = %.lr.ph, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78, %bb.bh
  %i.ge = add nuw i64 %.025146, 1                 ; 2 uses
  %i.gf = load ptr, ptr %i.t, align 8, !tbaa !121 ; 2 uses
  %i.gg = load ptr, ptr %8, align 8, !tbaa !129   ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 4
  %i.gl = add nsw i64 %i.gk, -1
  %i.gm = icmp ult i64 %i.ge, %i.gl
  br i1 %i.gm, label %.lr.ph, label %._crit_edge, !llvm.loop !130

bb.bi:                                            ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.ek, align 8, !tbaa !15
  store ptr null, ptr %12, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ej, ptr %5, align 8, !tbaa !102, !noalias !131
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.gn, align 8, !tbaa !15, !noalias !131
  store ptr %i.em, ptr %i.go, align 8, !tbaa !15, !noalias !131
  store ptr null, ptr %13, align 8, !tbaa !102, !noalias !131
  %i.gp = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %.noexc.i unwind label %bb.bx, !noalias !131 ; 6 uses

.noexc.i:                                         ; preds = %bb.bi
  %i.gq = sub nsw i64 %i.ew, %.sroa.speculated
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i32 1, ptr %i.gr, align 8, !tbaa !42, !noalias !134
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 1, ptr %i.gs, align 4, !tbaa !44, !noalias !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gp, align 8, !tbaa !7, !noalias !134
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !134
  store ptr %i.ej, ptr %4, align 8, !tbaa !102, !noalias !134
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.go, align 8, !tbaa !15, !noalias !134
  store ptr %i.em, ptr %i.gu, align 8, !tbaa !15, !noalias !134
  store ptr null, ptr %5, align 8, !tbaa !102, !noalias !134
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.gt, ptr noundef nonnull %4, i64 noundef %.sroa.speculated, i64 noundef %i.gq)
          to label %bb.bj unwind label %.body.i109, !noalias !134

bb.bj:                                            ; preds = %.noexc.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !15, !noalias !134 ; 8 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i110, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8, !noalias !134 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.gw, align 8, !tbaa !42, !noalias !134
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !44, !noalias !134
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !7, !noalias !134
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !134
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #25, !noalias !134, !inline_history !139
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !7, !noalias !134
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !134
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #25, !noalias !134, !inline_history !139
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !134
  %.not.i.i.i.i.i111 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i.i111, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !3, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112

bb.bo:                                            ; preds = %bb.bm
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112

end_hunk_0
begin_hunk_1_@_ZN5arrow2io20TransformInputStream4ReadElPv:bb.a
  store i32 0, ptr %i.ih, align 8, !tbaa !42
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store i32 0, ptr %i.il, align 4, !tbaa !44
  %i.im = load ptr, ptr %i.ig, align 8, !tbaa !7
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #25, !inline_history !120
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #25, !inline_history !120
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

bb.cb:                                            ; preds = %bb.bz
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i84 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i.i84, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.it = add nsw i32 %i.ik, -1
  store i32 %i.it, ptr %i.ih, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i85

bb.cd:                                            ; preds = %bb.cb
  %i.iu = atomicrmw volatile add ptr %i.ih, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i85: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i86 = phi i32 [ %i.ik, %bb.cc ], [ %i.iu, %bb.cd ]
  %i.iv = icmp eq i32 %.0.i.i.i.i.i.i86, 1
  br i1 %i.iv, label %bb.ce, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, !prof !47

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i85, %bb.ca, %bb.by
  %i.iw = load ptr, ptr %i.gn, align 8, !tbaa !15 ; 8 uses
  %.not.i.i93 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i93, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.ix, align 8, !tbaa !42
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !44
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !7
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #25, !inline_history !126
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !7
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #25, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

bb.ch:                                            ; preds = %bb.cf
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i94 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i94, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

bb.cj:                                            ; preds = %bb.ch
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i96 = phi i32 [ %i.ja, %bb.ci ], [ %i.jk, %bb.cj ]
  %i.jl = icmp eq i32 %.0.i.i.i.i96, 1
  br i1 %i.jl, label %bb.ck, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, !prof !47

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

bb.cl:                                            ; preds = %._crit_edge
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  store ptr null, ptr %i.jn, align 8, !tbaa !41
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 56 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !15 ; 8 uses
  store ptr null, ptr %i.jo, align 8, !tbaa !15
  %.not.i.i.i98 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i98, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.jq, align 8, !tbaa !42
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !44
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !7
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #25, !inline_history !141
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !7
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #25, !inline_history !141
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

bb.co:                                            ; preds = %bb.cm
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i99 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i99, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100

bb.cq:                                            ; preds = %bb.co
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i101 = phi i32 [ %i.jt, %bb.cp ], [ %i.kd, %bb.cq ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i101, 1
  br i1 %i.ke, label %bb.cr, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, !prof !47

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97: ; preds = %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100, %bb.cn, %bb.cl, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95, %bb.cg, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92
  %i.kf = load ptr, ptr %i.ek, align 8, !tbaa !15 ; 8 uses
  %.not.i.i102 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i102, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.kg, align 8, !tbaa !42
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !44
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !7
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #25, !inline_history !126
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #25, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106

bb.cu:                                            ; preds = %bb.cs
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i103 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i103, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ks = add nsw i32 %i.kj, -1
  store i32 %i.ks, ptr %i.kg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

bb.cw:                                            ; preds = %bb.cu
  %i.kt = atomicrmw volatile add ptr %i.kg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i105 = phi i32 [ %i.kj, %bb.cv ], [ %i.kt, %bb.cw ]
  %i.ku = icmp eq i32 %.0.i.i.i.i105, 1
  br i1 %i.ku, label %bb.cx, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106, !prof !47

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, %bb.ct, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 64 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !142
  %i.ky = add nsw i64 %i.kx, %i.ev
  store i64 %i.ky, ptr %i.kw, align 8, !tbaa !142
  store ptr null, ptr %0, align 8, !tbaa !62
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ev, ptr %i.kz, align 8, !tbaa !92
  br label %.loopexit142

.loopexit142:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75.jt1, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106
  %i.la = load ptr, ptr %8, align 8, !tbaa !129   ; 3 uses
  %i.lb = load ptr, ptr %i.t, align 8, !tbaa !121 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.la, %i.lb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit142, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lt, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.la, %.loopexit142 ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !15 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 4 uses
  %i.lf = load atomic i64, ptr %i.le acquire, align 8 ; 2 uses
  %i.lg = icmp eq i64 %i.lf, 4294967297
  %i.lh = trunc i64 %i.lf to i32                  ; 2 uses
  br i1 %i.lg, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.le, align 8, !tbaa !42
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  store i32 0, ptr %i.li, align 4, !tbaa !44
  %i.lj = load ptr, ptr %i.ld, align 8, !tbaa !7
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.ld) #25, !inline_history !143
  %i.lm = load ptr, ptr %i.ld, align 8, !tbaa !7
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(16) %i.ld) #25, !inline_history !143
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.lp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lq = add nsw i32 %i.lh, -1
  store i32 %i.lq, ptr %i.le, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.lr = atomicrmw volatile add ptr %i.le, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lh, %bb.db ], [ %i.lr, %bb.dc ]
  %i.ls = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ls, label %bb.dd, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !47

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ld) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.cz, %.lr.ph.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.lt, %i.lb
  br i1 %.not.i.i.i107, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !144

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i108 = load ptr, ptr %8, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.loopexit142
  %i.lu = phi ptr [ %.pr.i108, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.la, %.loopexit142 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.de

bb.de:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.lv = load ptr, ptr %i.u, align 8, !tbaa !124
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.ly) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.dg

bb.df:                                            ; preds = %bb.o, %bb.ba, %.body.i, %bb.i
  %.pn45 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.n, %bb.i ], [ %.pn.pn, %bb.ba ], [ %i.ah, %bb.o ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  resume { ptr, i32 } %.pn45

bb.dg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit51.thread, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !62
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !62
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !47

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !97     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !97     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !97     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
end_hunk_1
