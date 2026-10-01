Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OptionValueArray?download=true
inline.NumInlined: 774
inline.NumDeleted: 412
begin_hunk_0_@_ZN12lldb_private16OptionValueArray18SetValueFromStringEN4llvm9StringRefENS_19VarSetOperationTypeE:bb.a
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !52, !alias.scope !88
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !55, !alias.scope !88
  store i8 0, ptr %i.b, align 8, !tbaa !56, !alias.scope !88
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !88
  store i64 %3, ptr %i.a, align 8, !tbaa !57, !noalias !88
  %i.d = icmp ugt i64 %3, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !58, !alias.scope !88
  %i.f = load i64, ptr %i.a, align 8, !tbaa !57, !noalias !88
  store i64 %i.f, ptr %i.b, align 8, !tbaa !56, !alias.scope !88
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %2, align 1, !tbaa !56
  store i8 %i.h, ptr %i.g, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !57, !noalias !88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !55, !alias.scope !88
  %i.k = load ptr, ptr %6, align 8, !tbaa !58, !alias.scope !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !88
  %.pre = load ptr, ptr %6, align 8, !tbaa !58
  %.pre4 = load i64, ptr %i.j, align 8, !tbaa !55
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = phi i64 [ 0, %bb.b ], [ %.pre4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %i.n = phi ptr [ %i.b, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  call void @_ZN12lldb_private4ArgsC1EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %i.n, i64 %i.m) #15
  %i.o = load ptr, ptr %6, align 8, !tbaa !58     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !56
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN12lldb_private16OptionValueArray7SetArgsERKNS_4ArgsENS_19VarSetOperationTypeE(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %4)
  %i.t = call noundef zeroext i1 @_ZNK12lldb_private6Status7SuccessEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  br i1 %i.t, label %bb.g, label %_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %.not.i.i.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i, label %_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit, label %_ZNKSt8functionIFvvEEclEv.exit.i

_ZNKSt8functionIFvvEEclEv.exit.i:                 ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.w) #15, !inline_history !87
  br label %_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit

_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit: ; preds = %_ZNKSt8functionIFvvEEclEv.exit.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN12lldb_private4ArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

declare void @_ZN12lldb_private4ArgsC1EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private16OptionValueArray7SetArgsERKNS_4ArgsENS_19VarSetOperationTypeE(ptr dead_on_unwind noalias nonnull writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %5 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %7 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %8 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %9 = alloca %"class.std::vector.21", align 8    ; 11 uses
  %10 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %11 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %12 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %13 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %14 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %15 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %16 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %17 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !63     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4                   ; 6 uses
  switch i32 %3, label %.critedge [
    i32 7, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.aa
    i32 5, label %bb.ao
    i32 0, label %bb.ap
    i32 6, label %bb.bw
    i32 4, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE5clearEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %4, ptr noundef nonnull @.str.11)
  %i.k = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.l = icmp ugt i64 %i.j, 1
  br i1 %i.l, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 4
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = tail call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #15
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.x = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.v, i64 %.sroa.0.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15
  br i1 %i.x, label %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.y = load i64, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp ult i64 %i.y, 4294967296
  br i1 %.not.i.i, label %bb.g, label %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit.thread

_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit.thread: ; preds = %bb.f, %_ZN4llvm9StringRefC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = trunc nuw i64 %i.y to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.aa = icmp ugt i32 %i.z, %i.u
  br i1 %i.aa, label %.thread, label %.lr.ph215

.thread:                                          ; preds = %bb.g, %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ab = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0) #15
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %5, ptr noundef nonnull @.str.12, ptr noundef %i.ab, i32 noundef %i.u) #15
  %i.ac = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %5) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

.lr.ph215:                                        ; preds = %bb.g
  %i.ad = icmp eq i32 %3, 2
  %i.ae = zext i1 %i.ad to i32
  %spec.select = add i32 %i.z, %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %umax230 = call i64 @llvm.umax.i64(i64 %i.j, i64 2)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph215, %bb.y
  %.061214 = phi i1 [ false, %.lr.ph215 ], [ %.1, %bb.y ] ; 3 uses
  %.075213 = phi i64 [ 1, %.lr.ph215 ], [ %i.bw, %bb.y ] ; 2 uses
  %.1157212 = phi i32 [ %spec.select, %.lr.ph215 ], [ %i.bx, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ai = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %.075213) #15
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !33
  call void @_ZN12lldb_private11OptionValue33CreateValueFromCStringForTypeMaskEPKcjRNS_6StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  %i.ak = load ptr, ptr %6, align 16, !tbaa !44
  %.not190 = icmp eq ptr %i.ak, null
  br i1 %.not190, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  br i1 %i.al, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %.1157212 to i64               ; 2 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !36  ; 6 uses
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4
  %.not88 = icmp ugt i64 %i.as, %i.am
  br i1 %.not88, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !66
  %.not.i93 = icmp eq ptr %i.an, %i.at
  br i1 %.not.i93, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !67 ; 2 uses
  %i.av = load <2 x ptr>, ptr %6, align 16, !tbaa !68
  store <2 x ptr> %i.av, ptr %i.an, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !69
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !69
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i: ; preds = %bb.o, %bb.n, %bb.l
  %i.bb = phi ptr [ %i.an, %bb.l ], [ %i.an, %bb.n ], [ %.pre.i, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !36
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %bb.k
  call void @_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit

bb.q:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  %i.be = call ptr @_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EERS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit

bb.r:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %7, ptr noundef nonnull @.str.13)
  %i.bf = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %7) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.p, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i, %bb.q, %bb.i, %bb.r
  %cond7 = phi i1 [ false, %bb.r ], [ false, %bb.i ], [ true, %bb.q ], [ true, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i ], [ true, %bb.p ]
  %.1 = phi i1 [ true, %bb.r ], [ true, %bb.i ], [ %.061214, %bb.q ], [ %.061214, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i ], [ %.061214, %bb.p ] ; 2 uses
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !67 ; 8 uses
  %.not.i.i94 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i94, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bh, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !72
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #15, !inline_history !0
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #15, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.v ], [ %i.bu, %bb.w ]
  %i.bv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bv, label %bb.x, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE9push_backERKS3_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %cond7, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bw = add nuw i64 %.075213, 1                 ; 2 uses
  %i.bx = add i32 %.1157212, 1
  %exitcond231.not = icmp eq i64 %i.bw, %umax230
  br i1 %exitcond231.not, label %.critedge, label %bb.h, !llvm.loop !90

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %8, ptr noundef nonnull @.str.14)
  %i.by = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %8) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.critedge

bb.aa:                                            ; preds = %bb.a
  %.not84 = icmp eq ptr %i.e, %i.f
  br i1 %.not84, label %bb.an, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = lshr exact i64 %i.cf, 4
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph207, %bb.ak
  %i.ck = phi ptr [ null, %.lr.ph207 ], [ %i.di, %bb.ak ] ; 6 uses
  %i.cl = phi ptr [ null, %.lr.ph207 ], [ %i.dj, %bb.ak ] ; 3 uses
  %i.cm = phi ptr [ null, %.lr.ph207 ], [ %i.dk, %bb.ak ] ; 3 uses
  %.062206 = phi i64 [ 0, %.lr.ph207 ], [ %i.dl, %bb.ak ] ; 3 uses
  %i.cn = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %.062206) #15 ; 3 uses
  %.not.i95 = icmp eq ptr %i.cn, null
  br i1 %.not.i95, label %_ZN4llvm9StringRefC2EPKc.exit97, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #15
  br label %_ZN4llvm9StringRefC2EPKc.exit97

_ZN4llvm9StringRefC2EPKc.exit97:                  ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i96 = phi i64 [ %i.co, %bb.ac ], [ 0, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cp = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.cn, i64 %.sroa.0.0.i96, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #15
  br i1 %i.cp, label %_ZN4llvm10to_integerImEEbNS_9StringRefERT_j.exit, label %bb.ad

_ZN4llvm10to_integerImEEbNS_9StringRefERT_j.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.thread174

bb.ad:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit97
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.not85 = icmp ult i64 %i.cq, %i.ch
  br i1 %.not85, label %bb.ae, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.thread174

bb.ae:                                            ; preds = %bb.ad
  %i.cr = trunc nuw i64 %i.cq to i32              ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.cm, %i.cl
  br i1 %.not.i.i98, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !102
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ct = ptrtoint ptr %i.cl to i64
  %i.cu = ptrtoint ptr %i.ck to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 6 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775804
  br i1 %i.cw, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ag
  %i.cx = ashr exact i64 %i.cv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 2305843009213693951)
  %i.db = select i1 %i.cz, i64 2305843009213693951, i64 %i.da ; 3 uses
  %.not.i.i.i.i99 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i99)
  %i.dc = shl nuw nsw i64 %i.db, 2
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #18 ; 5 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store i32 %i.cr, ptr %i.de, align 4, !tbaa !69
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ai:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %i.ck, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ai, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cv) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dd, ptr %9, align 8, !tbaa !103
  store ptr %i.dg, ptr %i.ci, align 8, !tbaa !102
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db ; 2 uses
  store ptr %i.dh, ptr %i.cj, align 8, !tbaa !104
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.di = phi ptr [ %i.ck, %bb.af ], [ %i.dd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 5 uses
  %i.dj = phi ptr [ %i.cl, %bb.af ], [ %i.dh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.dk = phi ptr [ %i.cs, %bb.af ], [ %i.dg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.dl = add nuw i64 %.062206, 1                 ; 2 uses
  %exitcond229.not = icmp eq i64 %i.dl, %i.j
  br i1 %exitcond229.not, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.ab, !llvm.loop !91

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ak
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 2
  switch i64 %i.dp, label %bb.al [
    i64 0, label %thread-pre-split
    i64 1, label %thread-pre-split.thread
  ]

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4llvm4sortIRSt6vectorIiSaIiEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !75, !noalias !105 ; 2 uses
  %i.ds = load ptr, ptr %9, align 8, !tbaa !75, !noalias !106 ; 3 uses
  %.not189208 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not189208, label %thread-pre-split, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.al, %.lr.ph210
  %.sroa.0140.0209 = phi ptr [ %i.du, %.lr.ph210 ], [ %i.dr, %bb.al ]
  %i.dt = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.du = getelementptr inbounds i8, ptr %.sroa.0140.0209, i64 -4 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !69
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = call ptr @_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.dx) ; 0 uses
  %.not189 = icmp eq ptr %i.du, %i.ds
  br i1 %.not189, label %thread-pre-split.loopexit, label %.lr.ph210, !llvm.loop !96

thread-pre-split.thread:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.dz = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.ea = load i32, ptr %i.di, align 4, !tbaa !69
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = call ptr @_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.ec) ; 0 uses
  br label %bb.am

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.thread174: ; preds = %bb.ad, %_ZN4llvm10to_integerImEEbNS_9StringRefERT_j.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ee = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %.062206) #15
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %10, ptr noundef nonnull @.str.15, ptr noundef %i.ee) #15
  %i.ef = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %10) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %thread-pre-split

thread-pre-split.loopexit:                        ; preds = %.lr.ph210
  %.pr.pre = load ptr, ptr %9, align 8, !tbaa !103
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.thread174, %bb.al, %thread-pre-split.loopexit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.eg = phi ptr [ %i.di, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %i.ds, %bb.al ], [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.thread174 ] ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.eh = phi ptr [ %i.di, %thread-pre-split.thread ], [ %i.eg, %thread-pre-split ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !104
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %thread-pre-split, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.critedge

bb.an:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %11, ptr noundef nonnull @.str.16)
  %i.en = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %11) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.critedge

bb.ao:                                            ; preds = %bb.a
  %i.eo = load ptr, ptr %1, align 8, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(137) %1) #15
  br label %.critedge

bb.ap:                                            ; preds = %bb.a
  %i.er = icmp ugt i64 %i.j, 1
  br i1 %i.er, label %bb.aq, label %bb.bv

bb.aq:                                            ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !36
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !37
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = lshr exact i64 %i.ey, 4
  %i.fa = trunc i64 %i.ez to i32                  ; 3 uses
  %i.fb = tail call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0) #15 ; 3 uses
  %.not.i101 = icmp eq ptr %i.fb, null
  br i1 %.not.i101, label %_ZN4llvm9StringRefC2EPKc.exit103, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fb) #15
  br label %_ZN4llvm9StringRefC2EPKc.exit103

_ZN4llvm9StringRefC2EPKc.exit103:                 ; preds = %bb.aq, %bb.ar
  %.sroa.0.0.i102 = phi i64 [ %i.fc, %bb.ar ], [ 0, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.fd = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.fb, i64 %.sroa.0.0.i102, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  br i1 %i.fd, label %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105.thread, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit103
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %.not.i.i104 = icmp ult i64 %i.fe, 4294967296
  br i1 %.not.i.i104, label %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105, label %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105.thread

_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105.thread: ; preds = %bb.as, %_ZN4llvm9StringRefC2EPKc.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.thread179

_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105: ; preds = %bb.as
  %i.ff = trunc nuw i64 %i.fe to i32              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.fg = icmp ugt i32 %i.ff, %i.fa
  br i1 %i.fg, label %.thread179, label %.lr.ph205

.lr.ph205:                                        ; preds = %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %umax226 = call i64 @llvm.umax.i64(i64 %i.j, i64 2)
  br label %bb.at

.thread179:                                       ; preds = %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105, %_ZN4llvm10to_integerIjEEbNS_9StringRefERT_j.exit105.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.fk = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0) #15
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %12, ptr noundef nonnull @.str.17, ptr noundef %i.fk, i32 noundef %i.fa) #15
  %i.fl = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %12) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.critedge

bb.at:                                            ; preds = %.lr.ph205, %bb.bu
  %.060204 = phi i64 [ 1, %.lr.ph205 ], [ %i.hv, %bb.bu ] ; 2 uses
  %.5203 = phi i1 [ false, %.lr.ph205 ], [ %.6, %bb.bu ] ; 4 uses
  %.0160202 = phi i32 [ %i.ff, %.lr.ph205 ], [ %i.hw, %bb.bu ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.fm = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %.060204) #15
  %i.fn = load i32, ptr %i.fh, align 8, !tbaa !33
  call void @_ZN12lldb_private11OptionValue33CreateValueFromCStringForTypeMaskEPKcjRNS_6StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %13, ptr noundef %i.fm, i32 noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  %i.fo = load ptr, ptr %13, align 16, !tbaa !44
  %.not188 = icmp eq ptr %i.fo, null
  br i1 %.not188, label %bb.bn, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = call noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  br i1 %i.fp, label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = icmp ult i32 %.0160202, %i.fa
  br i1 %i.fq, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.fr = zext i32 %.0160202 to i64
  %i.fs = load ptr, ptr %i.es, align 8, !tbaa !37
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fr ; 2 uses
  %i.fu = load ptr, ptr %13, align 16, !tbaa !44
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 3 uses
  %i.fw = load ptr, ptr %i.fj, align 8, !tbaa !67 ; 5 uses
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i106 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i.i.i106, label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not7.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.fz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i107 = icmp eq i8 %i.fz, 0
  br i1 %.not.i.i.i.i107, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !69
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.gc = atomicrmw volatile add ptr %i.fy, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.fv, align 8, !tbaa !67
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ba, %bb.az, %bb.ax
  %i.gd = phi ptr [ %i.fx, %bb.ax ], [ %i.fx, %bb.az ], [ %.pr.pre.i.i.i, %bb.ba ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ge, align 8, !tbaa !71
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !72
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #15, !inline_history !97
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !35
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #15, !inline_history !97
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i9.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i9.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i = phi i32 [ %i.gh, %bb.be ], [ %i.gr, %bb.bf ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.bg, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !73

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bc, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split

bb.bh:                                            ; preds = %bb.av
  %i.gt = load ptr, ptr %i.et, align 8, !tbaa !36 ; 5 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !66
  %.not.i108 = icmp eq ptr %i.gt, %i.gu
  br i1 %.not.i108, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gv = load ptr, ptr %i.fj, align 8, !tbaa !67 ; 2 uses
  %i.gw = load <2 x ptr>, ptr %13, align 16, !tbaa !68
  store <2 x ptr> %i.gw, ptr %i.gt, align 8, !tbaa !68
  %.not.i.i.i.i109 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i109, label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 3 uses
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i110 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i110, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !69
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !69
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111

bb.bl:                                            ; preds = %bb.bj
  %i.hb = atomicrmw volatile add ptr %i.gx, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i112 = load ptr, ptr %i.et, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111

_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111: ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.hc = phi ptr [ %i.gt, %bb.bi ], [ %i.gt, %bb.bk ], [ %.pre.i112, %bb.bl ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr %i.hd, ptr %i.et, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split

bb.bm:                                            ; preds = %bb.bh
  call void @_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %13)
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split

bb.bn:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %14, ptr noundef nonnull @.str.13)
  %i.he = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %14) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split

_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split: ; preds = %bb.bn, %bb.au, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111, %bb.bm
  %cond4.ph = phi i1 [ true, %bb.bm ], [ true, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111 ], [ true, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ false, %bb.au ], [ false, %bb.bn ]
  %.6.ph = phi i1 [ %.5203, %bb.bm ], [ %.5203, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i111 ], [ %.5203, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ true, %bb.au ], [ true, %bb.bn ]
  %.pr = load ptr, ptr %i.fj, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split, %bb.aw
  %i.hf = phi ptr [ %.pr, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split ], [ %i.fw, %bb.aw ] ; 8 uses
  %cond4 = phi i1 [ %cond4.ph, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split ], [ true, %bb.aw ]
  %.6 = phi i1 [ %.6.ph, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exitthread-pre-split ], [ %.5203, %bb.aw ] ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i114, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.hg, align 8, !tbaa !71
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !72
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !35
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #15, !inline_history !0
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !35
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #15, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118

bb.bq:                                            ; preds = %bb.bo
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i115 = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i115, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hs = add nsw i32 %i.hj, -1
  store i32 %i.hs, ptr %i.hg, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

bb.bs:                                            ; preds = %bb.bq
  %i.ht = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i117 = phi i32 [ %i.hj, %bb.br ], [ %i.ht, %bb.bs ]
  %i.hu = icmp eq i32 %.0.i.i.i.i117, 1
  br i1 %i.hu, label %bb.bt, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118, !prof !73

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118

_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118: ; preds = %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEaSERKS2_.exit, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br i1 %cond4, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118
  %i.hv = add nuw i64 %.060204, 1                 ; 2 uses
  %i.hw = add i32 %.0160202, 1
  %exitcond227.not = icmp eq i64 %i.hv, %umax226
  br i1 %exitcond227.not, label %.critedge, label %bb.at, !llvm.loop !98

bb.bv:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %15, ptr noundef nonnull @.str.18)
  %i.hx = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %15) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.critedge

bb.bw:                                            ; preds = %bb.a
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !37 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !36 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.ib, %i.hz
  br i1 %.not.i.i119, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bw, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.it, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i ], [ %i.hz, %bb.bw ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !67 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.if = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 4294967297
  %i.ih = trunc i64 %i.if to i32                  ; 2 uses
  br i1 %i.ig, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.ie, align 8, !tbaa !71
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.ii, align 4, !tbaa !72
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  tail call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #15, !inline_history !1
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  tail call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #15, !inline_history !1
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ih, %bb.ca ], [ %i.ir, %bb.cb ]
  %i.is = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.is, label %bb.cc, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i, !prof !73

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #15
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.by, %.lr.ph.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.it, %i.ib
  br i1 %.not.i.i.i.i120, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private11OptionValueEEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private11OptionValueEEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN12lldb_private11OptionValueEEEvPT_.exit.i.i.i.i
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !36
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE5clearEv.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private11OptionValueEEEvT_S5_.exit.i.i, %bb.bw, %bb.a
  %.not198.not = icmp eq ptr %i.e, %i.f
  br i1 %.not198.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE5clearEv.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.iy = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.ce

bb.cd:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128
  %i.ja = add nuw i64 %.0200, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ja, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.ce, !llvm.loop !99

bb.ce:                                            ; preds = %.lr.ph, %bb.cd
  %.0200 = phi i64 [ 0, %.lr.ph ], [ %i.ja, %bb.cd ] ; 2 uses
  %.10199 = phi i1 [ false, %.lr.ph ], [ %.11, %bb.cd ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.jb = call noundef ptr @_ZNK12lldb_private4Args18GetArgumentAtIndexEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %.0200) #15
  %i.jc = load i32, ptr %i.iu, align 8, !tbaa !33
  call void @_ZN12lldb_private11OptionValue33CreateValueFromCStringForTypeMaskEPKcjRNS_6StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %16, ptr noundef %i.jb, i32 noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  %i.jd = load ptr, ptr %16, align 16, !tbaa !44
  %.not187 = icmp eq ptr %i.jd, null
  br i1 %.not187, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.je = call noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  br i1 %i.je, label %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i8 1, ptr %i.iv, align 8, !tbaa !76
  %i.jf = load ptr, ptr %16, align 16, !tbaa !44  ; 3 uses
  %.not5.i = icmp eq ptr %i.jf, null
  br i1 %.not5.i, label %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jg = load i32, ptr %i.iu, align 8, !tbaa !33
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !35
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = call noundef i32 %i.jj(ptr noundef nonnull align 8 dereferenceable(104) %i.jf) #15, !inline_history !100
  %i.jl = shl nuw i32 1, %i.jk
  %i.jm = and i32 %i.jl, %i.jg
  %.not.i121 = icmp eq i32 %i.jm, 0
  br i1 %.not.i121, label %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jn = load ptr, ptr %i.iw, align 8, !tbaa !36 ; 5 uses
  %i.jo = load ptr, ptr %i.ix, align 8, !tbaa !66
  %.not.i.i122 = icmp eq ptr %i.jn, %i.jo
  br i1 %.not.i.i122, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jp = load ptr, ptr %i.iy, align 8, !tbaa !67 ; 2 uses
  %i.jq = load <2 x ptr>, ptr %16, align 16, !tbaa !68
  store <2 x ptr> %i.jq, ptr %i.jn, align 8, !tbaa !68
  %.not.i.i.i.i.i123 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i123, label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !69
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !69
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jv = atomicrmw volatile add ptr %i.jr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.iw, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i: ; preds = %bb.cm, %bb.cl, %bb.cj
  %i.jw = phi ptr [ %i.jn, %bb.cj ], [ %i.jn, %bb.cl ], [ %.pre.i.i, %bb.cm ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store ptr %i.jx, ptr %i.iw, align 8, !tbaa !36
  br label %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit

bb.cn:                                            ; preds = %bb.ci
  call void @_ZNSt6vectorISt10shared_ptrIN12lldb_private11OptionValueEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, ptr %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %16)
  br label %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit

bb.co:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %17, ptr noundef nonnull @.str.13)
  %i.jy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %17) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit

_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit: ; preds = %bb.cn, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i, %bb.ch, %bb.cg, %bb.co, %bb.cf
  %cond1 = phi i1 [ false, %bb.cf ], [ true, %bb.co ], [ true, %bb.cg ], [ true, %bb.ch ], [ true, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i ], [ true, %bb.cn ]
  %.11 = phi i1 [ true, %bb.cf ], [ %.10199, %bb.co ], [ %.10199, %bb.cg ], [ %.10199, %bb.ch ], [ %.10199, %_ZNSt10shared_ptrIN12lldb_private11OptionValueEEC2ERKS2_.exit.i.i ], [ %.10199, %bb.cn ] ; 2 uses
  %i.jz = load ptr, ptr %i.iy, align 8, !tbaa !67 ; 8 uses
  %.not.i.i124 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i124, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128, label %bb.cp

bb.cp:                                            ; preds = %_ZN12lldb_private16OptionValueArray11AppendValueERKSt10shared_ptrINS_11OptionValueEE.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.ka, align 8, !tbaa !71
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !72
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !35
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #15, !inline_history !0
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !35
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
end_hunk_0
