Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeExtractor?download=true
inline.NumInlined: 4759
inline.NumDeleted: 2653
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm13CodeExtractor16emitReplacerCallERKNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEESC_SC_PNS_8FunctionEPNS_10StructTypeESE_PNS_10BasicBlockENS_14BlockFrequencyENS_8ArrayRefIS3_EERSt6vectorIS3_SaIS3_EE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0493.2.lcssa, i64 noundef %i.gb) #25
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gh
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

bb.ah:                                            ; preds = %bb.aa
  br i1 %.not.i.i353, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fw, ptr %.sroa.13.2.lcssa, align 8, !tbaa !145
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.13.2.lcssa, i64 8
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gp = ptrtoint ptr %.sroa.26.2.lcssa to i64
  %i.gq = ptrtoint ptr %.sroa.0493.2.lcssa to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.ak, label %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i354

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i354: ; preds = %bb.aj
  %i.gt = ashr exact i64 %i.gr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i355 = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i355, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 1152921504606846975)
  %i.gx = select i1 %i.gv, i64 1152921504606846975, i64 %i.gw ; 3 uses
  %.not.i.i.i.i356 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i356)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #23 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  store ptr %i.fw, ptr %i.ha, align 8, !tbaa !145
  %i.hb = icmp sgt i64 %i.gr, 0
  br i1 %i.hb, label %bb.al, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i357

bb.al:                                            ; preds = %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i354
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr align 8 %.sroa.0493.2.lcssa, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i357

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i357: ; preds = %bb.al, %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i354
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.not.i17.i.i.i358 = icmp eq ptr %.sroa.0493.2.lcssa, null
  br i1 %.not.i17.i.i.i358, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i357
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0493.2.lcssa, i64 noundef %i.gr) #25
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359: ; preds = %bb.am, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i357
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359, %bb.ai, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ac
  %.sroa.26.4 = phi ptr [ %.sroa.26.2.lcssa, %bb.ac ], [ %i.gn, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.hd, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359 ], [ %.sroa.26.2.lcssa, %bb.ai ]
  %.sroa.13.4 = phi ptr [ %i.fy, %bb.ac ], [ %i.gm, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.hc, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359 ], [ %i.go, %bb.ai ]
  %.sroa.0493.4 = phi ptr [ %.sroa.0493.2.lcssa, %bb.ac ], [ %i.gj, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.gz, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i359 ], [ %.sroa.0493.2.lcssa, %bb.ai ]
  %i.he = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.hf = load i32, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %i.hg = zext i32 %i.hf to i64
  %.idx614 = shl nuw nsw i64 %i.hg, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx614
  %.not320584 = icmp eq i32 %i.hf, 0
  br i1 %.not320584, label %._crit_edge588, label %.lr.ph587

.lr.ph587:                                        ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %23, i64 33
  %i.hn = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hr = load i32, ptr %i.hj, align 4, !tbaa !153, !noalias !1121 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %._crit_edge588, label %.lr.ph587.split

._crit_edge588:                                   ; preds = %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread, %.lr.ph587, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.ap

.lr.ph587.splitthread-pre-split:                  ; preds = %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread
  %.pr = load i32, ptr %i.hj, align 4, !tbaa !153, !noalias !1121
  br label %.lr.ph587.split

.lr.ph587.split:                                  ; preds = %.lr.ph587, %.lr.ph587.splitthread-pre-split
  %i.ht = phi i32 [ %.pr, %.lr.ph587.splitthread-pre-split ], [ %i.hr, %.lr.ph587 ] ; 2 uses
  %.0302586 = phi i32 [ %.1, %.lr.ph587.splitthread-pre-split ], [ 0, %.lr.ph587 ] ; 5 uses
  %.0303585 = phi ptr [ %i.jn, %.lr.ph587.splitthread-pre-split ], [ %i.he, %.lr.ph587 ] ; 2 uses
  %i.hu = load ptr, ptr %.0303585, align 8, !tbaa !145 ; 4 uses
  %i.hv = load ptr, ptr %3, align 8, !tbaa !151, !noalias !1121
  %i.hw = load ptr, ptr %i.hi, align 8, !tbaa !152, !noalias !1121 ; 2 uses
  %i.hx = icmp eq i32 %i.ht, 0
  br i1 %i.hx, label %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread, label %bb.an

bb.an:                                            ; preds = %.lr.ph587.split
  %i.hy = add i32 %i.ht, -1                       ; 2 uses
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = mul i64 %i.hz, -4658895280553007687     ; 2 uses
  %i.ib = lshr i64 %i.ia, 31
  %i.ic = xor i64 %i.ib, %i.ia
  %i.id = trunc i64 %i.ic to i32
  %i.ie = and i32 %i.hy, %i.id                    ; 3 uses
  %i.if = zext i32 %i.ie to i64                   ; 2 uses
  %i.ig = lshr i64 %i.if, 5
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !111
  %i.ij = and i32 %i.ie, 31
  %i.ik = lshr i32 %i.ii, %i.ij
  %i.il = trunc i32 %i.ik to i1
  br i1 %i.il, label %.lr.ph.i.i.i.i.i362, label %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread, !prof !112

.lr.ph.i.i.i.i.i362:                              ; preds = %bb.an, %bb.ao
  %i.im = phi i64 [ %i.is, %bb.ao ], [ %i.if, %bb.an ]
  %.019.i.i.i.i.i363 = phi i32 [ %i.ir, %bb.ao ], [ %i.ie, %bb.an ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !145
  %i.ip = icmp eq ptr %i.hu, %i.io
  br i1 %i.ip, label %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364, label %bb.ao, !prof !73

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i362
  %i.iq = add nuw i32 %.019.i.i.i.i.i363, 1
  %i.ir = and i32 %i.iq, %i.hy                    ; 3 uses
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = lshr i64 %i.is, 5
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !111
  %i.iw = and i32 %i.ir, 31
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = trunc i32 %i.ix to i1
  br i1 %i.iy, label %.lr.ph.i.i.i.i.i362, label %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread, !prof !113

_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364: ; preds = %.lr.ph.i.i.i.i.i362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.iz = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #21
  %i.ja = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.iz) #21
  store ptr %i.ja, ptr %i.h, align 16, !tbaa !145
  %i.jb = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #21
  %i.jc = zext i32 %.0302586 to i64
  %i.jd = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.jb, i64 noundef %i.jc, i1 noundef zeroext false, i1 noundef zeroext false) #21
  store ptr %i.jd, ptr %i.hk, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.je = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hu) #21 ; 2 uses
  %i.jf = extractvalue { ptr, i64 } %i.je, 0
  %i.jg = extractvalue { ptr, i64 } %i.je, 1
  store i8 3, ptr %i.hl, align 8, !tbaa !194, !alias.scope !1122
  store i8 5, ptr %i.hm, align 1, !tbaa !195, !alias.scope !1122
  store ptr @.str.13, ptr %23, align 8, !tbaa !141, !alias.scope !1122
  store ptr %i.jf, ptr %i.hn, align 8, !tbaa !141, !alias.scope !1122
  store i64 %i.jg, ptr %i.ho, align 8, !tbaa !141, !alias.scope !1122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.jh = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %5, ptr noundef %i.fw, ptr nonnull %i.h, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %24) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.ji = call { ptr, i64 } @_ZN4llvm11Instruction10insertIntoEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.jh, ptr noundef nonnull %i.o, ptr nonnull %i.hp, i64 0) #21 ; 0 uses
  %i.jj = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #21
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %i.o) #21
  %i.jk = load ptr, ptr %25, align 8
  %i.jl = load i64, ptr %i.hq, align 8
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.jj, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.jh, ptr %i.jk, i64 %i.jl) #21
  %i.jm = add i32 %.0302586, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread

_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364.thread: ; preds = %bb.ao, %bb.an, %.lr.ph587.split, %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364
  %.1 = phi i32 [ %i.jm, %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit364 ], [ %.0302586, %.lr.ph587.split ], [ %.0302586, %bb.an ], [ %.0302586, %bb.ao ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.0303585, i64 8 ; 2 uses
  %.not320 = icmp eq ptr %i.jn, %i.hh
  br i1 %.not320, label %._crit_edge588, label %.lr.ph587.splitthread-pre-split, !llvm.loop !1087

bb.ap:                                            ; preds = %._crit_edge588, %._crit_edge577
  %.0532 = phi ptr [ null, %._crit_edge577 ], [ %i.fw, %._crit_edge588 ] ; 5 uses
  %.sroa.26.5 = phi ptr [ %.sroa.26.2.lcssa, %._crit_edge577 ], [ %.sroa.26.4, %._crit_edge588 ]
  %.sroa.13.5 = phi ptr [ %.sroa.13.2.lcssa, %._crit_edge577 ], [ %.sroa.13.4, %._crit_edge588 ]
  %.sroa.0493.5 = phi ptr [ %.sroa.0493.2.lcssa, %._crit_edge577 ], [ %.sroa.0493.4, %._crit_edge588 ] ; 4 uses
  %.not.i366 = icmp eq ptr %4, null
  br i1 %.not.i366, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !120
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %bb.ap, %bb.aq
  %i.jq = phi ptr [ %i.jp, %bb.aq ], [ null, %bb.ap ] ; 2 uses
  %i.jr = ptrtoint ptr %.sroa.13.5 to i64
  %i.js = ptrtoint ptr %.sroa.0493.5 to i64       ; 2 uses
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = ashr exact i64 %i.jt, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !69
  %33 = icmp ugt i32 %i.jx, 1
  %34 = select i1 %33, ptr @.str.19, ptr @.str.2  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.jz, align 1, !tbaa !195
  %35 = load i8, ptr %34, align 1, !tbaa !141
  %.not.i367 = icmp eq i8 %35, 0
  br i1 %.not.i367, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  store ptr %34, ptr %26, align 8, !tbaa !141
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, %bb.ar
  %storemerge.i = phi i8 [ 3, %bb.ar ], [ 1, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit ]
  store i8 %storemerge.i, ptr %i.jy, align 8, !tbaa !194
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull %i.o) #21
  %.sroa.0511.0.copyload = load ptr, ptr %27, align 8
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.sroa.4512.0.copyload = load i64, ptr %.sroa.4512.0..sroa_idx, align 8
  %i.ka = trunc i64 %i.ju to i32
  %i.kb = add i32 %i.ka, 1                        ; 2 uses
  %i.kc = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 %i.kb) #21 ; 14 uses
  %i.kd = and i32 %i.kb, 268435455
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !344
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !295
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(92) %i.kc, ptr noundef %i.kg, i32 noundef 58, i32 %i.kd, ptr %.sroa.0511.0.copyload, i64 %.sroa.4512.0.copyload) #21
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 72 ; 3 uses
  store ptr null, ptr %i.kh, align 8, !tbaa !357
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 88
  store i32 0, ptr %i.ki, align 8, !tbaa !288
  call void @_ZN4llvm8CallInst4initEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(92) %i.kc, ptr noundef nonnull %i.jq, ptr noundef %4, ptr %.sroa.0493.5, i64 %i.ju, ptr noundef nonnull byval(%"class.llvm::ArrayRef.469") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.kj = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.kk = load i32, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %.idx615 = shl nuw nsw i64 %i.kl, 3
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.idx615
  %.not321589 = icmp eq i32 %i.kk, 0
  br i1 %.not321589, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  br label %bb.as

._crit_edge594:                                   ; preds = %bb.aw, %_ZN4llvm5TwineC2EPKc.exit
  %.0306.lcssa = phi i32 [ 0, %_ZN4llvm5TwineC2EPKc.exit ], [ %.1307, %bb.aw ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !154
  %i.ks = call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %i.kr) #21
  %.not322 = icmp eq ptr %i.ks, null
  br i1 %.not322, label %bb.az, label %bb.ax

bb.as:                                            ; preds = %.lr.ph593, %bb.aw
  %.0304592 = phi i32 [ 0, %.lr.ph593 ], [ %.1305, %bb.aw ] ; 3 uses
  %.0306591 = phi i32 [ 0, %.lr.ph593 ], [ %.1307, %bb.aw ] ; 3 uses
  %.0308590 = phi ptr [ %i.kj, %.lr.ph593 ], [ %i.mf, %bb.aw ] ; 2 uses
  %i.kt = load ptr, ptr %.0308590, align 8, !tbaa !145 ; 3 uses
  %i.ku = load ptr, ptr %3, align 8, !tbaa !151, !noalias !1123
  %i.kv = load ptr, ptr %i.kn, align 8, !tbaa !152, !noalias !1123 ; 2 uses
  %i.kw = load i32, ptr %i.ko, align 4, !tbaa !153, !noalias !1123 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %.loopexit541, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ky = add i32 %i.kw, -1                       ; 2 uses
  %i.kz = ptrtoint ptr %i.kt to i64
  %i.la = mul i64 %i.kz, -4658895280553007687     ; 2 uses
  %i.lb = lshr i64 %i.la, 31
  %i.lc = xor i64 %i.lb, %i.la
  %i.ld = trunc i64 %i.lc to i32
  %i.le = and i32 %i.ky, %i.ld                    ; 3 uses
  %i.lf = zext i32 %i.le to i64                   ; 2 uses
  %i.lg = lshr i64 %i.lf, 5
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !111
  %i.lj = and i32 %i.le, 31
  %i.lk = lshr i32 %i.li, %i.lj
  %i.ll = trunc i32 %i.lk to i1
  br i1 %i.ll, label %.lr.ph.i.i.i.i.i369, label %.loopexit541, !prof !112

.lr.ph.i.i.i.i.i369:                              ; preds = %bb.at, %bb.au
  %i.lm = phi i64 [ %i.ls, %bb.au ], [ %i.lf, %bb.at ]
  %.019.i.i.i.i.i370 = phi i32 [ %i.lr, %bb.au ], [ %i.le, %bb.at ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !145
  %i.lp = icmp eq ptr %i.kt, %i.lo
  br i1 %i.lp, label %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit371, label %bb.au, !prof !73

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i369
  %i.lq = add nuw i32 %.019.i.i.i.i.i370, 1
  %i.lr = and i32 %i.lq, %i.ky                    ; 3 uses
  %i.ls = zext i32 %i.lr to i64                   ; 2 uses
  %i.lt = lshr i64 %i.ls, 5
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !111
  %i.lw = and i32 %i.lr, 31
  %i.lx = lshr i32 %i.lv, %i.lw
  %i.ly = trunc i32 %i.lx to i1
  br i1 %i.ly, label %.lr.ph.i.i.i.i.i369, label %.loopexit541, !prof !113

_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit371: ; preds = %.lr.ph.i.i.i.i.i369
  %i.lz = add i32 %.0306591, 1
  br label %bb.aw

.loopexit541:                                     ; preds = %bb.au, %bb.as, %bb.at
  %i.ma = call noundef zeroext i1 @_ZNK4llvm5Value12isSwiftErrorEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kt) #21
  br i1 %i.ma, label %bb.av, label %.loopexit541._crit_edge

.loopexit541._crit_edge:                          ; preds = %.loopexit541
  %.pre620 = add i32 %.0304592, 1
  br label %bb.aw

bb.av:                                            ; preds = %.loopexit541
  %i.mb = load ptr, ptr %i.kp, align 8, !tbaa !287
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !299, !nonnull !26, !align !276
  %i.md = add i32 %.0304592, 1                    ; 2 uses
  %i.me = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull align 8 dereferenceable(8) %i.mc, i32 noundef %i.md, i32 noundef 79) #21
  store ptr %i.me, ptr %i.kh, align 8, !tbaa !302
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit541._crit_edge, %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit371
  %.1307 = phi i32 [ %i.lz, %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit371 ], [ %.0306591, %.loopexit541._crit_edge ], [ %.0306591, %bb.av ] ; 2 uses
  %.1305 = phi i32 [ %.0304592, %_ZNK4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsEPKS1_.exit371 ], [ %.pre620, %.loopexit541._crit_edge ], [ %i.md, %bb.av ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0308590, i64 8 ; 2 uses
  %.not321 = icmp eq ptr %i.mf, %i.km
  br i1 %.not321, label %._crit_edge594, label %bb.as

bb.ax:                                            ; preds = %._crit_edge594
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !144
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !157
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !334 ; 2 uses
  %.not538 = icmp eq i64 %i.ml, 0
  br i1 %.not538, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mm = inttoptr i64 %i.ml to ptr
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !334
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %._crit_edge594
  %i.mo = load i32, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %.not323596 = icmp eq i32 %i.mo, 0
  br i1 %.not323596, label %._crit_edge602, label %.lr.ph601

.lr.ph601:                                        ; preds = %bb.az
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.mr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %28, i64 33
  %i.mu = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.mx = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %30, i64 33
  %i.mz = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ne = zext i32 %i.mo to i64
  br label %bb.ba

._crit_edge602:                                   ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit385, %bb.az
  %i.nf = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #21
  %i.ng = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.nf) #21
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull %i.o) #21
  %i.nh = load ptr, ptr %32, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 80) #21 ; 14 uses
  call void @_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76) %i.nk, ptr noundef %i.ng, ptr noundef nonnull %i.o, i32 noundef 0, ptr %i.nh, i64 %i.nj) #21
  %i.nl = load ptr, ptr %i.jv, align 8, !tbaa !29, !noalias !1124 ; 2 uses
  %i.nm = load i32, ptr %i.jw, align 8, !tbaa !69, !noalias !1125 ; 2 uses
  %i.nn = zext i32 %i.nm to i64
  %.idx616 = shl nuw nsw i64 %i.nn, 3
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.idx616
  %.not539603 = icmp eq i32 %i.nm, 0
  br i1 %.not539603, label %._crit_edge608.thread, label %.lr.ph607

._crit_edge608.thread:                            ; preds = %._crit_edge602
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  br label %bb.bj

bb.ba:                                            ; preds = %.lr.ph601, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit385
  %indvars.iv = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit385 ] ; 4 uses
  %.2599 = phi i32 [ %.0306.lcssa, %.lr.ph601 ], [ %.3, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit385 ] ; 3 uses
  %.0310597 = phi i32 [ 0, %.lr.ph601 ], [ %.1311, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit385 ] ; 3 uses
  %i.nq = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !145 ; 2 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !151, !noalias !1126
  %i.nu = load ptr, ptr %i.mp, align 8, !tbaa !152, !noalias !1126 ; 2 uses
  %i.nv = load i32, ptr %i.mq, align 4, !tbaa !153, !noalias !1126 ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %.loopexit540, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nx = add i32 %i.nv, -1                       ; 2 uses
  %i.ny = ptrtoint ptr %i.ns to i64
end_hunk_0
