inline.NumInlined: 2462
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5arrow8internal16PlatformFilename4RealEv:bb.a
          cleanup
  %i.bs = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bc
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.r
  %i.bu = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bw = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ag
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.by = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
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
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #39
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
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #36
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.t, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
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
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !12     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.m = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #41
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
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #39
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
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
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
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8, !noalias !117
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !noalias !117
  %.not5.i = icmp eq i64 %1, 0
  br i1 %.not5.i, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %1) #36, !noalias !117 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d
  %.not.i = icmp eq i64 %i.e, -1
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !120
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
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #39
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
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !120
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.h

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !120
  %.pr = load ptr, ptr %6, align 8, !tbaa !97     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %.pr, ptr %5, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.q = icmp eq ptr %.pr, null
  br i1 %i.q, label %bb.h, label %bb.e, !prof !125

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  %.pr28 = load ptr, ptr %5, align 8, !tbaa !97   ; 2 uses
  %.not.i17 = icmp eq ptr %.pr28, null
  br i1 %.not.i17, label %_ZN5arrow6StatusD2Ev.exit18.thread, label %bb.f, !prof !126

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pr28, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !101, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit18.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  br label %_ZN5arrow6StatusD2Ev.exit18.thread

_ZN5arrow6StatusD2Ev.exit18.thread:               ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.r

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114StringToNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %7, i64 %1, ptr %2)
  %i.u = load ptr, ptr %7, align 8, !tbaa !97
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #36
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !7, !alias.scope !133
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
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
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit: ; preds = %bb.l
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #36
  %i.ba = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.at
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !15
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.be = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.x
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.x, align 8, !tbaa !15
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.at
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.n
  %i.bl = load i64, ptr %i.at, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.bn = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.x
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bp = load i64, ptr %i.x, align 8, !tbaa !15
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.i
  %i.br = load ptr, ptr %7, align 8, !tbaa !97    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.p, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !100

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.p
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #39
  %.pr.pre.i = load ptr, ptr %7, align 8, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !116

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %bb.o
  %i.bz = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %i.br, %bb.o ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !101, !range !106, !noundef !107
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #36
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.p, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit18.thread, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_114StringToNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  %i.b = icmp eq ptr %2, null
  %i.c = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #37
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %1, 1                        ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !11

.noexc9.i.i.i:                                    ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !12
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !15
  store i8 %i.j, ptr %i.i, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %1, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.l, align 1, !tbaa !15
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !7
  %i.o = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.o, ptr %i.m, align 8, !tbaa !12
  %i.t = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.t, ptr %i.n, align 8, !tbaa !15
  %.pre = load i64, ptr %i.k, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.u = phi i64 [ %i.q, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename4JoinERKS1_(ptr dead_on_unwind noalias writable sret(%"class.arrow::internal::PlatformFilename") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"struct.arrow::internal::PlatformFilename::Impl", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.arrow::internal::PlatformFilename::Impl", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.pre, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12, !noalias !134
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !134
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %.pre, i64 noundef %i.d, ptr noundef %i.k, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !134
  %i.n = load ptr, ptr %6, align 8, !tbaa !12     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16   ; 3 uses
  %i.t = add nuw nsw i64 %i.s, 1
  store ptr %i.o, ptr %6, align 8, !tbaa !12
  store i64 0, ptr %i.r, align 8, !tbaa !16
  %i.u = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.o, align 8, !tbaa !15
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  store ptr %i.o, ptr %6, align 8, !tbaa !12
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  store i64 %i.v, ptr %i.q, align 8, !tbaa !15, !alias.scope !137
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i
  %i.w = phi i64 [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.sink.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store i8 0, ptr %i.o, align 8, !tbaa !15
  store ptr %.sink.i, ptr %5, align 8, !tbaa !7, !alias.scope !142
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !16, !alias.scope !137
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENS1_4ImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %5, align 8, !tbaa !12     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #39
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit
  %i.af = load i64, ptr %i.o, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #39
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.an = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.o
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1, !tbaa !15, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !144
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %.pre, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12, !noalias !147 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16, !noalias !147 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16, !noalias !147 ; 5 uses
  %i.ax = sub i64 9223372036854775807, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.au
  br i1 %i.ay, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #37
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.az = add i64 %i.aw, %i.au                    ; 3 uses
  %i.ba = load ptr, ptr %9, align 8, !tbaa !12, !noalias !147 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bd = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !15, !noalias !147
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bf = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.az, %i.bf
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.au, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = load i8, ptr %i.as, align 1, !tbaa !15, !noalias !147
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !15, !noalias !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.as, i64 %i.au, i1 false), !noalias !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.aw, i64 noundef 0, ptr noundef %i.as, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  store i64 %i.az, ptr %i.av, align 8, !tbaa !16, !noalias !147
  %i.bi = load ptr, ptr %9, align 8, !tbaa !12, !noalias !147
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !15, !noalias !147
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.bk, ptr %8, align 8, !tbaa !7, !alias.scope !147
  %i.bl = load ptr, ptr %9, align 8, !tbaa !12, !noalias !147 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.bb
  br i1 %i.bm, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !16, !noalias !147 ; 4 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bp, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bq, align 8, !tbaa !16, !alias.scope !147
  store ptr %i.bb, ptr %9, align 8, !tbaa !12, !noalias !147
  store i64 0, ptr %i.av, align 8, !tbaa !16, !noalias !147
  store i8 0, ptr %i.bb, align 8, !tbaa !15, !noalias !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bs = load <2 x i64>, ptr %i.av, align 8, !tbaa !15, !noalias !147
  %.pre.i20 = load i64, ptr %i.av, align 8, !tbaa !16, !noalias !147 ; 2 uses
  store <2 x i64> %i.bs, ptr %i.br, align 8, !tbaa !15, !alias.scope !147
  store ptr %i.bb, ptr %9, align 8, !tbaa !12, !noalias !147
  store i64 0, ptr %i.av, align 8, !tbaa !16, !noalias !147
  store i8 0, ptr %i.bb, align 8, !tbaa !15, !noalias !147
  %i.bt = icmp eq ptr %i.bl, %i.bk
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27: ; preds = %.thread, %bb.n
  %i.bu = phi ptr [ %i.bq, %.thread ], [ %i.br, %bb.n ]
  %i.bv = phi i64 [ %i.bn, %.thread ], [ %.pre.i20, %bb.n ] ; 3 uses
  %i.bw = add nuw nsw i64 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.by = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bw, i1 false)
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i23: ; preds = %bb.n
  %i.bz = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !15, !alias.scope !150
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27
  %i.cb = phi ptr [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i23 ]
  %i.cc = phi i64 [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27 ], [ %.pre.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i23 ]
  %.sink.i26 = phi ptr [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i27 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i23 ]
  store ptr %i.bk, ptr %8, align 8, !tbaa !12
  store i64 0, ptr %i.cb, align 8, !tbaa !16
  store i8 0, ptr %i.bk, align 8, !tbaa !15
  store ptr %.sink.i26, ptr %7, align 8, !tbaa !7, !alias.scope !155
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !16, !alias.scope !150
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENS1_4ImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.p
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #39
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit31

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit31: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  %i.cj = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bk
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit31
  %i.cl = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.cn = load ptr, ptr %9, align 8, !tbaa !12    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bb
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cp = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.m, %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.r:                                             ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.r
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #39
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
  %i.cy = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bk
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40
  %i.da = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.q ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.cs, %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40 ]
  %i.dc = load ptr, ptr %9, align 8, !tbaa !12    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !15
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn10.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.ah, %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15 ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename4JoinESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2, ptr nofree readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 7 uses
  %7 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !7
  %i.b = icmp eq ptr %3, null
  %i.c = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #37
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %2, 0
  br i1 %i.e, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %2, 1                        ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !11

.noexc9.i.i.i:                                    ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %.noexc9.i.i.i
  unreachable

end_hunk_0
