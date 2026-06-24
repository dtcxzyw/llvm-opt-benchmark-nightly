inline.NumInlined: 3394
inline.NumDeleted: 1222
begin_hunk_0_@_ZN2v88internal15ValueSerializer12WriteJSErrorENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  br i1 %i.y, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.z = add nsw i64 %i.x, -1
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp ult i16 %i.ae, 128
  br i1 %i.af, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.c, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ag = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %i.w, ptr nonnull %i.v) #26 ; 3 uses
  %.not158 = icmp eq ptr %i.ag, null
  br i1 %.not158, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.ag, align 8
  %.pre177 = add i64 %.pre, -1
  %.pre178 = inttoptr i64 %.pre177 to ptr
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.pre-phi179 = phi ptr [ %.pre178, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145_crit_edge ], [ %i.aa, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.sroa.07.0.i143147 = phi ptr [ %i.ag, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145_crit_edge ], [ %i.v, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 5 uses
  %i.ah = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %.pre-phi179, ptr nonnull @.str.4, i64 9)
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145
  %i.ai = load i64, ptr %i.j, align 8             ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.m, align 8
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i40, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i39, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i40:              ; preds = %bb.d
  %i.am = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.aj)
  %i.an = trunc i16 %i.am to i1
  br i1 %i.an, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i39, label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i39:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i40, %bb.d
  store i64 %i.aj, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai
  store i8 69, ptr %i.aq, align 1
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread145
  %i.ar = load i64, ptr %.sroa.07.0.i143147, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr nonnull @.str.5, i64 10)
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = load i64, ptr %i.j, align 8             ; 2 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load i64, ptr %i.m, align 8
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i43, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i42, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i43:              ; preds = %bb.f
  %i.az = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.aw)
  %i.ba = trunc i16 %i.az to i1
  br i1 %i.ba, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i42, label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i42:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i43, %bb.f
  store i64 %i.aw, ptr %i.j, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.av
  store i8 82, ptr %i.bd, align 1
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

bb.g:                                             ; preds = %bb.e
  %i.be = load i64, ptr %.sroa.07.0.i143147, align 8
  %i.bf = add i64 %i.be, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, ptr nonnull @.str.6, i64 14)
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = load i64, ptr %i.j, align 8             ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.m, align 8
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i47, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i46, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i47:              ; preds = %bb.h
  %i.bm = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.bj)
  %i.bn = trunc i16 %i.bm to i1
  br i1 %i.bn, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i46, label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i46:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i47, %bb.h
  store i64 %i.bj, ptr %i.j, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bi
  store i8 70, ptr %i.bq, align 1
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

bb.i:                                             ; preds = %bb.g
  %i.br = load i64, ptr %.sroa.07.0.i143147, align 8
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, ptr nonnull @.str.7, i64 11)
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 noundef zeroext 83)
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

bb.k:                                             ; preds = %bb.i
  %i.bv = load i64, ptr %.sroa.07.0.i143147, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, ptr nonnull @.str.8, i64 9)
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 noundef zeroext 84)
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

bb.m:                                             ; preds = %bb.k
  %i.bz = load i64, ptr %.sroa.07.0.i143147, align 8
  %i.ca = add i64 %i.bz, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr nonnull @.str.9, i64 8)
  br i1 %i.cc, label %bb.n, label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 noundef zeroext 85)
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit36

_ZNKR2v85MaybeIbE8FromJustEv.exit36:              ; preds = %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i46, %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i47, %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i42, %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i43, %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i39, %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i40, %bb.l, %bb.m, %bb.n, %bb.j
  %i.cd = and i16 %i.d, 256
  %.not159 = icmp eq i16 %i.cd, 0
  br i1 %.not159, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit36
  %i.ce = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread

_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit: ; preds = %bb.o
  %i.cf = load i8, ptr %3, align 8
  %i.cg = and i8 %i.cf, 32
  %.not160 = icmp eq i8 %i.cg, 0
  br i1 %.not160, label %bb.p, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread

_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread: ; preds = %bb.o, %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i54, label %_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i54: ; preds = %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread
  %i.ck = add nsw i64 %i.ci, -1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.cn = add i64 %i.cm, 11
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load atomic volatile i16, ptr %i.co monotonic, align 2
  %i.cq = icmp ult i16 %i.cp, 128
  br i1 %i.cq, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38.thread151, label %_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit

_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit: ; preds = %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i54
  %i.cr = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %i.ch, ptr nonnull %i.ce) #26 ; 2 uses
  %.not161 = icmp eq ptr %i.cr, null
  br i1 %.not161, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38.thread151

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38.thread151: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i54, %_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit
  %.sroa.08.0.i149153 = phi ptr [ %i.cr, %_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit ], [ %i.ce, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i54 ]
  %i.cs = load i64, ptr %i.j, align 8             ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.m, align 8
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i57, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i56, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i57:              ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38.thread151
  %i.cw = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.ct)
  %i.cx = trunc i16 %i.cw to i1
  br i1 %i.cx, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i56, label %.thread

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i56:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i57, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38.thread151
  store i64 %i.ct, ptr %i.j, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  store i8 109, ptr %i.da, align 1
  br label %.thread

.thread:                                          ; preds = %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i56, %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i57
  call void @_ZN2v88internal15ValueSerializer11WriteStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nonnull %.sroa.08.0.i149153)
  br label %bb.p

bb.p:                                             ; preds = %.thread, %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit, %_ZNKR2v85MaybeIbE8FromJustEv.exit36
  %i.db = load ptr, ptr %0, align 8               ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 7400 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.pre.pre.i = load i64, ptr %i.dc, align 8
  %i.dd = add i64 %.pre.pre.i, -1
  %i.de = inttoptr i64 %i.dd to ptr               ; 3 uses
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = icmp eq i16 %i.di, 128
  br i1 %i.dj, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.p
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.dn = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.dn, ptr %2, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.db, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dy = ptrtoint ptr %1 to i64
  store i64 %i.dy, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 -1, i64 16, i1 false)
  %i.ea = load atomic volatile i64, ptr %i.de monotonic, align 8
  %i.eb = add i64 %i.ea, 11
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i16, ptr %i.ec monotonic, align 2
  %i.ee = and i16 %i.ed, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ee, 32
  br i1 %.not.i21.i.i.i, label %bb.q, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.q:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ef = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 55448
  %i.ei = load i8, ptr %i.eh, align 8, !range !11
  %i.ej = trunc nuw i8 %i.ei to i1
  %not..i.i.i23.i.i.i = xor i1 %i.eg, true
  %i.ek = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ej
  br i1 %i.ek, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 64088
  %i.em = load i8, ptr %i.el, align 8, !range !11, !noundef !12
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 64080
  %i.ep = load ptr, ptr %i.eo, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.q
  %.pn.i.i26.i.i.i = phi ptr [ %i.ep, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.db, %bb.q ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.eq = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.er = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 1 dereferenceable(1) %i.db, ptr nonnull %i.dc) #26
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.er, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.dc, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.dt, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #26
  %i.es = load i32, ptr %i.do, align 4
  %.not.i59 = icmp eq i32 %i.es, 0
  br i1 %.not.i59, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.et = load ptr, ptr %i.ds, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.t

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.ev = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.not162 = icmp eq ptr %i.ev, null
  br i1 %.not162, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i155 = phi ptr [ %i.eu, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.ev, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.ew = load i64, ptr %.sroa.0.0.i155, align 8  ; 2 uses
  %i.ex = trunc i64 %i.ew to i1
  br i1 %i.ex, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.t
  %i.ey = add nsw i64 %i.ew, -1
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load atomic volatile i64, ptr %i.ez monotonic, align 8
  %i.fb = add i64 %i.fa, 11
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i16, ptr %i.fc monotonic, align 2
  %i.fe = icmp ult i16 %i.fd, 128
  br i1 %i.fe, label %bb.u, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.u:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ff = load i64, ptr %i.j, align 8             ; 2 uses
  %i.fg = add i64 %i.ff, 1                        ; 3 uses
  %i.fh = load i64, ptr %i.m, align 8
  %i.fi = icmp ugt i64 %i.fg, %i.fh
  br i1 %i.fi, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i62, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i61, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i62:              ; preds = %bb.u
  %i.fj = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.fg)
  %i.fk = trunc i16 %i.fj to i1
  br i1 %i.fk, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i61, label %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit63

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i61:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i62, %bb.u
  store i64 %i.fg, ptr %i.j, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ff
  store i8 115, ptr %i.fn, align 1
  br label %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit63

_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit63: ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i62, %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i61
  call void @_ZN2v88internal15ValueSerializer11WriteStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nonnull %.sroa.0.0.i155)
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.t, %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit63, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fo = trunc i16 %i.i to i1
  br i1 %i.fo, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.v, !prof !8

bb.v:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #26
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.v
  %i.fp = and i16 %i.i, 256
  %.not163 = icmp eq i16 %i.fp, 0
  br i1 %.not163, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.fq = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i64 = icmp eq ptr %i.fq, null
  br i1 %.not.i64, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65.thread

_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65: ; preds = %bb.w
  %i.fr = load i8, ptr %4, align 8
  %i.fs = and i8 %i.fr, 32
  %.not164 = icmp eq i8 %i.fs, 0
  br i1 %.not164, label %bb.x, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65.thread

_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65.thread: ; preds = %bb.w, %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65
  %i.ft = load i64, ptr %i.j, align 8             ; 2 uses
  %i.fu = add i64 %i.ft, 1                        ; 3 uses
  %i.fv = load i64, ptr %i.m, align 8
  %i.fw = icmp ugt i64 %i.fu, %i.fv
  br i1 %i.fw, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i69, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i68, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i69:              ; preds = %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65.thread
  %i.fx = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.fu)
  %i.fy = trunc i16 %i.fx to i1
  br i1 %i.fy, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i68, label %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit70

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i68:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i69, %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65.thread
  store i64 %i.fu, ptr %i.j, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ft
  store i8 99, ptr %i.gb, align 1
  br label %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit70

_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit70: ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i69, %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i68
  %i.gc = call i16 @_ZN2v88internal15ValueSerializer11WriteObjectENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %i.fq)
  %i.gd = and i16 %i.gc, 257
  %i.ge = icmp eq i16 %i.gd, 257
  br i1 %i.ge, label %bb.x, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

bb.x:                                             ; preds = %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit70, %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit65, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.gf = load i64, ptr %i.j, align 8             ; 2 uses
  %i.gg = add i64 %i.gf, 1                        ; 3 uses
  %i.gh = load i64, ptr %i.m, align 8
  %i.gi = icmp ugt i64 %i.gg, %i.gh
  br i1 %i.gi, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i73, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i72, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i73:              ; preds = %bb.x
  %i.gj = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.gg)
  %i.gk = trunc i16 %i.gj to i1
  br i1 %i.gk, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i72, label %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit74

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i72:             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i73, %bb.x
  store i64 %i.gg, ptr %i.j, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gf
  store i8 46, ptr %i.gn, align 1
  br label %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit74

_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit74: ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i.i73, %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i.i72
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.gp = load i8, ptr %i.go, align 2, !range !11, !noundef !12
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.y, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

bb.y:                                             ; preds = %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit74
  %i.gr = call i16 @_ZN2v88internal15ValueSerializer19ThrowDataCloneErrorENS0_15MessageTemplateE(ptr noundef nonnull readonly align 8 dereferenceable(288) %0, i32 noundef 463)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37: ; preds = %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit70, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit74, %bb.y, %_ZN2v88internal15ValueSerializer8WriteTagENS0_16SerializationTagE.exit
  %.sroa.030.4 = phi i16 [ 0, %_ZN2v88internal15ValueSerializer8WriteTagENS0_16SerializationTagE.exit ], [ 0, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ 0, %_ZN2v88internal6Object8ToStringINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_IS7_E9MaybeTypeEPNS0_7IsolateESH_.exit ], [ 0, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ], [ 0, %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit70 ], [ %i.gr, %bb.y ], [ 257, %_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37
  %.sroa.030.5 = phi i16 [ %.sroa.030.4, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i16 %.sroa.030.5
end_hunk_0
begin_hunk_1_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE:bb.a

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef, ptr, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, -4294967294) i64 @_ZN2v88internal15ValueSerializer27WriteJSObjectPropertiesSlowENS0_12DirectHandleINS0_8JSObjectEEENS2_INS0_10FixedArrayEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyKey", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 6 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32                        ; 2 uses
  %i.g = trunc nuw i64 %i.f to i32
  %.not49 = icmp sgt i32 %i.g, 0
  br i1 %.not49, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03750 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %i.j = load i64, ptr %2, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.p) #26
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.c ], [ %i.r, %bb.b ] ; 4 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.o, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.z = load ptr, ptr %0, align 8
  call void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.z, ptr nonnull %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8
  %i.ab = load i64, ptr %i.h, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.aa, ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 noundef %i.ab, ptr %1, i32 noundef 1)
  %i.ac = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #26 ; 2 uses
  %.not46 = icmp eq ptr %i.ac, null
  br i1 %.not46, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ad = load i32, ptr %i.i, align 4
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call i16 @_ZN2v88internal15ValueSerializer11WriteObjectENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nonnull %.0.i.i)
  %i.af = and i16 %i.ae, 257
  %i.ag = icmp eq i16 %i.af, 257
  br i1 %i.ag, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = call i16 @_ZN2v88internal15ValueSerializer11WriteObjectENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nonnull %i.ac)
  %i.ai = and i16 %i.ah, 257
  %i.aj = icmp eq i16 %i.ai, 257
  br i1 %i.aj, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ak = add i32 %.03750, 1
  br label %bb.h

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %._crit_edge

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i32 [ %i.ak, %bb.g ], [ %.03750, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !60

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.al = zext i32 %.1 to i64
  %i.am = shl nuw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.thread
  %.sroa.011.3 = phi i64 [ 0, %.thread ], [ 1, %bb.a ], [ %i.an, %._crit_edge.loopexit ]
  ret i64 %.sroa.011.3
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.549") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 63
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = add i64 %i.e, 63
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !61 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !noalias !61
  store <2 x ptr> %i.l, ptr %0, align 8, !alias.scope !61
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !noalias !61
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !noalias !61
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !noalias !61
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !61 ; 0 uses
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !11
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #26
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #26
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15ValueSerializer11WriteVarintIhEEvT_(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07 = phi i8 [ %1, %bb.a ], [ %i.d, %bb.b ]    ; 4 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.b ]  ; 3 uses
  %i.b = or i8 %.07, -128
  store i8 %i.b, ptr %.0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.d = lshr i8 %.07, 7
  %.not = icmp sgt i8 %.07, -1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !64

bb.c:                                             ; preds = %bb.b
  store i8 %.07, ptr %.0, align 1
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = add i64 %i.i, %i.g                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %_ZNK2v85MaybeIbE2ToEPb.exit.i.i, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i, !prof !7

_ZNK2v85MaybeIbE2ToEPb.exit.i.i:                  ; preds = %bb.c
  %i.n = call i16 @_ZN2v88internal15ValueSerializer12ExpandBufferEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %i.j)
  %i.o = trunc i16 %i.n to i1
  br i1 %i.o, label %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i, label %_ZN2v88internal15ValueSerializer13WriteRawBytesEPKvm.exit

_ZNK2v85MaybeIPhE2ToEPS1_.exit.i:                 ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i, %bb.c
  store i64 %i.j, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 %i.g, i1 false)
  br label %_ZN2v88internal15ValueSerializer13WriteRawBytesEPKvm.exit

_ZN2v88internal15ValueSerializer13WriteRawBytesEPKvm.exit: ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.i.i, %_ZNK2v85MaybeIPhE2ToEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !65
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !65
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden noundef i16 @_ZN2v88internal15ValueSerializer19ThrowDataCloneErrorENS0_15MessageTemplateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.c = tail call i16 @_ZN2v88internal15ValueSerializer19ThrowDataCloneErrorENS0_15MessageTemplateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, ptr nonnull %i.b)
  ret i16 %i.c
}

declare noundef i32 @_ZNK2v88internal12JSTypedArray4typeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal17JSRabGsabDataView13IsOutOfBoundsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.549", align 8 ; 5 uses
  %2 = alloca %"class.std::shared_ptr.549", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.548", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.548", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = add i64 %i.a, 39
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i1
  %i.g = add i64 %i.a, 47
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = add i64 %i.a, 31
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  store i64 %i.l, ptr %3, align 8
  %i.m = add i64 %i.l, 71
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = and i32 %i.o, 16
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.r = and i32 %i.q, 32
  %.not1.i = icmp eq i32 %i.r, 0
  br i1 %.not1.i, label %.critedge.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.549") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.s = load ptr, ptr %2, align 8                ; 2 uses
  %.not2.i = icmp eq ptr %i.s, null
  br i1 %.not2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load atomic i64, ptr %i.t seq_cst, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ %i.u, %bb.f ], [ 0, %bb.e ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.v = add i64 %i.l, 39
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit

_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit: ; preds = %bb.g, %.critedge.i
  %.1.i = phi i64 [ %.0.i, %bb.g ], [ %i.x, %.critedge.i ]
  %i.y = icmp ugt i64 %i.i, %.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.z = add i64 %i.a, 55
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ad = add i64 %i.a, 31
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  store i64 %i.af, ptr %4, align 8
  %i.ag = add i64 %i.af, 71
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load atomic volatile i32, ptr %i.ah monotonic, align 4
  %i.aj = and i32 %i.ai, 16
  %.not.i3 = icmp eq i32 %i.aj, 0
  br i1 %.not.i3, label %.critedge.i8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load atomic volatile i32, ptr %i.ah monotonic, align 4
  %i.al = and i32 %i.ak, 32
  %.not1.i4 = icmp eq i32 %i.al, 0
  br i1 %.not1.i4, label %.critedge.i8, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.549") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.am = load ptr, ptr %1, align 8               ; 2 uses
  %.not2.i5 = icmp eq ptr %i.am, null
  br i1 %.not2.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load atomic i64, ptr %i.an seq_cst, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i6 = phi i64 [ %i.ao, %bb.k ], [ 0, %bb.j ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit9

.critedge.i8:                                     ; preds = %bb.i, %bb.h
  %i.ap = add i64 %i.af, 39
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 8
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit9

_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit9: ; preds = %bb.l, %.critedge.i8
  %.1.i7 = phi i64 [ %.0.i6, %bb.l ], [ %i.ar, %.critedge.i8 ]
  %i.as = icmp ugt i64 %i.ac, %.1.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit9, %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit
  %.0 = phi i1 [ %i.y, %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit ], [ %i.as, %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit9 ], [ false, %bb.a ]
  ret i1 %.0
}

declare i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorE(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30
  %i.b = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.a) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.pre.pre.i = load i64, ptr %i.b, align 8
  %i.c = add i64 %.pre.pre.i, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.m = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.m, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 -1, i64 16, i1 false)
  %i.z = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = and i16 %i.ac, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ad, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ah = load i8, ptr %i.ag, align 8, !range !11
  %i.ai = trunc nuw i8 %i.ah to i1
  %not..i.i.i23.i.i.i = xor i1 %i.af, true
  %i.aj = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.al = load i8, ptr %i.ak, align 8, !range !11, !noundef !12
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ap = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.aq = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b) #26
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.aq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.b, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.s, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #26
  %i.ar = load i32, ptr %i.n, align 4
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.as = load ptr, ptr %i.r, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 648
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.au = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #26
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.au, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.sroa.07.0.i
}

declare void @_ZN2v88internal26GlobalBackingStoreRegistry8RegisterESt10shared_ptrINS0_12BackingStoreEE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v819SharedValueConveyorC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v819SharedValueConveyorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN2v88internal27SharedObjectConveyorHandles7PersistENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(32), i64) local_unnamed_addr #2

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = load i64, ptr %2, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.a, -1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.a, 32
  br label %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.g = add nsw i64 %i.a, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 130
  br i1 %i.m, label %bb.d, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.n, align 8 ; 4 uses
  %i.o = fcmp ult double %.0.copyload.i.i.i.i.i, 0.000000e+00
  %i.p = fcmp ogt double %.0.copyload.i.i.i.i.i, f0x433FFFFFFFFFFFFF
  %or.cond.i = or i1 %i.o, %i.p
  br i1 %or.cond.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = fptoui double %.0.copyload.i.i.i.i.i to i64 ; 2 uses
  %i.r = uitofp i64 %i.q to double
  %i.s = fcmp oeq double %.0.copyload.i.i.i.i.i, %i.r
  br i1 %i.s, label %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i64 [ %i.f, %bb.c ], [ %i.q, %bb.e ]
  store i64 %.sink.i, ptr %i.b, align 8
  br label %bb.p

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.e, %bb.d
  %i.t = add nsw i64 %i.a, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 130
  br i1 %i.z, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.f

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aa = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %2, i32 noundef 2) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.016.0 = phi ptr [ %i.aa, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %2, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ] ; 4 uses
  store ptr %.sroa.016.0, ptr %0, align 8
  %i.ab = load i64, ptr %.sroa.016.0, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp ult i16 %i.ah, 128
  br i1 %i.ai, label %bb.g, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 8 ; 4 uses
  %i.al = and i32 %i.ak, -536870909
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10624
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %i.ap, align 8, !range !11, !noundef !12
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 55464
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, -55464
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 648
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33: ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.as, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1432
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = lshr exact i32 %i.ak, 2
  %i.bf = and i32 %i.be, 16777215                 ; 2 uses
end_hunk_1
