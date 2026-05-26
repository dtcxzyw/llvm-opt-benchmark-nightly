inline.NumInlined: 2454
inline.NumDeleted: 989
begin_hunk_0_@_ZNK5arrow8internal16PlatformFilename4RealEv:bb.a
  %i.bw = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ag
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.by = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.br

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.m
  %i.ca = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.t, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !100

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.t
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #40
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !97 ; 2 uses
  %.not.i.i17 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i17, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !116

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %bb.s
  %i.ci = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %i.ca, %bb.s ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !101, !range !106, !noundef !107
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #37
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.t, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !97
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !97
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !11

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !12     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.m = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #40
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !97 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !116

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !101, !range !106, !noundef !107
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #37
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal16PlatformFilename10FromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Result.10", align 8  ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8, !noalias !117
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !noalias !117
  %.not3.i = icmp eq i64 %1, 0
  br i1 %.not3.i, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %1) #37, !noalias !117 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d
  %.not.i = icmp eq i64 %i.e, -1
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !120
  call void @_ZN5arrow8internal12JoinToStringIJRA29_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(29) @.str.47, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(2) @.str.1), !noalias !120
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !12, !noalias !120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15, !noalias !120
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !12, !noalias !120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !120
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !120
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.h

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !120
  %.pr = load ptr, ptr %6, align 8, !tbaa !97     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %.pr, ptr %5, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.q = icmp eq ptr %.pr, null
  br i1 %i.q, label %bb.h, label %bb.e, !prof !125

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #37
  %.pr28 = load ptr, ptr %5, align 8, !tbaa !97   ; 2 uses
  %.not.i17 = icmp eq ptr %.pr28, null
  br i1 %.not.i17, label %_ZN5arrow6StatusD2Ev.exit18.thread, label %bb.f, !prof !126

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pr28, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !101, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit18.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #37
  br label %_ZN5arrow6StatusD2Ev.exit18.thread

_ZN5arrow6StatusD2Ev.exit18.thread:               ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.r

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114StringToNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %7, i64 %1, ptr %2)
  %i.u = load ptr, ptr %7, align 8, !tbaa !97
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !12, !noalias !133 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread, label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread: ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16, !noalias !133 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !16, !alias.scope !133
  store ptr %i.z, ptr %i.w, align 8, !tbaa !12, !noalias !133
  store i64 0, ptr %i.af, align 8, !tbaa !16, !noalias !133
  store i8 0, ptr %i.z, align 8, !tbaa !15, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !7
  br label %bb.k

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit: ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ak = load <2 x i64>, ptr %.phi.trans.insert.i.i, align 8, !tbaa !15, !noalias !133
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !16, !noalias !133 ; 2 uses
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !15, !alias.scope !133
  store ptr %i.z, ptr %i.w, align 8, !tbaa !12, !noalias !133
  store i64 0, ptr %i.ai, align 8, !tbaa !16, !noalias !133
  store i8 0, ptr %i.z, align 8, !tbaa !15, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.al, ptr %10, align 8, !tbaa !7
  %i.am = icmp eq ptr %i.y, %i.x
  br i1 %i.am, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.k:                                             ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  %i.an = phi ptr [ %i.ah, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %i.al, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ] ; 2 uses
  %i.ao = phi ptr [ %i.ag, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %i.aj, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ]
  %i.ap = phi i64 [ %i.ac, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %.pre.i.i, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ] ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  store ptr %i.y, ptr %10, align 8, !tbaa !12
  %i.as = load i64, ptr %i.x, align 8, !tbaa !15
  store i64 %i.as, ptr %i.al, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.at = phi ptr [ %i.an, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 4 uses
  %i.au = phi ptr [ %i.ao, %bb.k ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.av = phi i64 [ %i.ap, %bb.k ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !16
  store ptr %i.x, ptr %8, align 8, !tbaa !12
  store i64 0, ptr %i.au, align 8, !tbaa !16
  store i8 0, ptr %i.x, align 8, !tbaa !15
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %10)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #42
  unreachable

_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit: ; preds = %bb.l
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  %i.ba = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.at
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !15
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.be = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.x
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.x, align 8, !tbaa !15
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #40
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl4WaitEv:bb.a
  %.01235 = phi i64 [ 8, %bb.e ], [ %.113, %bb.p ] ; 3 uses
  %i.i = load atomic i32, ptr %i.b seq_cst, align 4
  %i.j = call i64 @read(i32 noundef %i.i, ptr noundef %.036, i64 noundef %.01235) ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__errno_location() #41    ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.p, label %bb.h, !llvm.loop !1028

bb.h:                                             ; preds = %bb.g
  %i.o = load atomic i32, ptr %i.b seq_cst, align 4
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZN5arrow6Status8FromArgsIJRA17_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(17) @.str.88)
  call void @_ZN5arrow6ResultImEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #37
  %i.q = load ptr, ptr %3, align 8, !tbaa !97     ; 2 uses
  %.not.i17 = icmp eq ptr %i.q, null
  br i1 %.not.i17, label %_ZN5arrow6StatusD2Ev.exit18, label %bb.j, !prof !100

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !101, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #37
  br label %_ZN5arrow6StatusD2Ev.exit18

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.thread

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.u = load i32, ptr %i.l, align 4, !tbaa !3
  call void @_ZN5arrow8internal15StatusFromErrnoIJRA30_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i32 noundef %i.u, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(30) @.str.87)
  call void @_ZN5arrow6ResultImEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #37
  %i.v = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not.i19 = icmp eq ptr %i.v, null
  br i1 %.not.i19, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.m, !prof !100

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !101, !range !106, !noundef !107
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #37
  br label %_ZN5arrow6StatusD2Ev.exit20

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.thread

bb.o:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.036, i64 %i.j
  %i.aa = sub nsw i64 %.01235, %i.j
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o
  %.113 = phi i64 [ %i.aa, %bb.o ], [ %.01235, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %i.z, %bb.o ], [ %.036, %bb.g ]
  %i.ab = icmp sgt i64 %.113, 0
  br i1 %i.ab, label %bb.f, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !392 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 5804561806345822987
  br i1 %i.ad, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 4, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i64, ptr %i.a, align 8, !tbaa !392
  br label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ah = atomicrmw xchg ptr %i.b, i32 -1 seq_cst, align 4, !noalias !1029 ; 2 uses
  %.not.i21 = icmp eq i32 %i.ah, -1
  br i1 %.not.i21, label %_ZN5arrow6StatusD2Ev.exit23.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = tail call i32 @close(i32 noundef %i.ah), !noalias !1032
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %_ZN5arrow6StatusD2Ev.exit23, label %_ZN5arrow6StatusD2Ev.exit23.thread

_ZN5arrow6StatusD2Ev.exit23.thread:               ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN5arrow6StatusD2Ev.exit29

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.t
  call void @_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(19) @.str.15)
  %.pr = load ptr, ptr %6, align 8, !tbaa !97     ; 2 uses
  store ptr %.pr, ptr %5, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.ak = icmp eq ptr %.pr, null
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit29, label %bb.u, !prof !1035

bb.u:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23
  call void @_ZN5arrow6ResultImEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #37
  %i.al = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %.not.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.v, !prof !100

bb.v:                                             ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !101, !range !106, !noundef !107
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #37
  br label %_ZN5arrow6StatusD2Ev.exit25

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.thread

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %_ZN5arrow6StatusD2Ev.exit23, %_ZN5arrow6StatusD2Ev.exit23.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN5arrow6Status8FromArgsIJRA17_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(17) @.str.88)
  call void @_ZN5arrow6ResultImEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  %i.ap = load ptr, ptr %7, align 8, !tbaa !97    ; 2 uses
  %.not.i30 = icmp eq ptr %i.ap, null
  br i1 %.not.i30, label %_ZN5arrow6StatusD2Ev.exit31, label %bb.x, !prof !100

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !101, !range !106, !noundef !107
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5arrow6StatusD2Ev.exit31, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  br label %_ZN5arrow6StatusD2Ev.exit31

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit29, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.thread

bb.z:                                             ; preds = %._crit_edge, %bb.q
  %i.at = phi i64 [ %.pre, %._crit_edge ], [ %i.ac, %bb.q ]
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !392
  br label %.thread

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit20, %_ZN5arrow6StatusD2Ev.exit18, %_ZN5arrow6StatusD2Ev.exit25, %bb.z, %_ZN5arrow6StatusD2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define internal void @_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl4SendEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #32 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !402, !range !106, !noundef !107
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #41    ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !tbaa !392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 8
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %select.unfold.i
  %.01220.i = phi i64 [ %.1.i, %select.unfold.i ], [ 8, %bb.b ] ; 3 uses
  %.01319.i = phi ptr [ %.114.i, %select.unfold.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.k = load atomic i32, ptr %i.h seq_cst, align 8
  %i.l = call i64 @write(i32 noundef %i.k, ptr noundef %.01319.i, i64 noundef %.01220.i) ; 3 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.n = load i32, ptr %i.f, align 4, !tbaa !3
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %select.unfold.i, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit, !llvm.loop !1036

bb.d:                                             ; preds = %.preheader.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01319.i, i64 %i.l
  %i.q = sub nsw i64 %.01220.i, %i.l
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %bb.c
  %.114.i = phi ptr [ %i.p, %bb.d ], [ %.01319.i, %bb.c ]
  %.1.i = phi i64 [ %i.q, %bb.d ], [ %.01220.i, %bb.c ] ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %.preheader.i, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit

_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit: ; preds = %bb.c, %select.unfold.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !3
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !392
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load atomic i32, ptr %i.s seq_cst, align 8
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit13, label %.preheader.i3

.preheader.i3:                                    ; preds = %bb.e, %select.unfold.i6
  %.01220.i4 = phi i64 [ %.1.i8, %select.unfold.i6 ], [ 8, %bb.e ] ; 3 uses
  %.01319.i5 = phi ptr [ %.114.i7, %select.unfold.i6 ], [ %i.a, %bb.e ] ; 3 uses
  %i.v = load atomic i32, ptr %i.s seq_cst, align 8
  %i.w = call i64 @write(i32 noundef %i.v, ptr noundef %.01319.i5, i64 noundef %.01220.i4) ; 3 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.i3
  %i.y = tail call ptr @__errno_location() #41
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %select.unfold.i6, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit13, !llvm.loop !1036

bb.g:                                             ; preds = %.preheader.i3
  %i.ab = getelementptr inbounds nuw i8, ptr %.01319.i5, i64 %i.w
  %i.ac = sub nsw i64 %.01220.i4, %i.w
  br label %select.unfold.i6

select.unfold.i6:                                 ; preds = %bb.g, %bb.f
  %.114.i7 = phi ptr [ %i.ab, %bb.g ], [ %.01319.i5, %bb.f ]
  %.1.i8 = phi i64 [ %i.ac, %bb.g ], [ %.01220.i4, %bb.f ] ; 2 uses
  %i.ad = icmp sgt i64 %.1.i8, 0
  br i1 %i.ad, label %.preheader.i3, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit13

_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit13: ; preds = %bb.f, %select.unfold.i6, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit13, %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl8ShutdownEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  store atomic i8 1, ptr %i.b seq_cst, align 4
  %i.c = tail call ptr @__errno_location() #41    ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 5804561806345822987, ptr %i.a, align 8, !tbaa !392
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.e = load atomic i32, ptr %i.d seq_cst, align 8
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread, label %.preheader.i

_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %thread-pre-split

.preheader.i:                                     ; preds = %bb.a, %select.unfold.i
  %.01220.i = phi i64 [ %.1.i, %select.unfold.i ], [ 8, %bb.a ] ; 3 uses
  %.01319.i = phi ptr [ %.114.i, %select.unfold.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load atomic i32, ptr %i.d seq_cst, align 8
  %i.h = call i64 @write(i32 noundef %i.g, ptr noundef %.01319.i, i64 noundef %.01220.i) ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i
  %i.j = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %select.unfold.i, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread2, !llvm.loop !1036

_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread2: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01319.i, i64 %i.h
  %i.m = sub nsw i64 %.01220.i, %i.h
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.c, %bb.b
  %.114.i = phi ptr [ %i.l, %bb.c ], [ %.01319.i, %bb.b ]
  %.1.i = phi i64 [ %i.m, %bb.c ], [ %.01220.i, %bb.b ] ; 3 uses
  %i.n = icmp sgt i64 %.1.i, 0
  br i1 %i.n, label %.preheader.i, label %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit

_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit: ; preds = %select.unfold.i
  %i.o = icmp eq i64 %.1.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.o, label %bb.h, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit, %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread
  %.pr = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread2
  %i.p = phi i32 [ %.pr, %thread-pre-split ], [ %i.j, %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit.thread2 ] ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5arrow8internal15StatusFromErrnoIJRA29_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.p, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.89)
  br label %_ZN5arrow8internal14FileDescriptor5CloseEv.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load atomic i32, ptr %i.d seq_cst, align 8
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 9, ptr noundef nonnull align 1 dereferenceable(29) @.str.89)
  br label %_ZN5arrow8internal14FileDescriptor5CloseEv.exit

bb.h:                                             ; preds = %bb.f, %_ZN5arrow8internal12_GLOBAL__N_112SelfPipeImpl6DoSendEm.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.s = atomicrmw xchg ptr %i.d, i32 -1 seq_cst, align 4, !noalias !1037 ; 2 uses
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.t = tail call i32 @close(i32 noundef %i.s), !noalias !1043
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(19) @.str.15)
  br label %_ZN5arrow8internal14FileDescriptor5CloseEv.exit

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !97, !alias.scope !1044
  br label %_ZN5arrow8internal14FileDescriptor5CloseEv.exit

bb.l:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !97, !alias.scope !1047
  br label %_ZN5arrow8internal14FileDescriptor5CloseEv.exit

_ZN5arrow8internal14FileDescriptor5CloseEv.exit:  ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultImEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !97
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !97
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !11

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !12     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.m = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA17_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(17) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !1050
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1050
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !596, !noalias !1050, !nonnull !107, !align !606
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %2) #37, !noalias !1050
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1050 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1050
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1050
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA17_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
end_hunk_1
