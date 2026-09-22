Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/write_batch_with_index_internal?download=true
inline.NumInlined: 1470
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb17BaseDeltaIterator27SetValueAndColumnsFromDeltaEv:bb.a
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.ab, label %_ZN7rocksdb6StatusD2Ev.exit34

bb.ab:                                            ; preds = %bb.aa
  %i.gx = load i8, ptr %i.a, align 1, !tbaa !307
  %i.gy = icmp eq i8 %i.gx, 22
  br i1 %i.gy, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !23
  store ptr %i.ha, ptr %15, align 8, !tbaa !98
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !97
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @_ZN7rocksdb23WideColumnSerialization11DeserializeERKNS_5SliceERSt6vectorINS_10WideColumnESaIS5_EEPS4_ISt4pairImNS_9BlobIndexEESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef null)
  %i.hf = load <4 x i8>, ptr %16, align 8, !tbaa !24
  store <4 x i8> %i.hf, ptr %i.gu, align 8, !tbaa !24
  store <4 x i8> zeroinitializer, ptr %16, align 8, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !164, !range !87, !noundef !88
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %i.hh, ptr %i.hi, align 4, !tbaa !165
  store i8 0, ptr %i.hg, align 4, !tbaa !165
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !166
  store i8 0, ptr %i.hj, align 1, !tbaa !166
  %i.hm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !113
  store ptr null, ptr %i.hm, align 8, !tbaa !113
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !113 ; 2 uses
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !113
  %.not.i.i.i.i.i59 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i59, label %_ZN7rocksdb6StatusD2Ev.exit64, label %_ZN7rocksdb6StatusaSEOS0_.exit61

_ZN7rocksdb6StatusaSEOS0_.exit61:                 ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.hp) #25
  %.pr96 = load ptr, ptr %i.hm, align 8, !tbaa !113 ; 2 uses
  %.not.i.i62 = icmp eq ptr %.pr96, null
  br i1 %.not.i.i62, label %_ZN7rocksdb6StatusD2Ev.exit64, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i63

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i63: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit61
  call void @_ZdaPv(ptr noundef nonnull %.pr96) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit64

_ZN7rocksdb6StatusD2Ev.exit64:                    ; preds = %bb.ac, %_ZN7rocksdb6StatusaSEOS0_.exit61, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.hq = load i8, ptr %i.gu, align 8, !tbaa !114
  %i.hr = icmp eq i8 %i.hq, 0
  %i.hs = load ptr, ptr %i.he, align 8, !tbaa !171 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !171
  %i.hv = icmp eq ptr %i.hs, %i.hu                ; 2 uses
  br i1 %i.hr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit64
  br i1 %i.hv, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67, label %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i66

_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i66: ; preds = %bb.ad
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !140
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67

bb.ae:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit64
  br i1 %i.hv, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !139 ; 2 uses
  %i.hy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb22kDefaultWideColumnNameE, i64 8), align 8, !tbaa !139
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %_ZN7rocksdb17WideColumnsHelper16HasDefaultColumnERKSt6vectorINS_10WideColumnESaIS2_EE.exit69, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67

_ZN7rocksdb17WideColumnsHelper16HasDefaultColumnERKSt6vectorINS_10WideColumnESaIS2_EE.exit69: ; preds = %bb.af
  %i.ia = load ptr, ptr %i.hs, align 8, !tbaa !98
  %i.ib = load ptr, ptr @_ZN7rocksdb22kDefaultWideColumnNameE, align 8, !tbaa !98
  %bcmp.i.i68 = call i32 @bcmp(ptr %i.ia, ptr %i.ib, i64 %i.hx)
  %i.ic = icmp eq i32 %bcmp.i.i68, 0
  br i1 %i.ic, label %bb.ag, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67

bb.ag:                                            ; preds = %_ZN7rocksdb17WideColumnsHelper16HasDefaultColumnERKSt6vectorINS_10WideColumnESaIS2_EE.exit69
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !tbaa.struct !170
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67: ; preds = %bb.af, %bb.ae, %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i66, %bb.ad, %_ZN7rocksdb17WideColumnsHelper16HasDefaultColumnERKSt6vectorINS_10WideColumnESaIS2_EE.exit69, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit34

bb.ah:                                            ; preds = %bb.ab
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !23
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !97
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.ig, ptr %i.ij, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.ii, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !145
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !140 ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !112
  %.not.i70 = icmp eq ptr %i.im, %i.io
  br i1 %.not.i70, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(16) @_ZN7rocksdb22kDefaultWideColumnNameE, i64 16, i1 false), !tbaa.struct !170
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i64 16, i1 false), !tbaa.struct !170
  %i.iq = load ptr, ptr %i.il, align 8, !tbaa !140
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store ptr %i.ir, ptr %i.il, align 8, !tbaa !140
  br label %_ZN7rocksdb6StatusD2Ev.exit34

bb.aj:                                            ; preds = %bb.ah
  %i.is = load ptr, ptr %i.ik, align 8, !tbaa !111 ; 5 uses
  %i.it = ptrtoint ptr %i.im to i64
  %i.iu = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iv = sub i64 %i.it, %i.iu                    ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775776
  br i1 %i.iw, label %bb.ak, label %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #27
  unreachable

_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71: ; preds = %bb.aj
  %i.ix = ashr exact i64 %i.iv, 5                 ; 3 uses
  %.sroa.speculated.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  %i.iy = add nsw i64 %.sroa.speculated.i.i.i72, %i.ix ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ix
  %i.ja = call i64 @llvm.umin.i64(i64 %i.iy, i64 288230376151711743)
  %i.jb = select i1 %i.iz, i64 288230376151711743, i64 %i.ja ; 3 uses
  %.not.i.i.i73 = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %.not.i.i.i73)
  %i.jc = shl nuw nsw i64 %i.jb, 5
  %i.jd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #28 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.iv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(16) @_ZN7rocksdb22kDefaultWideColumnNameE, i64 16, i1 false), !tbaa.struct !170
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i64 16, i1 false), !tbaa.struct !170
  %.not10.i.i.i.i.i74 = icmp eq ptr %i.is, %i.im
  br i1 %.not10.i.i.i.i.i74, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i79, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71, %.lr.ph.i.i.i.i.i75
  %.012.i.i.i.i.i76 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i75 ], [ %i.jd, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71 ] ; 2 uses
  %.0911.i.i.i.i.i77 = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i75 ], [ %i.is, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i77, i64 32, i1 false), !tbaa.struct !169, !alias.scope !308
  %i.jg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i77, i64 32 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i76, i64 32 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.jg, %i.im
  br i1 %.not.i.i.i.i.i78, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i79, label %.lr.ph.i.i.i.i.i75, !llvm.loop !301

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i79: ; preds = %.lr.ph.i.i.i.i.i75, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71
  %.0.lcssa.i.i.i.i.i80 = phi ptr [ %i.jd, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i71 ], [ %i.jh, %.lr.ph.i.i.i.i.i75 ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i80, i64 32
  %.not.i34.i.i81 = icmp eq ptr %i.is, null
  br i1 %.not.i34.i.i81, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceERS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i82, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i79
  %i.jj = load ptr, ptr %i.in, align 8, !tbaa !112
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = sub i64 %i.jk, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.jl) #25
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceERS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i82

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceERS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i82: ; preds = %bb.al, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i79
  store ptr %i.jd, ptr %i.ik, align 8, !tbaa !111
  store ptr %i.ji, ptr %i.il, align 8, !tbaa !140
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.jd, i64 %i.jb
  store ptr %i.jm, ptr %i.in, align 8, !tbaa !112
  br label %_ZN7rocksdb6StatusD2Ev.exit34

_ZN7rocksdb6StatusD2Ev.exit34:                    ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceERS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i82, %bb.ai, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i33, %bb.t, %bb.aa, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceERS5_EEERS1_DpOT_.exit

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceERS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceERS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit, %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit.thread, %_ZN7rocksdb6StatusD2Ev.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal23MergeKeyWithNoBaseValueIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPNS_18ColumnFamilyHandleERKNS_5SliceERKNS_12MergeContextEDpT_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef %4, ptr %5, ptr noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::variant", align 8      ; 9 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !315
  store ptr @.str.46, ptr %10, align 8, !tbaa !98, !noalias !315
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !315
  store ptr @.str, ptr %11, align 8, !tbaa !98, !noalias !315
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !315
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !315
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !315 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !315 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !315
  store ptr @.str.47, ptr %12, align 8, !tbaa !98, !noalias !315
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !315
  store ptr @.str, ptr %13, align 8, !tbaa !98, !noalias !315
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !315
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !315
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 6, i1 false), !alias.scope !316
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i8, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %14, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 1
  %15 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %15, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.q

.body:                                            ; preds = %bb.h, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.at, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i6, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i7

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i7: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.v) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !95, !range !87, !noundef !88
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !177  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %i.ac = icmp ne ptr %i.z, %i.ab
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.z, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ac, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i9 = icmp ult ptr %i.ad, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i9, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.j
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.j ]
  store i8 0, ptr %i.w, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.i, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.i ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !317
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !231, !noalias !317
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_PNS_9ValueTypeE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, i1 noundef zeroext false, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %6)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !317
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.l, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %7, align 8, !tbaa !111, !noalias !317 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112, !noalias !317
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #25
  br label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.n:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !317
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.o, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %7, align 8, !tbaa !111, !noalias !317 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !112, !noalias !317
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !317
  br label %.body

_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !317
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, %_ZN7rocksdb6StatusC2ERKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i12, label %_ZN7rocksdb6StatusD2Ev.exit14, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit14

_ZN7rocksdb6StatusD2Ev.exit14:                    ; preds = %bb.q, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal21MergeKeyWithBaseValueINS_11MergeHelper17PlainBaseValueTagENS_5SliceEJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPNS_18ColumnFamilyHandleERKS4_RKT_RKT0_RKNS_12MergeContextEDpT1_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %6, ptr %7, ptr noundef %8) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::variant", align 8      ; 10 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 4 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !324
  store ptr @.str.46, ptr %12, align 8, !tbaa !98, !noalias !324
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !324
  store ptr @.str, ptr %13, align 8, !tbaa !98, !noalias !324
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !324
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !324
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !324 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !324 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !324
  store ptr @.str.47, ptr %14, align 8, !tbaa !98, !noalias !324
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !324
  store ptr @.str, ptr %15, align 8, !tbaa !98, !noalias !324
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !324
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !324
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 6, i1 false), !alias.scope !325
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i9 = icmp eq ptr %i.j, null
  br i1 %.not.i.i9, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %16, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 1
  %17 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %17, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.q

.body:                                            ; preds = %bb.h, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.at, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i7, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.v) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !95, !range !87, !noundef !88
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !177  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %i.ac = icmp ne ptr %i.z, %i.ab
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.z, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ac, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i10 = icmp ult ptr %i.ad, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.j
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.j ]
  store i8 0, ptr %i.w, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.i, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.i ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !170, !noalias !326
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i8 1, ptr %i.ak, align 8, !tbaa !231, !noalias !326
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_PNS_9ValueTypeE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, i1 noundef zeroext false, ptr noundef null, ptr noundef %6, ptr noundef null, ptr noundef %8)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !326
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.l, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %9, align 8, !tbaa !111, !noalias !326 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112, !noalias !326
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #25
  br label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.n:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !326
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.o, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %9, align 8, !tbaa !111, !noalias !326 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i12.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i12.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !112, !noalias !326
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !326
  br label %.body

_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !326
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, %_ZN7rocksdb6StatusC2ERKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7rocksdb6StatusD2Ev.exit15, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i14

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i14: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit15

_ZN7rocksdb6StatusD2Ev.exit15:                    ; preds = %bb.q, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal21MergeKeyWithBaseValueINS_11MergeHelper16WideBaseValueTagENS_5SliceEJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPNS_18ColumnFamilyHandleERKS4_RKT_RKT0_RKNS_12MergeContextEDpT1_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %6, ptr %7, ptr noundef %8) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !331
  store ptr @.str.46, ptr %11, align 8, !tbaa !98, !noalias !331
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !331
  store ptr @.str, ptr %12, align 8, !tbaa !98, !noalias !331
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !331
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !331
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !331 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !331 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !331
  store ptr @.str.47, ptr %13, align 8, !tbaa !98, !noalias !331
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !331
  store ptr @.str, ptr %14, align 8, !tbaa !98, !noalias !331
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !331
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !331
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 6, i1 false), !alias.scope !332
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i9 = icmp eq ptr %i.j, null
  br i1 %.not.i.i9, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %15, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 1
  %16 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %16, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.l

bb.i:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i7, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.w) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !95, !range !87, !noundef !88
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !177 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !177 ; 2 uses
  %i.ad = icmp ne ptr %i.aa, %i.ac
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.aa, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ad, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i10 = icmp ult ptr %i.ae, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.k
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.k ]
  store i8 0, ptr %i.x, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.j, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.j ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !227
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !228
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !229
  invoke void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ak, i1 noundef zeroext false, ptr noundef null, ptr noundef %6, ptr null, ptr noundef %8)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %_ZN7rocksdb6StatusC2ERKS0_.exit, %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.am) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.c = load ptr, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 32
  br i1 %i.g, label %bb.b, label %_ZN7rocksdbeqERKNS_5SliceES2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139  ; 2 uses
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb22kDefaultWideColumnNameE, i64 8), align 8, !tbaa !139
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZN7rocksdbeqERKNS_5SliceES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.m = load ptr, ptr @_ZN7rocksdb22kDefaultWideColumnNameE, align 8, !tbaa !98
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr %i.m, i64 %i.i)
  %i.n = icmp eq i32 %bcmp.i, 0
  br label %_ZN7rocksdbeqERKNS_5SliceES2_.exit

_ZN7rocksdbeqERKNS_5SliceES2_.exit:               ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.n, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal21MergeKeyWithBaseValueINS_11MergeHelper16WideBaseValueTagESt6vectorINS_10WideColumnESaIS5_EEJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPNS_18ColumnFamilyHandleERKNS_5SliceERKT_RKT0_RKNS_12MergeContextEDpT1_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %6, ptr %7, ptr noundef %8) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !337
  store ptr @.str.46, ptr %11, align 8, !tbaa !98, !noalias !337
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !337
  store ptr @.str, ptr %12, align 8, !tbaa !98, !noalias !337
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !337
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !337
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !337 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !337 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !337
  store ptr @.str.47, ptr %13, align 8, !tbaa !98, !noalias !337
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !337
  store ptr @.str, ptr %14, align 8, !tbaa !98, !noalias !337
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !337
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !337
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 6, i1 false), !alias.scope !338
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i9 = icmp eq ptr %i.j, null
  br i1 %.not.i.i9, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %15, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 1
  %16 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %16, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.l

bb.i:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i7, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.w) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !95, !range !87, !noundef !88
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !177 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !177 ; 2 uses
  %i.ad = icmp ne ptr %i.aa, %i.ac
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.aa, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ad, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i10 = icmp ult ptr %i.ae, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.k
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.k ]
  store i8 0, ptr %i.x, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.j, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.j ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !227
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !228
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !229
  invoke void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagERKSt6vectorINS_10WideColumnESaISK_EERKSJ_ISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ak, i1 noundef zeroext false, ptr noundef null, ptr noundef %6, ptr null, ptr noundef %8)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %_ZN7rocksdb6StatusC2ERKS0_.exit, %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.am) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 5) i8 @_ZN7rocksdb16WBWIIteratorImpl16FindLatestUpdateEPNS_12MergeContextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %3 = alloca %"struct.rocksdb::WriteEntry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !123, !range !87, !noundef !88
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit.thread, label %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit

_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit:      ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !129
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit.thread

bb.d:                                             ; preds = %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNK7rocksdb16WBWIIteratorImpl5EntryEv(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::WriteEntry") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.m = call noundef zeroext i8 @_ZN7rocksdb16WBWIIteratorImpl16FindLatestUpdateERKNS_5SliceEPNS_12MergeContextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN7rocksdb12MergeContext5ClearEv.exit

_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107  ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN7rocksdb12MergeContext5ClearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7rocksdb16WBWIIteratorImpl5ValidEv.exit.thread
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !146
  %.not.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.q, align 8, !tbaa !146
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i1.i, label %_ZN7rocksdb12MergeContext5ClearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i ], [ %i.u, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i ] ; 2 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !104 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_:bb.a
  br label %_ZN7rocksdb6StatusD2Ev.exit18

_ZN7rocksdb6StatusD2Ev.exit18:                    ; preds = %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.x = load ptr, ptr %16, align 16, !tbaa !111  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit18
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !112
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit18, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ad = load i8, ptr %i.a, align 8, !tbaa !231
  %i.ae = icmp eq i8 %i.ad, 2
  br i1 %i.ae, label %bb.k, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit
  %i.af = load ptr, ptr %14, align 16, !tbaa !111 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !112
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  ret void

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15, %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.al = load ptr, ptr %16, align 16, !tbaa !111 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !112
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #25
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ar = load i8, ptr %i.a, align 8, !tbaa !231
  %i.as = icmp eq i8 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22

bb.n:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20
  %i.at = load ptr, ptr %14, align 16, !tbaa !111 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i21, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !112
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagERKSt6vectorINS_10WideColumnESaISK_EERKSJ_ISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr %11, ptr noundef %12) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.std::variant", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !111    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN7rocksdb10WideColumnEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !167

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN7rocksdb10WideColumnEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  %.pre = load ptr, ptr %3, align 8, !tbaa !171
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !171
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7rocksdb10WideColumnEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre14, %_ZNSt15__new_allocatorIN7rocksdb10WideColumnEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN7rocksdb10WideColumnEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7rocksdb10WideColumnEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %13, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !112
  %i.o = icmp eq ptr %i.j, %i.i
  br i1 %i.o, label %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEC2IRKS6_vvS6_vEEOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !169
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.i
  br i1 %i.r, label %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEC2IRKS6_vvS6_vEEOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !397

_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEC2IRKS6_vvS6_vEEOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store i8 2, ptr %i.s, align 8, !tbaa !231
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_PNS_9ValueTypeE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef %12)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEC2IRKS6_vvS6_vEEOT_.exit
  %i.t = load i8, ptr %i.s, align 8, !tbaa !231
  %i.u = icmp eq i8 %i.t, 2
  br i1 %i.u, label %bb.e, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %13, align 8, !tbaa !111   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void

bb.g:                                             ; preds = %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEC2IRKS6_vvS6_vEEOT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.s, align 8, !tbaa !231
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.h, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %13, align 8, !tbaa !111  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i12, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  resume { ptr, i32 } %i.aa
}

declare noundef ptr @_ZN7rocksdb19WriteBatchWithIndex11NewIteratorEPNS_18ColumnFamilyHandleE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal21MergeKeyWithBaseValueINS_11MergeHelper17PlainBaseValueTagENS_5SliceEJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPNS_18ColumnFamilyHandleERKS4_RKT_RKT0_RKNS_12MergeContextEDpT1_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::variant", align 8      ; 10 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !404
  store ptr @.str.46, ptr %11, align 8, !tbaa !98, !noalias !404
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !404
  store ptr @.str, ptr %12, align 8, !tbaa !98, !noalias !404
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !404
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !404
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !404 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !404 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !404
  store ptr @.str.47, ptr %13, align 8, !tbaa !98, !noalias !404
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !404
  store ptr @.str, ptr %14, align 8, !tbaa !98, !noalias !404
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !404
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !404
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 6, i1 false), !alias.scope !405
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i9 = icmp eq ptr %i.j, null
  br i1 %.not.i.i9, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %15, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 1
  %16 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %16, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.q

.body:                                            ; preds = %bb.h, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.at, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i7, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.v) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !95, !range !87, !noundef !88
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !177  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %i.ac = icmp ne ptr %i.z, %i.ab
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.z, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ac, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i10 = icmp ult ptr %i.ad, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.j
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.j ]
  store i8 0, ptr %i.w, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.i, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.i ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !170, !noalias !406
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i8 1, ptr %i.ak, align 8, !tbaa !231, !noalias !406
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, i1 noundef zeroext false, ptr noundef null, ptr noundef %6, ptr noundef %7)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !406
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.l, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %8, align 8, !tbaa !111, !noalias !406 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112, !noalias !406
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #25
  br label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.n:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !406
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.o, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %8, align 8, !tbaa !111, !noalias !406 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i12.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i12.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !112, !noalias !406
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !406
  br label %.body

_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !406
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_17PlainBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, %_ZN7rocksdb6StatusC2ERKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7rocksdb6StatusD2Ev.exit15, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i14

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i14: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit15

_ZN7rocksdb6StatusD2Ev.exit15:                    ; preds = %bb.q, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal21MergeKeyWithBaseValueINS_11MergeHelper16WideBaseValueTagENS_5SliceEJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPNS_18ColumnFamilyHandleERKS4_RKT_RKT0_RKNS_12MergeContextEDpT1_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !411
  store ptr @.str.46, ptr %10, align 8, !tbaa !98, !noalias !411
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !411
  store ptr @.str, ptr %11, align 8, !tbaa !98, !noalias !411
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !411
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !411
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !411 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !411 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !411
  store ptr @.str.47, ptr %12, align 8, !tbaa !98, !noalias !411
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !411
  store ptr @.str, ptr %13, align 8, !tbaa !98, !noalias !411
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !411
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !411
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 6, i1 false), !alias.scope !412
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i9 = icmp eq ptr %i.j, null
  br i1 %.not.i.i9, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %14, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 1
  %15 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %15, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.l

bb.i:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i7, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.w) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !95, !range !87, !noundef !88
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !177 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !177 ; 2 uses
  %i.ad = icmp ne ptr %i.aa, %i.ac
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.aa, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ad, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i10 = icmp ult ptr %i.ae, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.k
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.k ]
  store i8 0, ptr %i.x, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.j, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.j ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !227
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !228
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !229
  invoke void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ak, i1 noundef zeroext false, ptr noundef null, ptr noundef %6, ptr noundef %7)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %_ZN7rocksdb6StatusC2ERKS0_.exit, %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.am) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb27WriteBatchWithIndexInternal23MergeKeyWithNoBaseValueIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPNS_18ColumnFamilyHandleERKNS_5SliceERKNS_12MergeContextEDpT_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::variant", align 8      ; 9 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !419
  store ptr @.str.46, ptr %9, align 8, !tbaa !98, !noalias !419
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !139, !noalias !419
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !419
  store ptr @.str, ptr %10, align 8, !tbaa !98, !noalias !419
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139, !noalias !419
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !419
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(875) ptr @_ZN7rocksdb19GetImmutableOptionsEPNS_18ColumnFamilyHandleE(ptr noundef nonnull %1), !noalias !419 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176, !noalias !419 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !419
  store ptr @.str.47, ptr %11, align 8, !tbaa !98, !noalias !419
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 44, ptr %i.f, align 8, !tbaa !139, !noalias !419
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !419
  store ptr @.str, ptr %12, align 8, !tbaa !98, !noalias !419
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139, !noalias !419
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !419
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !90, !alias.scope !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 6, i1 false), !alias.scope !420
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 5 uses
  %.not.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i8, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pr = load i8, ptr %13, align 8, !tbaa !114    ; 2 uses
  %i.k = icmp ne i8 %.pr, 0
  call void @llvm.assume(i1 %i.k)
  store i8 %.pr, ptr %0, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 1
  %14 = load <4 x i8>, ptr %i.m, align 1, !tbaa !24
  store <4 x i8> %14, ptr %i.l, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  store i8 %i.p, ptr %i.n, align 1, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !113
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.e, %bb.g
  %storemerge = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.q

.body:                                            ; preds = %bb.h, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.at, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i6, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i7

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i7: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.v) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !95, !range !87, !noundef !88
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !177  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %i.ac = icmp ne ptr %i.z, %i.ab
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.z, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.ac, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i9 = icmp ult ptr %i.ad, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i9, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !5

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.j
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.j, %bb.j ]
  store i8 0, ptr %i.w, align 8, !tbaa !95
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i, %bb.i, %.thread
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %.thread ], [ %i.j, %bb.i ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !421
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !231, !noalias !421
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, i1 noundef zeroext false, ptr noundef null, ptr noundef %4, ptr noundef %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !421
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.l, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %6, align 8, !tbaa !111, !noalias !421 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112, !noalias !421
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #25
  br label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.n:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i8, ptr %i.ak, align 8, !tbaa !231, !noalias !421
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.o, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %6, align 8, !tbaa !111, !noalias !421 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !112, !noalias !421
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !421
  br label %.body

_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !421
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, %_ZN7rocksdb6StatusC2ERKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i12, label %_ZN7rocksdb6StatusD2Ev.exit14, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit14

_ZN7rocksdb6StatusD2Ev.exit14:                    ; preds = %bb.q, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void
}

declare void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %13 = alloca %"class.std::variant", align 16    ; 11 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.std::vector", align 16     ; 12 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7rocksdb23WideColumnSerialization11DeserializeERKNS_5SliceERSt6vectorINS_10WideColumnESaIS5_EEPS4_ISt4pairImNS_9BlobIndexEESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %16, align 8, !tbaa !114    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S2_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.b, ptr %0, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.f = load <4 x i8>, ptr %i.e, align 1, !tbaa !24
  store <4 x i8> %i.f, ptr %i.d, align 1, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !166
  store i8 %i.i, ptr %i.g, align 1, !tbaa !166
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !90
end_hunk_1
