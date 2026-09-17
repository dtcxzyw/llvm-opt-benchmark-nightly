Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PlatformDarwin?download=true
inline.NumInlined: 11009
inline.NumDeleted: 1790
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeE:._crit_edge.i.i
  br label %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7668"

"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7668": ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7666
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.hn = icmp eq i32 %i.hh, 30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br i1 %i.hn, label %bb.aa, label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.ho = icmp eq i32 %i.gc, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br i1 %i.ho, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7659", %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7662", %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7665", %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7668", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.hp = load ptr, ptr %0, align 8, !tbaa !25
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call { i64, i64 } %i.hr(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef null) #25 ; 2 uses
  %i.ht = extractvalue { i64, i64 } %i.hs, 0      ; 2 uses
  %i.hu = extractvalue { i64, i64 } %i.hs, 1      ; 2 uses
  store i64 %i.ht, ptr %25, align 8, !tbaa !42
  %.sroa.47607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.hu, ptr %.sroa.47607.0..sroa_idx, align 8, !tbaa !42
  br label %bb.am

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7659", %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7662", %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7665", %"_ZZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeEENK3$_0clEv.exit7668", %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %.not7637 = icmp eq ptr %1, null
  br i1 %.not7637, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @_ZN12lldb_private6Target19GetExecutableModuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.441") align 8 %26, ptr noundef nonnull align 8 dereferenceable(2200) %1) #25
  %i.hv = load ptr, ptr %26, align 8, !tbaa !322  ; 3 uses
  %.not = icmp eq ptr %i.hv, null
  br i1 %.not, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !25
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call noundef ptr %i.hy(ptr noundef nonnull align 8 dereferenceable(952) %i.hv) #25 ; 3 uses
  %.not7638 = icmp eq ptr %i.hz, null
  br i1 %.not7638, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 328
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call { i64, i64 } %i.ic(ptr noundef nonnull align 8 dereferenceable(200) %i.hz) #25 ; 2 uses
  %i.ie = extractvalue { i64, i64 } %i.id, 0
  %i.if = extractvalue { i64, i64 } %i.id, 1
  store i64 %i.ie, ptr %25, align 8, !tbaa !42
  %.sroa.47603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.if, ptr %.sroa.47603.0..sroa_idx, align 8, !tbaa !42
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.ig = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !49 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 4 uses
  %i.ij = load atomic i64, ptr %i.ii acquire, align 8 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 4294967297
  %i.il = trunc i64 %i.ij to i32                  ; 2 uses
  br i1 %i.ik, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ii, align 8, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  store i32 0, ptr %i.im, align 4, !tbaa !52
  %i.in = load ptr, ptr %i.ih, align 8, !tbaa !25
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #25, !inline_history !6
  %i.iq = load ptr, ptr %i.ih, align 8, !tbaa !25
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #25, !inline_history !6
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iu = add nsw i32 %i.il, -1
  store i32 %i.iu, ptr %i.ii, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.iv = atomicrmw volatile add ptr %i.ii, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i = phi i32 [ %i.il, %bb.aj ], [ %i.iv, %bb.ak ]
  %i.iw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.iw, label %bb.al, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #25
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.af, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %.pre = load i64, ptr %25, align 8, !noalias !687
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre15336 = load i64, ptr %.phi.trans.insert, align 8, !noalias !687
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aa
  %i.ix = phi i64 [ 0, %bb.ab ], [ %.pre15336, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.hu, %bb.aa ] ; 2 uses
  %i.iy = phi i64 [ 0, %bb.ab ], [ %.pre, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ht, %bb.aa ]
  %i.iz = and i64 %i.iy, 9223372036854775807
  %or.cond.i.i = icmp eq i64 %i.iz, 0
  %i.ja = and i64 %i.ix, 2147483647
  %i.jb = icmp eq i64 %i.ja, 0
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 %i.jb, i1 false
  br i1 %or.cond7.i.i, label %bb.an, label %_ZNK4llvm12VersionTuple5emptyEv.exit

bb.an:                                            ; preds = %bb.am
  %i.jc = and i64 %i.ix, 4611686014132420608
  %i.jd = icmp eq i64 %i.jc, 0
  br label %_ZNK4llvm12VersionTuple5emptyEv.exit

_ZNK4llvm12VersionTuple5emptyEv.exit:             ; preds = %bb.am, %bb.an
  %i.je = phi i1 [ false, %bb.am ], [ %i.jd, %bb.an ]
  %i.jf = and i32 %3, -3
  %i.jg = icmp eq i32 %i.jf, 8
  %or.cond3.not = or i1 %i.jg, %i.je
  br i1 %or.cond3.not, label %bb.bf, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4llvm12VersionTuple5emptyEv.exit
  %i.jh = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEc(ptr noundef nonnull align 8 dereferenceable(88) %24, i8 noundef signext 45) #25 ; 0 uses
  switch i32 %3, label %.critedge7644 [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
    i32 7, label %bb.aw
    i32 -1, label %bb.aw
    i32 9, label %bb.aw
    i32 10, label %bb.aw
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ji = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 52197), i64 20) #25 ; 0 uses
  br label %.critedge7644

bb.aq:                                            ; preds = %bb.ao
  %i.jj = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 51554), i64 28) #25 ; 0 uses
  br label %.critedge7644

bb.ar:                                            ; preds = %bb.ao
  %i.jk = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 51583), i64 18) #25 ; 0 uses
  br label %.critedge7644

bb.as:                                            ; preds = %bb.ao
  %i.jl = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 58701), i64 29) #25 ; 0 uses
  br label %.critedge7644

bb.at:                                            ; preds = %bb.ao
  %i.jm = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 58731), i64 19) #25 ; 0 uses
  br label %.critedge7644

bb.au:                                            ; preds = %bb.ao
  %i.jn = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 59257), i64 32) #25 ; 0 uses
  br label %.critedge7644

bb.av:                                            ; preds = %bb.ao
  %i.jo = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL21OptionStrTableStorage, i64 59290), i64 22) #25 ; 0 uses
  br label %.critedge7644

bb.aw:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.jp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #25
  %i.jq = load atomic ptr, ptr %i.jp monotonic, align 8 ; 3 uses
  %.not.i.i11459 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i11459, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jr = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.jq) #25
  %i.js = and i64 %i.jr, 2048
  %.not6.i.i = icmp eq i64 %i.js, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store i32 %3, ptr %28, align 8, !tbaa !394
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.5.0..sroa_idx, i8 0, i64 17, i1 false)
  call void @_ZN12lldb_private8XcodeSDK16GetCanonicalNameB5cxx11ENS0_4InfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull byval(%"struct.lldb_private::XcodeSDK::Info") align 8 %28) #25
  %i.jt = load ptr, ptr %27, align 8, !tbaa !41
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %i.jq, ptr nonnull @.str.6, i64 88, ptr nonnull @__func__._ZN12lldb_private14PlatformDarwin42AddClangModuleCompilationOptionsForSDKTypeEPNS_6TargetERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_8XcodeSDK4TypeE, i64 42, ptr noundef nonnull @.str.61, ptr noundef %i.jt) #25
  %i.ju = load ptr, ptr %27, align 8, !tbaa !41   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11460: ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !42
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11462: ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11460
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread

.critedge7644:                                    ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @_ZNK4llvm12VersionTuple11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 4 dereferenceable(16) %25) #25
  %i.jz = load ptr, ptr %29, align 8, !tbaa !41
  %i.ka = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !72
  %i.kc = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr %i.jz, i64 %i.kb) #25 ; 0 uses
  %i.kd = load ptr, ptr %29, align 8, !tbaa !41   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11463: ; preds = %.critedge7644
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !42
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11465: ; preds = %.critedge7644, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11463
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.ki = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %24) #25 ; 2 uses
  %i.kj = extractvalue { ptr, i64 } %i.ki, 0      ; 3 uses
  %i.kk = extractvalue { ptr, i64 } %i.ki, 1      ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 9 uses
  store ptr %i.kl, ptr %30, align 8, !tbaa !71
  %i.km = icmp eq ptr %i.kj, null
  %i.kn = icmp ne i64 %i.kk, 0
  %or.cond.i.i.i = and i1 %i.km, %i.kn
  br i1 %or.cond.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11465
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.97) #26
  unreachable

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.kk, ptr %i.e, align 8, !tbaa !70
  %i.ko = icmp ugt i64 %i.kk, 15
  br i1 %i.ko, label %bb.ba, label %._crit_edge.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.kp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.kp, ptr %30, align 8, !tbaa !41
  %i.kq = load i64, ptr %i.e, align 8, !tbaa !70
  store i64 %i.kq, ptr %i.kl, align 8, !tbaa !42
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ba, %bb.az
  %i.kr = phi ptr [ %i.kp, %bb.ba ], [ %i.kl, %bb.az ] ; 2 uses
  switch i64 %i.kk, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ks = load i8, ptr %i.kj, align 1, !tbaa !42
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr align 1 %i.kj, i64 %i.kk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.bb, %bb.bc
  %i.kt = load i64, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !72
  %i.kv = load ptr, ptr %30, align 8, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.kx = load ptr, ptr %i.fu, align 8, !tbaa !395 ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !396
  %.not.i = icmp eq ptr %i.kx, %i.kz
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 3 uses
  store ptr %i.la, ptr %i.kx, align 8, !tbaa !71
  %i.lb = load ptr, ptr %30, align 8, !tbaa !41   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.kl
  br i1 %i.lc, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11466

bb.be:                                            ; preds = %bb.bd
  %i.ld = load i64, ptr %i.ku, align 8, !tbaa !72 ; 3 uses
  %i.le = icmp ult i64 %i.ld, 16
  call void @llvm.assume(i1 %i.le)
  %i.lf = add nuw nsw i64 %i.ld, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.la, ptr noundef nonnull align 8 dereferenceable(1) %i.kl, i64 %i.lf, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11466: ; preds = %bb.bd
  store ptr %i.lb, ptr %i.kx, align 8, !tbaa !41
  %i.lg = load i64, ptr %i.kl, align 8, !tbaa !42
  store i64 %i.lg, ptr %i.la, align 8, !tbaa !42
  %.pre15337 = load i64, ptr %i.ku, align 8, !tbaa !72
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11466
  %i.lh = phi i64 [ %.pre15337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11466 ], [ %i.ld, %bb.be ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !72
  store ptr %i.kl, ptr %30, align 8, !tbaa !41
  store i64 0, ptr %i.ku, align 8, !tbaa !72
  %i.lj = load ptr, ptr %i.fu, align 8, !tbaa !395
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  store ptr %i.lk, ptr %i.fu, align 8, !tbaa !395
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11469

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kx, ptr noundef nonnull align 8 dereferenceable(32) %30)
  %.pre15338 = load ptr, ptr %30, align 8, !tbaa !41 ; 2 uses
  %i.ll = icmp eq ptr %.pre15338, %i.kl
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11467: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.lm = load i64, ptr %i.kl, align 8, !tbaa !42
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %.pre15338, i64 noundef %i.ln) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11469: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11467
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11469, %_ZNK4llvm12VersionTuple5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #25
  %.not7640 = icmp eq ptr %1, null
  br i1 %.not7640, label %bb.cm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !688
  call void @_ZN12lldb_private6Target19GetExecutableModuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.441") align 8 %10, ptr noundef nonnull align 8 dereferenceable(2200) %1) #25, !noalias !688
  %i.lo = load ptr, ptr %10, align 8, !tbaa !322, !noalias !688 ; 3 uses
  %.not31.i = icmp eq ptr %i.lo, null
  br i1 %.not31.i, label %._crit_edge.i.i.i.i.i, label %bb.bh

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !688
  %i.lp = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #25, !noalias !689 ; 2 uses
  %i.lq = extractvalue { i32, ptr } %i.lp, 0
  %i.lr = extractvalue { i32, ptr } %i.lp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !690
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ls, ptr %9, align 8, !tbaa !71, !noalias !690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !690
  store i64 32, ptr %i.d, align 8, !tbaa !70, !noalias !690
  %i.lt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #25, !noalias !690 ; 2 uses
  store ptr %i.lt, ptr %9, align 8, !tbaa !41, !noalias !690
  %i.lu = load i64, ptr %i.d, align 8, !tbaa !70, !noalias !690 ; 3 uses
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !42, !noalias !690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lt, ptr noundef nonnull align 1 dereferenceable(32) @.str.130, i64 32, i1 false), !noalias !690
  %i.lv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !72, !noalias !690
  %i.lw = load ptr, ptr %9, align 8, !tbaa !41, !noalias !690
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 0, ptr %i.lx, align 1, !tbaa !42, !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !690
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 %i.lq, ptr %i.lr) #25, !noalias !688
  %i.ly = load ptr, ptr %9, align 8, !tbaa !41, !noalias !690 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ls
  br i1 %i.lz, label %_ZN4llvm5ErrorD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.ma = load i64, ptr %i.ls, align 8, !tbaa !42, !noalias !690
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #24, !noalias !688
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %._crit_edge.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !690
  %i.mc = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 8, !alias.scope !688
  %i.me = or i8 %i.md, 1
  store i8 %i.me, ptr %i.mc, align 8, !alias.scope !688
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
end_hunk_0
begin_hunk_1_@_ZN12lldb_private14PlatformDarwin27ResolveSDKPathFromDebugInfoB5cxx11ERNS_11CompileUnitE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ax = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ax, ptr %10, align 8, !tbaa !41
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.az = phi ptr [ %i.ax, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  switch i64 %i.av, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !42
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !42
  br label %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit

_ZN12lldb_private8XcodeSDKC2ERKS0_.exit:          ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !72
  %i.bd = load ptr, ptr %10, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !tbaa.struct !80
  call void @_ZN12lldb_private14PlatformDarwin15ResolveXcodeSDKENS_8XcodeSDKE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.790") align 8 %9, ptr nofree noundef nonnull align 8 dereferenceable(56) %10)
  %i.bh = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %_ZN12lldb_private8XcodeSDKD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !42
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #24
  br label %_ZN12lldb_private8XcodeSDKD2Ev.exit

_ZN12lldb_private8XcodeSDKD2Ev.exit:              ; preds = %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8             ; 2 uses
  %i.bn = trunc i8 %i.bm to i1
  br i1 %i.bn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i6, label %bb.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i6: ; preds = %_ZN12lldb_private8XcodeSDKD2Ev.exit
  %i.bo = load i64, ptr %9, align 8, !tbaa !397, !noalias !1057
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr null, ptr %9, align 8, !tbaa !397, !noalias !1057
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = or i8 %i.br, 1
  store i8 %i.bs, ptr %i.bq, align 8
  store ptr %i.bp, ptr %0, align 8, !tbaa !397, !alias.scope !1058
  br label %bb.k

bb.i:                                             ; preds = %_ZN12lldb_private8XcodeSDKD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8
  %i.bv = and i8 %i.bu, -2
  store i8 %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !71
  %i.bx = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !72 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  store ptr %i.bx, ptr %0, align 8, !tbaa !41
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !42
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = phi i64 [ %i.cb, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.pre17 = load i8, ptr %i.bl, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i6
  %i.ch = phi i8 [ %.pre17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bm, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i6 ]
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.l, label %_ZN4llvm8ExpectedIN12lldb_private8FileSpecEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %9, align 8, !tbaa !397   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIN12lldb_private8FileSpecEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.l
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #25, !inline_history !9
  br label %_ZN4llvm8ExpectedIN12lldb_private8FileSpecEED2Ev.exit

_ZN4llvm8ExpectedIN12lldb_private8FileSpecEED2Ev.exit: ; preds = %bb.k, %bb.l, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm8ExpectedIN12lldb_private8FileSpecEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit3
  %i.cn = load i8, ptr %i.f, align 8
  %i.co = trunc i8 %i.cn to i1
  %i.cp = load ptr, ptr %6, align 8, !tbaa !55    ; 5 uses
  br i1 %i.co, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN4llvm8ExpectedIN12lldb_private8XcodeSDKEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %bb.n
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !42
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #24
  br label %_ZN4llvm8ExpectedIN12lldb_private8XcodeSDKEED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i12 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i12, label %_ZN4llvm8ExpectedIN12lldb_private8XcodeSDKEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i13

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i13: ; preds = %bb.o
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #25, !inline_history !1051
  br label %_ZN4llvm8ExpectedIN12lldb_private8XcodeSDKEED2Ev.exit

_ZN4llvm8ExpectedIN12lldb_private8XcodeSDKEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10, %bb.o, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private14PlatformDarwin20GetSafeAutoLoadPathsERKNS_6TargetE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.892") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(2200) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::formatv_object", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.993, align 1            ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.lldb_private::XcodeSDK", align 8 ; 11 uses
  %9 = alloca %"struct.lldb_private::XcodeSDK::Info", align 8 ; 3 uses
  %10 = alloca %"class.llvm::Expected.790", align 8 ; 13 uses
  %11 = alloca %"class.lldb_private::XcodeSDK", align 8 ; 9 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %13 = alloca %"class.lldb_private::XcodeSDK", align 8 ; 8 uses
  %14 = alloca %"class.llvm::Expected.790", align 8 ; 6 uses
  %15 = alloca %"class.lldb_private::XcodeSDK", align 8 ; 9 uses
  %16 = alloca %"class.llvm::SmallString", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.lldb_private::FileSpecList", align 16 ; 8 uses
  %23 = alloca %"class.lldb_private::FileSpec", align 8 ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #25
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) #25
  %i.f = and i64 %i.e, 294912
  %.not6.i.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i.i, label %bb.c, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 760 ; 2 uses
  %i.h = tail call noundef i32 @_ZN12lldb_private8XcodeSDK19GetSDKTypeForTripleERKN4llvm6TripleE(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 %i.h, ptr %9, align 8, !tbaa !394
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.5.0..sroa_idx, i8 0, i64 17, i1 false)
  call void @_ZN12lldb_private8XcodeSDKC1ENS0_4InfoE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull byval(%"struct.lldb_private::XcodeSDK::Info") align 8 %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.i, ptr %11, align 8, !tbaa !71
  %i.j = load ptr, ptr %8, align 8, !tbaa !41     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.l, ptr %i.b, align 8, !tbaa !70
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !41
  %i.o = load i64, ptr %i.b, align 8, !tbaa !70
  store i64 %i.o, ptr %i.i, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.i, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !42
  store i8 %i.q, ptr %i.p, align 1, !tbaa !42
  br label %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit

_ZN12lldb_private8XcodeSDKC2ERKS0_.exit:          ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !72
  %i.t = load ptr, ptr %11, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !80
  call void @_ZN12lldb_private14PlatformDarwin15ResolveXcodeSDKENS_8XcodeSDKE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.790") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(56) %11)
  %i.x = load ptr, ptr %11, align 8, !tbaa !41    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %_ZN12lldb_private8XcodeSDKD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit
  %i.z = load i64, ptr %i.i, align 8, !tbaa !42
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZN12lldb_private8XcodeSDKD2Ev.exit

_ZN12lldb_private8XcodeSDKD2Ev.exit:              ; preds = %_ZN12lldb_private8XcodeSDKC2ERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8             ; 2 uses
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.s

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN12lldb_private8XcodeSDKD2Ev.exit
  %i.ae = load i64, ptr %10, align 8, !tbaa !397, !noalias !1072 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !397, !noalias !1072
  %.not = icmp eq ptr %.0.i.i, null               ; 2 uses
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ag = call noundef ptr @_ZN12lldb_private15GetLLDBErrorLogEv() #25 ; 2 uses
  %.not10 = icmp eq ptr %i.ag, null
  br i1 %.not10, label %bb.j, label %.thread

.thread:                                          ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %bb.g
  %.059 = phi ptr [ %i.ag, %bb.g ], [ %.0.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %.not60 = icmp eq i64 %i.ae, 0
  br i1 %.not60, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.thread
  store ptr %i.af, ptr %12, align 8, !tbaa !75
  call void @_ZN12lldb_private3Log11FormatErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN4llvm5ErrorENSA_9StringRefESC_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.059, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr nonnull @.str.6, i64 88, ptr nonnull @__func__._ZNK12lldb_private14PlatformDarwin20GetSafeAutoLoadPathsERKNS_6TargetE, i64 20, ptr noundef nonnull @.str.80, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.ah = load ptr, ptr %12, align 8, !tbaa !75   ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #25, !inline_history !7
  br label %_ZN4llvm5ErrorD2Ev.exit12

bb.j:                                             ; preds = %.thread, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.af, ptr %6, align 8, !tbaa !75
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %i.am = load ptr, ptr %6, align 8, !tbaa !75    ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvm5ErrorD2Ev.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #25, !inline_history !8
  br label %_ZN4llvm5ErrorD2Ev.exit11

_ZN4llvm5ErrorD2Ev.exit11:                        ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN4llvm5ErrorD2Ev.exit12

_ZN4llvm5ErrorD2Ev.exit12:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit11, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1073
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ar, ptr noundef nonnull align 1 dereferenceable(10) @.str.134, i64 10, i1 false), !noalias !1073
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.at, align 2, !tbaa !42, !noalias !1073
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.au, ptr %13, align 8, !tbaa !71, !alias.scope !1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.au, ptr noundef nonnull align 8 dereferenceable(11) %i.ar, i64 11, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 10, ptr %i.av, align 8, !tbaa !72, !alias.scope !1073
  store ptr %i.ar, ptr %4, align 8, !tbaa !41, !noalias !1073
  store i64 0, ptr %i.as, align 8, !tbaa !72, !noalias !1073
  store i8 0, ptr %i.ar, align 8, !tbaa !42, !noalias !1073
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #25
  %i.ax = load ptr, ptr %4, align 8, !tbaa !41, !noalias !1073 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ar
  br i1 %i.ay, label %_ZN12lldb_private8XcodeSDK11GetAnyMacOSEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit12
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !42, !noalias !1073
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZN12lldb_private8XcodeSDK11GetAnyMacOSEv.exit

_ZN12lldb_private8XcodeSDK11GetAnyMacOSEv.exit:   ; preds = %_ZN4llvm5ErrorD2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1073
  %i.bb = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN12lldb_private8XcodeSDKaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %13) #25 ; 0 uses
  %i.bc = load ptr, ptr %13, align 8, !tbaa !41   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.au
  br i1 %i.bd, label %_ZN12lldb_private8XcodeSDKD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZN12lldb_private8XcodeSDK11GetAnyMacOSEv.exit
  %i.be = load i64, ptr %i.au, align 8, !tbaa !42
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZN12lldb_private8XcodeSDKD2Ev.exit16

_ZN12lldb_private8XcodeSDKD2Ev.exit16:            ; preds = %_ZN12lldb_private8XcodeSDK11GetAnyMacOSEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN12lldb_private8XcodeSDKD2Ev.exit16
  %i.bg = call { ptr, i64 } @_ZNK12lldb_private8XcodeSDK9GetStringEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #25 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr @.str.81, ptr %3, align 8, !tbaa !69, !alias.scope !1074
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 25, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1074
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !292, !alias.scope !1074
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1074
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.bl, align 8, !tbaa !295, !alias.scope !1074
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.bh, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bn = ptrtoint ptr %i.bm to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %i.bj, align 8, !alias.scope !1074
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.bn, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !42, !alias.scope !1074
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.6, i64 88, ptr nonnull @__func__._ZNK12lldb_private14PlatformDarwin20GetSafeAutoLoadPathsERKNS_6TargetE, i64 20, ptr noundef nonnull align 8 dereferenceable(33) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN12lldb_private8XcodeSDKD2Ev.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.bo, ptr %15, align 8, !tbaa !71
  %i.bp = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !72  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !70
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %bb.n, label %._crit_edge.i.i.i17
end_hunk_1
