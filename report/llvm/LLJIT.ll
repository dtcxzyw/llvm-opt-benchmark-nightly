Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLJIT?download=true
inline.NumInlined: 6788
inline.NumDeleted: 3834
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4llvm3orc5LLJITC2ERNS0_17LLJITBuilderStateERNS_5ErrorE:bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 1528
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void %i.if(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.430") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %i.ig, ptr noundef nonnull align 8 dereferenceable(1096) %0) #26, !inline_history !951
  %i.ih = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ii = load i8, ptr %i.ih, align 8
  %i.ij = trunc i8 %i.ii to i1
  br i1 %i.ij, label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ik = load ptr, ptr %18, align 8, !tbaa !204  ; 5 uses
  store ptr %i.ik, ptr %i.e, align 8, !tbaa !323
  %.not.i.i93 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i93, label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.il = atomicrmw add ptr %i.ik, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i = icmp eq i32 %i.il, 1
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit.thread

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm3orc8JITDylibD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.ik) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.ik, i64 noundef 272) #29
  br label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit.thread

_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit.thread: ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ah

_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit: ; preds = %bb.ad
  %i.im = load i64, ptr %18, align 8, !tbaa !220, !noalias !985
  %i.in = inttoptr i64 %i.im to ptr
  store ptr %i.in, ptr %2, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ax

bb.ah:                                            ; preds = %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit.thread, %bb.ac
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !986 ; 2 uses
  %.not148 = icmp eq ptr %i.ip, null
  br i1 %.not148, label %bb.ai, label %_ZN4llvm5ErrorD2Ev.exit94

_ZN4llvm5ErrorD2Ev.exit94:                        ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1664
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void %i.ip(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %i.iq, ptr noundef nonnull align 8 dereferenceable(1096) %0) #26, !inline_history !954
  %i.ir = load ptr, ptr %19, align 8, !tbaa !218  ; 2 uses
  store ptr %i.ir, ptr %2, align 8, !tbaa !218
  %.not149 = icmp eq ptr %i.ir, null
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.not149, label %bb.ai, label %bb.ax

bb.ai:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit94, %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 1704 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !309 ; 2 uses
  %.not150 = icmp eq ptr %i.iu, null
  br i1 %.not150, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.iv = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  store i64 0, ptr %i.iw, align 8
  store ptr @_ZN4llvm3orc26setUpGenericLLVMIRPlatformERNS0_5LLJITE, ptr %20, align 8, !tbaa !204
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEEJRNS4_5LLJITEEEC1IPFS7_S9_ESD_EET_NSA_8CalledAsIT0_EEENUlPKSA_S9_E_8__invokeESJ_S9_, ptr %i.iv, align 8, !tbaa !309
  %i.ix = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm15unique_functionIFNS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEERNS3_5LLJITEEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(40) %i.is, ptr noundef nonnull align 8 dereferenceable(40) %20) #26 ; 0 uses
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !311 ; 2 uses
  %.not.i95 = icmp eq ptr %i.iy, null
  br i1 %.not.i95, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEEJRNS4_5LLJITEEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void %i.iy(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %20) #26, !inline_history !955
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEEJRNS4_5LLJITEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEEJRNS4_5LLJITEEED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %.pre156 = load ptr, ptr %i.it, align 8, !tbaa !309, !noalias !987
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEEJRNS4_5LLJITEEED2Ev.exit, %bb.ai
  %i.iz = phi ptr [ %.pre156, %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEEEJRNS4_5LLJITEEED2Ev.exit ], [ %i.iu, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void %i.iz(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.430") align 8 %21, ptr noundef nonnull align 8 dereferenceable(40) %i.is, ptr noundef nonnull align 8 dereferenceable(1096) %0) #26, !inline_history !951
  %i.ja = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 8             ; 3 uses
  %i.jc = trunc i8 %i.jb to i1                    ; 2 uses
  br i1 %i.jc, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i97, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = load ptr, ptr %21, align 8, !tbaa !204  ; 3 uses
  store ptr %i.jd, ptr %i.f, align 8, !tbaa !326
  %.not = icmp eq ptr %i.jd, null
  br i1 %.not, label %thread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.jd, ptr %22, align 8, !tbaa !990
  %i.je = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 0, ptr %i.je, align 8, !tbaa !991
  call void @_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %.pr144.pre = load ptr, ptr %21, align 8, !tbaa !204
  %.pre158.pre = load i8, ptr %i.ja, align 8
  br label %thread-pre-split

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i97: ; preds = %bb.al
  %i.jf = load i64, ptr %21, align 8, !tbaa !220, !noalias !992
  %i.jg = inttoptr i64 %i.jf to ptr
  store ptr null, ptr %21, align 8, !tbaa !220, !noalias !992
  store ptr %i.jg, ptr %2, align 8, !tbaa !218
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.an, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i97, %bb.am
  %i.jh = phi i8 [ %i.jb, %bb.am ], [ %i.jb, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i97 ], [ %.pre158.pre, %bb.an ]
  %i.ji = phi ptr [ null, %bb.am ], [ null, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i97 ], [ %.pr144.pre, %bb.an ] ; 6 uses
  %i.jj = trunc i8 %i.jh to i1
  %.not.i.i100 = icmp eq ptr %i.ji, null          ; 2 uses
  br i1 %i.jj, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split
  br i1 %.not.i.i100, label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jk = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i101 = icmp eq i32 %i.jk, 1
  br i1 %.not.i.i.i.i.i101, label %bb.aq, label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm3orc8JITDylibD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.ji) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.ji, i64 noundef 272) #29
  br label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103

bb.ar:                                            ; preds = %thread-pre-split
  br i1 %.not.i.i100, label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i102

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i102: ; preds = %bb.ar
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !222
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.ji) #26, !inline_history !960
  br label %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103

_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103: ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %i.jc, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !310, !range !201, !noundef !60
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.jr = load ptr, ptr %i.e, align 8, !tbaa !210
  store ptr %i.jr, ptr %23, align 8, !tbaa !990
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 0, ptr %i.js, align 8, !tbaa !991
  call void @_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %26)
  call void @_ZN4llvm3orc5LLJIT14createJITDylibENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.272") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1096) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %25)
  %i.jt = load ptr, ptr %25, align 8, !tbaa !240  ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !228
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.jz = load i8, ptr %i.jy, align 8
  %i.ka = trunc i8 %i.jz to i1
  br i1 %i.ka, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kb = load ptr, ptr %24, align 8, !tbaa !328
  store ptr %i.kb, ptr %i.g, align 8, !tbaa !167
  br label %_ZN4llvm8ExpectedIRNS_3orc8JITDylibEED2Ev.exit

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kc = load i64, ptr %24, align 8, !tbaa !220, !noalias !993
  %i.kd = inttoptr i64 %i.kc to ptr
  store ptr %i.kd, ptr %2, align 8, !tbaa !218
  br label %_ZN4llvm8ExpectedIRNS_3orc8JITDylibEED2Ev.exit

_ZN4llvm8ExpectedIRNS_3orc8JITDylibEED2Ev.exit:   ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit, %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc14IRCompileLayer10IRCompilerESt14default_deleteIS4_EEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit94, %_ZN4llvm8ExpectedIRNS_3orc8JITDylibEED2Ev.exit, %_ZN4llvm8ExpectedINS_18IntrusiveRefCntPtrINS_3orc8JITDylibEEEED2Ev.exit103
  %.pr206 = load ptr, ptr %15, align 8, !tbaa !204 ; 3 uses
  %.not.i1.i110 = icmp eq ptr %.pr206, null
  br i1 %.not.i1.i110, label %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc11ObjectLayerESt14default_deleteIS3_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm3orc11ObjectLayerESt14default_deleteIS2_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm3orc11ObjectLayerESt14default_deleteIS2_EED2Ev.exit.sink.split.i: ; preds = %bb.ax
  %i.ke = load ptr, ptr %.pr206, align 8, !tbaa !222
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %.pr206) #26, !inline_history !963
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc11ObjectLayerESt14default_deleteIS3_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_3orc11ObjectLayerESt14default_deleteIS3_EEED2Ev.exit: ; preds = %.thread207, %bb.ax, %_ZNSt10unique_ptrIN4llvm3orc11ObjectLayerESt14default_deleteIS2_EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc12DylibManagerESt14default_deleteIS3_EEED2Ev.exit, %_ZN4llvm8ExpectedISt10unique_ptrINS_7jitlink20JITLinkMemoryManagerESt14default_deleteIS3_EEED2Ev.exit, %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc26SelfExecutorProcessControlESt14default_deleteIS3_EEED2Ev.exit, %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc11ObjectLayerESt14default_deleteIS3_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc26setUpGenericLLVMIRPlatformERNS0_5LLJITE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.430") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1096) %1) #0 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1116", align 16 ; 9 uses
  %3 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %4 = alloca %"class.llvm::orc::ThreadSafeModule", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [3 x ptr], align 8                ; 6 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %6 = alloca %class.anon.1224, align 8           ; 6 uses
  %7 = alloca %"class.llvm::unique_function.146", align 8 ; 8 uses
  %8 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::unique_function.146", align 8 ; 6 uses
  %13 = alloca %"class.llvm::DenseMap.1116", align 16 ; 12 uses
  %14 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %15 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %17 = alloca %"class.std::unique_ptr.1118", align 8 ; 6 uses
  %18 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %21 = alloca %"class.llvm::orc::ThreadSafeModule", align 8 ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::optional.209", align 1 ; 7 uses
  %25 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %26 = alloca %"class.llvm::Expected.637", align 16 ; 11 uses
  %27 = alloca %"class.std::shared_ptr.643", align 16 ; 5 uses
  %28 = alloca %"class.llvm::Expected.646", align 8 ; 8 uses
  %29 = alloca %"class.std::shared_ptr.643", align 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323, !noalias !1049 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %.critedge40.thread87, label %._crit_edge.i.i

.critedge40.thread87:                             ; preds = %bb.a
  %i.e = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #26 ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.e, 0
  %i.g = extractvalue { i32, ptr } %i.e, 1
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !1050 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !1050
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !227, !noalias !1050
  store ptr @.str.10, ptr %22, align 8, !tbaa !228, !noalias !1050
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 3, ptr %i.j, align 8, !tbaa !229, !noalias !1050
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %22, i32 %i.f, ptr %i.g) #26, !noalias !1050
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !1050
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 8
  store ptr %i.h, ptr %0, align 8, !tbaa !220, !alias.scope !1051
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.n = atomicrmw add ptr %i.d, i32 1 monotonic, align 4, !noalias !1049 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.q, ptr %23, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.q, ptr noundef nonnull align 1 dereferenceable(10) @.str.12, i64 10, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 10, ptr %i.r, align 8, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %23, i64 26
  store i8 0, ptr %i.s, align 2, !tbaa !228
  %i.t = call noundef nonnull align 8 dereferenceable(272) ptr @_ZN4llvm3orc16ExecutionSession18createBareJITDylibENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(392) %i.p, ptr nofree noundef nonnull align 8 dereferenceable(32) %23) #26 ; 7 uses
  %i.u = load ptr, ptr %23, align 8, !tbaa !240   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.w = load i64, ptr %i.q, align 8, !tbaa !228
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN4llvm3orc8JITDylib14addToLinkOrderERS1_NS0_19JITDylibLookupFlagsE(ptr noundef nonnull align 8 dereferenceable(272) %i.t, ptr noundef nonnull align 8 dereferenceable(272) %i.d, i32 noundef 0) #26
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !319  ; 10 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !222
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @_ZN4llvm3orc18ObjectLinkingLayer2IDE) #26, !inline_history !15
  br i1 %i.ad, label %bb.b, label %.critedge38

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !314 ; 3 uses
  %i.ag = and i32 %i.af, -9
  %spec.select.i.i = icmp eq i32 %i.ag, 1
  br i1 %spec.select.i.i, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.af, label %_ZNK4llvm6Triple10isOSDarwinEv.exit [
    i32 26, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
    i32 5, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
    i32 27, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
    i32 29, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
    i32 30, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
    i32 28, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
  ]

_ZNK4llvm6Triple10isOSDarwinEv.exit:              ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1052
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = icmp eq i32 %i.af, 47
  %i.al = and i1 %i.ak, %i.aj
  br i1 %i.al, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6Triple10isOSDarwinEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1052
  %i.an = load i32, ptr %i.am, align 4, !tbaa !307
  %i.ao = icmp eq i32 %i.an, 5
  br i1 %i.ao, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread, label %.thread83

_ZNK4llvm6Triple10isOSDarwinEv.exit.thread:       ; preds = %bb.b, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %_ZNK4llvm6Triple10isOSDarwinEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %24, i64 1 ; 2 uses
  store i8 0, ptr %i.ap, align 1, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !212, !noalias !1053
  call void @_ZNK4llvm3orc22ExecutorProcessControl20getBootstrapMapValueIbbEENS_5ErrorENS_9StringRefERSt8optionalIT_E(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %25, ptr noundef nonnull align 8 dereferenceable(168) %i.as, ptr nonnull @.str.14, i64 24, ptr noundef nonnull align 1 dereferenceable(2) %24)
  %i.at = load ptr, ptr %25, align 8, !tbaa !218  ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit42, label %_ZN4llvm5ErrorD2Ev.exit41

_ZN4llvm5ErrorD2Ev.exit41:                        ; preds = %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = or i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 8
  store ptr %i.at, ptr %0, align 8, !tbaa !220, !alias.scope !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %.critedge36

_ZN4llvm5ErrorD2Ev.exit42:                        ; preds = %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !282, !range !201, !noundef !60
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %24, align 1, !range !201
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond, label %.thread85, label %.thread

.thread85:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %.thread83

.thread:                                          ; preds = %_ZN4llvm5ErrorD2Ev.exit42
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !63
  call void @_ZN4llvm3orc28UnwindInfoRegistrationPlugin6CreateERNS0_16ExecutionSessionENS0_2rt35MachOUnwindInfoRegistrarSymbolNamesE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.637") align 8 %26, ptr noundef nonnull align 8 dereferenceable(392) %i.bb, ptr noundef nonnull byval(%"struct.llvm::orc::rt::MachOUnwindInfoRegistrarSymbolNames") align 8 @_ZN4llvm3orc2rt41orc_rt_MachOUnwindInfoRegistrarSPSSymbolsE) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 16
  %i.be = trunc i8 %i.bd to i1                    ; 2 uses
  br i1 %i.be, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bh = load <2 x ptr>, ptr %26, align 16, !tbaa !204
  store ptr null, ptr %i.bg, align 8, !tbaa !299
  store <2 x ptr> %i.bh, ptr %27, align 16, !tbaa !204
  store ptr null, ptr %26, align 16, !tbaa !1057
  %i.bi = getelementptr inbounds i8, ptr %i.z, i64 -112 ; 2 uses
  %i.bj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #26 ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i43, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bj) #27
  unreachable

end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_:bb.a

bb.c:                                             ; preds = %._crit_edge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = atomicrmw add ptr %i.bd, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1909

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1910

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !416
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !535
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !535
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !417
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZN4llvm3orc23ItaniumCXAAtExitSupport14registerAtExitEPFvPvES2_S2_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.629", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !425    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1918
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit

_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !1919 ; 3 uses
  %i.e = atomicrmw add ptr %i.a, i32 1 monotonic, align 4, !noalias !1919 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc15JITDylibDefunctE, i64 16), ptr %i.d, align 8, !tbaa !222, !noalias !1919
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !325, !noalias !1919
  br label %.critedge.sink.split

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1920, !nonnull !60, !align !61
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !414
  tail call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.i) #26
  %i.j = load ptr, ptr %0, align 8, !tbaa !218
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1921, !nonnull !60, !align !61
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !356
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(272) %i.a) #26
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1921, !nonnull !60, !align !61 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !356
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !356
  store ptr %i.p, ptr %2, align 8, !tbaa !356
  store ptr %i.o, ptr %i.n, align 8, !tbaa !356
  %i.q = load ptr, ptr %2, align 8, !tbaa !356    ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %.not.i.i.i.i11 = icmp eq i32 %i.r, 1
  br i1 %.not.i.i.i.i11, label %bb.e, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #26
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.q, i64 noundef 16) #29
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193, !nonnull !60, !align !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !409  ; 3 uses
  %.not10 = icmp eq ptr %i.v, null
  %.pre19 = load ptr, ptr %i.k, align 8, !tbaa !1921 ; 2 uses
  br i1 %.not10, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.w = load ptr, ptr %.pre19, align 8, !tbaa !356
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1920, !nonnull !60, !align !61
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !414
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !222
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.y) #26
  %i.ac = load ptr, ptr %0, align 8, !tbaa !218
  %.not18 = icmp eq ptr %i.ac, null
  br i1 %.not18, label %._ZN4llvm5ErrorD2Ev.exit12_crit_edge, label %.critedge

._ZN4llvm5ErrorD2Ev.exit12_crit_edge:             ; preds = %bb.f
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !1921
  br label %_ZN4llvm5ErrorD2Ev.exit12

_ZN4llvm5ErrorD2Ev.exit12:                        ; preds = %._ZN4llvm5ErrorD2Ev.exit12_crit_edge, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.ad = phi ptr [ %.pre, %._ZN4llvm5ErrorD2Ev.exit12_crit_edge ], [ %.pre19, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit ]
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !1920, !nonnull !60, !align !61 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !414
  store ptr null, ptr %i.ae, align 8, !tbaa !414
  store ptr %i.af, ptr %3, align 8, !tbaa !446
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !356
  call void @_ZN4llvm3orc8JITDylib26installMaterializationUnitESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS3_EERNS0_15ResourceTrackerE(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26
  %i.ah = load ptr, ptr %3, align 8, !tbaa !1922  ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %.critedge.sink.split, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit12
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !222
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #26, !inline_history !1917
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN4llvm5ErrorD2Ev.exit12, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit
  %.sink = phi ptr [ %i.d, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit ], [ null, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit12 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !218
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.f, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

declare void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN4llvm3orc8JITDylib26installMaterializationUnitESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS3_EERNS0_15ResourceTrackerE(ptr noundef nonnull align 8 dereferenceable(272), ptr nofree noundef align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4llvm3orc34AbsoluteSymbolsMaterializationUnitC1ENS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128GenericLLVMIRPlatformSupport16runAtExitsHelperEPvS1_(ptr noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN4llvm3orc23ItaniumCXAAtExitSupport10runAtExitsEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128GenericLLVMIRPlatformSupport20registerAtExitHelperEPvS1_PFvvE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN4llvm3orc23ItaniumCXAAtExitSupport14registerAtExitEPFvPvES2_S2_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %2, ptr noundef null, ptr noundef %1) #26
  ret void
}

declare noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i32 noundef, i64, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN4llvm14GlobalVariable14setInitializerEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm10StructType6createERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_119addHelperAndWrapperERN4llvm6ModuleENS0_9StringRefEPNS0_12FunctionTypeENS0_11GlobalValue15VisibilityTypesES3_NS0_8ArrayRefIPNS0_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1288) %0, ptr %1, i64 %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr %.0.val, i64 %.8.val, ptr %.0.val1, i64 %.8.val3) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.std::vector.1244", align 8  ; 11 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %12 = alloca %"class.std::vector.1210", align 8 ; 11 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %.8.val3, 3
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val1, i64 %.idx ; 2 uses
  %.not15 = icmp eq i64 %.8.val3, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit
  %i.d = ptrtoint ptr %i.cv to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %i.d, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !661  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1924
  %i.l = zext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr i8, ptr %i.h, i64 %.idx.i
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.f, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  call void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.q, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !661
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !429
  %i.t = load ptr, ptr %7, align 8, !tbaa !666    ; 2 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !667
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.s, ptr %i.t, i64 %i.y, i1 noundef zeroext false) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.aa, align 8, !tbaa !229
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ab, align 1, !tbaa !227
  store ptr %.0.val, ptr %8, align 8, !tbaa !228
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.8.val, ptr %i.ac, align 8, !tbaa !228
  %i.ad = call noundef ptr @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineERNS_6ModuleE(ptr noundef %i.z, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(1288) %0) #26 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !227
  store ptr %1, ptr %9, align 8, !tbaa !228
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %i.ag, align 8, !tbaa !228
  %i.ah = call noundef ptr @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineERNS_6ModuleE(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(1288) %0) #26 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = shl nuw nsw i32 %4, 4
  %i.al = and i32 %i.aj, -49
  %i.am = or disjoint i32 %i.al, %i.ak            ; 2 uses
  store i32 %i.am, ptr %i.ai, align 8
  %i.an = and i32 %i.aj, 15                       ; 2 uses
  %i.ao = add nsw i32 %i.an, -7
  %spec.select.i.i.i.i = icmp ult i32 %i.ao, 2
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i: ; preds = %._crit_edge
  %i.ap = icmp ne i32 %4, 0
  %i.aq = icmp ne i32 %i.an, 9
  %spec.select.i.i = and i1 %i.ap, %i.aq
  br i1 %spec.select.i.i, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i, label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i, %._crit_edge
  %i.ar = or i32 %i.am, 16384
  store i32 %i.ar, ptr %i.ai, align 8
  br label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit

_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !610, !nonnull !60, !align !61
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !227
  store ptr @.str.37, ptr %10, align 8, !tbaa !228
  store i8 3, ptr %i.at, align 8, !tbaa !229
  %i.av = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28 ; 4 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull %i.ah, ptr noundef null) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.av) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 3 uses
  store ptr null, ptr %11, align 8, !tbaa !619
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !433
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !621
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !623
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr null, ptr %i.bc, align 8, !tbaa !634
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.bd, align 8, !tbaa !635
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 68
  store i8 0, ptr %i.be, align 4, !tbaa !636
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 69
  store i8 2, ptr %i.bf, align 1, !tbaa !637
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 70
  store i8 7, ptr %i.bg, align 2, !tbaa !638
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.ax, align 8, !tbaa !222
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.ay, align 8, !tbaa !222
  store ptr %i.av, ptr %i.bi, align 8, !tbaa !639
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.bj, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  call void @_ZNSt6vectorIPN4llvm5ValueESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef %.0.val1, ptr noundef %i.a)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !1925 ; 2 uses
  %i.bn = trunc i16 %i.bm to i1
  br i1 %i.bn, label %bb.b, label %_ZN4llvm8Function9arg_beginEv.exit.i

bb.b:                                             ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ah) #26
  %.pre.i = load i16, ptr %i.bl, align 2, !tbaa !1925
  br label %_ZN4llvm8Function9arg_beginEv.exit.i

_ZN4llvm8Function9arg_beginEv.exit.i:             ; preds = %bb.b, %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  %i.bo = phi i16 [ %i.bm, %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit ], [ %.pre.i, %bb.b ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1937 ; 3 uses
  %i.br = trunc i16 %i.bo to i1
  br i1 %i.br, label %bb.c, label %_ZN4llvm8Function4argsEv.exit

bb.c:                                             ; preds = %_ZN4llvm8Function9arg_beginEv.exit.i
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ah) #26
  %.pre1.i = load ptr, ptr %i.bp, align 8, !tbaa !1937
  br label %_ZN4llvm8Function4argsEv.exit

_ZN4llvm8Function4argsEv.exit:                    ; preds = %_ZN4llvm8Function9arg_beginEv.exit.i, %bb.c
  %i.bs = phi ptr [ %i.bq, %_ZN4llvm8Function9arg_beginEv.exit.i ], [ %.pre1.i, %bb.c ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1938
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bv ; 2 uses
  %.not3417 = icmp eq ptr %i.bq, %i.bw
  br i1 %.not3417, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %_ZN4llvm8Function4argsEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %.pre21 = load ptr, ptr %14, align 8, !tbaa !656
  %.pre22 = load ptr, ptr %i.bx, align 8, !tbaa !668
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit
  %i.by = phi ptr [ null, %.lr.ph ], [ %.pre, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.bz = phi ptr [ null, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.ca = phi ptr [ null, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.03316 = phi ptr [ %.0.val1, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.cb = load ptr, ptr %.03316, align 8, !tbaa !431
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !664 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !429
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !667
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.cf = ptrtoint ptr %i.bz to i64
  %i.cg = ptrtoint ptr %i.by to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 6 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.g, label %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #28 ; 5 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store ptr %i.cd, ptr %i.cq, align 8, !tbaa !429
  %i.cr = icmp sgt i64 %i.ch, 0
  br i1 %i.cr, label %bb.h, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr align 8 %i.by, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.ch) #29
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.cp, ptr %7, align 8, !tbaa !666
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !667
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn ; 2 uses
  store ptr %i.ct, ptr %i.c, align 8, !tbaa !669
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre = phi ptr [ %i.by, %bb.e ], [ %i.cp, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cu = phi ptr [ %i.bz, %bb.e ], [ %i.ct, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.cv = phi ptr [ %i.ce, %bb.e ], [ %i.cs, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03316, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cw, %i.a
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge20:                                    ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit, %_ZN4llvm8Function4argsEv.exit
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !651
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %._crit_edge20, %bb.j
  %i.cz = phi ptr [ %i.cy, %bb.j ], [ null, %._crit_edge20 ]
  %i.da = load ptr, ptr %12, align 8, !tbaa !657  ; 2 uses
  %i.db = load ptr, ptr %14, align 8, !tbaa !656
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.dg, align 8
  %i.dh = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef %i.cz, ptr noundef %i.ad, ptr %i.da, i64 %i.df, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.di = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !651
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !661
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !429
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = and i32 %i.do, 255
  %i.dq = icmp eq i32 %i.dp, 7
  %i.dr = load ptr, ptr %i.az, align 8, !tbaa !642, !nonnull !60, !align !61 ; 2 uses
  br i1 %i.dq, label %bb.q, label %bb.r

bb.k:                                             ; preds = %.lr.ph19, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit
  %i.ds = phi ptr [ %.pre22, %.lr.ph19 ], [ %i.eo, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.dt = phi ptr [ %.pre21, %.lr.ph19 ], [ %i.ep, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.018 = phi ptr [ %i.bq, %.lr.ph19 ], [ %i.eq, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dt, %i.ds
  br i1 %.not.i.i35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.018, ptr %i.dt, align 8, !tbaa !431
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store ptr %i.du, ptr %14, align 8, !tbaa !656
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %12, align 8, !tbaa !657  ; 4 uses
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.n, label %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i36, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #28 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store ptr %.018, ptr %i.eh, align 8, !tbaa !431
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.o, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %.not.i17.i.i.i38 = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i.i38, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ek = load ptr, ptr %i.bx, align 8, !tbaa !668
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.em) #29
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.eg, ptr %12, align 8, !tbaa !657
  store ptr %i.ej, ptr %14, align 8, !tbaa !656
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee ; 2 uses
  store ptr %i.en, ptr %i.bx, align 8, !tbaa !668
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.l, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.eo = phi ptr [ %i.ds, %bb.l ], [ %i.en, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ep = phi ptr [ %i.du, %bb.l ], [ %i.ej, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.018, i64 40 ; 2 uses
  %.not34 = icmp eq ptr %i.eq, %i.bw
  br i1 %.not34, label %._crit_edge20, label %bb.k

bb.q:                                             ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %i.er = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #26 ; 3 uses
  call void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef null, i32 0, ptr null, i64 0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.bb, align 8, !tbaa !643, !nonnull !60, !align !61 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bk, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !222
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.er, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #26, !inline_history !30
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull %i.er) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.s

bb.r:                                             ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %.not.i.i39 = icmp ne ptr %i.dh, null
  %i.ex = zext i1 %.not.i.i39 to i32              ; 2 uses
  %i.ey = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 %i.ex) #26 ; 3 uses
  call void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.dh, i32 %i.ex, ptr null, i64 0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.ez, align 8
  %i.fa = load ptr, ptr %i.bb, align 8, !tbaa !643, !nonnull !60, !align !61 ; 2 uses
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %i.bk, align 8
  %.sroa.2.0.copyload.i.i42 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !222
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull %i.ey, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.sroa.0.0.copyload.i.i40, i64 %.sroa.2.0.copyload.i.i42) #26, !inline_history !1923
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull %i.ey) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fe = load ptr, ptr %12, align 8, !tbaa !657  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !668
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #29
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit:     ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.fk = load ptr, ptr %7, align 8, !tbaa !666   ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !669
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #29
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit:      ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %i.ah
}

declare noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm8Function10addRetAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm3orc23ItaniumCXAAtExitSupport10runAtExitsEPv(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef ptr @_ZN4llvm8Function6CreateEPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesERKNS_5TwineERNS_6ModuleE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm4TypeESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKPN4llvm4TypeEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !669
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !667  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.w, label %bb.c
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPN4llvm5ValueESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.by = load ptr, ptr %1, align 8, !tbaa !431
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !431
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i51 = icmp eq ptr %i.ay, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit50
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !668
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #29
  br label %_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit50, %bb.ai
  store ptr %i.bk, ptr %0, align 8, !tbaa !657
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !656
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !668
  br label %_ZSt4copyIPKPN4llvm5ValueEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

_ZSt4copyIPKPN4llvm5ValueEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

declare void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN4llvm3orc17ThreadSafeContext5StateEEvPT_.exit, label %_ZNKSt14default_deleteIN4llvm11LLVMContextEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm11LLVMContextEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #29
  br label %_ZSt8_DestroyIN4llvm3orc17ThreadSafeContext5StateEEvPT_.exit

_ZSt8_DestroyIN4llvm3orc17ThreadSafeContext5StateEEvPT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm11LLVMContextEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm3orc8Platform17lookupInitSymbolsERNS0_16ExecutionSessionERKNS_8DenseMapIPNS0_8JITDylibENS0_15SymbolLookupSetENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.1282") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4llvm3orc8JITDylib15getDFSLinkOrderEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.1293") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !527  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !208 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.f, -1
  %i.g = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !526
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !528
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !548
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !548
  %i.t = load ptr, ptr %0, align 8, !tbaa !521    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !522  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !523
  %i.y = add i32 %i.x, -1                         ; 4 uses
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 5
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %i.ae = add i32 %i.ad, 1
  %i.af = and i32 %i.ae, %i.y                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !219
  %i.ak = and i32 %i.af, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44
  %.pn = phi i64 [ %i.bk, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ], [ %i.ag, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ]
  %i.an = phi i32 [ %i.bj, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ], [ %i.af, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ] ; 3 uses
  %.03349 = phi i32 [ %.2, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ], [ %i.ad, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.pn ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !210 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = mul i64 %i.aq, -4658895280553007687     ; 2 uses
  %i.as = lshr i64 %i.ar, 31
  %i.at = xor i64 %i.as, %i.ar
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = sub i32 %.03349, %i.au
  %i.aw = and i32 %i.av, %i.y
  %i.ax = sub i32 %i.an, %i.au
  %i.ay = and i32 %i.ax, %i.y
  %i.az = icmp ult i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.d, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44

bb.d:                                             ; preds = %.lr.ph
  %i.ba = zext i32 %.03349 to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.ba ; 3 uses
  store ptr %i.ap, ptr %i.bb, align 8, !tbaa !210
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !529
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !529
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !528
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44:         ; preds = %bb.d, %.lr.ph
  %.2 = phi i32 [ %i.an, %bb.d ], [ %.03349, %.lr.ph ] ; 2 uses
  %i.bi = add i32 %i.an, 1
  %i.bj = and i32 %i.bi, %i.y                     ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !219
  %i.bo = and i32 %i.bj, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit
  %.033.lcssa = phi i32 [ %i.ad, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ], [ %.2, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ] ; 2 uses
  %i.br = and i32 %.033.lcssa, 31
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = xor i32 %i.bs, -1
  %i.bu = lshr i32 %.033.lcssa, 5
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !219
  %i.by = and i32 %i.bx, %i.bt
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !532  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS4_INS5_15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !533
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !534
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !219  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !416  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !417
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !418
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !219 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !208 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.ai, -1
  %i.aj = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.aj, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = atomicrmw add ptr %i.ak, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.am = add i32 %.0.i3.i.i.i, -1
  %i.an = and i32 %i.am, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !16

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !17

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.r, align 4, !tbaa !416 ; 2 uses
  %i.ao = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ao, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !417
  %i.aq = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ar = mul nuw nsw i64 %i.aq, 24
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  %i.aw = add i32 %.0.i3, -1
  %i.ax = and i32 %i.aw, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1939

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS1_INS2_15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS4_INS5_15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1940

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS4_INS5_15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm3orc5LLJIT15PlatformSupportD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123InactivePlatformSupportD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_123InactivePlatformSupport10initializeERN4llvm3orc8JITDylibE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #19 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_123InactivePlatformSupport12deinitializeERN4llvm3orc8JITDylibE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #19 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !218
  ret void
}

declare void @_ZN4llvm3orc16IRPartitionLayerC1ERNS0_16ExecutionSessionERNS0_7IRLayerE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN4llvm3orc20CompileOnDemandLayerC1ERNS0_16ExecutionSessionERNS0_7IRLayerERNS0_22LazyCallThroughManagerESt8functionIFSt10unique_ptrINS0_20IndirectStubsManagerESt14default_deleteISA_EEvEE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(168), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
