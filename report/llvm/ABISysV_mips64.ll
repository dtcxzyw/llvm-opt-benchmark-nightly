Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ABISysV_mips64?download=true
inline.NumInlined: 900
inline.NumDeleted: 513
begin_hunk_0_@_ZN14ABISysV_mips6420SetReturnValueObjectERSt10shared_ptrIN12lldb_private10StackFrameEERS0_INS1_11ValueObjectEE:bb.a
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %bb.af, %bb.ai, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ar

bb.an:                                            ; preds = %bb.ac
  %i.de = and i32 %i.cl, 524288
  %.not32 = icmp eq i32 %i.de, 0
  br i1 %.not32, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %16, ptr noundef nonnull @.str.23)
  %i.df = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %16) #20 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ab
  %i.dg = and i32 %i.cl, 65536
  %.not29 = icmp eq i32 %i.dg, 0
  br i1 %.not29, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %17, ptr noundef nonnull @.str.24)
  %i.dh = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %17) #20 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.ao, %bb.am, %bb.aq, %bb.ap, %bb.aa
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK12lldb_private12CompilerTypecvbEv.exit.thread
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !53  ; 4 uses
  %.not.i.i.i43 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i43, label %_ZN12lldb_private12CompilerTypeD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 3 uses
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i44 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i44, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !15 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45

bb.av:                                            ; preds = %bb.at
  %i.dn = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i46 = phi i32 [ %i.dl, %bb.au ], [ %i.dn, %bb.av ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i46, 1
  br i1 %i.do, label %bb.aw, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.b, %_ZN12lldb_private12CompilerTypeD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !65
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.c, ptr %i.a, align 8, !tbaa !42
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !66
  %i.f = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.f, ptr %i.b, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.h, ptr %i.g, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.i = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !67
  %i.k = load ptr, ptr %2, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) #20
  %i.m = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit3: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.p, ptr noundef nonnull align 1 dereferenceable(10) @.str.71, i64 10, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.q, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.r, align 2, !tbaa !34
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #20
  %i.s = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit3
  %i.u = load i64, ptr %i.p, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %.sink13 = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.v = add i64 %.sink13, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.v) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN12lldb_private11ValueObject15GetCompilerTypeEv(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(1034)) local_unnamed_addr #4

declare void @_ZN12lldb_private13DataExtractorC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ...) local_unnamed_addr #4

declare noundef ptr @_ZNK12lldb_private6Status9AsCStringEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK12lldb_private12CompilerType11GetTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK12lldb_private13DataExtractor9GetMaxU64EPmm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK14ABISysV_mips6426GetReturnValueObjectSimpleERN12lldb_private6ThreadERNS0_12CompilerTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.64") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(576) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK14ABISysV_mips6424GetReturnValueObjectImplERN12lldb_private6ThreadERNS0_12CompilerTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.64") align 8 initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(576) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %6 = alloca %class.anon, align 1                ; 3 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 10 uses
  %9 = alloca %class.anon, align 1                ; 6 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %class.anon, align 1               ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.lldb_private::Value", align 8 ; 37 uses
  %14 = alloca %"class.lldb_private::Status", align 8 ; 10 uses
  %15 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 11 uses
  %16 = alloca %"class.std::shared_ptr.122", align 8 ; 5 uses
  %17 = alloca %"class.std::shared_ptr.22", align 8 ; 5 uses
  %18 = alloca %"class.lldb_private::ArchSpec", align 8 ; 16 uses
  %19 = alloca %"class.llvm::Expected", align 8   ; 7 uses
  %20 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %21 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %22 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %23 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %24 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %25 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %26 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %27 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %28 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %29 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 8 uses
  %30 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %31 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %32 = alloca %"class.lldb_private::RegisterValue", align 8 ; 6 uses
  %33 = alloca %"class.lldb_private::DataExtractor", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %34 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %35 = alloca %"class.lldb_private::Scalar", align 8 ; 5 uses
  %36 = alloca %"class.lldb_private::RegisterValue", align 8 ; 7 uses
  %37 = alloca %"class.lldb_private::DataExtractor", align 8 ; 8 uses
  %38 = alloca %"class.std::shared_ptr.325", align 8 ; 9 uses
  %39 = alloca %"class.lldb_private::DataExtractor", align 8 ; 5 uses
  %40 = alloca %"class.std::shared_ptr.95", align 8 ; 6 uses
  %41 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %42 = alloca %"class.lldb_private::ConstString", align 8 ; 2 uses
  %43 = alloca %"class.std::shared_ptr.64", align 16 ; 6 uses
  %44 = alloca %"class.std::shared_ptr.125", align 8 ; 5 uses
  %45 = alloca %"class.lldb_private::ConstString", align 8 ; 2 uses
  %46 = alloca %"class.std::shared_ptr.325", align 8 ; 9 uses
  %47 = alloca %"class.lldb_private::DataExtractor", align 8 ; 6 uses
  %48 = alloca %"class.std::shared_ptr.95", align 8 ; 6 uses
  %49 = alloca %"class.lldb_private::RegisterValue", align 8 ; 6 uses
  %50 = alloca %"class.lldb_private::RegisterValue", align 8 ; 6 uses
  %51 = alloca %"class.lldb_private::RegisterValue", align 8 ; 6 uses
  %52 = alloca %"class.lldb_private::RegisterValue", align 8 ; 8 uses
  %53 = alloca %"class.lldb_private::RegisterValue", align 8 ; 6 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %55 = alloca %"class.lldb_private::CompilerType", align 8 ; 5 uses
  %56 = alloca %"class.lldb_private::DataExtractor", align 8 ; 10 uses
  %57 = alloca %"class.lldb_private::DataExtractor", align 8 ; 8 uses
  %58 = alloca %"class.lldb_private::DataExtractor", align 8 ; 8 uses
  %59 = alloca %"class.lldb_private::CompilerType", align 8 ; 9 uses
  %60 = alloca %"class.llvm::Expected", align 8   ; 13 uses
  %i.e = alloca [2 x i64], align 16               ; 8 uses
  %i.f = alloca i64, align 8                      ; 11 uses
  %61 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %62 = alloca %"class.lldb_private::ConstString", align 8 ; 2 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %63 = alloca %"class.lldb_private::CompilerType", align 8 ; 10 uses
  %64 = alloca %"class.llvm::Expected", align 8   ; 7 uses
  %65 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %66 = alloca %"class.lldb_private::ConstString", align 8 ; 2 uses
  %67 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %68 = alloca %"class.lldb_private::Address", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @_ZN12lldb_private5ValueC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53, !noalias !189 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !30, !alias.scope !189
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load atomic i32, ptr %i.n monotonic, align 8, !noalias !189
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.o, %bb.b ], [ %i.s, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %.06.i.i.i.i.i, 1
  %i.q = cmpxchg weak ptr %i.n, i32 %.06.i.i.i.i.i, i32 %i.p acq_rel monotonic, align 8, !noalias !189 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = extractvalue { i32, i1 } %i.q, 0
  br i1 %i.r, label %_ZNSt23enable_shared_from_thisIN12lldb_private6ThreadEE16shared_from_thisEv.exit, label %bb.c, !llvm.loop !1

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  call void @abort() #23, !noalias !189
  unreachable

_ZNSt23enable_shared_from_thisIN12lldb_private6ThreadEE16shared_from_thisEv.exit: ; preds = %bb.d
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !64, !noalias !189
  store ptr %i.t, ptr %16, align 8, !tbaa !191, !alias.scope !189
  call void @_ZN12lldb_private16ExecutionContextC1ERKSt10shared_ptrINS_6ThreadEE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(16) %16) #20
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !30   ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt23enable_shared_from_thisIN12lldb_private6ThreadEE16shared_from_thisEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !37
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !2
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !2
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt23enable_shared_from_thisIN12lldb_private6ThreadEE16shared_from_thisEv.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.ak = call noundef ptr @_ZNK12lldb_private16ExecutionContext12GetTargetPtrEv(ptr noundef nonnull align 8 dereferenceable(64) %15) #20
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.am = call noundef ptr @_ZNK12lldb_private16ExecutionContext13GetProcessPtrEv(ptr noundef nonnull align 8 dereferenceable(64) %15) #20
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN12lldb_private5Value15SetCompilerTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ao = load ptr, ptr %2, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %17, ptr noundef nonnull align 8 dereferenceable(576) %2) #20
  %i.ar = load ptr, ptr %17, align 8, !tbaa !46   ; 30 uses
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30 ; 8 uses
  %.not.i.i252 = icmp eq ptr %i.at, null
  br i1 %.not.i.i252, label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.au, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !37
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #20, !inline_history !0
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
end_hunk_0
begin_hunk_1_@_ZNK14ABISysV_mips6424GetReturnValueObjectImplERN12lldb_private6ThreadERNS0_12CompilerTypeE:bb.a
  %.not.i.i.i265 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i265, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i266

bb.by:                                            ; preds = %bb.bw
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i266

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i266: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i267 = phi i32 [ %i.ih, %bb.bx ], [ %i.ir, %bb.by ]
  %i.is = icmp eq i32 %.0.i.i.i.i267, 1
  br i1 %i.is, label %bb.bz, label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i266
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i266, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %.critedge251

bb.ca:                                            ; preds = %bb.y
  %i.it = and i32 %i.cw, 65536
  %.not232 = icmp eq i32 %i.it, 0
  %i.iu = and i32 %i.cw, 73760
  %or.cond249 = icmp eq i32 %i.iu, 0
  br i1 %or.cond249, label %.critedge251, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iv = icmp ult i64 %.sroa.04.0.i, 17
  br i1 %i.iv, label %bb.cc, label %bb.ep

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  %i.iw = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 4 uses
  call void @_ZN12lldb_private14DataBufferHeapC1Emh(ptr noundef nonnull align 8 dereferenceable(32) %i.iw, i64 noundef 16, i8 noundef zeroext 0) #20
  store ptr %i.iw, ptr %46, align 8, !tbaa !215
  %i.ix = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.iy = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 3 uses
  store i32 1, ptr %i.iz, align 8, !tbaa !36
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 1, ptr %i.ja, align 4, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.iy, align 8, !tbaa !33
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.iw, ptr %i.jb, align 8, !tbaa !83
  store ptr %i.iy, ptr %i.ix, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  store ptr %i.iw, ptr %48, align 8, !tbaa !218
  %i.jc = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %i.iy, ptr %i.jc, align 8, !tbaa !30
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i269 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i.i269, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i32 2, ptr %i.iz, align 8, !tbaa !15
  br label %_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit270

bb.ce:                                            ; preds = %bb.cc
  %i.je = atomicrmw volatile add ptr %i.iz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit270

_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit270: ; preds = %bb.cd, %bb.ce
  %i.jf = call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bk) #20
  call void @_ZN12lldb_private13DataExtractorC1ERKSt10shared_ptrINS_10DataBufferEEN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(16) %48, i32 noundef %i.ce, i32 noundef %i.jf) #20
  call void @_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  store ptr %i.jg, ptr %54, align 8, !tbaa !65
  %i.jh = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 0, ptr %i.jh, align 8, !tbaa !67
  store i8 0, ptr %i.jg, align 8, !tbaa !34
  %i.ji = call noundef i32 @_ZNK12lldb_private12CompilerType12GetNumFieldsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20 ; 5 uses
  %i.jj = icmp ult i32 %i.ji, 3
  br i1 %i.jj, label %bb.cf, label %.lr.ph421

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private10DataBufferEEC2INS0_18WritableDataBufferEvEERKS_IT_E.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !42
  %.not426 = icmp eq i32 %i.ji, 0
  br i1 %.not426, label %.thread487, label %.lr.ph

.thread487:                                       ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.thread386

.lr.ph:                                           ; preds = %bb.cf
  %i.jk = getelementptr inbounds nuw i8, ptr %55, i64 8
  %wide.trip.count = zext nneg i32 %i.ji to i64
  br label %bb.cg

._crit_edge:                                      ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %i.jl = select i1 %.not238, i1 true, i1 %.0198406
  br i1 %i.jl, label %bb.dl, label %.lr.ph413

bb.cg:                                            ; preds = %.lr.ph, %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12lldb_private12CompilerTypeD2Ev.exit ] ; 2 uses
  %.0198406 = phi i1 [ false, %.lr.ph ], [ %i.jo, %_ZN12lldb_private12CompilerTypeD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  call void @_ZNK12lldb_private12CompilerType15GetFieldAtIndexEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPjPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %indvars.iv, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #20
  %i.jm = call noundef i32 @_ZNK12lldb_private12CompilerType11GetTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef null) #20
  %i.jn = and i32 %i.jm, 524288
  %.not238 = icmp eq i32 %i.jn, 0                 ; 2 uses
  %i.jo = select i1 %.not238, i1 true, i1 %.0198406
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i271 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i271, label %_ZN12lldb_private12CompilerTypeD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12 ; 3 uses
  %i.jr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i272 = icmp eq i8 %i.jr, 0
  br i1 %.not.i.i.i.i272, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !15 ; 2 uses
  %i.jt = add nsw i32 %i.js, -1
  store i32 %i.jt, ptr %i.jq, align 4, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.ju = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i.i = phi i32 [ %i.js, %bb.ci ], [ %i.ju, %bb.cj ]
  %i.jv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.jv, label %bb.ck, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.jw = load ptr, ptr %i.jp, align 8, !tbaa !33
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #20, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.cg, !llvm.loop !181

.lr.ph413:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  call void @_ZN12lldb_private13DataExtractorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %56) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20
  call void @_ZN12lldb_private13DataExtractorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %57) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20
  call void @_ZN12lldb_private13DataExtractorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %58) #20
  %i.jz = call noundef ptr @_ZN12lldb_private15RegisterContext21GetRegisterInfoByNameEN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr nonnull @.str.25, i64 2, i32 noundef 0) #20
  %i.ka = call noundef ptr @_ZN12lldb_private15RegisterContext21GetRegisterInfoByNameEN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr nonnull @.str.28, i64 2, i32 noundef 0) #20 ; 2 uses
  %i.kb = call noundef ptr @_ZN12lldb_private15RegisterContext21GetRegisterInfoByNameEN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr nonnull @.str.26, i64 2, i32 noundef 0) #20
  %i.kc = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 104
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = call noundef zeroext i1 %i.ke(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(344) %51) #20 ; 0 uses
  %i.kg = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 104
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = call noundef zeroext i1 %i.ki(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %i.kb, ptr noundef nonnull align 8 dereferenceable(344) %53) #20 ; 0 uses
  %i.kk = call noundef zeroext i1 @_ZNK12lldb_private13RegisterValue7GetDataERNS_13DataExtractorE(ptr noundef nonnull align 8 dereferenceable(344) %51, ptr noundef nonnull align 8 dereferenceable(48) %56) #20 ; 0 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 4 uses
  %i.km = icmp eq i32 %i.ce, 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20
  call void @_ZNK12lldb_private12CompilerType15GetFieldAtIndexEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPjPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20
  call void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %60, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull %i.cf) #20
  %i.kp = load i8, ptr %i.kl, align 8             ; 2 uses
  %i.kq = trunc i8 %i.kp to i1                    ; 2 uses
  %i.kr = load i64, ptr %60, align 8, !tbaa !34   ; 2 uses
  br i1 %i.kq, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277.peel, label %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280.peel

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277.peel: ; preds = %.lr.ph413
  %i.ks = inttoptr i64 %i.kr to ptr
  store ptr null, ptr %60, align 8, !tbaa !69, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ks, ptr %8, align 8, !tbaa !71
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.kt = load ptr, ptr %8, align 8, !tbaa !71    ; 3 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %_ZN4llvm5ErrorD2Ev.exit.i279.peel, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277.peel
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !33
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.kt) #20, !inline_history !175
  br label %_ZN4llvm5ErrorD2Ev.exit.i279.peel

_ZN4llvm5ErrorD2Ev.exit.i279.peel:                ; preds = %bb.cl, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.pre446 = load i8, ptr %i.kl, align 8
  br label %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280.peel

_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280.peel: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i279.peel, %.lr.ph413
  %i.ky = phi i8 [ %.pre446, %_ZN4llvm5ErrorD2Ev.exit.i279.peel ], [ %i.kp, %.lr.ph413 ]
  %.sroa.04.0.i274.peel = phi i64 [ undef, %_ZN4llvm5ErrorD2Ev.exit.i279.peel ], [ %i.kr, %.lr.ph413 ] ; 4 uses
  %i.kz = trunc i8 %i.ky to i1
  br i1 %i.kz, label %bb.cm, label %_ZN4llvm8ExpectedImED2Ev.exit283.peel

bb.cm:                                            ; preds = %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280.peel
  %i.la = load ptr, ptr %60, align 8, !tbaa !69   ; 3 uses
  %.not.i.i281.peel = icmp eq ptr %i.la, null
  br i1 %.not.i.i281.peel, label %_ZN4llvm8ExpectedImED2Ev.exit283.peel, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i282.peel

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i282.peel: ; preds = %bb.cm
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.la) #20, !inline_history !176
  br label %_ZN4llvm8ExpectedImED2Ev.exit283.peel

_ZN4llvm8ExpectedImED2Ev.exit283.peel:            ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i282.peel, %bb.cm, %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20
  br i1 %i.kq, label %bb.cv, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit283.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.le = icmp eq i64 %.sroa.04.0.i274.peel, 16
  br i1 %i.le, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.lf = call noundef i64 @_ZNK12lldb_private13DataExtractor6GetU64EPm(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull %i.f) #20 ; 2 uses
  br i1 %i.km, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i64 %i.lf, ptr %i.kn, align 8, !tbaa !42
  %i.lg = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = call noundef zeroext i1 %i.li(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(344) %52) #20 ; 0 uses
  %i.lk = call noundef zeroext i1 @_ZNK12lldb_private13RegisterValue7GetDataERNS_13DataExtractorE(ptr noundef nonnull align 8 dereferenceable(344) %52, ptr noundef nonnull align 8 dereferenceable(48) %57) #20 ; 0 uses
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.ll = call noundef i64 @_ZNK12lldb_private13DataExtractor6GetU64EPm(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull %i.f) #20
  store i64 %i.ll, ptr %i.e, align 16, !tbaa !42
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  store i64 %i.lf, ptr %i.e, align 16, !tbaa !42
  %i.lm = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 104
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = call noundef zeroext i1 %i.lo(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(344) %52) #20 ; 0 uses
  %i.lq = call noundef zeroext i1 @_ZNK12lldb_private13RegisterValue7GetDataERNS_13DataExtractorE(ptr noundef nonnull align 8 dereferenceable(344) %52, ptr noundef nonnull align 8 dereferenceable(48) %57) #20 ; 0 uses
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.lr = call noundef i64 @_ZNK12lldb_private13DataExtractor6GetU64EPm(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull %i.f) #20
  store i64 %i.lr, ptr %i.kn, align 8, !tbaa !42
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ls = call noundef i64 @_ZN12lldb_private13DataExtractor7SetDataEPKvmN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull %i.e, i64 noundef 16, i32 noundef %i.ce) #20 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cn
  %i.lt = load ptr, ptr %56, align 8, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = call noundef i64 %i.lv(ptr noundef nonnull align 8 dereferenceable(48) %56) #20
  %i.lx = icmp ule i64 %.sroa.04.0.i274.peel, %i.lw ; 3 uses
  br i1 %i.lx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ly = load ptr, ptr %46, align 8, !tbaa !215  ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !33
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = call noundef ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.ly) #20, !inline_history !177
  %i.md = load i64, ptr %i.d, align 8, !tbaa !42
  %i.me = lshr i64 %i.md, 3
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.me
  %i.mg = call noundef i64 @_ZNK12lldb_private13DataExtractor19CopyByteOrderedDataEmmPvmN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(48) %56, i64 noundef 0, i64 noundef %.sroa.04.0.i274.peel, ptr noundef %i.mf, i64 noundef %.sroa.04.0.i274.peel, i32 noundef %i.ce) #20 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.4.peel = xor i1 %i.lx, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN4llvm8ExpectedImED2Ev.exit283.peel
  %.3214.peel = phi i1 [ %i.lx, %bb.cu ], [ false, %_ZN4llvm8ExpectedImED2Ev.exit283.peel ]
  %.5.peel = phi i1 [ %.4.peel, %bb.cu ], [ true, %_ZN4llvm8ExpectedImED2Ev.exit283.peel ] ; 2 uses
  %i.mh = load ptr, ptr %i.ko, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i284.peel = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i284.peel, label %_ZN12lldb_private12CompilerTypeD2Ev.exit288.peel, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 12 ; 3 uses
  %i.mj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i285.peel = icmp eq i8 %i.mj, 0
  br i1 %.not.i.i.i.i285.peel, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mk = load i32, ptr %i.mi, align 4, !tbaa !15 ; 2 uses
  %i.ml = add nsw i32 %i.mk, -1
  store i32 %i.ml, ptr %i.mi, align 4, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i286.peel

bb.cy:                                            ; preds = %bb.cw
  %i.mm = atomicrmw volatile add ptr %i.mi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i286.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i286.peel: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i287.peel = phi i32 [ %i.mk, %bb.cx ], [ %i.mm, %bb.cy ]
  %i.mn = icmp eq i32 %.0.i.i.i.i.i287.peel, 1
  br i1 %i.mn, label %bb.cz, label %_ZN12lldb_private12CompilerTypeD2Ev.exit288.peel

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i286.peel
  %i.mo = load ptr, ptr %i.mh, align 8, !tbaa !33
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(16) %i.mh) #20, !inline_history !3
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit288.peel

_ZN12lldb_private12CompilerTypeD2Ev.exit288.peel: ; preds = %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i286.peel, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  br i1 %.3214.peel, label %bb.da, label %.thread382

bb.da:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit288.peel
  %exitcond435.peel.not = icmp eq i32 %i.ji, 1
  br i1 %exitcond435.peel.not, label %._crit_edge414, label %.peel.next

.peel.next:                                       ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20
  call void @_ZNK12lldb_private12CompilerType15GetFieldAtIndexEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPjPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20
  call void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %60, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull %i.cf) #20
  %i.mr = load i8, ptr %i.kl, align 8             ; 2 uses
  %i.ms = trunc i8 %i.mr to i1                    ; 2 uses
  %i.mt = load i64, ptr %60, align 8, !tbaa !34   ; 2 uses
  br i1 %i.ms, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277, label %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277: ; preds = %.peel.next
  %i.mu = inttoptr i64 %i.mt to ptr
  store ptr null, ptr %60, align 8, !tbaa !69, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.mu, ptr %8, align 8, !tbaa !71
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.mv = load ptr, ptr %8, align 8, !tbaa !71    ; 3 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_ZN4llvm5ErrorD2Ev.exit.i279, label %bb.db

bb.db:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277
  %i.mx = load ptr, ptr %i.mv, align 8, !tbaa !33
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mv) #20, !inline_history !175
  br label %_ZN4llvm5ErrorD2Ev.exit.i279

_ZN4llvm5ErrorD2Ev.exit.i279:                     ; preds = %bb.db, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.pre447 = load i8, ptr %i.kl, align 8
  br label %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280

_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280: ; preds = %.peel.next, %_ZN4llvm5ErrorD2Ev.exit.i279
  %i.na = phi i8 [ %.pre447, %_ZN4llvm5ErrorD2Ev.exit.i279 ], [ %i.mr, %.peel.next ]
  %.sroa.04.0.i274 = phi i64 [ undef, %_ZN4llvm5ErrorD2Ev.exit.i279 ], [ %i.mt, %.peel.next ] ; 3 uses
  %i.nb = trunc i8 %i.na to i1
  br i1 %i.nb, label %bb.dc, label %_ZN4llvm8ExpectedImED2Ev.exit283

bb.dc:                                            ; preds = %_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE.exit280
  %i.nc = load ptr, ptr %60, align 8, !tbaa !69   ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i281, label %_ZN4llvm8ExpectedImED2Ev.exit283, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i282

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i282: ; preds = %bb.dc
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !33
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %i.nc) #20, !inline_history !176
end_hunk_1
