inline.NumInlined: 633
inline.NumDeleted: 278
begin_hunk_0_@_ZN2v88internal12StoreHandler21StoreThroughPrototypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_10JSReceiverEEENS0_6TaggedINS0_3SmiEEENS0_23MaybeObjectDirectHandleESC_:bb.a
  %i.cs = load i64, ptr %i.cr, align 262144       ; 2 uses
  %i.ct = and i64 %i.cs, 32
  %.not.i.i.i.i.i16.i.i = icmp eq i64 %i.ct, 0
  %i.cu = and i64 %i.cs, 25
  %.not38.i.i.i.i.i17.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not38.i.i.i.i.i17.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cv = and i64 %.sroa.05.0.i13.i.i, -262144
  %i.cw = inttoptr i64 %i.cv to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i18.i.i = load i64, ptr %i.cw, align 262144
  %i.cx = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i18.i.i, 25
  %.not39.i.i.i.i.i19.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not39.i.i.i.i.i19.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.co, i64 noundef %i.cp, i64 %i.cn) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i16.i.i, label %_ZN2v88internal12_GLOBAL__N_119InitPrototypeChecksINS0_12StoreHandlerEEEvPNS0_7IsolateENS0_12DirectHandleIT_EENS6_INS0_3MapEEENS0_23MaybeObjectDirectHandleESB_.exit, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.co, i64 %i.cp, i64 %i.cn) #7
  br label %_ZN2v88internal12_GLOBAL__N_119InitPrototypeChecksINS0_12StoreHandlerEEEvPNS0_7IsolateENS0_12DirectHandleIT_EENS6_INS0_3MapEEENS0_23MaybeObjectDirectHandleESB_.exit

_ZN2v88internal12_GLOBAL__N_119InitPrototypeChecksINS0_12StoreHandlerEEEvPNS0_7IsolateENS0_12DirectHandleIT_EENS6_INS0_3MapEEENS0_23MaybeObjectDirectHandleESB_.exit: ; preds = %_ZN2v88internal11DataHandler9set_data1ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i.i, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit15.i.i, %bb.y, %bb.z
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, ptr } @_ZN2v88internal12StoreHandler11StoreGlobalENS0_6HandleINS0_12PropertyCellEEE(ptr %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.fca.1.insert.i = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %0, 1
  ret { i32, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6HandleINS0_7JSProxyEEENS4_INS0_10JSReceiverEEE(ptr noundef %0, ptr %1, ptr readonly captures(address) %2, ptr readonly captures(address) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::MaybeObjectDirectHandle", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #7
  br label %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit

_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = ptrtoint ptr %.0.i.i.i to i64
  %i.h = add i64 %i.g, 8
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.a, align 8
  store i64 42949672960, ptr %.0.i.i.i, align 8
  %i.j = icmp eq ptr %3, %2
  br i1 %i.j, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit
  %i.k = icmp eq ptr %3, null
  %i.l = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.l, %i.k
  br i1 %or.cond.i, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread21, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.c
  %i.m = load i64, ptr %3, align 8
  %i.n = load i64, ptr %2, align 8
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread21

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread21: ; preds = %bb.c, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  store i32 1, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = tail call ptr @_ZN2v88internal12StoreHandler21StoreThroughPrototypeEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_10JSReceiverEEENS0_6TaggedINS0_3SmiEEENS0_23MaybeObjectDirectHandleESC_(ptr noundef nonnull %0, ptr %1, ptr %2, i64 42949672960, i32 0, ptr %2, ptr noundef nonnull byval(%"class.v8::internal::MaybeObjectDirectHandle") align 8 %4)
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread21
  %.sroa.014.0 = phi ptr [ %i.q, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread21 ], [ %.0.i.i.i, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit ], [ %.0.i.i.i, %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.014.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal11LoadHandler29CanHandleHolderNotLookupStartENS0_6TaggedINS0_6ObjectEEE(i64 %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = and i32 %i.d, 15                         ; 2 uses
  %i.f = icmp eq i32 %i.e, 11
  %i.g = icmp eq i32 %i.e, 13
  %i.h = or i1 %i.f, %i.g
  br label %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %0, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 137
  br label %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11LoadHandler12PrintHandlerENS0_6TaggedINS0_6ObjectEEERSo(i64 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %3 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 17) #7 ; 0 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_119PrintSmiLoadHandlerEiRSo(i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) #7 ; 0 uses
  br label %bb.m

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %bb.a
  %i.g = add nsw i64 %0, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 11 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 185
  br i1 %i.m, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 18) #7 ; 0 uses
  %i.o = add i64 %0, 89
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i16, ptr %i.p, align 2
  %i.r = sext i16 %i.q to i32
  %i.s = tail call noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef %i.r) #7 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z) #7
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #7
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.s, i64 noundef %i.aa) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) #7 ; 0 uses
  br label %bb.m

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.ad = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 128
  br i1 %i.ah, label %bb.e, label %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 20) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.m

_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 137
  br i1 %i.ap, label %bb.f, label %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %4 = load i32, ptr %i.aq, align 4               ; 3 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 53) #7 ; 0 uses
  %i.as = and i32 %4, 16
  %i.at = icmp ne i32 %i.as, 0
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.at) #7 ; 2 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.5, i64 noundef 34) #7 ; 0 uses
  %i.aw = and i32 %4, 32
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i1 noundef zeroext %i.ax) #7
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.6, i64 noundef 2) #7 ; 0 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_119PrintSmiLoadHandlerEiRSo(i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ba = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.bb = add i64 %i.ba, 7
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i8, ptr %i.bc monotonic, align 1
  %i.be = icmp ugt i8 %i.bd, 3
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 10) #7 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bh = load i64, ptr %i.bg, align 8
  tail call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE0EmEEvNS0_10TaggedImplIXT_ET0_EERSo(i64 %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.bj = add i64 %i.bi, 7
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i8, ptr %i.bk monotonic, align 1
  %i.bm = icmp ugt i8 %i.bl, 4
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 10) #7 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bp = load i64, ptr %i.bo, align 8
  tail call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE0EmEEvNS0_10TaggedImplIXT_ET0_EERSo(i64 %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.br = add i64 %i.bq, 7
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i8, ptr %i.bs monotonic, align 1
  %i.bu = icmp ugt i8 %i.bt, 5
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 10) #7 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bx = load i64, ptr %i.bw, align 8
  tail call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE0EmEEvNS0_10TaggedImplIXT_ET0_EERSo(i64 %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 18) #7 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  tail call void @_ZN2v88internal10ShortPrintENS0_6TaggedINS0_6ObjectEEERSo(i64 %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) #7 ; 0 uses
  br label %bb.m

_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 26) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 %0, ptr %3, align 8
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.1, i64 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l, %_ZN2v88internal13IsLoadHandlerENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_119PrintSmiLoadHandlerEiRSo(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 15
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 7) #7 ; 0 uses
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.p
    i32 9, label %bb.q
    i32 10, label %bb.r
    i32 11, label %bb.s
    i32 12, label %bb.t
    i32 13, label %bb.u
    i32 14, label %bb.v
    i32 15, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 10) #7 ; 0 uses
  %i.d = and i32 %0, 128
  %.not46 = icmp eq i32 %i.d, 0
  br i1 %.not46, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.24, i64 noundef 11) #7 ; 0 uses
  %i.f = lshr i32 %0, 8
  %i.g = and i32 %i.f, 15
  %i.h = zext nneg i32 %i.g to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internallsERSoNS0_13WasmValueTypeE, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #7
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %switch.load, i64 noundef %i.i) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.25, i64 noundef 22) #7 ; 0 uses
  %i.l = and i32 %0, 64
  %i.m = icmp ne i32 %i.l, 0
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.m) #7 ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.26, i64 noundef 15) #7 ; 0 uses
  %i.p = and i32 %0, 256
  %i.q = icmp ne i32 %i.p, 0
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i1 noundef zeroext %i.q) #7 ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.27, i64 noundef 23) #7 ; 0 uses
  %i.t = and i32 %0, 512
  %i.u = icmp ne i32 %i.t, 0
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i1 noundef zeroext %i.u) #7 ; 4 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.28, i64 noundef 18) #7 ; 0 uses
  %i.x = lshr i32 %0, 10
  %i.y = trunc i32 %i.x to i8
  %i.z = tail call noundef ptr @_ZN2v88internal20ElementsKindToStringENS0_12ElementsKindE(i8 noundef zeroext %i.y) #7 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag) #7
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #7
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.z, i64 noundef %i.ah) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %bb.a
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, i64 noundef 24) #7 ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.25, i64 noundef 22) #7 ; 0 uses
  %i.al = and i32 %0, 64
  %i.am = icmp ne i32 %i.al, 0
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.am) #7 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.26, i64 noundef 15) #7 ; 0 uses
  %i.ap = and i32 %0, 256
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i1 noundef zeroext %i.aq) #7 ; 2 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.27, i64 noundef 23) #7 ; 0 uses
  %i.at = and i32 %0, 512
  %i.au = icmp ne i32 %i.at, 0
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i1 noundef zeroext %i.au) #7 ; 4 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.28, i64 noundef 18) #7 ; 0 uses
  %i.ax = lshr i32 %0, 10
  %i.ay = trunc i32 %i.ax to i8
  %i.az = tail call noundef ptr @_ZN2v88internal20ElementsKindToStringENS0_12ElementsKindE(i8 noundef zeroext %i.ay) #7 ; 3 uses
  %.not.i42 = icmp eq ptr %i.az, null
  br i1 %.not.i42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.av, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.av, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = or i32 %i.bf, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bd, i32 noundef %i.bg) #7
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.h:                                             ; preds = %bb.f
  %i.bh = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #7
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.az, i64 noundef %i.bh) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %bb.a
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, i64 noundef 38) #7 ; 0 uses
  %i.bk = and i32 %0, 64
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.bl) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %bb.a
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, i64 noundef 7) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.k:                                             ; preds = %bb.a
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32, i64 noundef 7) #7 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.l:                                             ; preds = %bb.a
  %i.bp = and i32 %0, 64
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.m, label %switch.lookup48

switch.lookup48:                                  ; preds = %bb.l
end_hunk_0
