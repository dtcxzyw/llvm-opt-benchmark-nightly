Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/factory-base?download=true
inline.NumInlined: 12826
inline.NumDeleted: 1652
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE28NewTwoByteInternalizedStringENS_4base6VectorIKtEEj:bb.a

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.c = trunc nuw nsw i64 %2 to i32              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 22
  %i.h = and i32 %i.g, 2147483640                 ; 2 uses
  %i.i = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.j = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.h, i8 noundef zeroext %i.i, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 5 uses
  store atomic volatile i64 %i.e, ptr %i.l monotonic, align 8
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store atomic volatile i32 %i.c, ptr %i.p monotonic, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i32 %3, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZNK2v84base6VectorIKtE6lengthEv.exit1, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit1

_ZNK2v84base6VectorIKtE6lengthEv.exit1:           ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  switch i32 %i.c, label %bb.n [
    i32 8, label %bb.m
    i32 1, label %bb.f
    i32 6, label %bb.k
    i32 2, label %bb.g
    i32 7, label %bb.l
    i32 3, label %bb.h
    i32 5, label %bb.j
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ab = load i16, ptr %1, align 1
  store i16 %i.ab, ptr %i.aa, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.g:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ac = load i32, ptr %1, align 1
  store i32 %i.ac, ptr %i.aa, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.h:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aa, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ad = load i64, ptr %1, align 1
  store i64 %i.ad, ptr %i.aa, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.j:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aa, ptr noundef nonnull align 1 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.k:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.l:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aa, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.m:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.n:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ae = zext nneg i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 1 %1, i64 %i.ae, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawTwoByteInternalizedStringEij(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 536870889
  br i1 %i.a, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.c = load i64, ptr %i.b, align 8
  %i.d = shl i32 %1, 1
  %i.e = add i32 %i.d, 22
  %i.f = and i32 %i.e, -8                         ; 2 uses
  %i.g = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.h = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.f, i8 noundef zeroext %i.g, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  store atomic volatile i64 %i.c, ptr %i.j monotonic, align 8
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  store i64 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store atomic volatile i32 %1, ptr %i.n monotonic, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store atomic i32 %2, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.p, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE39NewOneByteInternalizedStringFromTwoByteENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %2 to i32
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawOneByteInternalizedStringEij(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.b, i32 noundef %3) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef %i.g, ptr noundef %1, i64 noundef %2)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 16
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 30
  %i.f = add i64 %i.a, 15
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 28
  %i.h = add i64 %i.a, 14
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i16, ptr %1, align 2
  %i.j = trunc i16 %i.i to i8
  store i8 %i.j, ptr %0, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i16, ptr %i.k, align 2
  %i.n = trunc i16 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i16, ptr %i.o, align 2
  %i.r = trunc i16 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i16, ptr %i.s, align 2
  %i.v = trunc i16 %i.u to i8
  store i8 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i16, ptr %i.w, align 2
  %i.z = trunc i16 %i.y to i8
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ac = load i16, ptr %i.aa, align 2
  %i.ad = trunc i16 %i.ac to i8
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i16, ptr %i.ae, align 2
  %i.ah = trunc i16 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ak = load i16, ptr %i.ai, align 2
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i16, ptr %i.am, align 2
  %i.ap = trunc i16 %i.ao to i8
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.as = load i16, ptr %i.aq, align 2
  %i.at = trunc i16 %i.as to i8
  store i8 %i.at, ptr %i.ar, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aw = load i16, ptr %i.au, align 2
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.av, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ba = load i16, ptr %i.ay, align 2
  %i.bb = trunc i16 %i.ba to i8
  store i8 %i.bb, ptr %i.az, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.be = load i16, ptr %i.bc, align 2
  %i.bf = trunc i16 %i.be to i8
  store i8 %i.bf, ptr %i.bd, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i16, ptr %1, align 2
  %i.bh = trunc i16 %i.bg to i8
  store i8 %i.bh, ptr %0, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bk = load i16, ptr %i.bi, align 2
  %i.bl = trunc i16 %i.bk to i8
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bo = load i16, ptr %i.bm, align 2
  %i.bp = trunc i16 %i.bo to i8
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bs = load i16, ptr %i.bq, align 2
  %i.bt = trunc i16 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i16, ptr %i.bu, align 2
  %i.bx = trunc i16 %i.bw to i8
  store i8 %i.bx, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ca = load i16, ptr %i.by, align 2
  %i.cb = trunc i16 %i.ca to i8
  store i8 %i.cb, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ce = load i16, ptr %i.cc, align 2
  %i.cf = trunc i16 %i.ce to i8
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ci = load i16, ptr %i.cg, align 2
  %i.cj = trunc i16 %i.ci to i8
  store i8 %i.cj, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load i16, ptr %i.ck, align 2
  %i.cn = trunc i16 %i.cm to i8
  store i8 %i.cn, ptr %i.cl, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cq = load i16, ptr %i.co, align 2
  %i.cr = trunc i16 %i.cq to i8
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cu = load i16, ptr %i.cs, align 2
  %i.cv = trunc i16 %i.cu to i8
  store i8 %i.cv, ptr %i.ct, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cy = load i16, ptr %i.cw, align 2
  %i.cz = trunc i16 %i.cy to i8
  store i8 %i.cz, ptr %i.cx, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.da = load i16, ptr %1, align 2
  %i.db = trunc i16 %i.da to i8
  store i8 %i.db, ptr %0, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.de = load i16, ptr %i.dc, align 2
  %i.df = trunc i16 %i.de to i8
  store i8 %i.df, ptr %i.dd, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.di = load i16, ptr %i.dg, align 2
  %i.dj = trunc i16 %i.di to i8
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dm = load i16, ptr %i.dk, align 2
  %i.dn = trunc i16 %i.dm to i8
  store i8 %i.dn, ptr %i.dl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = load i16, ptr %i.do, align 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.dp, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.du = load i16, ptr %i.ds, align 2
  %i.dv = trunc i16 %i.du to i8
  store i8 %i.dv, ptr %i.dt, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dy = load i16, ptr %i.dw, align 2
  %i.dz = trunc i16 %i.dy to i8
  store i8 %i.dz, ptr %i.dx, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ec = load i16, ptr %i.ea, align 2
  %i.ed = trunc i16 %i.ec to i8
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load i16, ptr %i.ee, align 2
  %i.eh = trunc i16 %i.eg to i8
  store i8 %i.eh, ptr %i.ef, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ek = load i16, ptr %i.ei, align 2
  %i.el = trunc i16 %i.ek to i8
  store i8 %i.el, ptr %i.ej, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.eo = load i16, ptr %i.em, align 2
  %i.ep = trunc i16 %i.eo to i8
  store i8 %i.ep, ptr %i.en, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.eq = load i16, ptr %1, align 2
  %i.er = trunc i16 %i.eq to i8
  store i8 %i.er, ptr %0, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eu = load i16, ptr %i.es, align 2
  %i.ev = trunc i16 %i.eu to i8
  store i8 %i.ev, ptr %i.et, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ey = load i16, ptr %i.ew, align 2
  %i.ez = trunc i16 %i.ey to i8
  store i8 %i.ez, ptr %i.ex, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ie = load i16, ptr %i.ic, align 2
  %i.if = trunc i16 %i.ie to i8
  store i8 %i.if, ptr %i.id, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ii = load i16, ptr %i.ig, align 2
  %i.ij = trunc i16 %i.ii to i8
  store i8 %i.ij, ptr %i.ih, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.im = load i16, ptr %i.ik, align 2
  %i.in = trunc i16 %i.im to i8
  store i8 %i.in, ptr %i.il, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %bb.a
  %i.io = load i16, ptr %1, align 2
  %i.ip = trunc i16 %i.io to i8
  store i8 %i.ip, ptr %0, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.is = load i16, ptr %i.iq, align 2
  %i.it = trunc i16 %i.is to i8
  store i8 %i.it, ptr %i.ir, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.iw = load i16, ptr %i.iu, align 2
  %i.ix = trunc i16 %i.iw to i8
  store i8 %i.ix, ptr %i.iv, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ja = load i16, ptr %i.iy, align 2
  %i.jb = trunc i16 %i.ja to i8
  store i8 %i.jb, ptr %i.iz, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.je = load i16, ptr %i.jc, align 2
  %i.jf = trunc i16 %i.je to i8
  store i8 %i.jf, ptr %i.jd, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ji = load i16, ptr %i.jg, align 2
  %i.jj = trunc i16 %i.ji to i8
  store i8 %i.jj, ptr %i.jh, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.jm = load i16, ptr %i.jk, align 2
  %i.jn = trunc i16 %i.jm to i8
  store i8 %i.jn, ptr %i.jl, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.a
  %i.jo = load i16, ptr %1, align 2
  %i.jp = trunc i16 %i.jo to i8
  store i8 %i.jp, ptr %0, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.js = load i16, ptr %i.jq, align 2
  %i.jt = trunc i16 %i.js to i8
  store i8 %i.jt, ptr %i.jr, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jw = load i16, ptr %i.ju, align 2
  %i.jx = trunc i16 %i.jw to i8
  store i8 %i.jx, ptr %i.jv, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ka = load i16, ptr %i.jy, align 2
  %i.kb = trunc i16 %i.ka to i8
  store i8 %i.kb, ptr %i.jz, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ke = load i16, ptr %i.kc, align 2
  %i.kf = trunc i16 %i.ke to i8
  store i8 %i.kf, ptr %i.kd, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ki = load i16, ptr %i.kg, align 2
  %i.kj = trunc i16 %i.ki to i8
  store i8 %i.kj, ptr %i.kh, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kk = load i16, ptr %1, align 2
  %i.kl = trunc i16 %i.kk to i8
  store i8 %i.kl, ptr %0, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ko = load i16, ptr %i.km, align 2
  %i.kp = trunc i16 %i.ko to i8
  store i8 %i.kp, ptr %i.kn, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ks = load i16, ptr %i.kq, align 2
  %i.kt = trunc i16 %i.ks to i8
  store i8 %i.kt, ptr %i.kr, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.kw = load i16, ptr %i.ku, align 2
  %i.kx = trunc i16 %i.kw to i8
  store i8 %i.kx, ptr %i.kv, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.la = load i16, ptr %i.ky, align 2
  %i.lb = trunc i16 %i.la to i8
  store i8 %i.lb, ptr %i.kz, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.lc = load i16, ptr %1, align 2
  %i.ld = trunc i16 %i.lc to i8
  store i8 %i.ld, ptr %0, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lg = load i16, ptr %i.le, align 2
  %i.lh = trunc i16 %i.lg to i8
  store i8 %i.lh, ptr %i.lf, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lk = load i16, ptr %i.li, align 2
  %i.ll = trunc i16 %i.lk to i8
  store i8 %i.ll, ptr %i.lj, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.lo = load i16, ptr %i.lm, align 2
  %i.lp = trunc i16 %i.lo to i8
  store i8 %i.lp, ptr %i.ln, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.lq = load i16, ptr %1, align 2
  %i.lr = trunc i16 %i.lq to i8
  store i8 %i.lr, ptr %0, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lu = load i16, ptr %i.ls, align 2
  %i.lv = trunc i16 %i.lu to i8
  store i8 %i.lv, ptr %i.lt, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ly = load i16, ptr %i.lw, align 2
  %i.lz = trunc i16 %i.ly to i8
  store i8 %i.lz, ptr %i.lx, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ma = load i16, ptr %1, align 2
  %i.mb = trunc i16 %i.ma to i8
  store i8 %i.mb, ptr %0, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.me = load i16, ptr %i.mc, align 2
  %i.mf = trunc i16 %i.me to i8
  store i8 %i.mf, ptr %i.md, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.mg = load i16, ptr %1, align 2
  %i.mh = trunc i16 %i.mg to i8
  store i8 %i.mh, ptr %0, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.mi = icmp sgt i64 %2, 0
  br i1 %i.mi, label %iter.check, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %i.mj = shl nuw i64 %2, 1
  %scevgep147 = getelementptr i8, ptr %1, i64 %i.mj
  %bound0 = icmp ult ptr %0, %scevgep147
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp ult i64 %2, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ml = and i64 %2, 15
  %i.mm = getelementptr i8, ptr %0, i64 %n.vec
  %i.mn = shl nuw i64 %n.vec, 1
  %i.mo = getelementptr i8, ptr %1, i64 %i.mn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.mp = shl i64 %index, 1
  %next.gep149 = getelementptr i8, ptr %1, i64 %i.mp ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep149, align 2, !alias.scope !25
  %wide.load150 = load <8 x i16>, ptr %i.mq, align 2, !alias.scope !25
  %i.mr = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ms = trunc <8 x i16> %wide.load150 to <8 x i8>
  %i.mt = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.mr, ptr %next.gep, align 1, !alias.scope !26, !noalias !25
  store <8 x i8> %i.ms, ptr %i.mt, align 1, !alias.scope !26, !noalias !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mv = and i64 %2, 3
  %i.mw = getelementptr i8, ptr %0, i64 %n.vec153
  %i.mx = shl nuw i64 %n.vec153, 1
  %i.my = getelementptr i8, ptr %1, i64 %i.mx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %0, i64 %index154
  %i.mz = shl i64 %index154, 1
  %next.gep156 = getelementptr i8, ptr %1, i64 %i.mz
  %wide.load157 = load <4 x i16>, ptr %next.gep156, align 2, !alias.scope !25
  %i.na = trunc <4 x i16> %wide.load157 to <4 x i8>
  store <4 x i8> %i.na, ptr %next.gep155, align 1, !alias.scope !26, !noalias !25
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %2, %n.vec153
  br i1 %cmp.n159, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.mm, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i16, ptr %.0910.i.i.i.i.i.i.i115, align 2
  %i.nd = trunc i16 %i.nc to i8
  store i8 %i.nd, ptr %.0811.i.i.i.i.i.i.i114, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 2
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 1
  %i.ng = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.nh = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, !llvm.loop !24

_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.ni = load <8 x i16>, ptr %1, align 2
  %i.nj = trunc <8 x i16> %i.ni to <8 x i8>
  store <8 x i8> %i.nj, ptr %0, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nm = load <4 x i16>, ptr %i.nk, align 2
  %i.nn = trunc <4 x i16> %i.nm to <4 x i8>
  store <4 x i8> %i.nn, ptr %i.nl, align 1
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.nq = load i16, ptr %i.no, align 2
  %i.nr = trunc i16 %i.nq to i8
  store i8 %i.nr, ptr %i.np, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.nu = load i16, ptr %i.ns, align 2
  %i.nv = trunc i16 %i.nu to i8
  store i8 %i.nv, ptr %i.nt, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.nw = load i16, ptr %1, align 2
  %i.nx = trunc i16 %i.nw to i8
  store i8 %i.nx, ptr %0, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.oa = load i16, ptr %i.ny, align 2
  %i.ob = trunc i16 %i.oa to i8
  store i8 %i.ob, ptr %i.nz, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oe = load i16, ptr %i.oc, align 2
  %i.of = trunc i16 %i.oe to i8
  store i8 %i.of, ptr %i.od, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.oi = load i16, ptr %i.og, align 2
  %i.oj = trunc i16 %i.oi to i8
  store i8 %i.oj, ptr %i.oh, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.om = load i16, ptr %i.ok, align 2
  %i.on = trunc i16 %i.om to i8
  store i8 %i.on, ptr %i.ol, align 1
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.oq = load i16, ptr %i.oo, align 2
  %i.or = trunc i16 %i.oq to i8
  store i8 %i.or, ptr %i.op, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ou = load i16, ptr %i.os, align 2
  %i.ov = trunc i16 %i.ou to i8
  store i8 %i.ov, ptr %i.ot, align 1
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.oy = load i16, ptr %i.ow, align 2
  %i.oz = trunc i16 %i.oy to i8
  store i8 %i.oz, ptr %i.ox, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pc = load i16, ptr %i.pa, align 2
  %i.pd = trunc i16 %i.pc to i8
  store i8 %i.pd, ptr %i.pb, align 1
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.pg = load i16, ptr %i.pe, align 2
  %i.ph = trunc i16 %i.pg to i8
  store i8 %i.ph, ptr %i.pf, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.pk = load i16, ptr %i.pi, align 2
  %i.pl = trunc i16 %i.pk to i8
  store i8 %i.pl, ptr %i.pj, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.po = load i16, ptr %i.pm, align 2
  %i.pp = trunc i16 %i.po to i8
  store i8 %i.pp, ptr %i.pn, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ps = load i16, ptr %i.pq, align 2
  %i.pt = trunc i16 %i.ps to i8
  store i8 %i.pt, ptr %i.pr, align 1
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.pw = load i16, ptr %i.pu, align 2
  %i.px = trunc i16 %i.pw to i8
  store i8 %i.px, ptr %i.pv, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.py = load <8 x i16>, ptr %1, align 2
  %i.pz = trunc <8 x i16> %i.py to <8 x i8>
  store <8 x i8> %i.pz, ptr %0, align 1
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qc = load <4 x i16>, ptr %i.qa, align 2
  %i.qd = trunc <4 x i16> %i.qc to <4 x i8>
  store <4 x i8> %i.qd, ptr %i.qb, align 1
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.qg = load i16, ptr %i.qe, align 2
  %i.qh = trunc i16 %i.qg to i8
  store i8 %i.qh, ptr %i.qf, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.qk = load i16, ptr %i.qi, align 2
  %i.ql = trunc i16 %i.qk to i8
  store i8 %i.ql, ptr %i.qj, align 1
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.qo = load i16, ptr %i.qm, align 2
  %i.qp = trunc i16 %i.qo to i8
  store i8 %i.qp, ptr %i.qn, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i16, ptr %1, align 2
  %i.qr = trunc i16 %i.qq to i8
  store i8 %i.qr, ptr %0, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.qu = load i16, ptr %i.qs, align 2
  %i.qv = trunc i16 %i.qu to i8
  store i8 %i.qv, ptr %i.qt, align 1
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qy = load i16, ptr %i.qw, align 2
  %i.qz = trunc i16 %i.qy to i8
  store i8 %i.qz, ptr %i.qx, align 1
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.rc = load i16, ptr %i.ra, align 2
  %i.rd = trunc i16 %i.rc to i8
  store i8 %i.rd, ptr %i.rb, align 1
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.rg = load i16, ptr %i.re, align 2
  %i.rh = trunc i16 %i.rg to i8
  store i8 %i.rh, ptr %i.rf, align 1
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.rk = load i16, ptr %i.ri, align 2
  %i.rl = trunc i16 %i.rk to i8
  store i8 %i.rl, ptr %i.rj, align 1
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ro = load i16, ptr %i.rm, align 2
  %i.rp = trunc i16 %i.ro to i8
  store i8 %i.rp, ptr %i.rn, align 1
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.rs = load i16, ptr %i.rq, align 2
  %i.rt = trunc i16 %i.rs to i8
  store i8 %i.rt, ptr %i.rr, align 1
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rw = load i16, ptr %i.ru, align 2
  %i.rx = trunc i16 %i.rw to i8
  store i8 %i.rx, ptr %i.rv, align 1
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.sa = load i16, ptr %i.ry, align 2
  %i.sb = trunc i16 %i.sa to i8
  store i8 %i.sb, ptr %i.rz, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.se = load i16, ptr %i.sc, align 2
end_hunk_1
begin_hunk_2_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE:bb.a

bb.s:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.m, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.t:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.m, ptr noundef nonnull align 1 dereferenceable(15) %1, i64 15, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.u:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.v:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %_ZNK2v84base6VectorIKhE6lengthEv.exit8, %bb.d, %bb.c
  %.sroa.018.1 = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ], [ null, %_ZNK2v84base6VectorIKhE6lengthEv.exit8 ], [ %i.h, %bb.v ], [ %i.h, %bb.u ], [ %i.h, %bb.t ], [ %i.h, %bb.s ], [ %i.h, %bb.r ], [ %i.h, %bb.q ], [ %i.h, %bb.p ], [ %i.h, %bb.o ], [ %i.h, %bb.n ], [ %i.h, %bb.m ], [ %i.h, %bb.l ], [ %i.h, %bb.k ], [ %i.h, %bb.j ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.sroa.018.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i8 %2, 1
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.c, %bb.b ], [ %2, %bb.a ]
  %i.d = icmp ugt i32 %1, 536870888
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.e = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.f, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.h = add nuw nsw i32 %1, 23
  %i.i = and i32 %i.h, 1073741816                 ; 2 uses
  %i.j = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.i, i8 noundef zeroext %.0.i, i8 noundef zeroext 0, i8 %3) #15 ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  store atomic volatile i64 %i.b, ptr %i.l monotonic, align 8
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store atomic volatile i32 %1, ptr %i.p monotonic, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i32 3, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.024.0.i = phi ptr [ null, %bb.c ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  ret ptr %.sroa.024.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.b = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i64 %i.a, i8 noundef zeroext %2) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, ptr %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %2, i64 %1, i8 noundef zeroext %3) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i8 %2, 1
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.c, %bb.b ], [ %2, %bb.a ]
  %i.d = icmp ugt i32 %1, 536870888
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.e = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.f, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.h = shl nuw nsw i32 %1, 1
  %i.i = add nuw nsw i32 %i.h, 22
  %i.j = and i32 %i.i, 2147483640                 ; 2 uses
  %i.k = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.j, i8 noundef zeroext %.0.i, i8 noundef zeroext 0, i8 %3) #15 ; 2 uses
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  store atomic volatile i64 %i.b, ptr %i.m monotonic, align 8
  %i.n = zext nneg i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store atomic volatile i32 %1, ptr %i.q monotonic, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store atomic i32 3, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %i.k, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.024.0.i = phi ptr [ null, %bb.c ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  ret ptr %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringENS0_12DirectHandleINS0_6StringEEES6_ibNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  %. = select i1 %4, i64 1608, i64 1600
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i8, ptr %i.d monotonic, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 3
  %i.h = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.g, i8 noundef zeroext %5, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.i = add i64 %i.h, -1                         ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  store atomic volatile i64 %i.b, ptr %i.j monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.k = or disjoint i64 %i.i, 1                  ; 5 uses
  %i.l = and i64 %i.i, -262144
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 262144, !noalias !34 ; 2 uses
  %i.o = and i64 %i.n, 32
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %i.n, 24
  %.not7.i.i.i = icmp ne i64 %i.p, 0
  %i.q = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.q, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %6, i64 %i.k, i32 noundef %.1.i.i.i) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store atomic i32 3, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store atomic volatile i32 %3, ptr %i.s monotonic, align 4
  %i.t = load i64, ptr %1, align 8                ; 5 uses
  %i.u = load i32, ptr %6, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store atomic volatile i64 %i.t, ptr %i.v monotonic, align 8
  %i.w = icmp sgt i32 %i.u, 1
  %i.x = trunc i64 %i.t to i1
  %or.cond.i.i.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.z = load i64, ptr %i.m, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not38.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.t, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not39.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.k, i64 noundef %i.y, i64 %i.t) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.k, i64 %i.y, i64 %i.t) #15
  br label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.af = load i64, ptr %2, align 8               ; 5 uses
  %i.ag = load i32, ptr %6, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store atomic volatile i64 %i.af, ptr %i.ah monotonic, align 8
  %i.ai = icmp sgt i32 %i.ag, 1
  %i.aj = trunc i64 %i.af to i1
  %or.cond.i.i.i.i11 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i11, label %bb.g, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = load i64, ptr %i.m, align 262144        ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i.i12 = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i.i13 = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i13, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = and i64 %i.af, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i14 = load i64, ptr %i.ap, align 262144
  %i.aq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i14, 25
  %.not39.i.i.i.i.i15 = icmp eq i64 %i.aq, 0
  br i1 %.not39.i.i.i.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.k, i64 noundef %i.ak, i64 %i.af) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i12, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.k, i64 %i.ak, i64 %i.af) #15
  br label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.l, label %_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.l:                                             ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.aw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.l
  %.0.i.i = phi ptr [ %i.aw, %bb.l ], [ %i.as, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.ar, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret ptr %.0.i.i
}

; Function Attrs: nounwind
declare void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.a, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.a, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.g, align 1
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %.0.copyload.i.i.i.i, i1 noundef zeroext true, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.08.0 = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.sroa.08.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = lshr i64 %1, 32                          ; 3 uses
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = icmp ult i64 %1, 429496729600
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.b
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.k, ptr %.0.i, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = and i64 %i.b, %i.ae                     ; 5 uses
  %i.ag = icmp eq i32 %2, 2
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = trunc nuw i64 %i.af to i32
  %i.ai = shl i32 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ak = sext i32 %i.ai to i64
end_hunk_2
begin_hunk_3_@_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE39NewUncompiledDataWithPreparseDataAndJobENS0_12DirectHandleINS0_6StringEEEiiNS4_INS0_12PreparseDataEEE:bb.a
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.x, i64 %i.y, i64 %i.u) #15
  br label %_ZN2v88internal30UncompiledDataWithPreparseData17set_preparse_dataENS0_6TaggedINS0_12PreparseDataEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal30UncompiledDataWithPreparseData17set_preparse_dataENS0_6TaggedINS0_12PreparseDataEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal14UncompiledData17set_inferred_nameENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !9, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal30UncompiledDataWithPreparseData17set_preparse_dataENS0_6TaggedINS0_12PreparseDataEEENS0_16WriteBarrierModeE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.al, i64 noundef %i.c) #15
  br label %_ZN2v88internal6HandleINS0_36UncompiledDataWithPreparseDataAndJobEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.m:                                             ; preds = %_ZN2v88internal30UncompiledDataWithPreparseData17set_preparse_dataENS0_6TaggedINS0_12PreparseDataEEENS0_16WriteBarrierModeE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8            ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ao) #15
  %.pre = load ptr, ptr %i.ao, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = phi ptr [ %.pre, %bb.n ], [ %i.ap, %bb.m ]
  %.0.i.i = phi ptr [ %i.at, %bb.n ], [ %i.ap, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ao, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_36UncompiledDataWithPreparseDataAndJobEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_36UncompiledDataWithPreparseDataAndJobEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.l, %bb.o
  %.012.i.i = phi ptr [ %i.am, %bb.l ], [ %.0.i.i, %bb.o ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewFeedbackMetadataEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN2v88internal16FeedbackMetadata7SizeForEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = sdiv i32 %i.b, 6
  %i.d = shl nsw i32 %i.c, 2
  %i.e = add nsw i32 %i.d, 20
  br label %_ZN2v88internal16FeedbackMetadata7SizeForEii.exit

_ZN2v88internal16FeedbackMetadata7SizeForEii.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i32 [ %i.e, %bb.b ], [ 16, %bb.a ]
  %i.f = shl nsw i32 %2, 1
  %i.g = add i32 %i.f, 6
  %i.h = add i32 %i.g, %.0.i.i.i
  %i.i = and i32 %i.h, -8                         ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 448
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.i, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 0) #15 ; 6 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  store atomic volatile i64 %i.k, ptr %i.n monotonic, align 8
  %i.o = add i64 %i.l, 7
  %i.p = inttoptr i64 %i.o to ptr
  store i32 %1, ptr %i.p, align 4
  %i.q = add i64 %i.l, 11
  %i.r = inttoptr i64 %i.q to ptr
  store i32 %2, ptr %i.r, align 4
  %i.s = add nsw i32 %i.i, -16
  %i.t = add i64 %i.l, 15
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = sext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !9, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal16FeedbackMetadata7SizeForEii.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.z, i64 noundef %i.l) #15
  br label %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.d:                                             ; preds = %_ZN2v88internal16FeedbackMetadata7SizeForEii.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #15
  %.pre = load ptr, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi ptr [ %.pre, %bb.e ], [ %i.ad, %bb.d ]
  %.0.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ac, align 8
  store i64 %i.l, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_16FeedbackMetadataEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.c, %bb.f
  %.012.i.i = phi ptr [ %i.aa, %bb.c ], [ %.0.i.i, %bb.f ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewCoverageInfoERKNS0_10ZoneVectorINS0_11SourceRangeEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = shl nsw i32 %i.i, 4
  %i.k = add i32 %i.j, 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 424
  %i.m = load i64, ptr %i.l, align 8
  %i.n = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.k, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 0) #15 ; 5 uses
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i64 %i.m, ptr %i.p monotonic, align 8
  %i.q = add i64 %i.n, 7
  %i.r = inttoptr i64 %i.q to ptr
  store i32 %i.i, ptr %i.r, align 4
  %i.s = icmp sgt i32 %i.i, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !9, !noundef !10
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.w, i64 noundef %i.n) #15
  br label %_ZN2v88internal6HandleINS0_12CoverageInfoEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.z) #15
  %.pre = load ptr, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = phi ptr [ %.pre, %bb.d ], [ %i.aa, %bb.c ]
  %.0.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.z, align 8
  store i64 %i.n, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_12CoverageInfoEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_12CoverageInfoEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.b, %bb.e
  %.012.i.i = phi ptr [ %i.x, %bb.b ], [ %.0.i.i, %bb.e ]
  ret ptr %.012.i.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ai, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i64 %i.n, ptr %2, align 8
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZN2v88internal12CoverageInfo14InitializeSlotEiii(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.aj, i32 noundef %.sroa.01.0.copyload, i32 noundef %.sroa.4.0.copyload) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::SequentialStringKey", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZN2v88internal19SequentialStringKeyIhEC2ENS_4base6VectorIKhEENS0_8HashSeedEb.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZN2v88internal19SequentialStringKeyIhEC2ENS_4base6VectorIKhEENS0_8HashSeedEb.exit: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 1432
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = trunc nuw nsw i64 %2 to i32              ; 2 uses
  %i.h = tail call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %1, i32 noundef %i.g, ptr nonnull %i.f)
  %i.i = zext i1 %3 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.g, ptr %i.k, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal19SequentialStringKeyIhEE, i64 16), ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 55448
  %i.t = load i8, ptr %i.s, align 8, !range !9
  %i.u = trunc nuw i8 %i.t to i1
  %not..i.i.i.i = xor i1 %i.r, true
  %i.v = select i1 %not..i.i.i.i, i1 true, i1 %i.u
  br i1 %i.v, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24InternalizeStringWithKeyINS0_19SequentialStringKeyIhEEEENS0_6HandleINS0_6StringEEEPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19SequentialStringKeyIhEC2ENS_4base6VectorIKhEENS0_8HashSeedEb.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64088
  %i.x = load i8, ptr %i.w, align 8, !range !9, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64080
  %i.aa = load ptr, ptr %i.z, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24InternalizeStringWithKeyINS0_19SequentialStringKeyIhEEEENS0_6HandleINS0_6StringEEEPT_.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24InternalizeStringWithKeyINS0_19SequentialStringKeyIhEEEENS0_6HandleINS0_6StringEEEPT_.exit: ; preds = %_ZN2v88internal19SequentialStringKeyIhEC2ENS_4base6VectorIKhEENS0_8HashSeedEb.exit, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.aa, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i ], [ %i.p, %_ZN2v88internal19SequentialStringKeyIhEC2ENS_4base6VectorIKhEENS0_8HashSeedEb.exit ]
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 58464
  %i.ab = load ptr, ptr %.in.i.i.i, align 8
  %i.ac = call ptr @_ZN2v88internal11StringTable9LookupKeyINS0_19SequentialStringKeyIhEENS0_12LocalIsolateEEENS0_12DirectHandleINS0_6StringEEEPT0_PT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17InternalizeStringENS_4base6VectorIKtEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::SequentialStringKey.758", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZN2v88internal19SequentialStringKeyItEC2ENS_4base6VectorIKtEENS0_8HashSeedEb.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZN2v88internal19SequentialStringKeyItEC2ENS_4base6VectorIKtEENS0_8HashSeedEb.exit: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 1432
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = trunc nuw nsw i64 %2 to i32              ; 2 uses
  %i.h = tail call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %1, i32 noundef %i.g, ptr nonnull %i.f)
  %i.i = zext i1 %3 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.g, ptr %i.k, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal19SequentialStringKeyItEE, i64 16), ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 55448
  %i.t = load i8, ptr %i.s, align 8, !range !9
  %i.u = trunc nuw i8 %i.t to i1
  %not..i.i.i.i = xor i1 %i.r, true
  %i.v = select i1 %not..i.i.i.i, i1 true, i1 %i.u
  br i1 %i.v, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24InternalizeStringWithKeyINS0_19SequentialStringKeyItEEEENS0_6HandleINS0_6StringEEEPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19SequentialStringKeyItEC2ENS_4base6VectorIKtEENS0_8HashSeedEb.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64088
  %i.x = load i8, ptr %i.w, align 8, !range !9, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64080
  %i.aa = load ptr, ptr %i.z, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24InternalizeStringWithKeyINS0_19SequentialStringKeyItEEEENS0_6HandleINS0_6StringEEEPT_.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24InternalizeStringWithKeyINS0_19SequentialStringKeyItEEEENS0_6HandleINS0_6StringEEEPT_.exit: ; preds = %_ZN2v88internal19SequentialStringKeyItEC2ENS_4base6VectorIKtEENS0_8HashSeedEb.exit, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.aa, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i ], [ %i.p, %_ZN2v88internal19SequentialStringKeyItEC2ENS_4base6VectorIKtEENS0_8HashSeedEb.exit ]
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 58464
  %i.ab = load ptr, ptr %.in.i.i.i, align 8
  %i.ac = call ptr @_ZN2v88internal11StringTable9LookupKeyINS0_19SequentialStringKeyItEENS0_12LocalIsolateEEENS0_12DirectHandleINS0_6StringEEEPT0_PT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE28NewOneByteInternalizedStringENS_4base6VectorIKhEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, 536870889
  br i1 %i.b, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.c = trunc nuw nsw i64 %2 to i32              ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 128
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add nuw nsw i32 %i.c, 23
  %i.g = and i32 %i.f, 1073741816                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2760
  %i.k = load i8, ptr %i.j, align 8
  %i.l = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.g, i8 noundef zeroext %i.k, i8 noundef zeroext 0, i8 0) #15 ; 3 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 5 uses
  store atomic volatile i64 %i.e, ptr %i.n monotonic, align 8
  %i.o = zext nneg i32 %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i64 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store atomic volatile i32 %i.c, ptr %i.r monotonic, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store atomic i32 %3, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !9, !noundef !10
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.h, i64 noundef %i.l) #15 ; 2 uses
  %.pre = load i64, ptr %i.w, align 8
  %.pre11 = add i64 %.pre, -1
  %.pre12 = inttoptr i64 %.pre11 to ptr
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit1

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE:bb.a
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2760
  %i.f = load i8, ptr %i.e, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.g = icmp ugt i32 %1, 536870888
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #17
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.h = add nuw nsw i32 %1, 23
  %i.i = and i32 %i.h, 1073741816                 ; 2 uses
  %i.j = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.i, i8 noundef zeroext %.0.i, i8 noundef zeroext 0, i8 %3) #15 ; 3 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  store atomic volatile i64 %i.b, ptr %i.l monotonic, align 8
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store atomic volatile i32 %1, ptr %i.p monotonic, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i32 3, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !9, !noundef !10
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.u, i64 noundef %i.j) #15
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.x) #15
  %.pre.i = load ptr, ptr %i.x, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi ptr [ %.pre.i, %bb.g ], [ %i.y, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.x, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.e, %bb.h
  %.012.i.i.i = phi ptr [ %i.v, %bb.e ], [ %.0.i.i.i, %bb.h ]
  ret ptr %.012.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.b = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i64 %i.a, i8 noundef zeroext %2) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, ptr %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %2, i64 %1, i8 noundef zeroext %3) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 944
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i8 %2, 1
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2760
  %i.f = load i8, ptr %i.e, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.g = icmp ugt i32 %1, 536870888
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #17
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.h = shl nuw nsw i32 %1, 1
  %i.i = add nuw nsw i32 %i.h, 22
  %i.j = and i32 %i.i, 2147483640                 ; 2 uses
  %i.k = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.j, i8 noundef zeroext %.0.i, i8 noundef zeroext 0, i8 %3) #15 ; 3 uses
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  store atomic volatile i64 %i.b, ptr %i.m monotonic, align 8
  %i.n = zext nneg i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store atomic volatile i32 %1, ptr %i.q monotonic, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store atomic i32 3, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !9, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.v, i64 noundef %i.k) #15
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.y) #15
  %.pre.i = load ptr, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = phi ptr [ %.pre.i, %bb.g ], [ %i.z, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.y, align 8
  store i64 %i.k, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.e, %bb.h
  %.012.i.i.i = phi ptr [ %i.w, %bb.e ], [ %.0.i.i.i, %bb.h ]
  ret ptr %.012.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewConsStringENS0_12DirectHandleINS0_6StringEEES6_ibNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %. = select i1 %4, i64 960, i64 952
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i8, ptr %i.d monotonic, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 3
  %i.h = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.g, i8 noundef zeroext %5, i8 noundef zeroext 0, i8 0) #15 ; 3 uses
  %i.i = add i64 %i.h, -1                         ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  store atomic volatile i64 %i.b, ptr %i.j monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.k = or disjoint i64 %i.i, 1                  ; 5 uses
  %i.l = and i64 %i.i, -262144
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 262144, !noalias !40 ; 2 uses
  %i.o = and i64 %i.n, 32
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %i.n, 24
  %.not7.i.i.i = icmp ne i64 %i.p, 0
  %i.q = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.q, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %6, i64 %i.k, i32 noundef %.1.i.i.i) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store atomic i32 3, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store atomic volatile i32 %3, ptr %i.s monotonic, align 4
  %i.t = load i64, ptr %1, align 8                ; 5 uses
  %i.u = load i32, ptr %6, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store atomic volatile i64 %i.t, ptr %i.v monotonic, align 8
  %i.w = icmp sgt i32 %i.u, 1
  %i.x = trunc i64 %i.t to i1
  %or.cond.i.i.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.z = load i64, ptr %i.m, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not38.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.t, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not39.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.k, i64 noundef %i.y, i64 %i.t) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.k, i64 %i.y, i64 %i.t) #15
  br label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.af = load i64, ptr %2, align 8               ; 5 uses
  %i.ag = load i32, ptr %6, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store atomic volatile i64 %i.af, ptr %i.ah monotonic, align 8
  %i.ai = icmp sgt i32 %i.ag, 1
  %i.aj = trunc i64 %i.af to i1
  %or.cond.i.i.i.i12 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i12, label %bb.g, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = load i64, ptr %i.m, align 262144        ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i.i13 = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i.i14 = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i14, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = and i64 %i.af, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i15 = load i64, ptr %i.ap, align 262144
  %i.aq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i15, 25
  %.not39.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not39.i.i.i.i.i16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.k, i64 noundef %i.ak, i64 %i.af) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i13, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.k, i64 %i.ak, i64 %i.af) #15
  br label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !range !9, !noundef !10
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.au, i64 noundef %i.h) #15
  br label %_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.m:                                             ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ax) #15
  %.pre = load ptr, ptr %i.ax, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi ptr [ %.pre, %bb.n ], [ %i.ay, %bb.m ]
  %.0.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.ay, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.ax, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.l, %bb.o
  %.012.i.i = phi ptr [ %i.av, %bb.l ], [ %.0.i.i, %bb.o ]
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.b, i32 noundef %2)
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.h, align 1 ; 8 uses
  %i.i = fcmp oge double %.0.copyload.i.i.i.i, f0xC1E0000000000000
  %i.j = fcmp ole double %.0.copyload.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.copyload.i.i.i.i, /* (nzero) */ i32 32)
  br i1 %i.k, label %.thread.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.d
  %i.l = fptosi double %.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.m = sitofp i32 %i.l to double
  %i.n = fcmp oeq double %.0.copyload.i.i.i.i, %i.m
  br i1 %i.n, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.o = sext i32 %i.l to i64
  %i.p = shl nsw i64 %i.o, 32
  %i.q = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.p, i32 noundef %2)
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE.exit

.thread.i:                                        ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.d, %bb.c
  %i.r = fcmp oeq double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3656
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE.exit

bb.g:                                             ; preds = %.thread.i
  %i.v = fcmp uno double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6776
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.z = call { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef %.0.copyload.i.i.i.i, ptr nonnull %i.a, i64 32) #15 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1
  %i.ac = icmp ne i32 %2, 0
  %i.ad = zext i1 %i.ac to i8
  %i.ae = call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.ab, i64 %i.aa, i8 noundef zeroext %i.ad) ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit.i, !prof !8

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

end_hunk_4
begin_hunk_5_@_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewConsStringINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS5_IS7_EEEEENT_IS7_E9MaybeTypeESB_SB_NS0_14AllocationTypeE:bb.a
  %.not.i.i.i.i.i.i99 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i99, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit100, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky) #15
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit100

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit100: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit98, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit88

bb.cp:                                            ; preds = %bb.ak
  %i.kz = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewConsStringENS0_12DirectHandleINS0_6StringEEES6_ibNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.0147.0, ptr nonnull %.sroa.0144.0, i32 noundef %i.bu, i1 noundef zeroext %i.ek, i8 noundef zeroext %3)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit88

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit88: ; preds = %bb.ch, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit86, %bb.l, %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit67.thread, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit100, %bb.cp, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit79
  %.sroa.0150.0 = phi ptr [ %.012.i.i.i.i308, %bb.ch ], [ %.sroa.0144.0, %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit67.thread ], [ %i.dy, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit79 ], [ %.sroa.0147.0, %bb.l ], [ %.012.i.i.i.i94310, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit100 ], [ %i.kz, %bb.cp ], [ %.012.i.i.i.i308, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit86 ]
  ret ptr %.sroa.0150.0
}

declare void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal3Map19TryGetMapRootIdxForENS0_12InstanceTypeE(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %switch.tableidx = add i16 %0, -132             ; 2 uses
  %i.a = icmp ult i16 %switch.tableidx, 165
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal3Map19TryGetMapRootIdxForENS0_12InstanceTypeE, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.71.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.sroa.71.0
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #7 comdat {
bb.a:
  tail call void @abort() #17
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4), i64, i32 noundef) unnamed_addr #3

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal13HeapAllocator32CollectGarbageAndRetryAllocationIRZNS0_11FactoryBaseINS0_7FactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEEUlvE_EENSt13invoke_resultIT_JEE4typeEOSH_NS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1289), align 1, !range !9, !noundef !10
  %i.b = zext nneg i8 %i.a to i32                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @_ZN2v88internal13HeapAllocator14CollectGarbageENS0_14AllocationTypeENS0_21PerformHeapLimitCheckE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2, i32 noundef %i.b) #15
  %i.f = tail call noundef ptr @_ZN2v88internal13HeapAllocator19heap_for_allocationENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2) #15
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal4Heap16ReachedHeapLimitEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.f) #15
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  store i8 1, ptr %i.i, align 2
  %i.j = load ptr, ptr %1, align 8, !nonnull !10, !align !16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8, !nonnull !10, !align !16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.d, align 8, !nonnull !10, !align !17
  %i.o = load i16, ptr %i.n, align 2
  %i.p = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.k, ptr noundef %i.m, i16 noundef zeroext %i.o, i64 %i.r) ; 4 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i8 0, ptr %i.u, align 2
  %.sroa.4.0.extract.shift = lshr i64 %i.s, 40    ; 2 uses
  %i.v = and i64 %i.s, 4294967296
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.sroa.4.0.extract.shift, %bb.b ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.b ]
  tail call void @_ZN2v88internal13HeapAllocator14CollectGarbageENS0_14AllocationTypeENS0_21PerformHeapLimitCheckE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2, i32 noundef %i.b) #15
  %i.w = tail call noundef ptr @_ZN2v88internal13HeapAllocator19heap_for_allocationENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2) #15
  %i.x = tail call noundef zeroext i1 @_ZN2v88internal4Heap16ReachedHeapLimitEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.w) #15
  br i1 %i.x, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  store i8 1, ptr %i.z, align 2
  %i.aa = load ptr, ptr %1, align 8, !nonnull !10, !align !16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.c, align 8, !nonnull !10, !align !16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.d, align 8, !nonnull !10, !align !17
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ab, ptr noundef %i.ad, i16 noundef zeroext %i.af, i64 %i.ai) ; 3 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i8 0, ptr %i.al, align 2
  %.sroa.4.0.extract.shift.1 = lshr i64 %i.aj, 40
  %i.am = and i64 %i.aj, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.4.sroa.0.3 = phi i64 [ %.sroa.4.0.extract.shift, %bb.b ], [ %.sroa.4.0.extract.shift.1, %bb.d ], [ %.sroa.4.sroa.0.1, %bb.c ]
  %.sroa.2.0 = phi i64 [ 4294967296, %bb.b ], [ %i.am, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.3 = phi i64 [ %i.s, %bb.b ], [ %i.aj, %bb.d ], [ %.sroa.0.1, %bb.c ]
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.sroa.0.3, 40
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.2.0
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.3, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare void @_ZN2v88internal13HeapAllocator26CollectAllAvailableGarbageENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal13HeapAllocator15RetryAllocationIRZNS0_11FactoryBaseINS0_7FactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEEUlvE_EENSt13invoke_resultIT_JEE4typeEOSH_(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 1, ptr %i.b, align 2
  %i.c = load ptr, ptr %1, align 8, !nonnull !10, !align !16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !align !17
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !align !16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.d, ptr noundef %i.g, i16 noundef zeroext %i.j, i64 %i.n)
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  store i8 0, ptr %i.q, align 2
  ret i64 %i.o
}

; Function Attrs: noreturn
declare void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, i16 noundef zeroext %2, i64 %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 51
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15
  switch i8 %i.e, label %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i [
    i8 0, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 2, label %_ZNK2v88internal4Code14entrypoint_tagEv.exit.i
    i8 3, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 4, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 5, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 6, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
  ]

_ZNK2v88internal4Code14entrypoint_tagEv.exit.i:   ; preds = %bb.a
  %i.f = add i64 %3, 89
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i16, ptr %i.g, align 2
  %i.i = sext i16 %i.h to i32
  %i.j = tail call noundef i64 @_ZN2v88internal8Builtins16EntrypointTagForENS0_7BuiltinE(i32 noundef %i.i) #15
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit, !prof !42

_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i: ; preds = %_ZNK2v88internal4Code14entrypoint_tagEv.exit.i, %bb.a
  %i.k = add i64 %3, 87
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp eq i16 %i.m, %2
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %3, 89
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i16, ptr %i.s, align 2
  switch i16 %i.t, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit [
    i16 196, label %bb.d
    i16 104, label %bb.d
    i16 83, label %bb.d
    i16 105, label %bb.d
    i16 135, label %bb.d
    i16 1313, label %bb.d
    i16 1312, label %bb.d
    i16 1311, label %bb.d
    i16 1314, label %bb.d
    i16 1315, label %bb.d
  ]

_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit: ; preds = %bb.c, %_ZNK2v88internal4Code14entrypoint_tagEv.exit.i, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #17
  unreachable

bb.d:                                             ; preds = %bb.b, %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.v = load atomic i64, ptr %1 acquire, align 8 ; 2 uses
  %.sroa.8.0.extract.shift18.i = lshr i64 %i.v, 32 ; 2 uses
  %i.w = icmp eq i64 %.sroa.8.0.extract.shift18.i, 0
  br i1 %i.w, label %bb.f, label %bb.h, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #15
  %i.x = load atomic i64, ptr %1 monotonic, align 8 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i64 %i.x, 32  ; 2 uses
  %i.y = icmp eq i64 %.sroa.8.0.extract.shift.i, 0
  br i1 %i.y, label %bb.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call { i64, i8 } @_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE9TryExtendEPNS3_5SpaceE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.z, 1
  %i.aa = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.aa, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.g
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.z, 0 ; 2 uses
  %.sroa.8.0.extract.shift20.i = lshr i64 %.fca.0.extract.i, 32
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i:    ; preds = %.thread.i, %bb.f
  %.sroa.8.1.in.i = phi i64 [ %.sroa.8.0.extract.shift20.i, %.thread.i ], [ %.sroa.8.0.extract.shift.i, %bb.f ]
  %.sroa.015.1.in.i = phi i64 [ %.fca.0.extract.i, %.thread.i ], [ %i.x, %bb.f ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i, %bb.e
  %.sroa.8.2.in.i = phi i64 [ %.sroa.8.1.in.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i ], [ %.sroa.8.0.extract.shift18.i, %bb.e ]
  %.sroa.015.2.in.i = phi i64 [ %.sroa.015.1.in.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.8.0.insert.shift.i = shl nuw i64 %.sroa.8.2.in.i, 32 ; 2 uses
  %.sroa.015.0.insert.ext.i = and i64 %.sroa.015.2.in.i, 4294967295 ; 3 uses
  %.sroa.015.0.insert.insert.i = or disjoint i64 %.sroa.015.0.insert.ext.i, %.sroa.8.0.insert.shift.i
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.sroa.015.0.insert.ext.i
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %i.ae = or i64 %i.ad, -4294967296
  %.sroa.0.0.insert.insert.i.i = add i64 %i.ae, %.sroa.8.0.insert.shift.i
  %i.af = cmpxchg ptr %1, i64 %.sroa.015.0.insert.insert.i, i64 %.sroa.0.0.insert.insert.i.i monotonic monotonic, align 4
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE16TryAllocateEntryEPNS3_5SpaceE.exit, label %bb.e, !prof !12, !llvm.loop !41

_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE16TryAllocateEntryEPNS3_5SpaceE.exit: ; preds = %bb.h
  %.sroa.011.0.extract.trunc = trunc i64 %.sroa.015.2.in.i to i32
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.sroa.015.0.insert.ext.i ; 2 uses
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  %.not = xor i1 %i.ak, true
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.j, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #15
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.j:                                             ; preds = %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE16TryAllocateEntryEPNS3_5SpaceE.exit
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not32 = icmp eq i32 %i.an, -1
  br i1 %.not32, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.an, i32 noundef 0) #15
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE16TryAllocateEntryEPNS3_5SpaceE.exit, %bb.k, %bb.j
  %i.ao = add i64 %3, 39
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load i8, ptr %i.ar, align 8, !range !9, !noundef !10
  %i.at = shl i64 %3, 16
  %i.au = add i64 %i.at, -65536
  %i.av = zext i16 %2 to i64
  %i.aw = or disjoint i64 %i.au, %i.av
  %i.ax = zext nneg i8 %i.as to i64
  %i.ay = shl nuw nsw i64 %i.ax, 16
  %spec.select.i = or i64 %i.ay, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store atomic i64 %spec.select.i, ptr %i.az monotonic, align 8
  store atomic i64 %i.aq, ptr %i.ai monotonic, align 8
  %i.ba = shl i32 %.sroa.011.0.extract.trunc, 8   ; 3 uses
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noundef !10
  %i.bc = trunc nuw i8 %i.bb to i1
  %.not29 = xor i1 %i.bc, true
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond31 = select i1 %.not29, i1 true, i1 %i.be
  br i1 %or.cond31, label %bb.l, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.l:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not33 = icmp eq i32 %i.bf, -1
  br i1 %.not33, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.bf, i32 noundef 2) #15
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.l, %bb.m, %bb.i
  %.sroa.014.0 = phi i32 [ undef, %bb.i ], [ %i.ba, %bb.m ], [ %i.ba, %bb.l ], [ %i.ba, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit ]
  %.sroa.2.1 = phi i64 [ 0, %bb.i ], [ 4294967296, %bb.m ], [ 4294967296, %bb.l ], [ 4294967296, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit ]
  %.sroa.014.0.insert.ext = zext i32 %.sroa.014.0 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.2.1, %.sroa.014.0.insert.ext
  ret i64 %.sroa.014.0.insert.insert
}

declare noundef i64 @_ZN2v88internal8Builtins16EntrypointTagForENS0_7BuiltinE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE9TryExtendEPNS3_5SpaceE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.034 = alloca %"struct.std::_Optional_payload.1051", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 6 uses
  %i.f = icmp ult i32 %i.e, 4
  br i1 %i.f, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i32 %i.e, 10                 ; 2 uses
  %i.h = or disjoint i32 %i.g, 1023
  %i.i = load ptr, ptr %0, align 8, !noalias !46  ; 4 uses
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noalias !46, !noundef !10
  %i.k = trunc nuw i8 %i.j to i1
  %.not.i.i.i = xor i1 %i.k, true
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9, !noalias !46
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.m
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8, !noalias !46 ; 2 uses
  %.not3.i.i.i = icmp eq i32 %i.n, -1
  br i1 %.not3.i.i.i, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.n, i32 noundef 0) #15, !noalias !46
  br label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.o = zext nneg i32 %i.g to i64                ; 2 uses
  %i.p = zext nneg i32 %i.h to i64                ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i
  %indvars.iv = phi i64 [ %i.o, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i ], [ %indvars.iv.next.2, %.lr.ph.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = or disjoint i64 %indvars.iv.next, -281474976710656
  store atomic i64 %i.r, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.u = or disjoint i64 %indvars.iv.next.1, -281474976710656
  store atomic i64 %i.u, ptr %i.t monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.next.1 ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.x = or disjoint i64 %indvars.iv.next.2, -281474976710656
  store atomic i64 %i.x, ptr %i.w monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store atomic i64 0, ptr %i.y monotonic, align 8
  %exitcond.i.2 = icmp eq i64 %indvars.iv.next.2, %i.p
  br i1 %exitcond.i.2, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.p ; 2 uses
  store atomic i64 -281474976710656, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noundef !10
  %i.ac = trunc nuw i8 %i.ab to i1
  %.not.i.i = xor i1 %i.ac, true
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.ae
  br i1 %or.cond.i.i, label %bb.g, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not2.i.i = icmp eq i32 %i.af, -1
  br i1 %.not2.i.i, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.af, i32 noundef 2) #15
  br label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit: ; preds = %._crit_edge.i, %bb.g, %bb.h
  %.sroa.013.0.insert.insert.i = or disjoint i64 %i.o, 4398046511104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.ag, align 8  ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = icmp ult i32 %i.e, %i.aj                ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.ak, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ak, label %._crit_edge.thread.i.i.i.i, label %bb.j

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ah, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.am
  br i1 %i.an, label %select.unfold.i.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #18
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %i.ap = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.aj, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.i ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.aq = icmp ult i32 %i.ap, %i.e
  br i1 %i.aq, label %select.unfold.i.i.i, label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit

select.unfold.i.i.i:                              ; preds = %bb.j, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.j ] ; 3 uses
  %i.ar = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.ah
  br i1 %i.ar, label %_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp ult i32 %i.e, %i.at
  br label %_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i: ; preds = %bb.k, %select.unfold.i.i.i
  %i.av = phi i1 [ %i.au, %bb.k ], [ true, %select.unfold.i.i.i ]
  %i.aw = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i32 %i.e, ptr %i.ax, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ah) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8
  br label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit

_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit: ; preds = %bb.j, %_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i
  store atomic i64 %.sroa.013.0.insert.insert.i, ptr %1 release, align 8
  %i.bb = load i32, ptr %i.d, align 8
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.d, align 8
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034)
  %i.bd = tail call { i64, i64 } @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE31TryAllocateAndInitializeSegmentEv(ptr noundef nonnull align 8 dereferenceable(44) %0) ; 2 uses
  %i.be = extractvalue { i64, i64 } %i.bd, 0      ; 2 uses
  store i64 %i.be, ptr %.sroa.034, align 8
  %i.bf = extractvalue { i64, i64 } %i.bd, 1      ; 2 uses
  %.sroa.034.8..sroa_idx65 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 8
  store i64 %i.bf, ptr %.sroa.034.8..sroa_idx65, align 8
  %i.bg = and i64 %i.bf, 4294967296
  %.not = icmp eq i64 %i.bg, 0
  %i.bh = trunc i64 %i.be to i32                  ; 4 uses
  br i1 %.not, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.034.4..sroa_idx64 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 4
  %.sroa.034.4..sroa.034.4..sroa.034.4..sroa.034.4..sroa.4.0.copyload = load i64, ptr %.sroa.034.4..sroa_idx64, align 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.02022.i.i.i.i14 = load ptr, ptr %i.bi, align 8 ; 2 uses
  %.not23.i.i.i.i15 = icmp eq ptr %.02022.i.i.i.i14, null
  br i1 %.not23.i.i.i.i15, label %._crit_edge.thread.i.i.i.i27, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i16
  %.02024.i.i.i.i17 = phi ptr [ %.020.i.i.i.i20, %.lr.ph.i.i.i.i16 ], [ %.02022.i.i.i.i14, %bb.m ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i17, i64 32
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, %i.bh               ; 2 uses
  %.in.v.i.i.i.i18 = select i1 %i.bm, i64 16, i64 24
  %.in.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i17, i64 %.in.v.i.i.i.i18
  %.020.i.i.i.i20 = load ptr, ptr %.in.i.i.i.i19, align 8 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %.020.i.i.i.i20, null
  br i1 %.not.i.i.i.i21, label %._crit_edge.i.i.i.i22, label %.lr.ph.i.i.i.i16, !llvm.loop !45

._crit_edge.i.i.i.i22:                            ; preds = %.lr.ph.i.i.i.i16
  br i1 %i.bm, label %._crit_edge.thread.i.i.i.i27, label %bb.o

._crit_edge.thread.i.i.i.i27:                     ; preds = %._crit_edge.i.i.i.i22, %bb.m
  %.019.lcssa29.i.i.i.i28 = phi ptr [ %.02024.i.i.i.i17, %._crit_edge.i.i.i.i22 ], [ %i.bj, %bb.m ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp eq ptr %.019.lcssa29.i.i.i.i28, %i.bo
  br i1 %i.bp, label %select.unfold.i.i.i24, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i.i27
  %i.bq = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i28) #18
  %.phi.trans.insert.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.pre.i.i.i30 = load i32, ptr %.phi.trans.insert.i.i.i29, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i22
  %i.br = phi i32 [ %.pre.i.i.i30, %bb.n ], [ %i.bl, %._crit_edge.i.i.i.i22 ]
  %.019.lcssa28.i.i.i.i23 = phi ptr [ %.019.lcssa29.i.i.i.i28, %bb.n ], [ %.02024.i.i.i.i17, %._crit_edge.i.i.i.i22 ]
  %i.bs = icmp ult i32 %i.br, %i.bh
  br i1 %i.bs, label %select.unfold.i.i.i24, label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit31

select.unfold.i.i.i24:                            ; preds = %bb.o, %._crit_edge.thread.i.i.i.i27
  %.sroa.4.0.i.ph.i.i.i25 = phi ptr [ %.019.lcssa29.i.i.i.i28, %._crit_edge.thread.i.i.i.i27 ], [ %.019.lcssa28.i.i.i.i23, %bb.o ] ; 3 uses
  %i.bt = icmp eq ptr %.sroa.4.0.i.ph.i.i.i25, %i.bj
  br i1 %i.bt, label %_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i26, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i.i24
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i25, i64 32
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp ugt i32 %i.bv, %i.bh
  br label %_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i26

_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i26: ; preds = %bb.p, %select.unfold.i.i.i24
  %i.bx = phi i1 [ %i.bw, %bb.p ], [ true, %select.unfold.i.i.i24 ]
  %i.by = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i32 %i.bh, ptr %i.bz, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i25, ptr noundef nonnull align 8 dereferenceable(32) %i.bj) #15
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8
  br label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit31

_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit31: ; preds = %bb.o, %_ZNSt8_Rb_treeIN2v88internal14SegmentedTableINS1_15JSDispatchEntryELm268435456EE7SegmentES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i.i.i26
  store atomic i64 %.sroa.034.4..sroa.034.4..sroa.034.4..sroa.034.4..sroa.4.0.copyload, ptr %1 release, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit31
  %.sroa.3.0 = phi i8 [ 1, %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit31 ], [ 0, %bb.l ]
  %.sroa.042.0 = phi i64 [ %.sroa.034.4..sroa.034.4..sroa.034.4..sroa.034.4..sroa.4.0.copyload, %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit31 ], [ undef, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit
  %.sroa.3.1 = phi i8 [ 1, %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit ], [ %.sroa.3.0, %bb.q ]
  %.sroa.042.1 = phi i64 [ %.sroa.013.0.insert.insert.i, %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE6ExtendEPNS3_5SpaceENS0_14SegmentedTableIS2_Lm268435456EE7SegmentENS7_12FreelistHeadE.exit ], [ %.sroa.042.0, %bb.q ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.042.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { i64, i8 } %.fca.1.insert
}

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE31TryAllocateAndInitializeSegmentEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"struct.std::_Optional_payload.1051", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0720.i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.e ] ; 3 uses
  %i.b = sext i32 %.0720.i.i to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 3 uses
  %.not.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = cmpxchg weak ptr %i.c, i32 %i.d, i32 -1 acq_rel acquire, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.0720.i.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.2.i.i = phi i32 [ %.0720.i.i, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = add nsw i32 %.2.i.i, 1
  %i.i = icmp slt i32 %.2.i.i, 3
  br i1 %i.i, label %bb.b, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit.thread.i, !llvm.loop !47

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit.thread: ; preds = %bb.c
  %i.j = lshr i32 %i.d, 14
  br label %bb.k

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit.thread.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit.thread.i
  %.0720.i1.i = phi i32 [ 0, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit.thread.i ], [ %i.s, %bb.i ] ; 3 uses
  %i.m = sext i32 %.0720.i1.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load atomic i32, ptr %i.n monotonic, align 4 ; 3 uses
  %.not.i2.i = icmp eq i32 %i.o, -1
  br i1 %.not.i2.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = cmpxchg weak ptr %i.n, i32 %i.o, i32 -1 acq_rel acquire, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %.0720.i1.i, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.2.i3.i = phi i32 [ %.0720.i1.i, %bb.f ], [ %i.r, %bb.h ] ; 2 uses
  %i.s = add nsw i32 %.2.i3.i, 1
  %i.t = icmp slt i32 %.2.i3.i, 3
  br i1 %i.t, label %bb.f, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.thread.i, !llvm.loop !47

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.i: ; preds = %bb.g
  %i.u = lshr i32 %i.o, 14
  br label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.thread.i: ; preds = %bb.i
  %i.v = tail call i64 @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE16FillSegmentsPoolEb(ptr noundef nonnull align 8 dereferenceable(44) %0, i1 noundef zeroext true) ; 2 uses
  %.sroa.07.0.extract.trunc9.i = trunc i64 %i.v to i32
  %i.w = and i64 %i.v, 4294967296
  %i.x = icmp eq i64 %i.w, 0
  br label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit: ; preds = %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.thread.i
  %.sroa.6.sroa.0.0.i = phi i1 [ false, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.i ], [ %i.x, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.thread.i ]
  %.sroa.07.0.i = phi i32 [ %i.u, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.i ], [ %.sroa.07.0.extract.trunc9.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE21TryGetSegmentFromPoolEv.exit5.thread.i ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #15
  br i1 %.sroa.6.sroa.0.0.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit
  %.sroa.05.12..sroa_idx40 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 12
  store i8 0, ptr %.sroa.05.12..sroa_idx40, align 4
  br label %bb.p

bb.k:                                             ; preds = %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit.thread, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit
  %.sroa.04.0.extract.trunc28 = phi i32 [ %i.j, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit.thread ], [ %.sroa.07.0.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18TryAllocateSegmentEv.exit ] ; 2 uses
  %i.y = shl i32 %.sroa.04.0.extract.trunc28, 10  ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !noalias !50  ; 4 uses
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noalias !50, !noundef !10
  %i.ab = trunc nuw i8 %i.aa to i1
  %.not.i.i.i = xor i1 %i.ab, true
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9, !noalias !50
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8, !noalias !50 ; 2 uses
  %.not3.i.i.i = icmp eq i32 %i.ae, -1
  br i1 %.not3.i.i.i, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ae, i32 noundef 0) #15, !noalias !50
  br label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.af = or disjoint i32 %i.y, 1023
  %i.ag = zext i32 %i.y to i64                    ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i
  %indvars.iv = phi i64 [ %i.ag, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj.exit.i ], [ %indvars.iv.next.2, %.lr.ph.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = or disjoint i64 %indvars.iv.next, -281474976710656
  store atomic i64 %i.aj, ptr %i.ai monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store atomic i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.next ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = or disjoint i64 %indvars.iv.next.1, -281474976710656
  store atomic i64 %i.am, ptr %i.al monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.next.1 ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ap = or disjoint i64 %indvars.iv.next.2, -281474976710656
  store atomic i64 %i.ap, ptr %i.ao monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %exitcond.i.2 = icmp eq i64 %indvars.iv.next.2, %i.ah
  br i1 %exitcond.i.2, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ah ; 2 uses
  store atomic i64 -281474976710656, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store atomic i64 0, ptr %i.as monotonic, align 8
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noundef !10
  %i.au = trunc nuw i8 %i.at to i1
  %.not.i.i1 = xor i1 %i.au, true
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i.i = select i1 %.not.i.i1, i1 true, i1 %i.aw
  br i1 %or.cond.i.i, label %bb.n, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not2.i.i = icmp eq i32 %i.ax, -1
  br i1 %.not2.i.i, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ax, i32 noundef 2) #15
  br label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit

_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit: ; preds = %._crit_edge.i, %bb.n, %bb.o
  %.sroa.013.0.insert.insert.i = or disjoint i64 %i.ag, 4398046511104
  store i32 %.sroa.04.0.extract.trunc28, ptr %.sroa.05, align 8
  %.sroa.05.4..sroa_idx38 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 4
  store i64 %.sroa.013.0.insert.insert.i, ptr %.sroa.05.4..sroa_idx38, align 4
  %.sroa.05.12..sroa_idx41 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 12
  store i8 1, ptr %.sroa.05.12..sroa_idx41, align 4
  %.sroa.05.0..sroa.05.0..sroa.05.0..sroa.05.0..fca.0.load.pre = load i64, ptr %.sroa.05, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit, %bb.j
  %.sroa.05.0..sroa.05.0..sroa.05.0..fca.0.load = phi i64 [ %.sroa.05.0..sroa.05.0..sroa.05.0..sroa.05.0..fca.0.load.pre, %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE18InitializeFreeListENS3_7SegmentEj.exit ], [ undef, %bb.j ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.05.0..sroa.05.0..sroa.05.0..fca.0.load, 0
  %.sroa.05.8..fca.1.gep.sroa_idx39 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 8
  %.sroa.05.8..sroa.05.8..sroa.05.8..sroa.05.8..fca.1.load = load i64, ptr %.sroa.05.8..fca.1.gep.sroa_idx39, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.05.8..sroa.05.8..sroa.05.8..sroa.05.8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE16FillSegmentsPoolEb(ptr noundef nonnull align 8 dereferenceable(44) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(44) %i.c, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 3 uses
  %.not = icmp eq i64 %i.g, 0                     ; 2 uses
  %.pre20 = load ptr, ptr %i.a, align 8           ; 6 uses
  br i1 %1, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not, label %.split.us.1, label %bb.b

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not, label %.split.1, label %bb.f

bb.b:                                             ; preds = %.split.us.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.pre20, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.g, %i.i
  %i.k = trunc i64 %i.j to i32
  store atomic i32 %i.k, ptr %i.b release, align 8
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader
  %i.l = load ptr, ptr %.pre20, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(44) %.pre20, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.o, 0
  %.pre18 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.us.1, label %.split.us.2, label %bb.c

bb.c:                                             ; preds = %.split.us.1
  %i.p = getelementptr inbounds nuw i8, ptr %.pre18, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store atomic i32 %i.s, ptr %i.t release, align 4
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.c, %.split.us.1
  %i.u = load ptr, ptr %.pre18, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(44) %.pre18, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 2 uses
  %.not.us.2 = icmp eq i64 %i.x, 0
  %.pre19 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.us.2, label %.split.us.3, label %bb.d

bb.d:                                             ; preds = %.split.us.2
  %i.y = getelementptr inbounds nuw i8, ptr %.pre19, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.ab, ptr %i.ac release, align 8
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %i.ad = load ptr, ptr %.pre19, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(44) %.pre19, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 2 uses
  %.not.us.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.us.3, label %.split15.us, label %bb.e

bb.e:                                             ; preds = %.split.us.3
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %i.ag, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store atomic i32 %i.al, ptr %i.am release, align 4
  br label %.split15.us

.split15.us:                                      ; preds = %.split.us.3, %bb.e, %.split15.us.loopexit
  %.sroa.09.0.insert.insert = phi i64 [ %i.cd, %.split15.us.loopexit ], [ 0, %bb.e ], [ 0, %.split.us.3 ]
  ret i64 %.sroa.09.0.insert.insert

bb.f:                                             ; preds = %.split.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.pre20, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sub i64 %i.g, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = lshr i32 %i.aq, 14
  br label %.split.1

.split.1:                                         ; preds = %bb.f, %.split.preheader
  %.sroa.09.1 = phi i32 [ undef, %.split.preheader ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.2.1 = phi i8 [ 0, %.split.preheader ], [ 1, %bb.f ] ; 2 uses
  %i.as = load ptr, ptr %.pre20, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(44) %.pre20, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 2 uses
  %.not.1 = icmp eq i64 %i.av, 0
  %.pre21 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.1, label %.split.2, label %bb.g

bb.g:                                             ; preds = %.split.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre21, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = trunc nuw i8 %.sroa.2.1 to i1
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = lshr i32 %i.az, 14
  br label %.split.2

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
end_hunk_5
begin_hunk_6_@_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE16FillSegmentsPoolEb:bb.a
  %.sroa.2.1.1 = phi i8 [ %.sroa.2.1, %.split.1 ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.bd = load ptr, ptr %.pre21, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(44) %.pre21, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 2 uses
  %.not.2 = icmp eq i64 %i.bg, 0
  %.pre22 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.2, label %.split.3, label %bb.j

bb.j:                                             ; preds = %.split.2
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre22, i64 24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = trunc nuw i8 %.sroa.2.1.1 to i1
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = lshr i32 %i.bk, 14
  br label %.split.3

bb.l:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.bk, ptr %i.bn release, align 8
  br label %.split.3

.split.3:                                         ; preds = %bb.l, %bb.k, %.split.2
  %.sroa.09.1.2 = phi i32 [ %.sroa.09.1.1, %.split.2 ], [ %.sroa.09.1.1, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %.sroa.2.1.2 = phi i8 [ %.sroa.2.1.1, %.split.2 ], [ 1, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.bo = load ptr, ptr %.pre22, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(44) %.pre22, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #15 ; 2 uses
  %.not.3 = icmp eq i64 %i.br, 0
  br i1 %.not.3, label %.split15.us.loopexit, label %bb.m

bb.m:                                             ; preds = %.split.3
  %i.bs = load ptr, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = trunc nuw i8 %.sroa.2.1.2 to i1
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = lshr i32 %i.bw, 14
  br label %.split15.us.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 36
  store atomic i32 %i.bw, ptr %i.bz release, align 4
  br label %.split15.us.loopexit

.split15.us.loopexit:                             ; preds = %bb.o, %bb.n, %.split.3
  %.sroa.09.1.3 = phi i32 [ %.sroa.09.1.2, %.split.3 ], [ %.sroa.09.1.2, %bb.o ], [ %i.by, %bb.n ]
  %.sroa.2.1.3 = phi i8 [ %.sroa.2.1.2, %.split.3 ], [ 1, %bb.o ], [ 1, %bb.n ]
  %i.ca = zext nneg i8 %.sroa.2.1.3 to i64
  %i.cb = shl nuw nsw i64 %i.ca, 32
  %i.cc = zext i32 %.sroa.09.1.3 to i64
  %i.cd = or disjoint i64 %i.cb, %i.cc
  br label %.split15.us
}

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal13HeapAllocator14CollectGarbageENS0_14AllocationTypeENS0_21PerformHeapLimitCheckE(ptr noundef nonnull align 8 dereferenceable(1704), i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal13HeapAllocator19heap_for_allocationENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704), i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal4Heap16ReachedHeapLimitEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZN2v88internal8Builtins6KindOfENS0_7BuiltinE(i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN2v88internal8Builtins22GetStackParameterCountENS0_7BuiltinE(i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal13HeapAllocator32CollectGarbageAndRetryAllocationIRZNS0_11FactoryBaseINS0_12LocalFactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEEUlvE_EENSt13invoke_resultIT_JEE4typeEOSH_NS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1289), align 1, !range !9, !noundef !10
  %i.b = zext nneg i8 %i.a to i32                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @_ZN2v88internal13HeapAllocator14CollectGarbageENS0_14AllocationTypeENS0_21PerformHeapLimitCheckE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2, i32 noundef %i.b) #15
  %i.f = tail call noundef ptr @_ZN2v88internal13HeapAllocator19heap_for_allocationENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2) #15
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal4Heap16ReachedHeapLimitEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.f) #15
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  store i8 1, ptr %i.i, align 2
  %i.j = load ptr, ptr %1, align 8, !nonnull !10, !align !16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8, !nonnull !10, !align !16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.d, align 8, !nonnull !10, !align !17
  %i.o = load i16, ptr %i.n, align 2
  %i.p = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.k, ptr noundef %i.m, i16 noundef zeroext %i.o, i64 %i.r) ; 4 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i8 0, ptr %i.u, align 2
  %.sroa.4.0.extract.shift = lshr i64 %i.s, 40    ; 2 uses
  %i.v = and i64 %i.s, 4294967296
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.sroa.4.0.extract.shift, %bb.b ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.b ]
  tail call void @_ZN2v88internal13HeapAllocator14CollectGarbageENS0_14AllocationTypeENS0_21PerformHeapLimitCheckE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2, i32 noundef %i.b) #15
  %i.w = tail call noundef ptr @_ZN2v88internal13HeapAllocator19heap_for_allocationENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(1704) %0, i8 noundef zeroext %2) #15
  %i.x = tail call noundef zeroext i1 @_ZN2v88internal4Heap16ReachedHeapLimitEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.w) #15
  br i1 %i.x, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  store i8 1, ptr %i.z, align 2
  %i.aa = load ptr, ptr %1, align 8, !nonnull !10, !align !16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.c, align 8, !nonnull !10, !align !16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.d, align 8, !nonnull !10, !align !17
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ab, ptr noundef %i.ad, i16 noundef zeroext %i.af, i64 %i.ai) ; 3 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i8 0, ptr %i.al, align 2
  %.sroa.4.0.extract.shift.1 = lshr i64 %i.aj, 40
  %i.am = and i64 %i.aj, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.4.sroa.0.3 = phi i64 [ %.sroa.4.0.extract.shift, %bb.b ], [ %.sroa.4.0.extract.shift.1, %bb.d ], [ %.sroa.4.sroa.0.1, %bb.c ]
  %.sroa.2.0 = phi i64 [ 4294967296, %bb.b ], [ %i.am, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.3 = phi i64 [ %i.s, %bb.b ], [ %i.aj, %bb.d ], [ %.sroa.0.1, %bb.c ]
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.sroa.0.3, 40
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.2.0
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.3, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal13HeapAllocator15RetryAllocationIRZNS0_11FactoryBaseINS0_12LocalFactoryEE19NewJSDispatchHandleEtNS0_12DirectHandleINS0_4CodeEEEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEEUlvE_EENSt13invoke_resultIT_JEE4typeEOSH_(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 1, ptr %i.b, align 2
  %i.c = load ptr, ptr %1, align 8, !nonnull !10, !align !16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !align !17
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !align !16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call i64 @_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.d, ptr noundef %i.g, i16 noundef zeroext %i.j, i64 %i.n)
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  store i8 0, ptr %i.q, align 2
  ret i64 %i.o
}

declare noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !51
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !51
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  ret i8 %i.u
}

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !52
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !52
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  ret i16 %i.u
}

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare ptr @_ZNK2v88internal13AstConsString12AllocateFlatINS0_7IsolateEEENS0_6HandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread129, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread129, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not141 = icmp eq i32 %1, 1
  br i1 %.not141, label %._crit_edge.thread, label %.thread129

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph156, label %.preheader142

.preheader142:                                    ; preds = %bb.f
  %.not159 = icmp eq i32 %1, 1
  br i1 %.not159, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader142
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.092151 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread129, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.092151, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge157, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader142, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader142 ]
  %i.q = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.q, 12
  %i.y = xor i32 %i.x, %i.q
  %i.z = mul i32 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 4095
  %i.ac = xor i32 %i.ab, %i.z
  %i.ad = mul i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.w
  %i.ai = and i32 %i.ah, 16777215                 ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = shl nuw nsw i32 %1, 26
  %i.an = or disjoint i32 %i.al, %i.am
  br label %bb.u

.lr.ph156:                                        ; preds = %bb.f, %bb.h
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.011.i155 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv169
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread129

bb.h:                                             ; preds = %.lr.ph156
  %i.at = mul i64 %.011.i155, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next170 to i32
  %exitcond172.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond172.not, label %._crit_edge157, label %.lr.ph156, !llvm.loop !54

._crit_edge157:                                   ; preds = %bb.h, %._crit_edge
  %.011.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.011.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread129, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge157
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = zext nneg i32 %1 to i64                 ; 7 uses
  %i.ba = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128                  ; 2 uses
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = xor i64 %i.az, %i.bj
  %i.bl = xor i64 %i.bk, %i.ax                    ; 2 uses
  %i.bm = icmp ugt i32 %1, 3
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i38 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i38 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i39 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i39 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i40 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i40 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.ce = shl nuw nsw i64 %i.c, 56
  %i.cf = lshr i64 %i.az, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  %i.cl = getelementptr i8, ptr %0, i64 %i.az
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37:  ; preds = %bb.i, %bb.j
  %.0102 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0101 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0101, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0102 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %i.cw = xor i64 %i.az, %i.cu
  %i.cx = xor i64 %i.cw, %i.ba
  %i.cy = zext i64 %i.cx to i128
  %i.cz = xor i128 %i.cv, %i.bf
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i32
  %i.de = and i32 %i.dd, 1073741823               ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = shl nuw i32 %i.de, 2
  %i.dh = select i1 %i.df, i32 108, i32 %i.dg     ; 3 uses
  %i.di = icmp ult i32 %i.dh, 536870912
  %i.dj = or i32 %i.dh, 536870912
  %spec.select = select i1 %i.di, i32 %i.dj, i32 %i.dh
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dk = icmp ugt i32 %1, 16383
  br i1 %i.dk, label %bb.l, label %.thread129

bb.l:                                             ; preds = %bb.k
  %i.dl = shl i32 %1, 2
  %i.dm = or disjoint i32 %i.dl, 2
  br label %bb.u

.thread129:                                       ; preds = %.lr.ph, %.lr.ph156, %._crit_edge157, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dn = load i64, ptr %2, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = zext i32 %1 to i64                      ; 9 uses
  %i.dq = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dr = xor i64 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load i64, ptr %i.ds, align 8            ; 4 uses
  %i.du = zext i64 %i.dr to i128
  %i.dv = zext i64 %i.dt to i128                  ; 2 uses
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  %i.ea = xor i64 %i.dp, %i.dz
  %i.eb = xor i64 %i.ea, %i.dn                    ; 7 uses
  %i.ec = icmp ult i32 %1, 17
  br i1 %i.ec, label %bb.m, label %bb.q, !prof !12

bb.m:                                             ; preds = %.thread129
  %i.ed = icmp samesign ugt i32 %1, 3
  br i1 %i.ed, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr i8, ptr %0, i64 %i.dp
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4     ; 2 uses
  %.0.copyload.i53 = load i32, ptr %0, align 1
  %i.eg = zext i32 %.0.copyload.i53 to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %.0.copyload.i54 = load i32, ptr %i.ef, align 1
  %i.ei = zext i32 %.0.copyload.i54 to i64
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = and i64 %i.dp, 24
  %i.el = lshr i64 %i.dp, 3
  %i.em = lshr exact i64 %i.ek, %i.el             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %.0.copyload.i55 = load i32, ptr %i.en, align 1
  %i.eo = zext i32 %.0.copyload.i55 to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = sub nsw i64 0, %i.em
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 %i.eq
  %.0.copyload.i56 = load i32, ptr %i.er, align 1
  %i.es = zext i32 %.0.copyload.i56 to i64
  %i.et = or disjoint i64 %i.ep, %i.es
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.eu = load i8, ptr %0, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 56
  %i.ex = lshr i64 %i.dp, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 32
  %i.fc = or disjoint i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %0, i64 %i.dp
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread129
  %i.fi = icmp ugt i32 %1, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %.preheader, label %.thread132, !prof !8

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.ft, %.preheader ], [ %i.eb, %bb.q ]
  %.063.i = phi ptr [ %i.go, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.gp, %.preheader ], [ %i.dp, %bb.q ]
  %.061.i = phi i64 [ %i.gd, %.preheader ], [ %i.eb, %bb.q ]
  %.0.i = phi i64 [ %i.gn, %.preheader ], [ %i.eb, %bb.q ]
  %.0.copyload.i57 = load i64, ptr %.063.i, align 1
  %i.fl = xor i64 %.0.copyload.i57, %i.dq
  %i.fm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i58 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i58, %.065.i
  %i.fo = zext i64 %i.fl to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i59 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i59, %i.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i60 = load i64, ptr %i.fw, align 1
  %i.fx = xor i64 %.0.copyload.i60, %.061.i
  %i.fy = zext i64 %i.fv to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = xor i128 %i.gb, %i.ga
  %i.gd = trunc i128 %i.gc to i64                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i61 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %i.fk, %.0.copyload.i61
  %i.gg = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i62 = load i64, ptr %i.gg, align 1
  %i.gh = xor i64 %.0.copyload.i62, %.0.i
  %i.gi = zext i64 %i.gf to i128
  %i.gj = zext i64 %i.gh to i128
  %i.gk = mul nuw i128 %i.gj, %i.gi               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.gp = add i64 %.062.i, -48                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 47
  br i1 %i.gq, label %.preheader, label %bb.r, !prof !12, !llvm.loop !2

bb.r:                                             ; preds = %.preheader
  %i.gr = xor i64 %i.gd, %i.ft
  %i.gs = xor i64 %i.gr, %i.gn                    ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gp, 16
  br i1 %i.gt, label %.thread132, label %bb.t

.thread132:                                       ; preds = %bb.q, %bb.r
  %.1.i24140 = phi i64 [ %i.gp, %bb.r ], [ %i.dp, %bb.q ] ; 3 uses
  %.164.i138 = phi ptr [ %i.go, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i136 = phi i64 [ %i.gs, %bb.r ], [ %i.eb, %bb.q ]
  %.0.copyload.i63 = load i64, ptr %.164.i138, align 1
  %i.gu = xor i64 %i.fk, %.0.copyload.i63
  %i.gv = getelementptr inbounds nuw i8, ptr %.164.i138, i64 8
  %.0.copyload.i64 = load i64, ptr %i.gv, align 1
  %i.gw = xor i64 %.166.i136, %.0.copyload.i64
  %i.gx = xor i64 %i.gw, %i.dt
  %i.gy = zext i64 %i.gu to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i24140, 32
  br i1 %i.he, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread132
  %i.hf = getelementptr inbounds nuw i8, ptr %.164.i138, i64 16
  %.0.copyload.i65 = load i64, ptr %i.hf, align 1
  %i.hg = xor i64 %.0.copyload.i65, %i.fk
  %i.hh = getelementptr inbounds nuw i8, ptr %.164.i138, i64 24
  %.0.copyload.i66 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %.0.copyload.i66, %i.hd
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread132, %bb.r
  %.1.i24139 = phi i64 [ %.1.i24140, %bb.s ], [ %.1.i24140, %.thread132 ], [ %i.gp, %bb.r ]
  %.164.i137 = phi ptr [ %.164.i138, %bb.s ], [ %.164.i138, %.thread132 ], [ %i.go, %bb.r ]
  %.2.i25 = phi i64 [ %i.ho, %bb.s ], [ %i.hd, %.thread132 ], [ %i.gs, %bb.r ]
  %i.hp = getelementptr i8, ptr %.164.i137, i64 %.1.i24139 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -16
  %.0.copyload.i67 = load i64, ptr %i.hq, align 1
  %i.hr = getelementptr i8, ptr %i.hp, i64 -8
  %.0.copyload.i68 = load i64, ptr %i.hr, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0104 = phi i64 [ %i.et, %bb.n ], [ %.0.copyload.i68, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0103 = phi i64 [ %i.ej, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ %i.fh, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.eb, %bb.n ], [ %.2.i25, %bb.t ], [ %i.eb, %bb.p ], [ %i.eb, %bb.o ]
  %i.hs = xor i64 %.0103, %i.dt
  %i.ht = xor i64 %.3.i, %.0104
  %i.hu = zext i64 %i.hs to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hw, 64
  %i.hz = xor i64 %i.dp, %i.hx
  %i.ia = xor i64 %i.hz, %i.dq
  %i.ib = zext i64 %i.ia to i128
  %i.ic = xor i128 %i.hy, %i.dv
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741823               ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = shl nuw i32 %i.ih, 2
  %i.ik = or disjoint i32 %i.ij, 2
  %i.il = select i1 %i.ii, i32 110, i32 %i.ik
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.il, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dm, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SequentialStringKeyIhED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.011.i161 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.011.i161, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !56

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.011.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.011.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !57

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #15
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !12

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %0, i64 %i.bi
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = xor i64 %i.cx, %.0.copyload.i51
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cz, align 2
  %i.da = xor i64 %i.bm, %.0.copyload.i52
  %i.db = xor i64 %i.da, %i.bu
  %i.dc = zext i64 %i.cy to i128
  %i.dd = zext i64 %i.db to i128
  %i.de = mul nuw i128 %i.dd, %i.dc               ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64
  %i.di = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dk, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cv, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dh, %.thread ], [ %i.bu, %bb.n ]
  %i.dl = xor i64 %.0107, %i.bm
  %i.dm = xor i64 %.3.i.i, %.0108
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %i.ds = xor i64 %i.bi, %i.dq
  %i.dt = xor i64 %i.ds, %i.bj
  %i.du = zext i64 %i.dt to i128
  %i.dv = xor i128 %i.dr, %i.bo
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dz, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.ea = trunc i64 %.0.i to i32
  %i.eb = and i32 %i.ea, 1073741823               ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = shl nuw i32 %i.eb, 2
  %i.ee = select i1 %i.ec, i32 108, i32 %i.ed     ; 3 uses
  %i.ef = icmp ult i32 %i.ee, 536870912
  %i.eg = or i32 %i.ee, 536870912
  %spec.select = select i1 %i.ef, i32 %i.eg, i32 %i.ee
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.eh = icmp ugt i32 %1, 16383
  br i1 %i.eh, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.ei = shl i32 %1, 2
  %i.ej = or disjoint i32 %i.ei, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.ek = load i64, ptr %2, align 8               ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !57

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = icmp ugt i16 %i.en, 255
  br i1 %i.eo, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.ep = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.el, %bb.q ]
  %i.eq = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.ek, %bb.q ]
  %i.er = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.eq, ptr noundef nonnull %i.ep) #15
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.es = shl i32 %1, 1                           ; 5 uses
  %i.et = zext i32 %i.es to i64                   ; 9 uses
  %i.eu = load i64, ptr %i.el, align 8            ; 3 uses
  %i.ev = xor i64 %i.eu, %i.ek
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load i64, ptr %i.ew, align 8            ; 4 uses
  %i.ey = zext i64 %i.ev to i128
  %i.ez = zext i64 %i.ex to i128                  ; 2 uses
  %i.fa = mul nuw i128 %i.ez, %i.ey               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = xor i128 %i.fb, %i.fa
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = xor i64 %i.et, %i.fd
  %i.ff = xor i64 %i.fe, %i.ek                    ; 7 uses
  %i.fg = icmp ult i32 %i.es, 17
  br i1 %i.fg, label %bb.r, label %bb.v, !prof !12

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fh = icmp samesign ugt i32 %i.es, 3
  br i1 %i.fh, label %bb.s, label %bb.t, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr i8, ptr %0, i64 %i.et
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fk = zext i32 %.0.copyload.i57 to i64
  %i.fl = shl nuw i64 %i.fk, 32
  %.0.copyload.i58 = load i32, ptr %i.fj, align 1
  %i.fm = zext i32 %.0.copyload.i58 to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %i.fo = and i64 %i.et, 24
  %i.fp = lshr i64 %i.et, 3
  %i.fq = lshr exact i64 %i.fo, %i.fp             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq
  %.0.copyload.i59 = load i32, ptr %i.fr, align 1
  %i.fs = zext i32 %.0.copyload.i59 to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = sub nsw i64 0, %i.fq
  %i.fv = getelementptr inbounds i8, ptr %i.fj, i64 %i.fu
  %.0.copyload.i60 = load i32, ptr %i.fv, align 1
  %i.fw = zext i32 %.0.copyload.i60 to i64
  %i.fx = or disjoint i64 %i.ft, %i.fw
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fy = load i8, ptr %0, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw i64 %i.fz, 56
  %i.gb = lshr exact i64 %i.et, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 32
  %i.gg = or disjoint i64 %i.gf, %i.ga
  %i.gh = getelementptr i8, ptr %0, i64 %i.et
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = zext i8 %i.gj to i64
  %i.gl = or disjoint i64 %i.gg, %i.gk
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gm = icmp ugt i32 %i.es, 48
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  br i1 %i.gm, label %.preheader, label %.thread137, !prof !8

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gx, %.preheader ], [ %i.ff, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hs, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.ht, %.preheader ], [ %i.et, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hh, %.preheader ], [ %i.ff, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hr, %.preheader ], [ %i.ff, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gp = xor i64 %.0.copyload.i61, %i.eu
  %i.gq = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gq, align 1
  %i.gr = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gs = zext i64 %i.gp to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = mul nuw i128 %i.gt, %i.gs               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = xor i128 %i.gv, %i.gu
  %i.gx = trunc i128 %i.gw to i64                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gy, align 1
  %i.gz = xor i64 %.0.copyload.i63, %i.ex
  %i.ha = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.ha, align 1
  %i.hb = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.hc = zext i64 %i.gz to i128
  %i.hd = zext i64 %i.hb to i128
  %i.he = mul nuw i128 %i.hd, %i.hc               ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = xor i128 %i.hf, %i.he
  %i.hh = trunc i128 %i.hg to i64                 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hi, align 1
  %i.hj = xor i64 %i.go, %.0.copyload.i65
  %i.hk = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hk, align 1
  %i.hl = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hm = zext i64 %i.hj to i128
  %i.hn = zext i64 %i.hl to i128
  %i.ho = mul nuw i128 %i.hn, %i.hm               ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = xor i128 %i.hp, %i.ho
  %i.hr = trunc i128 %i.hq to i64                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.ht = add i64 %.062.i.i33, -48                ; 5 uses
  %i.hu = icmp ugt i64 %i.ht, 47
  br i1 %i.hu, label %.preheader, label %bb.w, !prof !12, !llvm.loop !2

bb.w:                                             ; preds = %.preheader
  %i.hv = xor i64 %i.hh, %i.gx
  %i.hw = xor i64 %i.hv, %i.hr                    ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 16
  br i1 %i.hx, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.ht, %bb.w ], [ %i.et, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hs, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hw, %bb.w ], [ %i.ff, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.hy = xor i64 %i.go, %.0.copyload.i67
  %i.hz = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.hz, align 1
  %i.ia = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.ib = xor i64 %i.ia, %i.ex
  %i.ic = zext i64 %i.hy to i128
  %i.id = zext i64 %i.ib to i128
  %i.ie = mul nuw i128 %i.id, %i.ic               ; 2 uses
  %i.if = lshr i128 %i.ie, 64
  %i.ig = xor i128 %i.if, %i.ie
  %i.ih = trunc i128 %i.ig to i64                 ; 2 uses
  %i.ii = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ii, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.ij = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.ij, align 1
  %i.ik = xor i64 %.0.copyload.i69, %i.go
  %i.il = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.il, align 1
  %i.im = xor i64 %.0.copyload.i70, %i.ih
  %i.in = zext i64 %i.ik to i128
  %i.io = zext i64 %i.im to i128
  %i.ip = mul nuw i128 %i.io, %i.in               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.ht, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hs, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.is, %bb.x ], [ %i.ih, %.thread137 ], [ %i.hw, %bb.w ]
  %i.it = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.iu, align 1
  %i.iv = getelementptr i8, ptr %i.it, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.iv, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fx, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fn, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gl, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.ff, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.ff, %bb.u ], [ %i.ff, %bb.t ]
  %i.iw = xor i64 %.0105, %i.ex
  %i.ix = xor i64 %.3.i.i29, %.0106
  %i.iy = zext i64 %i.iw to i128
  %i.iz = zext i64 %i.ix to i128
  %i.ja = mul nuw i128 %i.iz, %i.iy               ; 2 uses
  %i.jb = trunc i128 %i.ja to i64
  %i.jc = lshr i128 %i.ja, 64
  %i.jd = xor i64 %i.et, %i.jb
  %i.je = xor i64 %i.jd, %i.eu
  %i.jf = zext i64 %i.je to i128
  %i.jg = xor i128 %i.jc, %i.ez
  %i.jh = mul nuw i128 %i.jg, %i.jf               ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
end_hunk_6
begin_hunk_7_@_ZN2v88internal15TaggedArrayBaseINS0_28ObjectBoilerplateDescriptionENS0_33ObjectBoilerplateDescriptionShapeENS0_16HeapObjectLayoutEE8AllocateINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE:bb.a
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.s = sext i32 %i.b to i64
  %i.t = add nsw i64 %i.s, 131064
  %i.u = lshr i64 %i.t, 17
  store i64 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store atomic i64 0, ptr %i.v seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit: ; preds = %bb.a, %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 560
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.c, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store atomic volatile i64 %i.x, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = sext i32 %1 to i64
  %i.ac = shl nsw i64 %i.ab, 32
  store atomic volatile i64 %i.ac, ptr %i.aa monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !9, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ag = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.d, i64 noundef %i.c) #15
  br label %_ZN2v88internal6HandleINS0_28ObjectBoilerplateDescriptionEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.e:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai) #15
  %.pre = load ptr, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %.pre, %bb.f ], [ %i.aj, %bb.e ]
  %.0.i.i = phi ptr [ %i.an, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ai, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_28ObjectBoilerplateDescriptionEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_28ObjectBoilerplateDescriptionEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.d, %bb.g
  %.012.i.i = phi ptr [ %i.ag, %bb.d ], [ %.0.i.i, %bb.g ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE8AllocateINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 3
  %i.b = add i32 %i.a, 24                         ; 3 uses
  %i.c = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.b, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 %4) #15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq i8 %3, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2788
  %i.h = load i32, ptr %i.g, align 4
  %.0.i.i14 = select i1 %i.f, i32 %i.h, i32 131072
  %i.i = icmp sgt i32 %i.b, %.0.i.i14
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !9
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = and i64 %i.c, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load atomic ptr, ptr %i.p seq_cst, align 8
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #17
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.s = sext i32 %i.b to i64
  %i.t = add nsw i64 %i.s, 131064
  %i.u = lshr i64 %i.t, 17
  store i64 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store atomic i64 0, ptr %i.v seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit: ; preds = %bb.a, %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 368
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.c, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store atomic volatile i64 %i.x, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = sext i32 %1 to i64
  %i.ac = shl nsw i64 %i.ab, 32
  store atomic volatile i64 %i.ac, ptr %i.aa monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !9, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ag = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.d, i64 noundef %i.c) #15
  br label %_ZN2v88internal6HandleINS0_9ArrayListEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.e:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai) #15
  %.pre = load ptr, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %.pre, %bb.f ], [ %i.aj, %bb.e ]
  %.0.i.i = phi ptr [ %i.an, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ai, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_9ArrayListEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_9ArrayListEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.d, %bb.g
  %.012.i.i = phi ptr [ %i.ag, %bb.d ], [ %.0.i.i, %bb.g ]
  ret ptr %.012.i.i
}

declare ptr @_ZNK2v88internal13AstConsString12AllocateFlatINS0_12LocalIsolateEEENS0_6HandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null, null}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"branch_weights", i32 4001, i32 1}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 19581803}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!16 = !{i64 8}
!17 = !{i64 2}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !14, !27, !28}
!23 = distinct !{!23, !14, !27, !28}
!24 = distinct !{!24, !14, !27}
!25 = !{!20}
!26 = !{!21}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = distinct !{!30, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!31 = distinct !{!31, !30, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!32 = distinct !{!32, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!33 = distinct !{!33, !32, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!34 = !{!33, !31}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!37 = distinct !{!37, !36, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!38 = distinct !{!38, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!39 = distinct !{!39, !38, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!40 = !{!39, !37}
!41 = distinct !{!41, !14}
!42 = !{!"branch_weights", i32 2146410443, i32 1073205}
!43 = distinct !{!43, !"_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj"}
!44 = distinct !{!44, !43, !"_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj: argument 0"}
!45 = distinct !{!45, !14}
!46 = !{!44}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !"_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj"}
!49 = distinct !{!49, !48, !"_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE7iter_atEj: argument 0"}
!50 = !{!49}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
end_hunk_7
