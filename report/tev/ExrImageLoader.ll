Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ExrImageLoader?download=true
inline.NumInlined: 7920
inline.NumDeleted: 3043
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
.noexc367:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aaf ; 4 uses
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %.0.i.i.i357
  store i64 %i.zx, ptr %i.aaq, align 8, !tbaa !86
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8 ; 3 uses
  %i.aat = load ptr, ptr %i.yc, align 8, !tbaa !272 ; 2 uses
  %i.aau = load ptr, ptr %.reload.addr1227, align 8, !tbaa !274 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i358 = icmp eq ptr %i.aat, %i.aau
  br i1 %.not4.i.i.i.i.i.i.i.i.i358, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i359

.lr.ph.i.i.i.i.i.i.i.i.i359:                      ; preds = %.noexc367, %.lr.ph.i.i.i.i.i.i.i.i.i359
  %i.aav = phi ptr [ %i.aay, %.lr.ph.i.i.i.i.i.i.i.i.i359 ], [ %i.aaq, %.noexc367 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i360 = phi ptr [ %i.aaw, %.lr.ph.i.i.i.i.i.i.i.i.i359 ], [ %i.aat, %.noexc367 ]
  %i.aaw = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i360, i64 -8 ; 3 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !86, !noalias !761
  %i.aay = getelementptr inbounds i8, ptr %i.aav, i64 -8 ; 3 uses
  store i64 %i.aax, ptr %i.aay, align 8, !tbaa !86, !noalias !761
  %.not.i.i.i.i.i.i.i.i.i361 = icmp eq ptr %i.aaw, %i.aau
  br i1 %.not.i.i.i.i.i.i.i.i.i361, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359, label %.lr.ph.i.i.i.i.i.i.i.i.i359, !llvm.loop !749

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i359
  br label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !749

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.noexc367, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359
  %.sroa.436.0.i.i.i.i.i.i.i.i362 = phi ptr [ %i.aay, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359 ], [ %i.aaq, %.noexc367 ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i362, ptr %.reload.addr1227, align 8, !tbaa !273
  store ptr %i.aas, ptr %i.yc, align 8, !tbaa !273
  %i.aaz = load ptr, ptr %i.yd, align 8, !tbaa !273
  store ptr %i.aar, ptr %i.yd, align 8, !tbaa !273
  %.not.i5.i.i363 = icmp eq ptr %i.aau, null
  br i1 %.not.i5.i.i363, label %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, label %.from.1066

.from.1066:                                       ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aau to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aau, i64 noundef %i.abc) #34
  br label %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i

.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, %.from.1066, %.from.1070
  %.0.i364 = phi ptr [ %i.aab, %.from.1070 ], [ %i.aas, %.from.1066 ], [ %i.aas, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i ]
  store ptr %.0.i364, ptr %i.yc, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.abe = load i8, ptr %i.abd, align 8           ; 2 uses
  %i.abf = trunc i8 %i.abe to i1                  ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.abh = load ptr, ptr %i.abg, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zp, i64 9
  %i.abj = select i1 %i.abf, ptr %i.abh, ptr %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.abl = load i64, ptr %i.abk, align 8
  %i.abm = lshr i8 %i.abe, 1
  %i.abn = zext nneg i8 %i.abm to i64
  %i.abo = select i1 %i.abf, i64 %i.abl, i64 %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.zp, i64 72
  %.sroa.0.0.copyload.i = load i64, ptr %i.abp, align 8, !tbaa !77
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zp, i64 56
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !275
  %i.abs = icmp eq i32 %i.abr, 1
  %i.abt = select i1 %i.abs, i32 6, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr1234, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev7ChannelC1ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES9_NS1_10shared_ptrINS_11PixelBufferEEEmm(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr %i.abj, i64 %i.abo, i64 %.sroa.0.0.copyload.i, i32 noundef 7, i32 noundef %i.abt, ptr nofree noundef nonnull align 8 dereferenceable(16) %.reload.addr1234, i64 noundef 0, i64 noundef 1)
          to label %bb.ew unwind label %.from.1076

bb.ew:                                            ; preds = %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.abu = load ptr, ptr %i.zr, align 8, !tbaa !268 ; 6 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !276
  %i.abx = icmp ult ptr %i.abu, %i.abw
  br i1 %i.abx, label %.thread799, label %bb.ex

.thread799:                                       ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.abu, ptr noundef nonnull align 8 dereferenceable(72) %21, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %21, i8 0, i64 24, i1 false)
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aby, ptr noundef nonnull align 8 dereferenceable(12) %i.ye, i64 12, i1 false)
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abu, i64 40
  %i.aca = load <2 x ptr>, ptr %i.yf, align 8, !tbaa !94
  store <2 x ptr> %i.aca, ptr %i.abz, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abu, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acb, ptr noundef nonnull align 8 dereferenceable(16) %i.yh, i64 16, i1 false)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abu, i64 72
  store ptr %i.acc, ptr %i.zr, align 8, !tbaa !268
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i

bb.ex:                                            ; preds = %bb.ew
  %i.acd = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.zq, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %bb.ey unwind label %.from.1073

bb.ey:                                            ; preds = %bb.ex
  %.pre707 = load ptr, ptr %i.yg, align 8, !tbaa !279 ; 5 uses
  store ptr %i.acd, ptr %i.zr, align 8, !tbaa !268
  %.not.i.i370 = icmp eq ptr %.pre707, null
  br i1 %.not.i.i370, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ace = getelementptr inbounds nuw i8, ptr %.pre707, i64 8
  %i.acf = atomicrmw add ptr %i.ace, i64 -1 acq_rel, align 8
  %i.acg = icmp eq i64 %i.acf, 0
  br i1 %i.acg, label %bb.fa, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i

bb.fa:                                            ; preds = %bb.ez
  %i.ach = load ptr, ptr %.pre707, align 8, !tbaa !106
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %i.acj = load ptr, ptr %i.aci, align 8
  call void %i.acj(ptr noundef nonnull align 8 dereferenceable(24) %.pre707) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre707) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i: ; preds = %.thread799, %bb.fa, %bb.ez, %bb.ey
  %i.ack = load i8, ptr %21, align 8
  %i.acl = trunc i8 %i.ack to i1
  br i1 %i.acl, label %bb.fb, label %_ZN3tev7ChannelD2Ev.exit

bb.fb:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i
  %i.acm = load ptr, ptr %i.yi, align 8, !tbaa !77
  %i.acn = load i64, ptr %21, align 8
  %i.aco = and i64 %i.acn, -2
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.aco) #34
  br label %_ZN3tev7ChannelD2Ev.exit

_ZN3tev7ChannelD2Ev.exit:                         ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i, %bb.fb
  %i.acp = load ptr, ptr %i.yj, align 8, !tbaa !279 ; 5 uses
  %.not.i372 = icmp eq ptr %i.acp, null
  br i1 %.not.i372, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZN3tev7ChannelD2Ev.exit
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = atomicrmw add ptr %i.acq, i64 -1 acq_rel, align 8
  %i.acs = icmp eq i64 %i.acr, 0
  br i1 %i.acs, label %bb.fd, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit

bb.fd:                                            ; preds = %bb.fc
  %i.act = load ptr, ptr %i.acp, align 8, !tbaa !106
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8
  call void %i.acv(ptr noundef nonnull align 8 dereferenceable(24) %i.acp) #32, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acp) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit: ; preds = %_ZN3tev7ChannelD2Ev.exit, %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.acw = add nuw i64 %.01816541373, 1           ; 3 uses
  %i.acx = load ptr, ptr %i.cw, align 8, !tbaa !171
  %i.acy = load ptr, ptr %.reload.addr1231, align 8, !tbaa !170 ; 2 uses
  %i.acz = ptrtoint ptr %i.acx to i64
  %i.ada = ptrtoint ptr %i.acy to i64
  %i.adb = sub i64 %i.acz, %i.ada
  %i.adc = sdiv exact i64 %i.adb, 120
  %i.add = icmp ult i64 %i.acw, %i.adc
  br i1 %i.add, label %bb.es, label %._crit_edge657, !llvm.loop !740

.from.1118:                                       ; preds = %._crit_edge1374
  %i.ade = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %bb.ga

.from..loopexit578:                               ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i.i
  %lpad.loopexit580 = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %bb.ga

.from..loopexit.split-lp579:                      ; preds = %bb.ev, %bb.eu
  %lpad.loopexit.split-lp581 = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %bb.ga

.from.1076:                                       ; preds = %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.adf = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1116

.from.1073:                                       ; preds = %bb.ex
  %i.adg = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  call void @_ZN3tev7ChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #32
  br label %.from.1116

.from.1116:                                       ; preds = %.from.1076, %.from.1073
  %.pn216 = phi { ptr, i32 } [ %i.adg, %.from.1073 ], [ %i.adf, %.from.1076 ]
  call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr1234) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.ga

"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit": ; preds = %.from..lr.ph.i
  %.pre708 = load ptr, ptr %i.yb, align 8, !tbaa !221
  %.pre709 = load ptr, ptr %.reload.addr1232, align 8, !tbaa !266
  br label %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit"

"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit": ; preds = %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i", %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit"
  %i.adh = phi ptr [ %.pre709, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit" ], [ %i.yr, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i" ] ; 2 uses
  %i.adi = phi ptr [ %.pre708, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit" ], [ %i.ys, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i" ] ; 6 uses
  %.sroa.010.2.i = phi ptr [ %.sroa.010.1.i, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit" ], [ %.sroa.01.0.lcssa.i.i, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i" ] ; 2 uses
  %i.adj = ptrtoint ptr %.sroa.010.2.i to i64     ; 4 uses
  %i.adk = ptrtoint ptr %i.adh to i64
  %i.adl = sub i64 %i.adj, %i.adk
  %i.adm = getelementptr inbounds i8, ptr %i.adh, i64 %i.adl ; 3 uses
  %.not.i373 = icmp eq ptr %.sroa.010.2.i, %i.adi
  br i1 %.not.i373, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.fe

bb.fe:                                            ; preds = %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit"
  %i.adn = ptrtoint ptr %i.adi to i64
  %i.ado = sub i64 %i.adn, %i.adj
  %i.adp = getelementptr inbounds i8, ptr %i.adm, i64 %i.ado ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.adp, %i.adi
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fe, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.ads, %.lr.ph.i.i.i.i.i.i ], [ %i.adm, %bb.fe ] ; 2 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.adr, %.lr.ph.i.i.i.i.i.i ], [ %i.adp, %bb.fe ] ; 2 uses
  %i.adq = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %.08.i.i.i.i.i.i) #32 ; 0 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 280 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 280 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.adr, %i.adi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !750

_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.yb, align 8, !tbaa !221
  %24 = ptrtoint ptr %i.ads to i64
  br label %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i: ; preds = %bb.fe, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i
  %i.adt = phi ptr [ %.pre.i, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.adi, %bb.fe ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi i64 [ %24, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.adj, %bb.fe ]
  %i.adu = sub i64 %storemerge.lcssa.i.i.i.i.i.i, %i.adj
  %i.adv = getelementptr inbounds i8, ptr %i.adm, i64 %i.adu ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.adv, %i.adt
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.adw, %.lr.ph.i.i.i ], [ %i.adt, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i ]
  %i.adw = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.adw) #32
  %.not.i.i.i374 = icmp eq ptr %i.adv, %i.adw
  br i1 %.not.i.i.i374, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i
  store ptr %i.adv, ptr %i.yb, align 8, !tbaa !221
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit"
  %i.adx = phi ptr [ %i.adv, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i ], [ %i.adi, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit" ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1228, i8 0, i64 24, i1 false)
  %i.ady = load ptr, ptr %i.cw, align 8, !tbaa !171
  %i.adz = load ptr, ptr %.reload.addr1231, align 8, !tbaa !170 ; 3 uses
  %.not664 = icmp eq ptr %i.ady, %i.adz
  br i1 %.not664, label %._crit_edge660, label %.from..lr.ph659

.from..lr.ph659:                                  ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %i.aea = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.aec = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aed = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.aee = load i64, ptr %i.adz, align 8, !tbaa !193 ; 2 uses
  %i.aef = load ptr, ptr %.reload.addr1232, align 8, !tbaa !266 ; 2 uses
  %i.aeg = ptrtoint ptr %i.adx to i64
  %i.aeh = ptrtoint ptr %i.aef to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = sdiv exact i64 %i.aei, 280
  %.not.i3781378 = icmp ult i64 %i.aee, %i.aej
  br i1 %.not.i3781378, label %.lr.ph1380, label %._crit_edge1381

._crit_edge660:                                   ; preds = %.from.1095, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  invoke void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %.reload.addr1225, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1228)
          to label %bb.fm unwind label %.from.1106

bb.ff:                                            ; preds = %.from.1095
  %i.aek = getelementptr inbounds nuw [120 x i8], ptr %i.afy, i64 %i.afw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !193 ; 2 uses
  %i.aem = load ptr, ptr %i.yb, align 8, !tbaa !221
  %i.aen = load ptr, ptr %.reload.addr1232, align 8, !tbaa !266 ; 2 uses
  %i.aeo = ptrtoint ptr %i.aem to i64
  %i.aep = ptrtoint ptr %i.aen to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  %i.aer = sdiv exact i64 %i.aeq, 280
  %.not.i378 = icmp ult i64 %i.ael, %i.aer
  br i1 %.not.i378, label %.lr.ph1380, label %._crit_edge1381, !llvm.loop !751

._crit_edge1381:                                  ; preds = %bb.ff, %.from..lr.ph659
  invoke void @_ZNKSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1232) #35
          to label %.noexc379 unwind label %.from..loopexit.split-lp

.noexc379:                                        ; preds = %._crit_edge1381
  unreachable

.lr.ph1380:                                       ; preds = %.from..lr.ph659, %bb.ff
  %i.aes = phi ptr [ %i.aen, %bb.ff ], [ %i.aef, %.from..lr.ph659 ]
  %i.aet = phi i64 [ %i.ael, %bb.ff ], [ %i.aee, %.from..lr.ph659 ]
  %i.aeu = phi ptr [ %i.aek, %bb.ff ], [ %i.adz, %.from..lr.ph659 ]
  %.01316581379 = phi i64 [ %i.afw, %bb.ff ], [ 0, %.from..lr.ph659 ] ; 3 uses
  %i.aev = load ptr, ptr %i.yc, align 8, !tbaa !272
  %i.aew = load ptr, ptr %.reload.addr1227, align 8, !tbaa !274 ; 2 uses
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = ptrtoint ptr %i.aew to i64
  %i.aez = sub i64 %i.aex, %i.aey
  %i.afa = ashr exact i64 %i.aez, 3
  %.not.i381 = icmp ult i64 %.01316581379, %i.afa
  br i1 %.not.i381, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph1380
  invoke void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1227) #35
          to label %.noexc382 unwind label %.from..loopexit.split-lp

.noexc382:                                        ; preds = %bb.fg
  unreachable

bb.fh:                                            ; preds = %.lr.ph1380
  %i.afb = getelementptr inbounds nuw [280 x i8], ptr %i.aes, i64 %i.aet ; 3 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %.01316581379
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !86 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !268
  %i.afg = load ptr, ptr %i.afb, align 8, !tbaa !267 ; 2 uses
  %i.afh = ptrtoint ptr %i.aff to i64
  %i.afi = ptrtoint ptr %i.afg to i64
  %i.afj = sub i64 %i.afh, %i.afi
  %i.afk = sdiv exact i64 %i.afj, 72
  %.not.i383 = icmp ult i64 %i.afd, %i.afk
  br i1 %.not.i383, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZNKSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.afb) #35
          to label %.noexc384 unwind label %.from..loopexit.split-lp

.noexc384:                                        ; preds = %bb.fi
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %.reload = load i32, ptr %.spill.addr, align 8, !tbaa !281
  %i.afl = getelementptr inbounds nuw [72 x i8], ptr %i.afg, i64 %i.afd
  invoke void @_ZNK3tev10RawChannel6copyToERNS_7ChannelEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %22, ptr noundef nonnull align 8 dereferenceable(120) %i.aeu, ptr noundef nonnull align 8 dereferenceable(72) %i.afl, i32 noundef %.reload)
          to label %bb.fk unwind label %.from..loopexit

bb.fk:                                            ; preds = %bb.fj
  %i.afm = load ptr, ptr %i.aea, align 8, !tbaa !286 ; 6 uses
  %i.afn = load ptr, ptr %i.aeb, align 8, !tbaa !287
  %i.afo = icmp ult ptr %i.afm, %i.afn
  br i1 %i.afo, label %.from.1092, label %bb.fl

.from.1092:                                       ; preds = %bb.fk
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afm, i8 0, i64 32, i1 false)
  %i.afq = load i64, ptr %22, align 8, !tbaa !94
  store i64 %i.afq, ptr %i.afm, align 8, !tbaa !94
  %i.afr = load <2 x ptr>, ptr %i.aec, align 8, !tbaa !94
  store <2 x ptr> %i.afr, ptr %i.afp, align 8, !tbaa !94
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  %i.aft = load ptr, ptr %i.aed, align 8, !tbaa !288
  store ptr %i.aft, ptr %i.afs, align 8, !tbaa !288
  store <4 x ptr> splat (ptr null), ptr %22, align 8, !tbaa !94
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afm, i64 32
  br label %.from.1095

bb.fl:                                            ; preds = %bb.fk
  %i.afv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1228, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %.from.1095 unwind label %.from.1098

.from.1095:                                       ; preds = %bb.fl, %.from.1092
  %.0.i385 = phi ptr [ %i.afu, %.from.1092 ], [ %i.afv, %bb.fl ]
  store ptr %.0.i385, ptr %i.aea, align 8, !tbaa !286
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.afw = add nuw i64 %.01316581379, 1           ; 3 uses
  %i.afx = load ptr, ptr %i.cw, align 8, !tbaa !171
  %i.afy = load ptr, ptr %.reload.addr1231, align 8, !tbaa !170 ; 2 uses
  %i.afz = ptrtoint ptr %i.afx to i64
  %i.aga = ptrtoint ptr %i.afy to i64
  %i.agb = sub i64 %i.afz, %i.aga
  %i.agc = sdiv exact i64 %i.agb, 120
  %i.agd = icmp ult i64 %i.afw, %i.agc
  br i1 %i.agd, label %bb.ff, label %._crit_edge660, !llvm.loop !751

.from..loopexit:                                  ; preds = %bb.fj
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1112

.from..loopexit.split-lp:                         ; preds = %bb.fi, %bb.fg, %._crit_edge1381
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1112

.from.1098:                                       ; preds = %bb.fl
  %i.age = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %22) #32
  br label %.from.1112

.from.1112:                                       ; preds = %.from.1098, %.from..loopexit.split-lp, %.from..loopexit
  %.pn212 = phi { ptr, i32 } [ %i.age, %.from.1098 ], [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %.from.1121

bb.fm:                                            ; preds = %._crit_edge660
  %i.agf = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !160
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load atomic i32, ptr %i.agh acquire, align 4
  %i.agj = icmp slt i32 %i.agi, 2
  br i1 %i.agj, label %bb.fn, label %AfterCoroSave837

bb.fn:                                            ; preds = %bb.fm
  %i.agk = load ptr, ptr %i.agf, align 8, !tbaa !160
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.agm = atomicrmw add ptr %i.agl, i32 -1 acq_rel, align 4
  %i.agn = icmp slt i32 %i.agm, 1
  br i1 %i.agn, label %bb.fo, label %.thread563.sink.split

bb.fo:                                            ; preds = %bb.fn
  %i.ago = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i391 unwind label %.from..loopexit.split-lp.i.i388

.noexc.i.i391:                                    ; preds = %bb.fo
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !173 ; 7 uses
  %i.agq = load i32, ptr %i.agp, align 8, !tbaa !208
  %i.agr = and i32 %i.agq, 8
  %.not.i.i.i.i392 = icmp eq i32 %i.agr, 0
  br i1 %.not.i.i.i.i392, label %bb.fp, label %.thread563.sink.split

bb.fp:                                            ; preds = %.noexc.i.i391
end_hunk_0
begin_hunk_1_@_ZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.entry
.noexc367:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.mv ; 4 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.0.i.i.i357
  store i64 %i.mn, ptr %i.ng, align 8, !tbaa !86
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 3 uses
  %i.nj = load ptr, ptr %i.ks, align 8, !tbaa !272 ; 2 uses
  %i.nk = load ptr, ptr %.reload.addr1227, align 16, !tbaa !274 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i358 = icmp eq ptr %i.nj, %i.nk
  br i1 %.not4.i.i.i.i.i.i.i.i.i358, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i359

.lr.ph.i.i.i.i.i.i.i.i.i359:                      ; preds = %.noexc367, %.lr.ph.i.i.i.i.i.i.i.i.i359
  %i.nl = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i359 ], [ %i.ng, %.noexc367 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i360 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i.i.i.i359 ], [ %i.nj, %.noexc367 ]
  %i.nm = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i360, i64 -8 ; 3 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !86, !noalias !2035
  %i.no = getelementptr inbounds i8, ptr %i.nl, i64 -8 ; 3 uses
  store i64 %i.nn, ptr %i.no, align 8, !tbaa !86, !noalias !2035
  %.not.i.i.i.i.i.i.i.i.i361 = icmp eq ptr %i.nm, %i.nk
  br i1 %.not.i.i.i.i.i.i.i.i.i361, label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359, label %.lr.ph.i.i.i.i.i.i.i.i.i359, !llvm.loop !2031

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i359
  br label %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !2031

_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.noexc367, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359
  %.sroa.436.0.i.i.i.i.i.i.i.i362 = phi ptr [ %i.no, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i359 ], [ %i.ng, %.noexc367 ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i362, ptr %.reload.addr1227, align 16, !tbaa !273
  store ptr %i.ni, ptr %i.ks, align 8, !tbaa !273
  %i.np = load ptr, ptr %i.kt, align 16, !tbaa !273
  store ptr %i.nh, ptr %i.kt, align 16, !tbaa !273
  %.not.i5.i.i363 = icmp eq ptr %i.nk, null
  br i1 %.not.i5.i.i363, label %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, label %.from.1066

.from.1066:                                       ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.nk to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.ns) #34
  br label %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i

.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, %.from.1066, %.from.1070
  %.0.i364 = phi ptr [ %i.mr, %.from.1070 ], [ %i.ni, %.from.1066 ], [ %i.ni, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i ]
  store ptr %.0.i364, ptr %i.ks, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.nu = load i8, ptr %i.nt, align 8             ; 2 uses
  %i.nv = trunc i8 %i.nu to i1                    ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mf, i64 9
  %i.nz = select i1 %i.nv, ptr %i.nx, ptr %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = lshr i8 %i.nu, 1
  %i.od = zext nneg i8 %i.oc to i64
  %i.oe = select i1 %i.nv, i64 %i.ob, i64 %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.mf, i64 72
  %.sroa.0.0.copyload.i = load i64, ptr %i.of, align 8, !tbaa !77
  %i.og = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !275
  %i.oi = icmp eq i32 %i.oh, 1
  %i.oj = select i1 %i.oi, i32 6, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.reload.addr1234, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev7ChannelC1ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES9_NS1_10shared_ptrINS_11PixelBufferEEEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr %i.nz, i64 %i.oe, i64 %.sroa.0.0.copyload.i, i32 noundef 7, i32 noundef %i.oj, ptr nofree noundef nonnull align 8 dereferenceable(16) %.reload.addr1234, i64 noundef 0, i64 noundef 1)
          to label %bb.cc unwind label %.from.1076

bb.cc:                                            ; preds = %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.ok = load ptr, ptr %i.mh, align 8, !tbaa !268 ; 6 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !276
  %i.on = icmp ult ptr %i.ok, %i.om
  br i1 %i.on, label %.thread799, label %bb.cd

.thread799:                                       ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ok, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 24, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.oo, ptr noundef nonnull align 8 dereferenceable(12) %i.ku, i64 12, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  %i.oq = load <2 x ptr>, ptr %i.kv, align 8, !tbaa !94
  store <2 x ptr> %i.oq, ptr %i.op, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i8 0, i64 16, i1 false)
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.or, ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i64 16, i1 false)
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 72
  store ptr %i.os, ptr %i.mh, align 8, !tbaa !268
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.ot = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.ce unwind label %.from.1073

bb.ce:                                            ; preds = %bb.cd
  %.pre707 = load ptr, ptr %i.kw, align 8, !tbaa !279 ; 5 uses
  store ptr %i.ot, ptr %i.mh, align 8, !tbaa !268
  %.not.i.i370 = icmp eq ptr %.pre707, null
  br i1 %.not.i.i370, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ou = getelementptr inbounds nuw i8, ptr %.pre707, i64 8
  %i.ov = atomicrmw add ptr %i.ou, i64 -1 acq_rel, align 8
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %bb.cg, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.ox = load ptr, ptr %.pre707, align 8, !tbaa !106
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(24) %.pre707) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre707) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i: ; preds = %bb.cg, %bb.cf, %bb.ce, %.thread799
  %i.pa = load i8, ptr %3, align 8
  %i.pb = trunc i8 %i.pa to i1
  br i1 %i.pb, label %bb.ch, label %_ZN3tev7ChannelD2Ev.exit

bb.ch:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i
  %i.pc = load ptr, ptr %i.ky, align 8, !tbaa !77
  %i.pd = load i64, ptr %3, align 8
  %i.pe = and i64 %i.pd, -2
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pe) #34
  br label %_ZN3tev7ChannelD2Ev.exit

_ZN3tev7ChannelD2Ev.exit:                         ; preds = %bb.ch, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i
  %i.pf = load ptr, ptr %i.kz, align 8, !tbaa !279 ; 5 uses
  %.not.i372 = icmp eq ptr %i.pf, null
  br i1 %.not.i372, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZN3tev7ChannelD2Ev.exit
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = atomicrmw add ptr %i.pg, i64 -1 acq_rel, align 8
  %i.pi = icmp eq i64 %i.ph, 0
  br i1 %i.pi, label %bb.cj, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit

bb.cj:                                            ; preds = %bb.ci
  %i.pj = load ptr, ptr %i.pf, align 8, !tbaa !106
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(24) %i.pf) #32, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pf) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit: ; preds = %bb.cj, %bb.ci, %_ZN3tev7ChannelD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.pm = add nuw i64 %.018165457, 1              ; 3 uses
  %i.pn = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.po = load ptr, ptr %.reload.addr1231, align 16, !tbaa !170 ; 2 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = sdiv exact i64 %i.pr, 120
  %i.pt = icmp ult i64 %i.pm, %i.ps
  br i1 %i.pt, label %bb.by, label %._crit_edge657, !llvm.loop !2022

.from.1118:                                       ; preds = %._crit_edge58
  %i.pu = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %bb.dg

.from..loopexit578:                               ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i.i
  %lpad.loopexit580 = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %bb.dg

.from..loopexit.split-lp579:                      ; preds = %bb.ca, %bb.cb
  %lpad.loopexit.split-lp581 = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %bb.dg

.from.1076:                                       ; preds = %.from._ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.pv = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1116

.from.1073:                                       ; preds = %bb.cd
  %i.pw = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  call void @_ZN3tev7ChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #32
  br label %.from.1116

.from.1116:                                       ; preds = %.from.1076, %.from.1073
  %.pn216 = phi { ptr, i32 } [ %i.pw, %.from.1073 ], [ %i.pv, %.from.1076 ]
  call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr1234) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.dg

"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit": ; preds = %.from..lr.ph.i
  %.pre708 = load ptr, ptr %i.kr, align 16, !tbaa !221
  %.pre709 = load ptr, ptr %.reload.addr1232, align 8, !tbaa !266
  br label %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit"

"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit": ; preds = %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i", %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit"
  %i.px = phi ptr [ %.pre709, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit" ], [ %i.lh, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i" ] ; 2 uses
  %i.py = phi ptr [ %.pre708, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit" ], [ %i.li, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i" ] ; 6 uses
  %.sroa.010.2.i = phi ptr [ %.sroa.010.1.i, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.from._ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit.loopexit" ], [ %.sroa.01.0.lcssa.i.i, %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEERZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SQ_SQ_T0_.exit.i" ] ; 2 uses
  %i.pz = ptrtoint ptr %.sroa.010.2.i to i64      ; 4 uses
  %i.qa = ptrtoint ptr %i.px to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = getelementptr inbounds i8, ptr %i.px, i64 %i.qb ; 3 uses
  %.not.i373 = icmp eq ptr %.sroa.010.2.i, %i.py
  br i1 %.not.i373, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.ck

bb.ck:                                            ; preds = %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit"
  %i.qd = ptrtoint ptr %i.py to i64
  %i.qe = sub i64 %i.qd, %i.pz
  %i.qf = getelementptr inbounds i8, ptr %i.qc, i64 %i.qe ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.qf, %i.py
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ck, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.qi, %.lr.ph.i.i.i.i.i.i ], [ %i.qc, %bb.ck ] ; 2 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.qh, %.lr.ph.i.i.i.i.i.i ], [ %i.qf, %bb.ck ] ; 2 uses
  %i.qg = call noundef nonnull align 8 dereferenceable(280) ptr @_ZN3tev9ImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %.08.i.i.i.i.i.i) #32 ; 0 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 280 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 280 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qh, %i.py
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2032

_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.kr, align 16, !tbaa !221
  %13 = ptrtoint ptr %i.qi to i64
  br label %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i: ; preds = %bb.ck, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i
  %i.qj = phi ptr [ %.pre.i, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.py, %bb.ck ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi i64 [ %13, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i.from._ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.loopexit.i ], [ %i.pz, %bb.ck ]
  %i.qk = sub i64 %storemerge.lcssa.i.i.i.i.i.i, %i.pz
  %i.ql = getelementptr inbounds i8, ptr %i.qc, i64 %i.qk ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.ql, %i.qj
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.qm, %.lr.ph.i.i.i ], [ %i.qj, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i ]
  %i.qm = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.qm) #32
  %.not.i.i.i374 = icmp eq ptr %i.ql, %i.qm
  br i1 %.not.i.i.i374, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8ne180100IPN3tev9ImageDataES3_EET0_T_S5_S4_.exit.i
  store ptr %i.ql, ptr %i.kr, align 16, !tbaa !221
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit"
  %i.qn = phi ptr [ %i.ql, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i ], [ %i.py, %"_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPN3tev9ImageDataEEEZNKS2_14ExrImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS2_19ImageLoaderSettingsEiE3$_2EET_SP_SP_T0_.exit" ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1228, i8 0, i64 24, i1 false)
  %i.qo = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.qp = load ptr, ptr %.reload.addr1231, align 16, !tbaa !170 ; 3 uses
  %.not664 = icmp eq ptr %i.qo, %i.qp
  br i1 %.not664, label %._crit_edge660, label %.from..lr.ph659

.from..lr.ph659:                                  ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.qu = load i64, ptr %i.qp, align 8, !tbaa !193 ; 2 uses
  %i.qv = load ptr, ptr %.reload.addr1232, align 8, !tbaa !266 ; 2 uses
  %i.qw = ptrtoint ptr %i.qn to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = sdiv exact i64 %i.qy, 280
  %.not.i37862 = icmp ult i64 %i.qu, %i.qz
  br i1 %.not.i37862, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %.from..lr.ph659
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.cm

._crit_edge660:                                   ; preds = %.from.1095, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  invoke void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %.reload.addr1225, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1228)
          to label %bb.ct unwind label %.from.1106

bb.cl:                                            ; preds = %.from.1095
  %i.ra = getelementptr inbounds nuw [120 x i8], ptr %i.so, i64 %i.sm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !193 ; 2 uses
  %i.rc = load ptr, ptr %i.kr, align 16, !tbaa !221
  %i.rd = load ptr, ptr %.reload.addr1232, align 8, !tbaa !266 ; 2 uses
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = sdiv exact i64 %i.rg, 280
  %.not.i378 = icmp ult i64 %i.rb, %i.rh
  br i1 %.not.i378, label %bb.cm, label %._crit_edge65, !llvm.loop !2033

._crit_edge65:                                    ; preds = %bb.cl, %.from..lr.ph659
  invoke void @_ZNKSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1232) #35
          to label %.noexc379 unwind label %.from..loopexit.split-lp

.noexc379:                                        ; preds = %._crit_edge65
  unreachable

bb.cm:                                            ; preds = %.lr.ph64, %bb.cl
  %i.ri = phi ptr [ %i.qv, %.lr.ph64 ], [ %i.rd, %bb.cl ]
  %i.rj = phi i64 [ %i.qu, %.lr.ph64 ], [ %i.rb, %bb.cl ]
  %i.rk = phi ptr [ %i.qp, %.lr.ph64 ], [ %i.ra, %bb.cl ]
  %.013165863 = phi i64 [ 0, %.lr.ph64 ], [ %i.sm, %bb.cl ] ; 3 uses
  %i.rl = load ptr, ptr %i.ks, align 8, !tbaa !272
  %i.rm = load ptr, ptr %.reload.addr1227, align 16, !tbaa !274 ; 2 uses
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = ptrtoint ptr %i.rm to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = ashr exact i64 %i.rp, 3
  %.not.i381 = icmp ult i64 %.013165863, %i.rq
  br i1 %.not.i381, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1227) #35
          to label %.noexc382 unwind label %.from..loopexit.split-lp

.noexc382:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.rr = getelementptr inbounds nuw [280 x i8], ptr %i.ri, i64 %i.rj ; 3 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %.013165863
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !86 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !268
  %i.rw = load ptr, ptr %i.rr, align 8, !tbaa !267 ; 2 uses
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = sdiv exact i64 %i.rz, 72
  %.not.i383 = icmp ult i64 %i.rt, %i.sa
  br i1 %.not.i383, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZNKSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.rr) #35
          to label %.noexc384 unwind label %.from..loopexit.split-lp

.noexc384:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.co
  %.reload = load i32, ptr %.reload.addr, align 16, !tbaa !281
  %i.sb = getelementptr inbounds nuw [72 x i8], ptr %i.rw, i64 %i.rt
  invoke void @_ZNK3tev10RawChannel6copyToERNS_7ChannelEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.rk, ptr noundef nonnull align 8 dereferenceable(72) %i.sb, i32 noundef %.reload)
          to label %bb.cr unwind label %.from..loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.sc = load ptr, ptr %i.qq, align 16, !tbaa !286 ; 6 uses
  %i.sd = load ptr, ptr %i.qr, align 8, !tbaa !287
  %i.se = icmp ult ptr %i.sc, %i.sd
  br i1 %i.se, label %.from.1092, label %bb.cs

.from.1092:                                       ; preds = %bb.cr
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sc, i8 0, i64 32, i1 false)
  %i.sg = load i64, ptr %2, align 8, !tbaa !94
  store i64 %i.sg, ptr %i.sc, align 8, !tbaa !94
  %i.sh = load <2 x ptr>, ptr %i.qs, align 8, !tbaa !94
  store <2 x ptr> %i.sh, ptr %i.sf, align 8, !tbaa !94
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.sj = load ptr, ptr %i.qt, align 8, !tbaa !288
  store ptr %i.sj, ptr %i.si, align 8, !tbaa !288
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !94
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  br label %.from.1095

bb.cs:                                            ; preds = %bb.cr
  %i.sl = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1228, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.from.1095 unwind label %.from.1098

.from.1095:                                       ; preds = %bb.cs, %.from.1092
  %.0.i385 = phi ptr [ %i.sk, %.from.1092 ], [ %i.sl, %bb.cs ]
  store ptr %.0.i385, ptr %i.qq, align 16, !tbaa !286
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.sm = add nuw i64 %.013165863, 1              ; 3 uses
  %i.sn = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.so = load ptr, ptr %.reload.addr1231, align 16, !tbaa !170 ; 2 uses
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = sdiv exact i64 %i.sr, 120
  %i.st = icmp ult i64 %i.sm, %i.ss
  br i1 %i.st, label %bb.cl, label %._crit_edge660, !llvm.loop !2033

.from..loopexit:                                  ; preds = %bb.cq
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1112

.from..loopexit.split-lp:                         ; preds = %._crit_edge65, %bb.cn, %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1112

.from.1098:                                       ; preds = %bb.cs
  %i.su = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #32
  br label %.from.1112

.from.1112:                                       ; preds = %.from..loopexit, %.from..loopexit.split-lp, %.from.1098
  %.pn212 = phi { ptr, i32 } [ %i.su, %.from.1098 ], [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.from.1121

bb.ct:                                            ; preds = %._crit_edge660
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 16, !tbaa !160
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load atomic i32, ptr %i.sx acquire, align 4
  %i.sz = icmp slt i32 %i.sy, 2
  br i1 %i.sz, label %bb.cu, label %AfterCoroSave837

bb.cu:                                            ; preds = %bb.ct
  %i.ta = load ptr, ptr %i.sv, align 16, !tbaa !160
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = atomicrmw add ptr %i.tb, i32 -1 acq_rel, align 4
  %i.td = icmp slt i32 %i.tc, 1
  br i1 %i.td, label %bb.cv, label %.thread563.sink.split

bb.cv:                                            ; preds = %bb.cu
  %i.te = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i391 unwind label %.from..loopexit.split-lp.i.i388

.noexc.i.i391:                                    ; preds = %bb.cv
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !173 ; 7 uses
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !208
  %i.th = and i32 %i.tg, 8
end_hunk_1
