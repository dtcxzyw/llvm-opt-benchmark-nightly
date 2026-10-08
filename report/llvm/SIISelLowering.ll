Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIISelLowering?download=true
inline.NumInlined: 17199
inline.NumDeleted: 4185
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZNK4llvm3LLT17changeElementSizeEj:bb.a
  %i.r = shl nuw nsw i32 %i.k, 20
  %i.s = zext nneg i32 %i.r to i64
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = or disjoint i64 %i.t, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !820, !range !30, !noundef !31
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = and i64 %i.a, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.w, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.x
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.z = lshr i64 %i.a, 44
  %i.aa = and i64 %i.z, 65535
  %i.ab = lshr i64 %i.a, 28
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = select i1 %i.y, i64 %i.aa, i64 %i.ac
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.ae, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.h, %bb.c ], [ %storemerge.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i, %bb.h ], [ %i.u, %bb.g ], [ %storemerge.i.i.i.i.i, %bb.f ]
  store i64 %.sroa.0.0.i, ptr %2, align 8
  %i.af = call i64 @_ZNK4llvm3LLT17changeElementSizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
  %i.ag = call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.insert.i.i, i64 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm3LLT9floatIEEEEj.exit

bb.j:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.a, -1152921504606846976   ; 2 uses
  %i.ah = icmp eq i64 %.mask.i, 2305843009213693952
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !820, !range !30, !noundef !31
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = zext i32 %1 to i64
  %i.al = shl nuw nsw i64 %i.ak, 28
  %.sroa.0.0.v.i = select i1 %i.aj, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6 = or disjoint i64 %.sroa.0.0.v.i, %i.al
  br label %_ZN4llvm3LLT9floatIEEEEj.exit

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %.mask.i, 3458764513820540928
  %i.an = trunc i64 %i.a to i32
  %i.ao = lshr i32 %i.an, 20
  %i.ap = and i32 %i.ao, 255
  %i.aq = and i64 %i.a, -1152921504341557248
  %or.cond.i = icmp eq i64 %i.aq, 3458764513820540928
  %i.ar = add nsw i32 %i.ap, -3
  %i.as = icmp ult i32 %i.ar, 2
  %i.at = and i1 %i.am, %i.as
  %or.cond = or i1 %or.cond.i, %i.at
  br i1 %or.cond, label %_ZNK4llvm3LLT11isFloatIEEEEv.exit.thread, label %bb.n

_ZNK4llvm3LLT11isFloatIEEEEv.exit.thread:         ; preds = %bb.l
  %i.au = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !820, !range !30, !noundef !31
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm3LLT11isFloatIEEEEv.exit.thread
  %i.aw = zext i32 %1 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 28
  %storemerge.i.i.i.i7 = or disjoint i64 %i.ax, 1152921504606846976
  br label %_ZN4llvm3LLT9floatIEEEEj.exit

switch.lookup:                                    ; preds = %_ZNK4llvm3LLT11isFloatIEEEEv.exit.thread
  %i.ay = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm3LLT17changeElementSizeEj, i64 %i.az
  %switch.gep = getelementptr i8, ptr %i.ba, i64 -32
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN4llvm3LLT9floatIEEEEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bb = zext i32 %1 to i64
  %i.bc = shl nuw nsw i64 %i.bb, 28
  %storemerge.i.i.i = or disjoint i64 %i.bc, 1152921504606846976
  br label %_ZN4llvm3LLT9floatIEEEEj.exit

_ZN4llvm3LLT9floatIEEEEj.exit:                    ; preds = %switch.lookup, %bb.m, %bb.n, %bb.k, %_ZNK4llvm3LLT14getElementTypeEv.exit
  %.sroa.05.0 = phi i64 [ %i.ag, %_ZNK4llvm3LLT14getElementTypeEv.exit ], [ %.sroa.0.0.i6, %bb.k ], [ %storemerge.i.i.i, %bb.n ], [ %storemerge.i.i.i.i7, %bb.m ], [ %switch.load, %switch.lookup ]
  ret i64 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1, i16 %2, ptr %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  store i16 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %3, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %2, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %2, -19
  %spec.select.i.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split.i
  %i.d = zext nneg i16 %2 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !217
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.j = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i
  %i.k = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %bb.b, %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.n = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store i16 %i.m, ptr %4, align 8, !tbaa !217
  store ptr %i.n, ptr %i.a, align 8, !tbaa !240
  switch i16 %i.m, label %bb.n [
    i16 14, label %bb.e
    i16 15, label %bb.o
    i16 13, label %bb.l
    i16 12, label %bb.l
  ]

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 793
  %i.r = load i8, ptr %i.q, align 1, !tbaa !221, !range !30, !noundef !31
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 735
  %i.u = load i8, ptr %i.t, align 1, !tbaa !881, !range !30, !noundef !31
  %i.v = trunc nuw i8 %i.u to i1
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.w, align 8, !tbaa !430
  %i.x = getelementptr i8, ptr %.val, i64 144
  %.val.val = load i40, ptr %i.x, align 8
  %i.y = and i40 %.val.val, 16776960
  %i.z = icmp eq i40 %i.y, 65792
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 735
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !881, !range !30, !noundef !31
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 698
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !882, !range !30, !noundef !31
  %i.af = trunc nuw i8 %i.ae to i1
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 698
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !882, !range !30, !noundef !31
  %i.ai = trunc nuw i8 %i.ah to i1
  br label %bb.o

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit, %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 654
  %i.am = load i8, ptr %i.al, align 2, !tbaa !211, !range !30, !noundef !31
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val6 = load ptr, ptr %i.ao, align 8, !tbaa !430
  %i.ap = getelementptr i8, ptr %.val6, i64 144
  %.val6.val = load i40, ptr %i.ap, align 8       ; 2 uses
  %i.aq = and i40 %.val6.val, 4278190080
  %i.ar = icmp ne i40 %i.aq, 16777216
  %i.as = ashr i40 %.val6.val, 32
  %5 = trunc nsw i40 %i.as to i16
  %i.at = icmp ne i16 %5, 1
  %.not8 = select i1 %i.ar, i1 true, i1 %i.at
  br label %bb.o

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %_ZNK4llvm3EVT13getScalarTypeEv.exit, %bb.j, %bb.k, %bb.h, %bb.i, %bb.n, %bb.f
  %.0 = phi i1 [ false, %bb.n ], [ %i.af, %bb.i ], [ true, %_ZNK4llvm3EVT13getScalarTypeEv.exit ], [ %i.v, %bb.f ], [ %i.ai, %bb.k ], [ true, %bb.h ], [ false, %bb.j ], [ false, %bb.l ], [ %.not8, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %.mask.i.i.i = and i64 %2, -1152921504606846976
  %i.a = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.b = icmp slt i64 %2, -8070450532247928832
  %spec.select.i.i = or i1 %i.b, %i.a
  %i.c = lshr i64 %2, 44
  %i.d = and i64 %i.c, 65535
  %i.e = lshr i64 %2, 28
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.d, i64 %i.e
  %.0.i = trunc i64 %.0.in.i to i32
  switch i32 %.0.i, label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit [
    i32 16, label %bb.b
    i32 32, label %bb.d
    i32 64, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 654
  %i.i = load i8, ptr %i.h, align 2, !tbaa !211, !range !30, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val6.i = load ptr, ptr %i.k, align 8, !tbaa !430
  %i.l = getelementptr i8, ptr %.val6.i, i64 144
  %.val6.val.i = load i40, ptr %i.l, align 8      ; 2 uses
  %i.m = and i40 %.val6.val.i, 4278190080
  %i.n = icmp ne i40 %i.m, 16777216
  %i.o = ashr i40 %.val6.val.i, 32
  %3 = trunc nsw i40 %i.o to i16
  %i.p = icmp ne i16 %3, 1
  %.not8.i = select i1 %i.n, i1 true, i1 %i.p
  br label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 793
  %i.t = load i8, ptr %i.s, align 1, !tbaa !221, !range !30, !noundef !31
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 735
  %i.w = load i8, ptr %i.v, align 1, !tbaa !881, !range !30, !noundef !31
  %i.x = trunc nuw i8 %i.w to i1
  br label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !430
  %i.z = getelementptr i8, ptr %.val.i, i64 144
  %.val.val.i = load i40, ptr %i.z, align 8
  %i.aa = and i40 %.val.val.i, 16776960
  %i.ab = icmp eq i40 %i.aa, 65792
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 735
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !881, !range !30, !noundef !31
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ae, label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 698
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !882, !range !30, !noundef !31
  %i.ah = trunc nuw i8 %i.ag to i1
  br label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

bb.i:                                             ; preds = %bb.f
  br i1 %i.ae, label %bb.j, label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 698
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !882, !range !30, !noundef !31
  %i.ak = trunc nuw i8 %i.aj to i1
  br label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

bb.k:                                             ; preds = %bb.a
  br label %_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit

_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ false, %bb.a ], [ false, %bb.b ], [ %.not8.i, %bb.c ], [ true, %bb.g ], [ %i.ah, %bb.h ], [ false, %bb.i ], [ %i.x, %bb.e ], [ %i.ak, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering11isFMADLegalERKNS_12MachineInstrENS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = lshr i64 %2, 60
  %.off.i = add nsw i64 %i.a, -1
  %switch.i = icmp ult i64 %.off.i, 3
  br i1 %switch.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.mask.i.i.i = and i64 %2, -1152921504606846976
  %i.b = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.c = icmp slt i64 %2, -8070450532247928832
  %spec.select.i.i = or i1 %i.c, %i.b
  %i.d = lshr i64 %2, 44
  %i.e = and i64 %i.d, 65535
  %i.f = lshr i64 %2, 28
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.e, i64 %i.f
  %.0.i = trunc i64 %.0.in.i to i32
  switch i32 %.0.i, label %bb.g [
    i32 16, label %bb.c
    i32 32, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm12GCNSubtarget9hasMadF16Ev(ptr noundef nonnull align 8 dereferenceable(520232) %i.h) #27
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %.val4 = load ptr, ptr %i.k, align 8, !tbaa !430
  %i.l = getelementptr i8, ptr %.val4, i64 144
  %.val4.val = load i40, ptr %i.l, align 8        ; 2 uses
  %i.m = and i40 %.val4.val, 4278190080
  %i.n = icmp eq i40 %i.m, 16777216
  %i.o = ashr i40 %.val4.val, 32
  %3 = trunc nsw i40 %i.o to i16
  %i.p = icmp eq i16 %3, 1
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 793
  %i.u = load i8, ptr %i.t, align 1, !tbaa !221, !range !30, !noundef !31
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %.val = load ptr, ptr %i.x, align 8, !tbaa !430
  %i.y = getelementptr i8, ptr %.val, i64 144
  %.val.val = load i40, ptr %i.y, align 8
  %i.z = and i40 %.val.val, 16776960
  %i.aa = icmp eq i40 %i.z, 65792
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f, %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.q, %bb.d ], [ %i.aa, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering11isFMADLegalERKNS_12SelectionDAGEPKNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !540  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !217 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !240
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 14
  %i.c = icmp eq ptr %.sroa.21.0.copyload.i, null ; 2 uses
  %.not4.i = select i1 %.not.i.i, i1 %i.c, i1 false
  br i1 %.not4.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 793
  %i.g = load i8, ptr %i.f, align 1, !tbaa !221, !range !30, !noundef !31
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !332
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %.val = load ptr, ptr %i.k, align 8, !tbaa !430
  %i.l = getelementptr i8, ptr %.val, i64 144
  %.val.val = load i40, ptr %i.l, align 8
  %i.m = and i40 %.val.val, 16776960
  %i.n = icmp eq i40 %i.m, 65792
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %.not.i.i6 = icmp eq i16 %.sroa.0.0.copyload.i, 13
  %.not4.i7 = select i1 %.not.i.i6, i1 %i.c, i1 false
  br i1 %.not4.i7, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm12GCNSubtarget9hasMadF16Ev(ptr noundef nonnull align 8 dereferenceable(520232) %i.p) #27
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !332
  %i.t = getelementptr i8, ptr %i.s, i64 40
  %.val5 = load ptr, ptr %i.t, align 8, !tbaa !430
  %i.u = getelementptr i8, ptr %.val5, i64 144
  %.val5.val = load i40, ptr %i.u, align 8        ; 2 uses
  %i.v = and i40 %.val5.val, 4278190080
  %i.w = icmp eq i40 %i.v, 16777216
  %i.x = ashr i40 %.val5.val, 32
  %3 = trunc nsw i40 %i.x to i16
  %i.y = icmp eq i16 %3, 1
  %i.z = select i1 %i.w, i1 %i.y, i1 false
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.c
  %.0 = phi i1 [ %i.z, %bb.f ], [ %i.n, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering18splitUnaryVectorOpENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %6 = alloca %"struct.std::pair.746", align 8    ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %10 = alloca %"struct.std::pair.744", align 8   ; 5 uses
  %11 = alloca %"struct.std::pair.746", align 8   ; 7 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %13 = alloca %"class.llvm::SmallVector.719", align 8 ; 10 uses
  %14 = alloca %"class.llvm::SmallVector.719", align 8 ; 10 uses
  %15 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %16 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !812  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !540
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.f, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !240
  store i16 %.sroa.0.0.copyload.i.i, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !846, !noalias !2189 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !2189
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !550, !noalias !2189
  store i64 %i.k, ptr %8, align 8, !tbaa !550, !noalias !2189
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !551, !noalias !2189
  store i32 %i.n, ptr %i.l, align 8, !tbaa !553, !noalias !2189
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !2190
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !805, !noalias !2190
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !806, !noalias !2190
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !540, !noalias !2190
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.u, align 8, !tbaa !217, !noalias !2190
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !240, !noalias !2190
  store i16 %.sroa.0.0.copyload.i.i.i.i, ptr %7, align 8, !noalias !2190
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i, ptr %i.v, align 8, !noalias !2190
  call void @_ZNK4llvm12SelectionDAG15GetSplitDestVTsERKNS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.746") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(16) %7) #27, !noalias !2190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !432, !noalias !2190
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !432, !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !2190
  call void @_ZN4llvm12SelectionDAG11SplitVectorERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.744") align 8 %10, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !2189
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @_ZNK4llvm12SelectionDAG15GetSplitDestVTsERKNS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.746") align 8 %11, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.z = load i64, ptr %i.j, align 8, !tbaa !550
  store i64 %i.z, ptr %12, align 8, !tbaa !550
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !551
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !553
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  store ptr %i.ac, ptr %13, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 2, ptr %i.ae, align 4, !tbaa !490
  store i32 1, ptr %i.ad, align 8, !tbaa !489
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false)
  store ptr %i.af, ptr %14, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 2, ptr %i.ah, align 4, !tbaa !490
  store i32 1, ptr %i.ag, align 8, !tbaa !489
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !846 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !883 ; 3 uses
  %i.al = zext i16 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %.idx = mul nuw nsw i64 %i.al, 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 2 uses
  %i.ao = add nsw i64 %i.al, -1                   ; 2 uses
  %i.ap = icmp ugt i16 %i.ak, 2
  br i1 %i.ap, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.ac, i64 noundef %i.al, i64 noundef 16) #27
  %.pre.i = load i32, ptr %i.ad, align 8, !tbaa !489
  %.pre9.i = zext i32 %.pre.i to i64
  br label %.lr.ph.i.i.i.i.preheader.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i: ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq i16 %i.ak, 1
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i
  %.pre-phi.i79 = phi i64 [ %.pre9.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread ], [ 1, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.aq = load ptr, ptr %13, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.pre-phi.i79
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !769
  %i.as = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre8.i = load i32, ptr %i.ad, align 8, !tbaa !489
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i
  %.not9.i.i.i.i.i81 = phi i1 [ false, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i ], [ true, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.au = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i ], [ 1, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.av = trunc nsw i64 %i.ao to i32              ; 2 uses
  %i.aw = add i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.ad, align 8, !tbaa !489
  %i.ax = load i32, ptr %i.ag, align 8, !tbaa !489 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = add nsw i64 %i.ao, %i.ay                ; 2 uses
  %i.ba = load i32, ptr %i.ah, align 4, !tbaa !490
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp ugt i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i47

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.af, i64 noundef %i.az, i64 noundef 16) #27
  %.pre.i57 = load i32, ptr %i.ag, align 8, !tbaa !489 ; 2 uses
  %.pre9.i58 = zext i32 %.pre.i57 to i64
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i47

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i47: ; preds = %bb.b, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit
  %.pre-phi.i48 = phi i64 [ %i.ay, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit ], [ %.pre9.i58, %bb.b ]
  %i.bd = phi i32 [ %i.ax, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit ], [ %.pre.i57, %bb.b ]
  br i1 %.not9.i.i.i.i.i81, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit59, label %.lr.ph.i.i.i.i.preheader.i50

.lr.ph.i.i.i.i.preheader.i50:                     ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i47
  %i.be = load ptr, ptr %14, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.pre-phi.i48
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51, %.lr.ph.i.i.i.i.preheader.i50
  %.011.i.i.i.i.i52 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i51 ], [ %i.bf, %.lr.ph.i.i.i.i.preheader.i50 ] ; 2 uses
  %.0810.i.i.i.i.i53 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i51 ], [ %i.am, %.lr.ph.i.i.i.i.preheader.i50 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i52, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i53, i64 16, i1 false), !tbaa.struct !769
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i53, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i52, i64 16
  %.not.i.i.i.i.i54 = icmp eq ptr %i.bg, %i.an
  br i1 %.not.i.i.i.i.i54, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i55, label %.lr.ph.i.i.i.i.i51, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i55: ; preds = %.lr.ph.i.i.i.i.i51
  %.pre8.i56 = load i32, ptr %i.ag, align 8, !tbaa !489
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit59

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit59: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i47, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i55
  %i.bi = phi i32 [ %.pre8.i56, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i55 ], [ %i.bd, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i47 ]
  %i.bj = add i32 %i.bi, %i.av
  store i32 %i.bj, ptr %i.ag, align 8, !tbaa !489
  %.sroa.020.0.copyload = load i16, ptr %11, align 8, !tbaa !217
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !240
  %i.bk = load ptr, ptr %13, align 8, !tbaa !34
  store ptr %i.bk, ptr %15, align 8, !tbaa !536
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bm = load i32, ptr %i.ad, align 8, !tbaa !489
  %i.bn = zext i32 %i.bm to i64
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !537
end_hunk_0
begin_hunk_1_@_ZNK4llvm16SITargetLowering11LowerFDIV16ENS_7SDValueERNS_12SelectionDAGE:bb.a
  store i32 %.fca.1.extract38, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !233
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4286578688, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract30, ptr %28, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract31, ptr %.sroa.233.0..sroa_idx, align 8
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #27 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract26, ptr %29, align 8, !tbaa !533
  %.sroa.6.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract27, ptr %.sroa.6.0..sroa_idx43, align 8, !tbaa !233
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #27 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract19, ptr %30, align 8, !tbaa !533
  %.sroa.654.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract20, ptr %.sroa.654.0..sroa_idx55, align 8, !tbaa !233
  store ptr %.fca.0.extract68, ptr %31, align 8, !tbaa !533
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract69, ptr %.sroa.10.0..sroa_idx103, align 8, !tbaa !233
  %.sroa.0.0.copyload.i239 = load i32, ptr %i.ab, align 4, !tbaa !233
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 99, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31, i32 %.sroa.0.0.copyload.i239) #27 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract11, ptr %32, align 8, !tbaa !533
  %.sroa.10.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.10.0..sroa_idx105, align 8, !tbaa !233
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.an, 1
  store ptr %.fca.0.extract6, ptr %33, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 244, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 13, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #27 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract2, ptr %34, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !233
  %.sroa.0.0.copyload.i240 = load i32, ptr %i.ab, align 4, !tbaa !233
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 594, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 13, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 %.sroa.0.0.copyload.i240) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ap, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread ], [ %i.t, %bb.c ] ; 2 uses
  %storemerge231 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.0297.0 = phi ptr [ %.fca.0.extract203, %bb.a ], [ %storemerge231, %bb.e ]
  %.pn300 = phi { ptr, i32 } [ %i.a, %bb.a ], [ %.pn, %bb.e ]
  %.sroa.4298.0 = extractvalue { ptr, i32 } %.pn300, 1
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0297.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4298.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, i32) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG15SignBitIsZeroFPENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering11LowerFDIV32ENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %9 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %10 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %11 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %13 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %14 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %15 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %16 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %18 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %19 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %20 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %21 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %22 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %25 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %26 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %27 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %28 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %29 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %30 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %31 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %32 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %33 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %34 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %35 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %36 = alloca %"class.llvm::SDLoc", align 8      ; 34 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %39 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %40 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %41 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %42 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %46 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %47 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %50 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %51 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %52 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %56 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %57 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %59 = alloca %"class.llvm::ArrayRef.518", align 8 ; 3 uses
  %60 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = tail call { ptr, i32 } @_ZNK4llvm16SITargetLowering19lowerFastUnsafeFDIVENS_7SDValueERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract335 = extractvalue { ptr, i32 } %i.a, 0 ; 2 uses
  %.not = icmp eq ptr %.fca.0.extract335, null
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4, !tbaa !233
  %i.c = or i32 %.sroa.0.0.copyload.i, 4096       ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !550
  store i64 %i.e, ptr %36, align 8, !tbaa !550
  %i.f = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !551
  store i32 %i.h, ptr %i.f, align 8, !tbaa !553
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !846  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract325 = extractvalue { ptr, i32 } %i.l, 0 ; 2 uses
  %.fca.1.extract326 = extractvalue { ptr, i32 } %i.l, 1 ; 2 uses
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 2, ptr null) #27 ; 2 uses
  %i.n = extractvalue { ptr, i32 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i32 } %i.m, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %40, ptr noundef nonnull align 8 dereferenceable(12) %38, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %40, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %38, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %40, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %37, i64 12, i1 false)
  store ptr %40, ptr %39, align 8, !tbaa !536
  %i.r = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 3, ptr %i.r, align 8, !tbaa !537
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 596, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.n, i32 %i.o, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %39, i32 %i.c) #27 ; 2 uses
  %.fca.0.extract302 = extractvalue { ptr, i32 } %i.s, 0 ; 2 uses
  %.fca.1.extract303 = extractvalue { ptr, i32 } %i.s, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %42, ptr noundef nonnull align 8 dereferenceable(12) %37, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %42, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %38, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %42, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %37, i64 12, i1 false)
  store ptr %42, ptr %41, align 8, !tbaa !536
  %i.v = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 3, ptr %i.v, align 8, !tbaa !537
  %i.w = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 596, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.n, i32 %i.o, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %41, i32 %i.c) #27 ; 2 uses
  %.fca.0.extract292 = extractvalue { ptr, i32 } %i.w, 0 ; 6 uses
  %.fca.1.extract293 = extractvalue { ptr, i32 } %i.w, 1 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  store ptr %.fca.0.extract302, ptr %43, align 8, !tbaa !533
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract303, ptr %.sroa.5314.0..sroa_idx, align 8, !tbaa !233
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 641, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43, i32 %i.c) #27 ; 2 uses
  %.fca.0.extract274 = extractvalue { ptr, i32 } %i.x, 0 ; 6 uses
  %.fca.1.extract275 = extractvalue { ptr, i32 } %i.x, 1 ; 6 uses
  store ptr %.fca.0.extract302, ptr %44, align 8, !tbaa !533
  %.sroa.5314.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract303, ptr %.sroa.5314.0..sroa_idx315, align 8, !tbaa !233
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, i32 %i.c) #27 ; 2 uses
  %.fca.0.extract249 = extractvalue { ptr, i32 } %i.y, 0 ; 2 uses
  %.fca.1.extract250 = extractvalue { ptr, i32 } %i.y, 1 ; 2 uses
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 2305, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract236 = extractvalue { ptr, i32 } %i.z, 0 ; 3 uses
  %.fca.1.extract237 = extractvalue { ptr, i32 } %i.z, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !332
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !430
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144 ; 3 uses
  %.sroa.0.0.copyload.i387 = load i40, ptr %i.ae, align 8 ; 2 uses
  %.sroa.0231.1.extract.shift = lshr i40 %.sroa.0.0.copyload.i387, 8 ; 2 uses
  %.sroa.0528.0.extract.trunc = trunc i40 %.sroa.0231.1.extract.shift to i8
  %.sroa.5530.0.extract.shift675 = lshr i40 %.sroa.0.0.copyload.i387, 16 ; 2 uses
  %.sroa.5530.0.extract.trunc = trunc i40 %.sroa.5530.0.extract.shift675 to i8
  %62 = or i40 %.sroa.0231.1.extract.shift, %.sroa.5530.0.extract.shift675
  %63 = and i40 %62, 255
  %64 = icmp eq i40 %63, 0                        ; 2 uses
  %65 = icmp eq i8 %.sroa.5530.0.extract.trunc, 3
  %i.af = icmp eq i8 %.sroa.0528.0.extract.trunc, 3
  %66 = or i1 %65, %i.af                          ; 2 uses
  br i1 %64, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 1, ptr null, i16 249, ptr null) #27 ; 2 uses
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { ptr, i32 } %i.ag, 1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 3 uses
  br i1 %66, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 249, ptr null) #27 ; 2 uses
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = extractvalue { ptr, i32 } %i.ak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  store ptr %.fca.0.extract236, ptr %46, align 8, !tbaa !533
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.fca.1.extract237, ptr %.sroa.6243.0..sroa_idx, align 8, !tbaa !233
  %i.an = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !533
  %.sroa.7216.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %46, i64 24
  store i32 0, ptr %.sroa.7216.0..sroa_idx217, align 8, !tbaa !233
  store ptr %46, ptr %45, align 8, !tbaa !536
  %i.ao = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 2, ptr %i.ao, align 8, !tbaa !537
  %i.ap = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 5151, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.al, i32 %i.am, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %45) #27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  store ptr %i.aj, ptr %47, align 8
  %.sroa.2196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 0, ptr %.sroa.2196.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !805
  %i.ar = getelementptr inbounds nuw i8, ptr %47, i64 24
  store i32 0, ptr %i.ar, align 8, !tbaa !806
  %i.as = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !805
  %i.at = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i32 1, ptr %i.at, align 8, !tbaa !806
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %47, i64 3, ptr noundef nonnull align 8 dereferenceable(12) %36) #27 ; 2 uses
  %.fca.0.extract189 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract190 = extractvalue { ptr, i32 } %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0525.0 = phi ptr [ %i.ap, %bb.d ], [ null, %bb.c ]
  %.sroa.0213.0 = phi ptr [ %.fca.0.extract189, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.7216.0 = phi i32 [ %.fca.1.extract190, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 496
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !220
  %i.az = icmp sgt i32 %i.ay, 8
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val380 = load i40, ptr %i.ae, align 8         ; 2 uses
  %i.ba = and i40 %.val380, 4278190080
  %i.bb = icmp eq i40 %i.ba, 16777216
  %.sroa.4.0.extract.shift.mask.i = and i40 %.val380, -4294967296
  %i.bc = icmp ne i40 %.sroa.4.0.extract.shift.mask.i, 4294967296 ; 2 uses
  %..i.i = select i1 %i.bc, i64 3, i64 2
  %spec.select.i.i = zext i1 %i.bc to i64
  %.0.i.i = select i1 %i.bb, i64 %spec.select.i.i, i64 %..i.i
  %i.bd = shl nuw nsw i64 %.0.i.i, 2
  %i.be = or disjoint i64 %i.bd, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  %.fca.0.extract180 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract181 = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.sroa.0213.0, ptr %48, align 8, !tbaa !533
  %.sroa.7216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.sroa.7216.0, ptr %.sroa.7216.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract180, ptr %49, align 8, !tbaa !533
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 %.fca.1.extract181, ptr %.sroa.4185.0..sroa_idx, align 8, !tbaa !233
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 593, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.ah, i32 %i.ai, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49) #27
  %.fca.0.extract173 = extractvalue { ptr, i32 } %i.bg, 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract166 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract167 = extractvalue { ptr, i32 } %i.bh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  store ptr %.fca.0.extract166, ptr %51, align 8, !tbaa !533
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.fca.1.extract167, ptr %.sroa.4171.0..sroa_idx, align 8, !tbaa !233
  %i.bi = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %.fca.0.extract236, ptr %i.bi, align 8, !tbaa !533
  %.sroa.6243.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %51, i64 24
  store i32 %.fca.1.extract237, ptr %.sroa.6243.0..sroa_idx244, align 8, !tbaa !233
  %i.bj = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %.sroa.0213.0, ptr %i.bj, align 8, !tbaa !533
  %.sroa.7216.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %51, i64 40
  store i32 %.sroa.7216.0, ptr %.sroa.7216.0..sroa_idx219, align 8, !tbaa !233
  store ptr %51, ptr %50, align 8, !tbaa !536
  %i.bk = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 3, ptr %i.bk, align 8, !tbaa !537
  %i.bl = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 5343, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.ah, i32 %i.ai, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %.fca.0.extract173, %bb.f ], [ %i.bl, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  store ptr %.fca.0.extract249, ptr %52, align 16, !tbaa !533
  %.sroa.9259.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i32 %.fca.1.extract250, ptr %.sroa.9259.0..sroa_idx266, align 8, !tbaa !233
  %i.bm = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr %.0, ptr %i.bm, align 16, !tbaa !805
  %i.bn = getelementptr inbounds nuw i8, ptr %52, i64 24
  store i32 0, ptr %i.bn, align 8, !tbaa !806
  %i.bo = getelementptr inbounds nuw i8, ptr %52, i64 32
  store ptr %.0, ptr %i.bo, align 16, !tbaa !805
  %i.bp = getelementptr inbounds nuw i8, ptr %52, i64 40
  store i32 1, ptr %i.bp, align 8, !tbaa !806
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %52, i64 3, ptr noundef nonnull align 8 dereferenceable(12) %36) #27 ; 2 uses
  %.fca.0.extract154 = extractvalue { ptr, i32 } %i.bq, 0
  %.fca.1.extract155 = extractvalue { ptr, i32 } %i.bq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.sroa.0525.1 = phi ptr [ null, %bb.b ], [ %.sroa.0525.0, %bb.h ]
  %.sroa.0254.0 = phi ptr [ %.fca.0.extract249, %bb.b ], [ %.fca.0.extract154, %bb.h ] ; 9 uses
  %.sroa.9259.0 = phi i32 [ %.fca.1.extract250, %bb.b ], [ %.fca.1.extract155, %bb.h ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0254.0, i64 66
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !847
  %i.bt = icmp ult i16 %i.bs, 2
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  store ptr %.sroa.0254.0, ptr %31, align 8, !tbaa !533
  %.sroa.5585.0..sroa_idx586 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.sroa.9259.0, ptr %.sroa.5585.0..sroa_idx586, align 8, !tbaa !233
  %i.bu = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %.fca.0.extract274, ptr %i.bu, align 8, !tbaa !533
  %.sroa.5590.0..sroa_idx591 = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i32 %.fca.1.extract275, ptr %.sroa.5590.0..sroa_idx591, align 8, !tbaa !233
  %i.bv = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %.fca.0.extract325, ptr %i.bv, align 8, !tbaa !533
  %.sroa.5596.0..sroa_idx597 = getelementptr inbounds nuw i8, ptr %31, i64 40
  store i32 %.fca.1.extract326, ptr %.sroa.5596.0..sroa_idx597, align 8, !tbaa !233
  store ptr %31, ptr %30, align 8, !tbaa !536
  %i.bw = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 3, ptr %i.bw, align 8, !tbaa !537
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %30, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit

bb.k:                                             ; preds = %bb.i
  store i16 249, ptr %32, align 8, !tbaa !478
  %i.by = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !548
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %32) #27 ; 2 uses
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  %i.cb = extractvalue { ptr, i32 } %i.bz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  store ptr %.sroa.0254.0, ptr %34, align 8
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %.sroa.0254.0, ptr %i.cc, align 8, !tbaa !533
  %.sroa.5585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i32 %.sroa.9259.0, ptr %.sroa.5585.0..sroa_idx, align 8, !tbaa !233
  %i.cd = getelementptr inbounds nuw i8, ptr %34, i64 32
  store ptr %.fca.0.extract274, ptr %i.cd, align 8, !tbaa !533
  %.sroa.5590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 40
  store i32 %.fca.1.extract275, ptr %.sroa.5590.0..sroa_idx, align 8, !tbaa !233
  %i.ce = getelementptr inbounds nuw i8, ptr %34, i64 48
  store ptr %.fca.0.extract325, ptr %i.ce, align 8, !tbaa !533
  %.sroa.5596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 56
  store i32 %.fca.1.extract326, ptr %.sroa.5596.0..sroa_idx, align 8, !tbaa !233
  %i.cf = getelementptr inbounds nuw i8, ptr %34, i64 64
  store ptr %.sroa.0254.0, ptr %i.cf, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %34, i64 72
  store i32 2, ptr %.sroa.25.0..sroa_idx.i, align 8
  store ptr %34, ptr %33, align 8, !tbaa !536
  %i.cg = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 5, ptr %i.cg, align 8, !tbaa !537
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 611, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.ca, i32 %i.cb, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %33, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit

_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit: ; preds = %bb.j, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.ch, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  %.fca.0.extract141 = extractvalue { ptr, i32 } %.pn.i, 0 ; 5 uses
  %.fca.1.extract142 = extractvalue { ptr, i32 } %.pn.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  %i.ci = getelementptr inbounds nuw i8, ptr %.fca.0.extract141, i64 66
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !847
  %i.ck = icmp ult i16 %i.cj, 2
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  store ptr %.fca.0.extract141, ptr %26, align 8, !tbaa !533
  %.sroa.5602.0..sroa_idx603 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract142, ptr %.sroa.5602.0..sroa_idx603, align 8, !tbaa !233
  %i.cl = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %.fca.0.extract274, ptr %i.cl, align 8, !tbaa !533
  %.sroa.5608.0..sroa_idx609 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i32 %.fca.1.extract275, ptr %.sroa.5608.0..sroa_idx609, align 8, !tbaa !233
  %i.cm = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %.fca.0.extract274, ptr %i.cm, align 8, !tbaa !533
  %.sroa.5614.0..sroa_idx615 = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i32 %.fca.1.extract275, ptr %.sroa.5614.0..sroa_idx615, align 8, !tbaa !233
  store ptr %26, ptr %25, align 8, !tbaa !536
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 3, ptr %i.cn, align 8, !tbaa !537
  %i.co = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %25, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit393

bb.m:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit
  store i16 249, ptr %27, align 8, !tbaa !478
  %i.cp = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !548
  %i.cq = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %27) #27 ; 2 uses
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = extractvalue { ptr, i32 } %i.cq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  store ptr %.fca.0.extract141, ptr %29, align 8
  %.sroa.29.0..sroa_idx.i390 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i390, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %.fca.0.extract141, ptr %i.ct, align 8, !tbaa !533
  %.sroa.5602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 %.fca.1.extract142, ptr %.sroa.5602.0..sroa_idx, align 8, !tbaa !233
  %i.cu = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %.fca.0.extract274, ptr %i.cu, align 8, !tbaa !533
  %.sroa.5608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i32 %.fca.1.extract275, ptr %.sroa.5608.0..sroa_idx, align 8, !tbaa !233
  %i.cv = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr %.fca.0.extract274, ptr %i.cv, align 8, !tbaa !533
  %.sroa.5614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i32 %.fca.1.extract275, ptr %.sroa.5614.0..sroa_idx, align 8, !tbaa !233
  %i.cw = getelementptr inbounds nuw i8, ptr %29, i64 64
  store ptr %.fca.0.extract141, ptr %i.cw, align 8
  %.sroa.25.0..sroa_idx.i391 = getelementptr inbounds nuw i8, ptr %29, i64 72
  store i32 2, ptr %.sroa.25.0..sroa_idx.i391, align 8
  store ptr %29, ptr %28, align 8, !tbaa !536
  %i.cx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 5, ptr %i.cx, align 8, !tbaa !537
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 611, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.cr, i32 %i.cs, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %28, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit393

_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit393: ; preds = %bb.l, %bb.m
  %.pn.i392 = phi { ptr, i32 } [ %i.co, %bb.l ], [ %i.cy, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.fca.0.extract121 = extractvalue { ptr, i32 } %.pn.i392, 0 ; 7 uses
  %.fca.1.extract122 = extractvalue { ptr, i32 } %.pn.i392, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %.fca.0.extract121, ptr %23, align 8
  %.sroa.2475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract122, ptr %.sroa.2475.0..sroa_idx, align 8
  store ptr %.fca.0.extract292, ptr %24, align 8
  %.sroa.2556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract293, ptr %.sroa.2556.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.fca.0.extract121, i64 66
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !847
  %i.db = icmp ult i16 %i.da, 2
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit393
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, i32 %i.c) #27
  br label %_ZL10getFPBinOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_NS_11SDNodeFlagsE.exit

bb.o:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit393
  store i16 249, ptr %20, align 8, !tbaa !478
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !548
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %20) #27 ; 2 uses
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  %i.dg = extractvalue { ptr, i32 } %i.de, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store ptr %.fca.0.extract121, ptr %22, align 8
  %.sroa.29.0..sroa_idx.i394 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i394, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(12) %24, i64 12, i1 false), !tbaa.struct !769
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !769
  %i.dj = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %.fca.0.extract121, ptr %i.dj, align 8
  %.sroa.25.0..sroa_idx.i395 = getelementptr inbounds nuw i8, ptr %22, i64 56
  store i32 2, ptr %.sroa.25.0..sroa_idx.i395, align 8
  store ptr %22, ptr %21, align 8, !tbaa !536
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 4, ptr %i.dk, align 8, !tbaa !537
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 617, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.df, i32 %i.dg, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %21, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %_ZL10getFPBinOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_NS_11SDNodeFlagsE.exit

_ZL10getFPBinOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_NS_11SDNodeFlagsE.exit: ; preds = %bb.n, %bb.o
  %.pn.i396 = phi { ptr, i32 } [ %i.dc, %bb.n ], [ %i.dl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %.fca.0.extract103 = extractvalue { ptr, i32 } %.pn.i396, 0 ; 7 uses
  %.fca.1.extract104 = extractvalue { ptr, i32 } %.pn.i396, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.dm = getelementptr inbounds nuw i8, ptr %.fca.0.extract103, i64 66
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !847
  %i.do = icmp ult i16 %i.dn, 2
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL10getFPBinOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_NS_11SDNodeFlagsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr %.sroa.0254.0, ptr %16, align 8, !tbaa !533
  %.sroa.5620.0..sroa_idx621 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.9259.0, ptr %.sroa.5620.0..sroa_idx621, align 8, !tbaa !233
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.fca.0.extract103, ptr %i.dp, align 8, !tbaa !533
  %.sroa.5626.0..sroa_idx627 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %.fca.1.extract104, ptr %.sroa.5626.0..sroa_idx627, align 8, !tbaa !233
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %.fca.0.extract292, ptr %i.dq, align 8, !tbaa !533
  %.sroa.5632.0..sroa_idx633 = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %.fca.1.extract293, ptr %.sroa.5632.0..sroa_idx633, align 8, !tbaa !233
  store ptr %16, ptr %15, align 8, !tbaa !536
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.dr, align 8, !tbaa !537
  %i.ds = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %15, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit400

bb.q:                                             ; preds = %_ZL10getFPBinOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_NS_11SDNodeFlagsE.exit
  store i16 249, ptr %17, align 8, !tbaa !478
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !548
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %17) #27 ; 2 uses
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  %i.dw = extractvalue { ptr, i32 } %i.du, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store ptr %.fca.0.extract103, ptr %19, align 8
  %.sroa.29.0..sroa_idx.i397 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i397, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %.sroa.0254.0, ptr %i.dx, align 8, !tbaa !533
  %.sroa.5620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 %.sroa.9259.0, ptr %.sroa.5620.0..sroa_idx, align 8, !tbaa !233
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %.fca.0.extract103, ptr %i.dy, align 8, !tbaa !533
  %.sroa.5626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i32 %.fca.1.extract104, ptr %.sroa.5626.0..sroa_idx, align 8, !tbaa !233
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %.fca.0.extract292, ptr %i.dz, align 8, !tbaa !533
  %.sroa.5632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i32 %.fca.1.extract293, ptr %.sroa.5632.0..sroa_idx, align 8, !tbaa !233
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr %.fca.0.extract103, ptr %i.ea, align 8
  %.sroa.25.0..sroa_idx.i398 = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i32 2, ptr %.sroa.25.0..sroa_idx.i398, align 8
  store ptr %19, ptr %18, align 8, !tbaa !536
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 5, ptr %i.eb, align 8, !tbaa !537
  %i.ec = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 611, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.dv, i32 %i.dw, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %18, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit400

_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit400: ; preds = %bb.p, %bb.q
  %.pn.i399 = phi { ptr, i32 } [ %i.ds, %bb.p ], [ %i.ec, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.fca.0.extract90 = extractvalue { ptr, i32 } %.pn.i399, 0 ; 5 uses
  %.fca.1.extract91 = extractvalue { ptr, i32 } %.pn.i399, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ed = getelementptr inbounds nuw i8, ptr %.fca.0.extract90, i64 66
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !847
  %i.ef = icmp ult i16 %i.ee, 2
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit400
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %.fca.0.extract90, ptr %11, align 8, !tbaa !533
  %.sroa.5638.0..sroa_idx639 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract91, ptr %.sroa.5638.0..sroa_idx639, align 8, !tbaa !233
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.fca.0.extract121, ptr %i.eg, align 8, !tbaa !533
  %.sroa.5644.0..sroa_idx645 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.fca.1.extract122, ptr %.sroa.5644.0..sroa_idx645, align 8, !tbaa !233
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %.fca.0.extract103, ptr %i.eh, align 8, !tbaa !533
  %.sroa.5650.0..sroa_idx651 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %.fca.1.extract104, ptr %.sroa.5650.0..sroa_idx651, align 8, !tbaa !233
  store ptr %11, ptr %10, align 8, !tbaa !536
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.ei, align 8, !tbaa !537
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %10, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit404

bb.s:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit400
  store i16 249, ptr %12, align 8, !tbaa !478
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ek, align 8, !tbaa !548
  %i.el = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %12) #27 ; 2 uses
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  %i.en = extractvalue { ptr, i32 } %i.el, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store ptr %.fca.0.extract90, ptr %14, align 8
  %.sroa.29.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i401, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.fca.0.extract90, ptr %i.eo, align 8, !tbaa !533
  %.sroa.5638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.fca.1.extract91, ptr %.sroa.5638.0..sroa_idx, align 8, !tbaa !233
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %.fca.0.extract121, ptr %i.ep, align 8, !tbaa !533
  %.sroa.5644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %.fca.1.extract122, ptr %.sroa.5644.0..sroa_idx, align 8, !tbaa !233
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %.fca.0.extract103, ptr %i.eq, align 8, !tbaa !533
  %.sroa.5650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %.fca.1.extract104, ptr %.sroa.5650.0..sroa_idx, align 8, !tbaa !233
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %.fca.0.extract90, ptr %i.er, align 8
  %.sroa.25.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 2, ptr %.sroa.25.0..sroa_idx.i402, align 8
  store ptr %14, ptr %13, align 8, !tbaa !536
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 5, ptr %i.es, align 8, !tbaa !537
  %i.et = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 611, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.em, i32 %i.en, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %13, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit404

_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit404: ; preds = %bb.r, %bb.s
  %.pn.i403 = phi { ptr, i32 } [ %i.ej, %bb.r ], [ %i.et, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.fca.0.extract75 = extractvalue { ptr, i32 } %.pn.i403, 0 ; 6 uses
  %.fca.1.extract76 = extractvalue { ptr, i32 } %.pn.i403, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.eu = getelementptr inbounds nuw i8, ptr %.fca.0.extract75, i64 66
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !847
  %i.ew = icmp ult i16 %i.ev, 2
  br i1 %i.ew, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit404
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %.sroa.0254.0, ptr %6, align 8, !tbaa !533
  %.sroa.5656.0..sroa_idx657 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.9259.0, ptr %.sroa.5656.0..sroa_idx657, align 8, !tbaa !233
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.fca.0.extract75, ptr %i.ex, align 8, !tbaa !533
  %.sroa.5662.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract76, ptr %.sroa.5662.0..sroa_idx663, align 8, !tbaa !233
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract292, ptr %i.ey, align 8, !tbaa !533
  %.sroa.5668.0..sroa_idx669 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract293, ptr %.sroa.5668.0..sroa_idx669, align 8, !tbaa !233
  store ptr %6, ptr %5, align 8, !tbaa !536
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.ez, align 8, !tbaa !537
  %i.fa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %5, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit408

bb.u:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit404
  store i16 249, ptr %7, align 8, !tbaa !478
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.fb, align 8, !tbaa !548
  %i.fc = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 14, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %7) #27 ; 2 uses
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  %i.fe = extractvalue { ptr, i32 } %i.fc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %.fca.0.extract75, ptr %9, align 8
  %.sroa.29.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i405, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.0254.0, ptr %i.ff, align 8, !tbaa !533
  %.sroa.5656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.9259.0, ptr %.sroa.5656.0..sroa_idx, align 8, !tbaa !233
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.fca.0.extract75, ptr %i.fg, align 8, !tbaa !533
  %.sroa.5662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %.fca.1.extract76, ptr %.sroa.5662.0..sroa_idx, align 8, !tbaa !233
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %.fca.0.extract292, ptr %i.fh, align 8, !tbaa !533
  %.sroa.5668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %.fca.1.extract293, ptr %.sroa.5668.0..sroa_idx, align 8, !tbaa !233
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %.fca.0.extract75, ptr %i.fi, align 8
  %.sroa.25.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i32 2, ptr %.sroa.25.0..sroa_idx.i406, align 8
  store ptr %9, ptr %8, align 8, !tbaa !536
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.fj, align 8, !tbaa !537
  %i.fk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 611, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.fd, i32 %i.fe, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %8, i32 %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit408

_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit408: ; preds = %bb.t, %bb.u
  %.pn.i407 = phi { ptr, i32 } [ %i.fa, %bb.t ], [ %i.fk, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.fca.0.extract70 = extractvalue { ptr, i32 } %.pn.i407, 0 ; 5 uses
  %.fca.1.extract71 = extractvalue { ptr, i32 } %.pn.i407, 1
  br i1 %64, label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit, label %bb.v

bb.v:                                             ; preds = %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit408
  br i1 %66, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 496
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !220
  %i.fp = icmp sgt i32 %i.fo, 8
  br i1 %i.fp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.val = load i40, ptr %i.ae, align 8            ; 2 uses
  %i.fq = and i40 %.val, 4278190080
  %i.fr = icmp eq i40 %i.fq, 16777216
  %.sroa.4.0.extract.shift.mask.i409 = and i40 %.val, -4294967296
  %i.fs = icmp ne i40 %.sroa.4.0.extract.shift.mask.i409, 4294967296 ; 2 uses
  %..i.i410 = select i1 %i.fs, i64 3, i64 2
  %spec.select.i.i411 = zext i1 %i.fs to i64
  %.0.i.i412 = select i1 %i.fr, i64 %spec.select.i.i411, i64 %..i.i410
  %i.ft = shl nuw nsw i64 %.0.i.i412, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.fu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.ft, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.fu, 0
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.fu, 1
  %i.fv = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 1, ptr null, i16 249, ptr null) #27 ; 2 uses
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  %i.fx = extractvalue { ptr, i32 } %i.fv, 1
  store ptr %.fca.0.extract70, ptr %53, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 1, ptr %.sroa.256.0..sroa_idx, align 8
  store ptr %.fca.0.extract63, ptr %54, align 8, !tbaa !533
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i32 %.fca.1.extract64, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract70, ptr %55, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 2, ptr %.sroa.252.0..sroa_idx, align 8
  %i.fy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 593, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr %i.fw, i32 %i.fx, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %53, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55) #27
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.fy, 0
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.fz, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.fz, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.y
  %.sroa.541.0 = phi i32 [ %.fca.1.extract36, %bb.y ], [ 0, %bb.v ]
  %.sroa.039.0 = phi ptr [ %.fca.0.extract35, %bb.y ], [ %.sroa.0525.1, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #27
  store ptr %.sroa.039.0, ptr %57, align 8, !tbaa !533
  %.sroa.541.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 %.sroa.541.0, ptr %.sroa.541.0..sroa_idx42, align 8, !tbaa !233
  %i.ga = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %.fca.0.extract236, ptr %i.ga, align 8, !tbaa !533
  %.sroa.6243.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %57, i64 24
  store i32 %.fca.1.extract237, ptr %.sroa.6243.0..sroa_idx246, align 8, !tbaa !233
  %i.gb = getelementptr inbounds nuw i8, ptr %57, i64 32
  store ptr %.fca.0.extract70, ptr %i.gb, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %57, i64 40
  store i32 1, ptr %.sroa.232.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %57, i64 48
  store ptr %.fca.0.extract70, ptr %i.gc, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %57, i64 56
  store i32 2, ptr %.sroa.228.0..sroa_idx, align 8
  store ptr %57, ptr %56, align 8, !tbaa !536
  %i.gd = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 4, ptr %i.gd, align 8, !tbaa !537
  %i.ge = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 5343, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.x
  %.0379 = phi ptr [ %i.ge, %.critedge ], [ %.fca.0.extract45, %bb.x ]
  store ptr %.0379, ptr %58, align 8, !tbaa !805
  %i.gf = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i32 0, ptr %i.gf, align 8, !tbaa !806
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 3 uses
  %i.gh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %58, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gg) #27 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.gh, 0 ; 3 uses
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.gh, 1 ; 2 uses
  %.not.i = icmp eq ptr %.fca.0.extract19, null
  br i1 %.not.i, label %.thread.i, label %bb.aa

.thread.i:                                        ; preds = %bb.z
  store ptr null, ptr %i.gg, align 8, !tbaa !533
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i32 %.fca.1.extract20, ptr %.sroa.5.0..sroa_idx4.i, align 8, !tbaa !233
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm14checkForCyclesEPKNS_6SDNodeEPKNS_12SelectionDAGEb(ptr noundef nonnull %.fca.0.extract19, ptr noundef nonnull align 8 dereferenceable(920) %3, i1 noundef zeroext false) #27
  store ptr %.fca.0.extract19, ptr %i.gg, align 8, !tbaa !533
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i32 %.fca.1.extract20, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !233
  call void @_ZN4llvm14checkForCyclesEPKNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i1 noundef zeroext false) #27
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit: ; preds = %bb.aa, %.thread.i, %_ZL11getFPTernOpRN4llvm12SelectionDAGEjRKNS_5SDLocENS_3EVTENS_7SDValueES6_S6_S6_NS_11SDNodeFlagsE.exit408
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  store ptr %.fca.0.extract70, ptr %60, align 8, !tbaa !533
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %.fca.1.extract71, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !233
  %i.gi = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %.fca.0.extract121, ptr %i.gi, align 8, !tbaa !533
  %.sroa.7130.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %60, i64 24
  store i32 %.fca.1.extract122, ptr %.sroa.7130.0..sroa_idx135, align 8, !tbaa !233
  %i.gj = getelementptr inbounds nuw i8, ptr %60, i64 32
  store ptr %.fca.0.extract75, ptr %i.gj, align 8, !tbaa !533
  %.sroa.683.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i32 %.fca.1.extract76, ptr %.sroa.683.0..sroa_idx86, align 8, !tbaa !233
  %i.gk = getelementptr inbounds nuw i8, ptr %60, i64 48
  store ptr %.fca.0.extract292, ptr %i.gk, align 8, !tbaa !533
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 56
  store i32 1, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !233
  store ptr %60, ptr %59, align 8, !tbaa !536
  %i.gl = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 4, ptr %i.gl, align 8, !tbaa !537
  %i.gm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 595, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %59, i32 %i.c) #27 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.gm, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.gm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  store ptr %.fca.0.extract2, ptr %61, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !233
  %i.gn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 594, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %61, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37, i32 %i.c) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  %.sroa.0581.0 = phi ptr [ %.fca.0.extract335, %bb.a ], [ %.fca.0.extract, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ]
  %.pn = phi { ptr, i32 } [ %i.a, %bb.a ], [ %i.gn, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ]
  %.sroa.4582.0 = extractvalue { ptr, i32 } %.pn, 1
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0581.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4582.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.518") align 8, i32) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering11LowerFDIV64ENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 29 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = tail call { ptr, i32 } @_ZNK4llvm16SITargetLowering21lowerFastUnsafeFDIV64ENS_7SDValueERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract257 = extractvalue { ptr, i32 } %i.a, 0 ; 2 uses
  %.not = icmp eq ptr %.fca.0.extract257, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_1
begin_hunk_2_@_ZNK4llvm16SITargetLowering15isCanonicalizedERNS_12SelectionDAGENS_7SDValueENS_11SDNodeFlagsEj:tailrecurse.peel.begin

bb.an:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr239, i64 40 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !846 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %.sroa.035.0.copyload = load ptr, ptr %i.gy, align 8, !tbaa !533
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %.sroa.236.0.copyload = load i32, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !233
  %i.gz = tail call noundef zeroext i1 @_ZNK4llvm16SITargetLowering15isCanonicalizedERNS_12SelectionDAGENS_7SDValueENS_11SDNodeFlagsEj(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.035.0.copyload, i32 %.sroa.236.0.copyload, i32 4, i32 noundef 5)
  br i1 %i.gz, label %bb.ao, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290

bb.ao:                                            ; preds = %bb.an
  %i.ha = load ptr, ptr %i.gw, align 8, !tbaa !846 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  %.sroa.032.0.copyload = load ptr, ptr %i.hb, align 8, !tbaa !533
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 88
  %.sroa.233.0.copyload = load i32, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !233
  br label %tailrecurse.backedge

.loopexit326:                                     ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.a
  %.tr239.lcssa320 = phi ptr [ %2, %bb.a ], [ %.tr239.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ %.tr239, %_ZNK4llvm12DenormalModeeqES0_.exit ] ; 2 uses
  %.tr242.lcssa297 = phi i32 [ %5, %bb.a ], [ 5, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ 5, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr239.lcssa320, i64 64
  %i.hd = load i16, ptr %i.hc, align 8, !tbaa !883 ; 2 uses
  %.not113278 = icmp eq i16 %i.hd, 0
  br i1 %.not113278, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit326
  %i.he = getelementptr inbounds nuw i8, ptr %.tr239.lcssa320, i64 40
  %i.hf = add i32 %.tr242.lcssa297, -1
  %i.hg = zext i16 %i.hd to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 2 uses
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !846
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %i.hh, i64 %indvars.iv ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.hi, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !233
  %i.hj = tail call noundef zeroext i1 @_ZNK4llvm16SITargetLowering15isCanonicalizedERNS_12SelectionDAGENS_7SDValueENS_11SDNodeFlagsEj(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.027.0.copyload, i32 %.sroa.4.0.copyload, i32 %i.hf, i32 noundef 5) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not113 = icmp ne i64 %indvars.iv.next, %i.hg
  %or.cond382.not = select i1 %i.hj, i1 %.not113, i1 false
  br i1 %or.cond382.not, label %bb.ap, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread, !llvm.loop !2407

bb.aq:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr239, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !846 ; 2 uses
  %.sroa.021.0.copyload = load ptr, ptr %i.hl, align 8, !tbaa !533
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.sroa.222.0.copyload = load i32, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !233
  br label %tailrecurse.backedge

bb.ar:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr239, i64 40 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !846 ; 2 uses
  %.sroa.018.0.copyload = load ptr, ptr %i.hn, align 8, !tbaa !533
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.sroa.219.0.copyload = load i32, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !233
  %i.ho = tail call noundef zeroext i1 @_ZNK4llvm16SITargetLowering15isCanonicalizedERNS_12SelectionDAGENS_7SDValueENS_11SDNodeFlagsEj(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.018.0.copyload, i32 %.sroa.219.0.copyload, i32 4, i32 noundef 5)
  br i1 %i.ho, label %bb.as, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290

bb.as:                                            ; preds = %bb.ar
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !846 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %.sroa.015.0.copyload = load ptr, ptr %i.hq, align 8, !tbaa !533
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %.sroa.216.0.copyload = load i32, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !233
  br label %tailrecurse.backedge

bb.at:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr239, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !846 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.hs, align 8, !tbaa !533
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.sroa.213.0.copyload = load i32, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !233
  br label %tailrecurse.backedge

bb.au:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr239, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !540
  %i.hv = zext i32 %.tr240 to i64
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %.sroa.0.0.copyload.i.i132 = load i16, ptr %i.hw, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.sroa.21.0.copyload.i.i134 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i133, align 8, !tbaa !240
  %.not.i.i137 = icmp eq i16 %.sroa.0.0.copyload.i.i132, 6
  %i.hx = icmp eq ptr %.sroa.21.0.copyload.i.i134, null
  %.not4.i138 = select i1 %.not.i.i137, i1 %i.hx, i1 false
  br i1 %.not4.i138, label %bb.av, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr239, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !846 ; 2 uses
  %.sroa.0166.0.copyload = load ptr, ptr %i.hz, align 8, !tbaa !533 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !233
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !540
  %i.ic = zext i32 %.sroa.7.0.copyload to i64
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %.sroa.0.0.copyload.i.i139 = load i16, ptr %i.id, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.sroa.21.0.copyload.i.i141 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i140, align 8, !tbaa !240
  %.not.i.i144 = icmp eq i16 %.sroa.0.0.copyload.i.i139, 7
  %i.ie = icmp eq ptr %.sroa.21.0.copyload.i.i141, null
  %.not4.i145 = select i1 %.not.i.i144, i1 %i.ie, i1 false
  br i1 %.not4.i145, label %bb.aw, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290

bb.aw:                                            ; preds = %bb.av
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 24
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !812
  %i.ih = icmp eq i32 %i.ig, 248
  br i1 %i.ih, label %bb.ax, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290

bb.ax:                                            ; preds = %bb.aw
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !846 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !805 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !806 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !540
  %i.ip = zext i32 %i.im to i64
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ip ; 2 uses
  %.sroa.0.0.copyload.i.i146 = load i16, ptr %i.iq, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %.sroa.21.0.copyload.i.i148 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i147, align 8, !tbaa !240
  %.not.i.i151 = icmp eq i16 %.sroa.0.0.copyload.i.i146, 106
  %i.ir = icmp eq ptr %.sroa.21.0.copyload.i.i148, null
  %.not4.i152 = select i1 %.not.i.i151, i1 %i.ir, i1 false
  br i1 %.not4.i152, label %tailrecurse.backedge, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290

tailrecurse.backedge:                             ; preds = %bb.ax, %bb.ag, %bb.aj, %bb.ao, %bb.aq, %bb.as, %bb.at
  %.tr239.be = phi ptr [ %.sroa.051.0.copyload, %bb.ag ], [ %.sroa.047.0.copyload, %bb.aj ], [ %.sroa.032.0.copyload, %bb.ao ], [ %.sroa.021.0.copyload, %bb.aq ], [ %.sroa.015.0.copyload, %bb.as ], [ %.sroa.012.0.copyload, %bb.at ], [ %i.ik, %bb.ax ]
  %.tr240.be = phi i32 [ %.sroa.252.0.copyload, %bb.ag ], [ %.sroa.248.0.copyload, %bb.aj ], [ %.sroa.233.0.copyload, %bb.ao ], [ %.sroa.222.0.copyload, %bb.aq ], [ %.sroa.216.0.copyload, %bb.as ], [ %.sroa.213.0.copyload, %bb.at ], [ %i.im, %bb.ax ]
  br label %tailrecurse, !llvm.loop !2408

.loopexit327:                                     ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.a
  %.tr239.lcssa321 = phi ptr [ %2, %bb.a ], [ %.tr239.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ %.tr239, %_ZNK4llvm12DenormalModeeqES0_.exit ] ; 2 uses
  %.tr240.lcssa313 = phi i32 [ %3, %bb.a ], [ %.tr240.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ %.tr240, %_ZNK4llvm12DenormalModeeqES0_.exit ]
  %.tr241.lcssa305 = phi i32 [ %4, %bb.a ], [ %.tr241.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ 4, %_ZNK4llvm12DenormalModeeqES0_.exit ]
  %i.is = getelementptr inbounds nuw i8, ptr %.tr239.lcssa321, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !846
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !805
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !814 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !462
  %i.ja = icmp ult i32 %i.iz, 65
  %i.jb = load ptr, ptr %i.ix, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ja, ptr %i.ix, ptr %i.jb
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !213
  %i.jc = trunc i64 %.0.i.i.i.i.i to i32
  switch i32 %i.jc, label %.thread.a [
    i32 2330, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 2306, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 2500, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 2483, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3457, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3462, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3463, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3458, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3464, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3652, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3649, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3316, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 2480, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
    i32 3565, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  ]

.thread.a:                                        ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %bb.z, %bb.aa, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel450, %bb.ai, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.ah, %bb.a, %bb.l, %bb.m, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel, %.loopexit327
  %.tr239322 = phi ptr [ %.tr239.lcssa321, %.loopexit327 ], [ %2, %bb.a ], [ %2, %bb.l ], [ %2, %bb.m ], [ %2, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel ], [ %.tr239.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ %.tr239.ph, %bb.z ], [ %.tr239.ph, %bb.aa ], [ %.tr239.ph, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel450 ], [ %.tr239, %bb.ai ], [ %.tr239, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %.tr239, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ %.tr239, %bb.ah ] ; 2 uses
  %.tr240314 = phi i32 [ %.tr240.lcssa313, %.loopexit327 ], [ %3, %bb.a ], [ %3, %bb.l ], [ %3, %bb.m ], [ %3, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel ], [ %.tr240.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ %.tr240.ph, %bb.z ], [ %.tr240.ph, %bb.aa ], [ %.tr240.ph, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel450 ], [ %.tr240, %bb.ai ], [ %.tr240, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %.tr240, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ %.tr240, %bb.ah ] ; 2 uses
  %.tr241306 = phi i32 [ %.tr241.lcssa305, %.loopexit327 ], [ %4, %bb.a ], [ %4, %bb.l ], [ %4, %bb.m ], [ %4, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel ], [ %.tr241.ph, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ %.tr241.ph, %bb.z ], [ %.tr241.ph, %bb.aa ], [ %.tr241.ph, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.peel450 ], [ 4, %bb.ai ], [ 4, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ 4, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ 4, %bb.ah ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.tr239322, i64 48
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !540
  %i.jf = zext i32 %.tr240314 to i64
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %.sroa.0.0.copyload.i.i153 = load i16, ptr %i.jg, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i154 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.sroa.21.0.copyload.i.i155 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i154, align 8, !tbaa !240
  %i.jh = tail call noundef zeroext i1 @_ZNK4llvm16SITargetLowering23denormalsEnabledForTypeERKNS_12SelectionDAGENS_3EVTE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i.i153, ptr %.sroa.21.0.copyload.i.i155)
  br i1 %i.jh, label %bb.ay, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.ay:                                            ; preds = %.thread.a
  %i.ji = and i32 %.tr241306, 32
  %.not = icmp eq i32 %i.ji, 0
  br i1 %.not, label %bb.az, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.jj = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG15isKnownNeverNaNENS_7SDValueEbj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.tr239322, i32 %.tr240314, i1 noundef zeroext true, i32 noundef 0) #27
  br label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290: ; preds = %tailrecurse.peel, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %bb.p, %bb.q, %bb.r, %bb.s, %bb.u, %bb.x, %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.an, %bb.ar, %bb.au, %bb.ax, %bb.av, %bb.aw, %tailrecurse, %bb.j, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_ZNK4llvm12DenormalModeeqES0_.exit.peel, %tailrecurse.peel.begin
  %.9.ph291 = phi i1 [ true, %tailrecurse.peel.begin ], [ false, %_ZNK4llvm12DenormalModeeqES0_.exit.peel ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.j ], [ true, %tailrecurse.peel ], [ false, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.ax ], [ false, %bb.au ], [ false, %bb.an ], [ false, %bb.ar ], [ false, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %tailrecurse ]
  br label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.ap, %bb.am, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290, %.loopexit326, %bb.al, %.split, %bb.af, %bb.ad, %_ZNK4llvm7APFloat10isDenormalEv.exit, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.loopexit327, %.thread.a, %bb.az, %bb.ay, %.loopexit325, %bb.ak, %.loopexit
  %.9 = phi i1 [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ %i.ey, %bb.af ], [ true, %.loopexit327 ], [ true, %bb.ak ], [ true, %.loopexit327 ], [ %i.gd, %.loopexit ], [ true, %bb.a ], [ true, %.loopexit325 ], [ %i.jj, %bb.az ], [ true, %.loopexit327 ], [ true, %_ZNK4llvm7APFloat10isDenormalEv.exit ], [ true, %bb.ay ], [ false, %bb.ad ], [ true, %.loopexit326 ], [ %i.gv, %bb.am ], [ true, %.split ], [ false, %.thread.a ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %.loopexit327 ], [ true, %bb.al ], [ %.9.ph291, %_ZNK4llvm12DenormalModeeqES0_.exit.thread.loopexit290 ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.hj, %bb.ap ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ], [ true, %_ZNK4llvm12DenormalModeeqES0_.exit.peel408 ]
  ret i1 %.9
}

declare i16 @_ZNK4llvm15MachineFunction15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering23denormalsEnabledForTypeERKNS_12SelectionDAGENS_3EVTE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %1, i16 %2, ptr %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %2, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %2, -19
  %spec.select.i.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br i1 %i.c, label %bb.c, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.thread

bb.b:                                             ; preds = %.split.i
  %i.d = zext nneg i16 %2 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !217
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.h = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  %i.i = extractvalue { i16, ptr } %i.h, 0
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %bb.b, %bb.c
  %.fca.1.insert.merged.i = phi i16 [ %i.i, %bb.c ], [ %i.g, %bb.b ], [ %2, %.split.i ]
  switch i16 %.fca.1.insert.merged.i, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.thread [
    i16 14, label %bb.d
    i16 15, label %bb.e
    i16 13, label %bb.e
  ]

bb.d:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !332
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %.val = load ptr, ptr %i.l, align 8, !tbaa !430
  %i.m = getelementptr i8, ptr %.val, i64 144
  %.val.val = load i40, ptr %i.m, align 8
  %i.n = and i40 %.val.val, 16776960
  %i.o = icmp ne i40 %i.n, 65792
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit, %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !332
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %.val3 = load ptr, ptr %i.r, align 8, !tbaa !430
  %i.s = getelementptr i8, ptr %.val3, i64 144
  %.val3.val = load i40, ptr %i.s, align 8        ; 2 uses
  %i.t = and i40 %.val3.val, 4278190080
  %i.u = icmp ne i40 %i.t, 16777216
  %i.v = ashr i40 %.val3.val, 32
  %5 = trunc nsw i40 %i.v to i16
  %i.w = icmp ne i16 %5, 1
  %.not6 = select i1 %i.u, i1 true, i1 %i.w
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.thread

_ZNK4llvm3EVT13getScalarTypeEv.exit.thread:       ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %_ZNK4llvm3EVT13getScalarTypeEv.exit, %bb.e, %bb.d
  %.0 = phi i1 [ %.not6, %bb.e ], [ %i.o, %bb.d ], [ false, %_ZNK4llvm3EVT13getScalarTypeEv.exit ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering15isCanonicalizedENS_8RegisterERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(518456) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.873", align 8 ; 12 uses
  %5 = alloca %"struct.llvm::MIPatternMatch::GFCstOrSplatGFCstMatch", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !532  ; 4 uses
  %i.c = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %1) #27 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !855  ; 2 uses
  %i.f = icmp eq i32 %i.e, 223
  br i1 %i.f, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !956
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %4, ptr %5, align 8
  %i.h = call noundef zeroext i1 @_ZN4llvm14MIPatternMatch22GFCstOrSplatGFCstMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.i, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr %4
  %i.l = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat11isSignalingEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i) #27
  br i1 %i.l, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !213
  %.not.i = icmp eq ptr %i.m, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %_ZNK4llvm7APFloat10isDenormalEv.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.n = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  br i1 %i.n, label %bb.e, label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm7APFloat10isDenormalEv.exit:             ; preds = %bb.d
  %i.o = call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  br i1 %i.o, label %bb.e, label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.e:                                             ; preds = %.split, %_ZNK4llvm7APFloat10isDenormalEv.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !213
  %i.q = call i16 @_ZNK4llvm15MachineFunction15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 4 dereferenceable(29) %i.p) #27
  %i.r = icmp eq i16 %i.q, 0
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.f:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.e, label %bb.p [
    i32 193, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 194, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 195, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 269, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 282, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 283, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 284, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 91, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 92, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 96, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 196, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 197, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 281, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 198, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 199, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 201, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 212, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 206, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 207, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 208, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 213, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 4162, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 4133, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 4134, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 4135, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 4136, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 211, label %bb.h
    i32 220, label %bb.h
    i32 221, label %bb.h
    i32 224, label %bb.i
    i32 225, label %bb.i
    i32 226, label %bb.i
    i32 227, label %bb.i
    i32 228, label %bb.i
    i32 229, label %bb.i
    i32 230, label %bb.i
    i32 231, label %bb.i
    i32 83, label %bb.m
    i32 139, label %bb.o
    i32 141, label %bb.o
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !861
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !213
  %i.x = add i32 %3, -1
  %i.y = call noundef zeroext i1 @_ZNK4llvm16SITargetLowering15isCanonicalizedENS_8RegisterERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(518456) %0, i32 %i.w, ptr noundef nonnull align 8 dereferenceable(1065) %2, i32 noundef %i.x)
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 496
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !220
  %i.ad = icmp sgt i32 %i.ac, 7
  br i1 %i.ad, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp slt i32 %1, 0
  br i1 %i.ae, label %bb.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.k:                                             ; preds = %bb.j
  %i.af = and i32 %1, 2147483647                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !489
  %i.ai = icmp ugt i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.l, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 8, !tbaa !213
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.04.0.i = phi i64 [ %i.an, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.ao = call noundef zeroext i1 @_ZNK4llvm16SITargetLowering23denormalsEnabledForTypeENS_3LLTERKNS_15MachineFunctionE(ptr nonnull align 8 poison, i64 %.sroa.04.0.i, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.ao, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !861 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load i24, ptr %i.ar, align 8            ; 2 uses
  %i.at = zext i24 %i.as to i64
  %.idx = shl nuw nsw i64 %i.at, 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %i.av = add i32 %3, -1
  %.not50 = icmp eq i24 %i.as, 1
  br i1 %.not50, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %.03749 = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph
  %.03752 = phi ptr [ %.03749, %.lr.ph ], [ %.037, %bb.n ] ; 2 uses
  %.pn51 = phi ptr [ %i.aq, %.lr.ph ], [ %.03752, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn51, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !213
  %i.ay = call noundef zeroext i1 @_ZNK4llvm16SITargetLowering15isCanonicalizedENS_8RegisterERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(518456) %0, i32 %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %2, i32 noundef %i.av) ; 2 uses
  %.not55 = xor i1 %i.ay, true
  %.037 = getelementptr inbounds nuw i8, ptr %.03752, i64 32 ; 2 uses
  %.not = icmp eq ptr %.037, %i.au
  %or.cond = select i1 %.not55, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %bb.n

bb.o:                                             ; preds = %bb.g, %bb.g
  %i.az = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !861
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !213
  switch i32 %i.bf, label %bb.p [
    i32 2497, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2495, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3565, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2496, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3535, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2304, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3316, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2480, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3317, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3457, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3458, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3462, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3463, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3464, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2439, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2438, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2437, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2498, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2330, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2306, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2307, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2308, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2309, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2500, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 2483, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3652, label %_ZNK4llvm12DenormalModeeqES0_.exit
    i32 3649, label %_ZNK4llvm12DenormalModeeqES0_.exit
  ]

bb.p:                                             ; preds = %bb.o, %bb.g
  br label %_ZNK4llvm12DenormalModeeqES0_.exit

_ZNK4llvm12DenormalModeeqES0_.exit:               ; preds = %bb.n, %bb.m, %.split, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.i, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.f, %_ZNK4llvm7APFloat10isDenormalEv.exit, %bb.c, %bb.p, %bb.h, %bb.e
  %.3 = phi i1 [ true, %bb.o ], [ %i.r, %bb.e ], [ false, %bb.c ], [ true, %_ZNK4llvm7APFloat10isDenormalEv.exit ], [ false, %bb.p ], [ false, %bb.f ], [ %i.y, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %.split ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %bb.g ], [ true, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.m ], [ %i.ay, %bb.n ]
  %i.bg = load i8, ptr %i.g, align 8, !tbaa !956, !range !30, !noundef !31
  %i.bh = trunc nuw i8 %i.bg to i1
  store i8 0, ptr %i.g, align 8, !tbaa !956
  br i1 %i.bh, label %bb.q, label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %4) #27
  br label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit: ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit
  %.4 = phi i1 [ %.3, %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SITargetLowering23denormalsEnabledForTypeENS_3LLTERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %.mask.i.i.i = and i64 %1, -1152921504606846976
  %i.a = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.b = icmp slt i64 %1, -8070450532247928832
  %spec.select.i.i = or i1 %i.b, %i.a
  %i.c = lshr i64 %1, 44
  %i.d = and i64 %i.c, 65535
  %i.e = lshr i64 %1, 28
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.d, i64 %i.e
  %.0.i = trunc i64 %.0.in.i to i32
  switch i32 %.0.i, label %bb.d [
    i32 32, label %bb.b
    i32 64, label %bb.c
    i32 16, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val = load ptr, ptr %i.f, align 8, !tbaa !430
  %i.g = getelementptr i8, ptr %.val, i64 144
  %.val.val = load i40, ptr %i.g, align 8
  %i.h = and i40 %.val.val, 16776960
  %i.i = icmp ne i40 %i.h, 65792
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val3 = load ptr, ptr %i.j, align 8, !tbaa !430
  %i.k = getelementptr i8, ptr %.val3, i64 144
  %.val3.val = load i40, ptr %i.k, align 8        ; 2 uses
  %i.l = and i40 %.val3.val, 4278190080
  %i.m = icmp ne i40 %i.l, 16777216
  %i.n = ashr i40 %.val3.val, 32
  %3 = trunc nsw i40 %i.n to i16
  %i.o = icmp ne i16 %3, 1
  %.not5 = select i1 %i.m, i1 true, i1 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ %.not5, %bb.c ], [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering22getCanonicalConstantFPERNS_12SelectionDAGERKNS_5SDLocENS_3EVTERKNS_7APFloatE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::APFloat", align 8     ; 9 uses
  %7 = alloca %"class.llvm::APFloat", align 8     ; 14 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %i.a = load ptr, ptr %5, align 8, !tbaa !213
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %_ZNK4llvm7APFloat10isDenormalEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br i1 %i.b, label %bb.b, label %bb.h

_ZNK4llvm7APFloat10isDenormalEv.exit:             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.split, %_ZNK4llvm7APFloat10isDenormalEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332
  %i.f = load ptr, ptr %5, align 8, !tbaa !213
  %i.g = tail call i16 @_ZNK4llvm15MachineFunction15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 4 dereferenceable(29) %i.f) #27 ; 2 uses
  %.sroa.0.0.extract.trunc = zext i16 %i.g to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24    ; 2 uses
  %10 = icmp eq i32 %sext, 16777216
  %11 = ashr i16 %i.g, 8                          ; 2 uses
  %i.h = icmp eq i16 %11, 1
  %or.cond = and i1 %i.h, %10
  br i1 %or.cond, label %bb.c, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.i = load ptr, ptr %5, align 8, !tbaa !213    ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr %5
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 8
  %i.o = icmp ne i8 %i.n, 0                       ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(29) %i.i, i32 noundef 0) #27
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

bb.e:                                             ; preds = %bb.c
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(29) %i.i, i32 noundef 0) #27
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i: ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %6, align 8, !tbaa !213, !alias.scope !2418
  %.not.i.i49 = icmp eq ptr %i.p, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.o) #27
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.g:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.o) #27
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit: ; preds = %bb.f, %bb.g
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.q, 1
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %bb.b
  %i.r = icmp ne i32 %sext, 0
  %i.s = icmp ne i16 %11, 0
  %or.cond74 = or i1 %i.s, %i.r
  br i1 %or.cond74, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %.split, %_ZNK4llvm7APFloat10isDenormalEv.exit
  %i.t = load ptr, ptr %5, align 8, !tbaa !213    ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.t, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.0.i.i.i = select i1 %.not.i.i.i50, ptr %i.v, ptr %5
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, 7
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  br i1 %.not.i.i.i50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(29) %i.t, i32 noundef 0) #27
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i52

bb.k:                                             ; preds = %bb.i
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(29) %i.t, i32 noundef 0) #27
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i52

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i52: ; preds = %bb.k, %bb.j
  %i.aa = load ptr, ptr %7, align 8, !tbaa !213, !alias.scope !2419
  %.not.i.i53 = icmp eq ptr %i.aa, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i52
  call void @_ZN4llvm6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #27
  br label %_ZN4llvm7APFloat7getQNaNERKNS_12fltSemanticsEbPKNS_5APIntE.exit

bb.m:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i52
  call void @_ZN4llvm6detail13DoubleAPFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #27
  br label %_ZN4llvm7APFloat7getQNaNERKNS_12fltSemanticsEbPKNS_5APIntE.exit

_ZN4llvm7APFloat7getQNaNERKNS_12fltSemanticsEbPKNS_5APIntE.exit: ; preds = %bb.l, %bb.m
  %i.ab = load ptr, ptr %5, align 8, !tbaa !213
  %.not.i.i54 = icmp eq ptr %i.ab, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ac = load ptr, ptr %i.u, align 8
  %.0.i.i55 = select i1 %.not.i.i54, ptr %i.ac, ptr %5
  %i.ad = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat11isSignalingEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i55) #27
  br i1 %i.ad, label %.thread68, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm7APFloat7getQNaNERKNS_12fltSemanticsEbPKNS_5APIntE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !213, !noalias !2420
  %.not.i56 = icmp eq ptr %i.ae, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.af = load ptr, ptr %7, align 8, !tbaa !213, !noalias !2421
  %.not.i57 = icmp eq ptr %i.af, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit58

bb.r:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit58

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit58:       ; preds = %bb.q, %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !462 ; 3 uses
  %i.ai = icmp ult i32 %i.ah, 65
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit58
  %i.aj = load i64, ptr %8, align 8, !tbaa !213
  %i.ak = load i64, ptr %9, align 8, !tbaa !213
  %i.al = icmp eq i64 %i.aj, %i.ak
  br label %_ZNK4llvm5APIntneERKS0_.exit

bb.t:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit58
  %i.am = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #28
  br label %_ZNK4llvm5APIntneERKS0_.exit

_ZNK4llvm5APIntneERKS0_.exit:                     ; preds = %bb.s, %bb.t
  %.0.i.i59 = phi i1 [ %i.al, %bb.s ], [ %i.am, %bb.t ]
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !462
  %i.ap = icmp ugt i32 %i.ao, 64
  br i1 %i.ap, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit

bb.u:                                             ; preds = %_ZNK4llvm5APIntneERKS0_.exit
  %i.aq = load ptr, ptr %9, align 8, !tbaa !213   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4llvm5APIntD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #31
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !462
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APIntneERKS0_.exit, %bb.u, %bb.v
  %i.as = phi i32 [ %i.ah, %_ZNK4llvm5APIntneERKS0_.exit ], [ %i.ah, %bb.u ], [ %.pre, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.at = icmp ugt i32 %i.as, 64
  br i1 %i.at, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit60

bb.w:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.au = load ptr, ptr %8, align 8, !tbaa !213   ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvm5APIntD2Ev.exit60, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.au) #31
  br label %_ZN4llvm5APIntD2Ev.exit60

_ZN4llvm5APIntD2Ev.exit60:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %.0.i.i59, label %bb.y, label %.thread68

.thread68:                                        ; preds = %_ZN4llvm5APIntD2Ev.exit60, %_ZN4llvm7APFloat7getQNaNERKNS_12fltSemanticsEbPKNS_5APIntE.exit
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, i1 noundef zeroext false) #27 ; 2 uses
  %.sroa.063.2.ph = extractvalue { ptr, i32 } %i.aw, 0
  %.sroa.7.2.ph = extractvalue { ptr, i32 } %i.aw, 1
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.thread

bb.y:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit60
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ax, 1
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit, %.thread68, %bb.z
  %.sroa.7.3 = phi i32 [ %.fca.1.extract, %bb.z ], [ %.sroa.7.2.ph, %.thread68 ], [ %.fca.1.extract21, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit ], [ 0, %_ZNK4llvm12DenormalModeeqES0_.exit.thread ]
  %.sroa.063.3 = phi ptr [ %.fca.0.extract, %bb.z ], [ %.sroa.063.2.ph, %.thread68 ], [ %.fca.0.extract20, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit ], [ null, %_ZNK4llvm12DenormalModeeqES0_.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.063.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !213
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering27performFCanonicalizeCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 9 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 11 uses
  %9 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !936, !nonnull !31, !align !456 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !846  ; 2 uses
  %.sroa.0137.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !533 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !540  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.f, align 8, !tbaa !217 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !240 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK4llvm16SITargetLowering21performFPRoundCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %.not100 = icmp eq ptr %.fca.0.extract45, null
  br i1 %.not100, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !846
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.042.0.copyload = load ptr, ptr %i.ag, align 8, !tbaa !533
  %i.ah = tail call fastcc { ptr, i32 } @_ZL18strictFPExtFromF16RN4llvm12SelectionDAGENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.w, ptr %.sroa.042.0.copyload) ; 2 uses
  %.fca.0.extract38 = extractvalue { ptr, i32 } %i.ah, 0 ; 3 uses
  %.fca.1.extract39 = extractvalue { ptr, i32 } %i.ah, 1 ; 2 uses
  %.not101 = icmp eq ptr %.fca.0.extract38, null
  br i1 %.not101, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !846
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.036.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !533
  %i.ak = tail call fastcc { ptr, i32 } @_ZL18strictFPExtFromF16RN4llvm12SelectionDAGENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.w, ptr %.sroa.036.0.copyload) ; 2 uses
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.ak, 0 ; 2 uses
  %.not102 = icmp eq ptr %.fca.0.extract32, null
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract45, ptr %4, align 8, !tbaa !533
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract46, ptr %.sroa.672.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract38, ptr %5, align 8, !tbaa !533
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract39, ptr %.sroa.665.0..sroa_idx, align 8, !tbaa !233
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i32 noundef 297, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 13, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #27 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract45, ptr %6, align 8, !tbaa !533
  %.sroa.672.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract46, ptr %.sroa.672.0..sroa_idx73, align 8, !tbaa !233
  store ptr %.fca.0.extract38, ptr %7, align 8, !tbaa !533
  %.sroa.665.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract39, ptr %.sroa.665.0..sroa_idx66, align 8, !tbaa !233
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i32 noundef 298, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 13, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #27 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract22, ptr %8, align 8, !tbaa !533
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract32, ptr %9, align 8, !tbaa !533
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract33, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !233
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i32 noundef 298, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 13, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #27 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.an, 1
  store ptr %.fca.0.extract12, ptr %10, align 8, !tbaa !533
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract4, ptr %11, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !233
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i32 noundef 297, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 13, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ao, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %.sroa.12.2 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %.fca.1.extract, %bb.i ], [ 0, %bb.h ]
  %.sroa.097.2 = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ %.fca.0.extract, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.d, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.b, %bb.c, %bb.a, %bb.j
  %.sroa.12.3 = phi i32 [ %.sroa.12.2, %bb.j ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ 0, %.lr.ph.i.i ]
  %.sroa.097.3 = phi ptr [ %.sroa.097.2, %bb.j ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ null, %.lr.ph.i.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.097.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL18strictFPExtFromF16RN4llvm12SelectionDAGENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.llvm::APFloat", align 8     ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !812
  switch i32 %i.c, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 247, label %bb.b
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !846  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !805  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !806  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !540
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.l, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !240
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 13
  %i.m = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.m, i1 false ; 2 uses
  %spec.select = select i1 %.not4.i, i32 %i.h, i32 0
  %spec.select23 = select i1 %.not4.i, ptr %i.f, ptr null
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !943
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 1, ptr %i.a, align 1, !tbaa !820
  %i.q = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase11semIEEEhalfE, i8 noundef signext 1, ptr noundef nonnull %i.a) #27 ; 0 uses
  %i.r = load i8, ptr %i.a, align 1, !tbaa !820, !range !30, !noundef !31
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge8, label %bb.c

.critedge8:                                       ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !550
  store i64 %i.u, ptr %3, align 8, !tbaa !550
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !551
  store i32 %i.x, ptr %i.v, align 8, !tbaa !553
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 13, ptr null, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.y, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.b, %bb.a, %.critedge8, %bb.c
  %.sroa.517.1 = phi i32 [ %spec.select, %bb.b ], [ %.fca.1.extract, %bb.c ], [ 0, %.critedge8 ], [ 0, %bb.a ]
  %.sroa.016.1 = phi ptr [ %spec.select23, %bb.b ], [ %.fca.0.extract, %bb.c ], [ null, %.critedge8 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.016.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.517.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 157) i32 @_ZNK4llvm16SITargetLowering14getFusedOpcodeERKNS_12SelectionDAGEPKNS_6SDNodeES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !540  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !217 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !240 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 14
  %i.c = icmp eq ptr %.sroa.21.0.copyload.i, null ; 2 uses
  %.not4.i = select i1 %.not.i.i, i1 %i.c, i1 false
  br i1 %.not4.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %.val = load ptr, ptr %i.f, align 8, !tbaa !430
  %i.g = getelementptr i8, ptr %.val, i64 144
  %.val.val = load i40, ptr %i.g, align 8
  %i.h = and i40 %.val.val, 16776960
  %i.i = icmp eq i40 %i.h, 65792
  br i1 %i.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, label %.thread

bb.c:                                             ; preds = %bb.a
  %.not.i.i14 = icmp eq i16 %.sroa.0.0.copyload.i, 13
  %.not4.i15 = select i1 %.not.i.i14, i1 %i.c, i1 false
  br i1 %.not4.i15, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm12GCNSubtarget9hasMadF16Ev(ptr noundef nonnull align 8 dereferenceable(520232) %i.k) #27
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !332
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %.val13 = load ptr, ptr %i.o, align 8, !tbaa !430
  %i.p = getelementptr i8, ptr %.val13, i64 144
  %.val13.val = load i40, ptr %i.p, align 8       ; 2 uses
  %i.q = and i40 %.val13.val, 4278190080
  %i.r = icmp eq i40 %i.q, 16777216
  %i.s = ashr i40 %.val13.val, 32
  %4 = trunc nsw i40 %i.s to i16
  %i.t = icmp eq i16 %4, 1
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, label %.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.e, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = zext nneg i16 %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %.not.i.not = icmp eq ptr %i.y, null
  br i1 %.not.i.not, label %.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %i.z = getelementptr inbounds nuw [537 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6340
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !215
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %.thread

.thread:                                          ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.b, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %bb.e, %bb.d, %bb.c
  %i.ad = load ptr, ptr %1, align 8, !tbaa !811, !nonnull !31, !align !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1384
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !989
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.ah, align 4, !tbaa !233
  %i.ai = and i32 %.sroa.0.0.copyload.i17, 512
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.aj, align 4, !tbaa !233
  %i.ak = and i32 %.sroa.0.0.copyload.i18, 512
  %.not31 = icmp eq i32 %i.ak, 0
  br i1 %.not31, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !332
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm16SITargetLowering26isFMAFasterThanFMulAndFAddERKNS_15MachineFunctionENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.am, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i)
  br i1 %i.an, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit
  %.1 = phi i32 [ 156, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ 0, %.critedge ], [ 155, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering17tryFoldToMad64_32EPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 25 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %20 = alloca %"struct.std::pair.744", align 8   ; 7 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %22 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !936, !nonnull !31, !align !456 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !540  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !217 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !240 ; 2 uses
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.21.0.copyload.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %13, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !550
  store i64 %i.g, ptr %14, align 8, !tbaa !550
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !551
  store i32 %i.j, ptr %i.h, align 8, !tbaa !553
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !846  ; 5 uses
  %.sroa.0328.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !533 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !233
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.0321.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !533 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !233
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0  ; 2 uses
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.n = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.n, 197
  br i1 %spec.select.i.i, label %.critedge, label %bb.b

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.o = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #28
  br i1 %i.o, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 4
  %.not348 = icmp eq i8 %i.r, 0
  br i1 %.not348, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 362
  %i.v = load i8, ptr %i.u, align 2, !tbaa !884, !range !30, !noundef !31
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.d
  %i.x = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #28
  br i1 %i.x, label %bb.e, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.y = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #27
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.d, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %bb.e
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.y, %bb.e ], [ %.fca.1.insert.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i, %bb.d ] ; 2 uses
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.z, ptr %11, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ab, ptr %i.aa, align 8
  %.not.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ac = zext i16 %i.z to i64
  %i.ad = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ae, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.af = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  %i.ag = extractvalue { i64, i8 } %i.af, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.f, %bb.g
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.f ], [ %i.ag, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.ah = trunc i64 %.pn.i.i to i32
  %i.ai = add i32 %i.ah, -65
  %or.cond = icmp ult i32 %i.ai, -32
  br i1 %or.cond, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0328.0.copyload, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !812
  %.not = icmp eq i32 %i.ak, 61                   ; 3 uses
  %.sroa.0321.0 = select i1 %.not, ptr %.sroa.0321.0.copyload, ptr %.sroa.0328.0.copyload ; 4 uses
  %.sroa.6.0 = select i1 %.not, i32 %.sroa.6.0.copyload, i32 %.sroa.9.0.copyload ; 4 uses
  %.sroa.0328.0 = select i1 %.not, ptr %.sroa.0328.0.copyload, ptr %.sroa.0321.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 749
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !2436, !range !30, !noundef !31
  %i.ap = trunc nuw i8 %i.ao to i1
end_hunk_3
begin_hunk_4_@_ZNK4llvm16SITargetLowering25shouldExpandAtomicRMWInIREPKNS_13AtomicRMWInstE:bb.a
bb.cs:                                            ; preds = %bb.cr
  %i.on = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.oo = load i32, ptr %i.on, align 8
  %i.op = and i32 %i.oo, 255
  %i.oq = icmp eq i32 %i.op, 3
  br i1 %i.oq, label %bb.ct, label %_ZL29atomicSupportedIfLegalIntTypePKN4llvm13AtomicRMWInstE.exit

bb.ct:                                            ; preds = %bb.cs
  tail call fastcc void @"_ZZNK4llvm16SITargetLowering25shouldExpandAtomicRMWInIREPKNS_13AtomicRMWInstEENK3$_0clENS_18TargetLoweringBase19AtomicExpansionKindE"(ptr %1)
  br label %_ZL29atomicSupportedIfLegalIntTypePKN4llvm13AtomicRMWInstE.exit

_ZL29atomicSupportedIfLegalIntTypePKN4llvm13AtomicRMWInstE.exit: ; preds = %bb.ch, %bb.l, %bb.k, %bb.g, %_ZNK4llvm11Instruction11getMetadataEj.exit.i, %bb.p, %bb.q, %bb.r, %bb.bz, %bb.by, %bb.ak, %_ZL15isV2F16OrV2BF16PN4llvm4TypeE.exit, %.thread211, %bb.bv, %bb.bs, %bb.bo, %bb.bm, %bb.bh, %bb.bf, %bb.bc, %bb.ax, %bb.au, %bb.aq, %bb.af, %bb.ae, %_ZL27globalMemoryFPAtomicIsLegalRKN4llvm12GCNSubtargetEPKNS_13AtomicRMWInstEb.exit, %_ZN4llvm6AMDGPU25isExtendedGlobalAddrSpaceEj.exit184, %bb.cs, %bb.cr, %bb.cl, %bb.cm, %bb.cb, %bb.cc, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.i, %.split, %_ZL22isAtomicRMWLegalXChgTyPKN4llvm13AtomicRMWInstE.exit, %_ZL22isAtomicRMWLegalXChgTyPKN4llvm13AtomicRMWInstE.exit.thread, %bb.o, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i126, %bb.s, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i130, %bb.u, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i137, %bb.w, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i144, %bb.y, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i153, %bb.aa, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit149.thread, %bb.ab, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i161, %_ZL25flatInstrMayAccessPrivatePKN4llvm11InstructionE.exit, %bb.c
  %.7 = phi i32 [ %i.r, %bb.c ], [ 4, %bb.l ], [ 9, %_ZL25flatInstrMayAccessPrivatePKN4llvm11InstructionE.exit ], [ 4, %_ZL27globalMemoryFPAtomicIsLegalRKN4llvm12GCNSubtargetEPKNS_13AtomicRMWInstEb.exit ], [ 4, %bb.i ], [ 4, %.split ], [ %spec.select.i, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i126 ], [ %spec.select.i132, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i130 ], [ %spec.select.i146, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i144 ], [ 9, %bb.aa ], [ %spec.select.i155, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i153 ], [ %spec.select.i139, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i137 ], [ 4, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit149.thread ], [ 4, %bb.q ], [ 4, %bb.p ], [ 9, %bb.bz ], [ 4, %bb.ch ], [ 4, %bb.r ], [ %i.gc, %bb.ae ], [ %i.gm, %bb.af ], [ 0, %_ZL15isV2F16OrV2BF16PN4llvm4TypeE.exit ], [ 9, %_ZNK4llvm11Instruction11getMetadataEj.exit.i ], [ 0, %bb.aq ], [ 0, %bb.bh ], [ 0, %bb.bm ], [ 0, %bb.bv ], [ 4, %bb.ak ], [ 4, %.thread211 ], [ 9, %bb.by ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ 0, %bb.au ], [ 0, %bb.ax ], [ 0, %bb.bc ], [ 0, %bb.bf ], [ 0, %bb.ct ], [ 0, %bb.ck ], [ 0, %bb.cn ], [ %i.mm, %bb.cc ], [ 0, %bb.cq ], [ 0, %bb.cb ], [ 4, %bb.cm ], [ 4, %bb.cl ], [ 4, %bb.cr ], [ 4, %bb.cs ], [ 4, %_ZN4llvm6AMDGPU25isExtendedGlobalAddrSpaceEj.exit184 ], [ 0, %_ZL22isAtomicRMWLegalXChgTyPKN4llvm13AtomicRMWInstE.exit.thread ], [ 4, %_ZL22isAtomicRMWLegalXChgTyPKN4llvm13AtomicRMWInstE.exit ], [ 9, %bb.g ], [ 4, %bb.o ], [ 4, %bb.s ], [ 4, %bb.u ], [ 4, %bb.w ], [ 4, %bb.y ], [ 4, %bb.k ], [ 4, %bb.ab ], [ %spec.select.i163, %_ZL21isAtomicRMWLegalIntTyPN4llvm4TypeE.exit.i161 ]
  ret i32 %.7
}

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.p [
    i8 8, label %bb.b
    i8 15, label %bb.c
    i8 17, label %bb.e
    i8 16, label %bb.f
    i8 13, label %bb.g
    i8 12, label %bb.h
    i8 0, label %bb.q
    i8 1, label %bb.q
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 6, label %bb.k
    i8 5, label %bb.k
    i8 10, label %bb.l
    i8 4, label %bb.m
    i8 18, label %bb.n
    i8 19, label %bb.n
    i8 21, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef 0) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !435
  %i.f = zext i32 %i.e to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 254
  %spec.select.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !493
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ]
  %i.l = lshr i32 %i.k, 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef %i.l) #27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !435
  %i.p = zext i32 %i.o to i64
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2649
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1009
  %i.u = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.t) #27 ; 2 uses
  %.fca.0.extract1.i = extractvalue { i64, i8 } %i.u, 0
  %.fca.1.extract2.i = extractvalue { i64, i8 } %i.u, 1
  %i.v = shl i64 %i.r, 3
  %i.w = mul i64 %i.v, %.fca.0.extract1.i
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull %1) #27 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %i.y = shl i64 %.sroa.0.0.copyload1.i.i.i.i, 3
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.z = lshr i32 %i.b, 8
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ab = lshr i32 %i.b, 8
  %i.ac = zext nneg i32 %i.ab to i64
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.a, %bb.a
  %i.ad = and i32 %i.b, 255
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !486
  %i.ag = icmp eq i32 %i.ad, 19
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !487
  %i.ak = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.aj)
  %.fca.0.extract1 = extractvalue { i64, i8 } %i.ak, 0
  %i.al = mul i64 %.fca.0.extract1, %i.ah
  %.sroa.078.4.extract.trunc = zext i1 %i.ag to i8
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.am = tail call noundef ptr @_ZNK4llvm13TargetExtType13getLayoutTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  %i.an = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.am) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.an, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.an, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  unreachable

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %bb.b
  %.sroa.082.0 = phi i64 [ %i.f, %bb.b ], [ %i.p, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.aa, %bb.g ], [ %i.ac, %bb.h ], [ %.fca.0.extract, %bb.o ], [ 32, %bb.i ], [ 64, %bb.j ], [ 128, %bb.k ], [ 8192, %bb.l ], [ 80, %bb.m ], [ %i.al, %bb.n ], [ 16, %bb.a ], [ 16, %bb.a ]
  %.sroa.15.0 = phi i8 [ 0, %bb.b ], [ 0, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %.fca.1.extract2.i, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.fca.1.extract, %bb.o ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ %.sroa.078.4.extract.trunc, %bb.n ], [ 0, %bb.a ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.082.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.15.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL38atomicIgnoresDenormalModeOrFPModeIsFTZPKN4llvm13AtomicRMWInstE(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !450
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 0
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread

_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit: ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZNK4llvm11Instruction15getMetadataImplENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull @.str.114, i64 27) #27
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread, label %bb.c

_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread: ; preds = %bb.a, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !451  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 254
  %spec.select.i.i = icmp eq i32 %i.m, 18
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.b:                                             ; preds = %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !493
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !240
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread ]
  %i.q = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i) #27
  %i.r = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #27
  %i.s = tail call i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140) %i.r, ptr noundef nonnull align 4 dereferenceable(29) %i.q) #27
  %or.cond = icmp eq i16 %i.s, 257
  br i1 %or.cond, label %bb.c, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.t = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #27
  %i.u = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.t, ptr nonnull @.str.115, i64 24) #27
  store ptr %i.u, ptr %1, align 8
  %i.v = call noundef zeroext i1 @_ZNK4llvm9Attribute14getValueAsBoolEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %_ZNK4llvm4Type13getScalarTypeEv.exit, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit
  %.1 = phi i1 [ true, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit ], [ %i.v, %_ZNK4llvm12DenormalModeeqES0_.exit.thread ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL27globalMemoryFPAtomicIsLegalRKN4llvm12GCNSubtargetEPKNS_13AtomicRMWInstEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520232) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 661
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1004, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !450
  %i.f = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp ne i32 %i.h, 0
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread

_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit: ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZNK4llvm11Instruction15getMetadataImplENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.91, i64 23) #27
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit7

_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread: ; preds = %bb.c, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.m = load i8, ptr %i.l, align 2, !tbaa !1003, !range !30, !noundef !31
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit7, label %bb.e

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit7, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !450
  %i.q = icmp ne ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp ne i32 %i.s, 0
  %i.u = select i1 %i.q, i1 true, i1 %i.t
  br i1 %i.u, label %bb.f, label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit7

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef ptr @_ZNK4llvm11Instruction15getMetadataImplENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.92, i64 29) #27
  %i.w = icmp ne ptr %i.v, null
  br label %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit7

_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit7: ; preds = %bb.f, %bb.e, %bb.d, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit
  %.0 = phi i1 [ true, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit.thread ], [ true, %_ZNK4llvm11Instruction11hasMetadataENS_9StringRefE.exit ], [ true, %bb.d ], [ %i.w, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK4llvm16SITargetLowering25shouldExpandAtomicRMWInIREPKNS_13AtomicRMWInstEENK3$_0clENS_18TargetLoweringBase19AtomicExpansionKindE"(ptr nonnull %.0.val) unnamed_addr #2 align 2 {
bb.a:
  %0 = alloca %"class.std::optional.1161", align 8 ; 6 uses
  %1 = alloca %"class.llvm::OptimizationRemark", align 8 ; 17 uses
  %2 = alloca %"class.llvm::OptimizationRemark", align 8 ; 15 uses
  %3 = alloca %"class.llvm::OptimizationRemark", align 8 ; 15 uses
  %4 = alloca %"class.llvm::OptimizationRemarkEmitter", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.val) #27
  call void @_ZN4llvm25OptimizationRemarkEmitterC1EPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.a) #27
  %i.b = load ptr, ptr %4, align 8, !tbaa !2662
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.b) #27
  %i.d = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #27
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !2662
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.e) #27
  %i.g = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #27, !inline_history !2650
  br i1 %i.k, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZZNKS_16SITargetLowering25shouldExpandAtomicRMWInIREPKNS_13AtomicRMWInstEENK3$_0clENS_18TargetLoweringBase19AtomicExpansionKindEEUlvE_EEvT_PDTclfL0p_EE.exit"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !2663
  call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !451, !noalias !2665
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !455, !noalias !2665, !nonnull !31, !align !456
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27, !noalias !2665
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1002, !noalias !2665
  call void @_ZNK4llvm11LLVMContext16getSyncScopeNameEh(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1161") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.p) #27, !noalias !2665
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !2667, !range !30, !noalias !2665, !noundef !31
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8, !noalias !2665
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !2665
  %.sroa.3.0.i.i.i.i = select i1 %i.s, i64 %.sroa.3.0.copyload.i.i.i.i, i64 6
  %.sroa.0.0.i.i.i.i = select i1 %i.s, ptr %.sroa.0.0.copyload.i.i.i.i, ptr @.str.117
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27, !noalias !2665
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !2665
  call void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull @.str.118, ptr nonnull @.str.119, i64 6, ptr noundef nonnull %.0.val) #27, !noalias !2665
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr nonnull @.str.120, i64 42) #27, !noalias !2665
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !554, !noalias !2665
  %i.v = lshr i16 %i.u, 4
  %i.w = and i16 %i.v, 31
  %i.x = zext nneg i16 %i.w to i32
  %i.y = call { ptr, i64 } @_ZN4llvm13AtomicRMWInst16getOperationNameENS0_5BinOpE(i32 noundef %i.x) #27, !noalias !2665 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr %i.z, i64 %i.aa) #27, !noalias !2665
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr nonnull @.str.121, i64 27) #27, !noalias !2665
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.3.0.i.i.i.i) #27, !noalias !2665
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ab, ptr noundef nonnull align 8 dereferenceable(5) %i.ac, i64 5, i1 false), !noalias !2663
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !2663
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %2, align 8, !tbaa !25, !alias.scope !2664, !noalias !2663
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 40, i1 false), !noalias !2663
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !34, !alias.scope !2664, !noalias !2663
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !489, !alias.scope !2664, !noalias !2663
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 4, ptr %i.ak, align 4, !tbaa !490, !alias.scope !2664, !noalias !2663
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !489, !noalias !2665
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm18OptimizationRemarkC2EOS0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.ah, ptr noundef nonnull align 8 dereferenceable(336) %i.an), !noalias !2663 ; 0 uses
  %.pre.i.i.i = load i32, ptr %i.al, align 8, !tbaa !489, !noalias !2665
  br label %_ZN4llvm18OptimizationRemarkC2EOS0_.exit.i.i.i

_ZN4llvm18OptimizationRemarkC2EOS0_.exit.i.i.i:   ; preds = %bb.b, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i
  %i.ap = phi i32 [ 0, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i ], [ %.pre.i.i.i, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.as = load i64, ptr %i.ar, align 8, !noalias !2665
  store i64 %i.as, ptr %i.aq, align 8, !alias.scope !2664, !noalias !2663
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2677, !noalias !2665
  store ptr %i.av, ptr %i.at, align 8, !tbaa !2677, !alias.scope !2664, !noalias !2663
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm18OptimizationRemarkE, i64 16), ptr %2, align 8, !tbaa !25, !alias.scope !2664, !noalias !2663
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %1, align 8, !tbaa !25, !noalias !2665
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34, !noalias !2665 ; 3 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN4llvm18OptimizationRemarkC2EOS0_.exit.i.i.i
  %i.ay = zext i32 %i.ap to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.ay, 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i ], [ %i.az, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -80 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1010, !noalias !2663 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !213, !noalias !2663
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #31, !noalias !2663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !1010, !noalias !2663 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !213, !noalias !2663
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31, !noalias !2663
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
end_hunk_4
