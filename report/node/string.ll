inline.NumInlined: 4553
inline.NumDeleted: 1209
begin_hunk_0_@_ZN2v88internal21StringCharacterStream14WriteUtf8BytesEjPcm:bb.a
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i
  %i.w = tail call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 %i.u, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.f) ; 0 uses
  br label %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i

_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i: ; preds = %bb.f, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i, %bb.d
  %i.x = phi ptr [ %.pre, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.y = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.aa, ptr %i.c, align 8
  %i.ab = load i8, ptr %i.x, align 1
  %i.ac = zext i8 %i.ab to i16
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.ad, ptr %i.c, align 8
  %i.ae = load i16, ptr %i.x, align 2
  br label %_ZN2v88internal21StringCharacterStream7GetNextEv.exit

_ZN2v88internal21StringCharacterStream7GetNextEv.exit: ; preds = %bb.h, %bb.i
  %i.af = phi i16 [ %i.ac, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  %spec.store.select = select i1 %i.ag, i16 32, i16 %i.af ; 11 uses
  %i.ah = zext i16 %spec.store.select to i32      ; 3 uses
  %i.ai = zext i16 %.015 to i32                   ; 3 uses
  %i.aj = icmp ult i16 %spec.store.select, 128
  br i1 %i.aj, label %_ZN7unibrow4Utf86LengthEji.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal21StringCharacterStream7GetNextEv.exit
  %i.ak = icmp ult i16 %spec.store.select, 2048
  br i1 %i.ak, label %_ZN7unibrow4Utf86LengthEji.exit, label %_ZN7unibrow4Utf86LengthEji.exit.thread34

_ZN7unibrow4Utf86LengthEji.exit:                  ; preds = %bb.j
  %i.al = sub i64 %3, %.0
  %.not23 = icmp ult i64 %i.al, 2
  br i1 %.not23, label %bb.k, label %bb.l, !prof !5

_ZN7unibrow4Utf86LengthEji.exit.thread34:         ; preds = %bb.j
  %i.am = and i32 %i.ai, 64512
  %i.an = icmp eq i32 %i.am, 55296
  %i.ao = and i32 %i.ah, 64512
  %i.ap = icmp eq i32 %i.ao, 56320
  %i.aq = and i1 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i64 1, i64 3
  %i.as = sub i64 %3, %.0
  %.not2336 = icmp ult i64 %i.as, %i.ar
  br i1 %.not2336, label %bb.k, label %bb.m, !prof !5

_ZN7unibrow4Utf86LengthEji.exit.thread:           ; preds = %_ZN2v88internal21StringCharacterStream7GetNextEv.exit
  %.not24 = icmp eq i64 %3, %.0
  br i1 %.not24, label %bb.k, label %.thread, !prof !5

.thread:                                          ; preds = %_ZN7unibrow4Utf86LengthEji.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.0
  %i.au = trunc nuw nsw i16 %spec.store.select to i8
  store i8 %i.au, ptr %i.at, align 1
  br label %_ZN7unibrow4Utf86EncodeEPcjib.exit

bb.k:                                             ; preds = %_ZN7unibrow4Utf86LengthEji.exit.thread34, %_ZN7unibrow4Utf86LengthEji.exit.thread, %_ZN7unibrow4Utf86LengthEji.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27) #26
  unreachable

bb.l:                                             ; preds = %_ZN7unibrow4Utf86LengthEji.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.0 ; 2 uses
  %i.aw = lshr i16 %spec.store.select, 6
  %i.ax = trunc nuw nsw i16 %i.aw to i8
  %i.ay = or disjoint i8 %i.ax, -64
  store i8 %i.ay, ptr %i.av, align 1
  %i.az = trunc i16 %spec.store.select to i8
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, -128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bb, ptr %i.bc, align 1
  br label %_ZN7unibrow4Utf86EncodeEPcjib.exit

bb.m:                                             ; preds = %_ZN7unibrow4Utf86LengthEji.exit.thread34
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.0 ; 4 uses
  %i.be = and i32 %i.ai, 64512
  %i.bf = icmp eq i32 %i.be, 55296
  %i.bg = and i32 %i.ah, 64512
  %i.bh = icmp eq i32 %i.bg, 56320
  %i.bi = and i1 %i.bf, %i.bh
  br i1 %i.bi, label %_ZN7unibrow4Utf86EncodeEPcjib.exit.i, label %bb.n

_ZN7unibrow4Utf86EncodeEPcjib.exit.i:             ; preds = %bb.m
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 -3
  %i.bk = shl nuw nsw i32 %i.ai, 10               ; 2 uses
  %i.bl = and i32 %i.bk, 1047552
  %i.bm = add nuw nsw i32 %i.bl, 65536            ; 2 uses
  %i.bn = and i32 %i.ah, 960
  %i.bo = or disjoint i32 %i.bn, %i.bk
  %i.bp = lshr i32 %i.bm, 18
  %i.bq = lshr i32 %i.bm, 12
  %i.br = trunc i32 %i.bq to i8
  %i.bs = lshr exact i32 %i.bo, 6
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = trunc i16 %spec.store.select to i8
  %i.bv = trunc nuw nsw i32 %i.bp to i8
  %i.bw = insertelement <4 x i8> poison, i8 %i.bv, i64 0
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.br, i64 1
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bt, i64 2
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bu, i64 3
  %i.ca = and <4 x i8> %i.bz, <i8 -1, i8 63, i8 63, i8 63>
  %i.cb = or disjoint <4 x i8> %i.ca, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.cb, ptr %i.bj, align 1
  br label %_ZN7unibrow4Utf86EncodeEPcjib.exit

bb.n:                                             ; preds = %bb.m
  %i.cc = lshr i16 %spec.store.select, 12
  %i.cd = trunc nuw nsw i16 %i.cc to i8
  %i.ce = or disjoint i8 %i.cd, -32
  store i8 %i.ce, ptr %i.bd, align 1
  %i.cf = lshr i16 %spec.store.select, 6
  %i.cg = trunc i16 %i.cf to i8
  %i.ch = and i8 %i.cg, 63
  %i.ci = or disjoint i8 %i.ch, -128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = trunc i16 %spec.store.select to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, -128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.cm, ptr %i.cn, align 1
  br label %_ZN7unibrow4Utf86EncodeEPcjib.exit

_ZN7unibrow4Utf86EncodeEPcjib.exit:               ; preds = %.thread, %bb.l, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i, %bb.n
  %.0.i18 = phi i64 [ 1, %.thread ], [ 2, %bb.l ], [ 1, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ], [ 3, %bb.n ]
  %i.co = add i64 %.0.i18, %.0
  br label %bb.b, !llvm.loop !122

.critedge:                                        ; preds = %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread, %_ZN2v88internal21StringCharacterStream7HasMoreEv.exit.thread20
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.656") align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4
  tail call void @_ZN2v88internal6String9ToCStringEjjPm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.656") align 8 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, i32 noundef %i.b, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.v8::internal::StringCharacterStream", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = ptrtoint ptr %1 to i64
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  call void @_ZN2v88internal21StringCharacterStreamC2ENS0_6TaggedINS0_6StringEEEi(ptr noundef nonnull align 8 dereferenceable(320) %2, i64 %i.e, i32 noundef 0)
  %i.f = call noundef i64 @_ZN2v88internal21StringCharacterStream14CountUtf8BytesEj(ptr noundef nonnull align 8 dereferenceable(320) %2, i32 noundef %i.c) ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp samesign ugt i64 %i.f, 15
  br i1 %.not.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.j = icmp samesign ult i64 %i.f, 30
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.k = add nuw i64 %i.f, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, !prof !123

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %.0.i7 = phi i64 [ %i.f, %bb.d ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #30 ; 2 uses
  store ptr %i.n, ptr %0, align 8
  store i64 %.0.i7, ptr %i.g, align 8
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i64 %i.f, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %i.f, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.f, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store i8 0, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a, %.sink.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.t = call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %2, i64 %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  store i32 0, ptr %i.u, align 8
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_ZN2v88internal21StringCharacterStream5ResetENS0_6TaggedINS0_6StringEEEi.exit, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i

_ZN2v88internal18ConsStringIterator4NextEPi.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 256
  store i64 %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 272
  store i32 0, ptr %i.x, align 8
  store i32 1, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i32 33, ptr %i.y, align 4
  store i32 0, ptr %i.a, align 4
  %i.z = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull %i.a) ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN2v88internal21StringCharacterStream5ResetENS0_6TaggedINS0_6StringEEEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = call i64 @_ZN2v88internal6String9VisitFlatINS0_21StringCharacterStreamEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(320) %2, i64 %i.z, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.s) ; 0 uses
  br label %_ZN2v88internal21StringCharacterStream5ResetENS0_6TaggedINS0_6StringEEEi.exit

_ZN2v88internal21StringCharacterStream5ResetENS0_6TaggedINS0_6StringEEEi.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = call noundef i64 @_ZN2v88internal21StringCharacterStream14WriteUtf8BytesEjPcm(ptr noundef nonnull align 8 dereferenceable(320) %2, i32 noundef %i.c, ptr noundef %i.ad, i64 noundef %i.f) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !9, !noundef !10
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.af, align 8
  br i1 %i.ah, label %bb.h, label %_ZN2v88internal21StringCharacterStreamD2Ev.exit

bb.h:                                             ; preds = %_ZN2v88internal21StringCharacterStream5ResetENS0_6TaggedINS0_6StringEEEi.exit
  %i.ai = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal21StringCharacterStreamD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #25
  br label %_ZN2v88internal21StringCharacterStreamD2Ev.exit

_ZN2v88internal21StringCharacterStreamD2Ev.exit:  ; preds = %_ZN2v88internal21StringCharacterStream5ResetENS0_6TaggedINS0_6StringEEEi.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6String9WriteUtf8EPNS0_7IsolateENS0_12DirectHandleIS1_EEPcmNS_4base5FlagsINS1_16Utf8EncodingFlagEiiEEPm(ptr noundef %0, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %7 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 9 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2 ; 3 uses
  %i.h = and i16 %i.g, -127
  %.not183 = icmp eq i16 %i.h, 1
  br i1 %.not183, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = and i16 %i.g, 7
  %i.j = icmp eq i16 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u acquire, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %.thread, %bb.b
  %.sroa.036.0 = phi i16 [ %i.y, %.thread ], [ %i.g, %bb.b ]
  %.sroa.012.1.i = phi i64 [ %i.s, %.thread ], [ %i.a, %bb.b ] ; 2 uses
  %i.aa = and i16 %.sroa.036.0, -121
  %i.ab = icmp eq i16 %i.aa, 5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %.sroa.012.1.i, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i = phi i64 [ %i.af, %bb.f ], [ %.sroa.012.1.i, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.al, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.041.1 = phi ptr [ %i.z, %bb.d ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ap = load i64, ptr %.sroa.041.1, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !noalias !124
  %i.au = load atomic volatile i64, ptr %i.ar acquire, align 8, !noalias !127
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2, !noalias !127
  %i.ay = and i16 %i.ax, 15
  switch i16 %i.ay, label %bb.s [
    i16 8, label %bb.i
    i16 0, label %bb.j
    i16 9, label %bb.t
    i16 1, label %bb.t
    i16 10, label %bb.k
    i16 2, label %bb.o
    i16 11, label %bb.t
    i16 3, label %bb.t
    i16 13, label %bb.t
    i16 5, label %bb.t
  ]

bb.i:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.j:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !130
  %i.bd = inttoptr i64 %i.bc to ptr               ; 6 uses
  %i.be = load atomic volatile i64, ptr %i.ar monotonic, align 8, !noalias !130
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE:bb.a
  %i.fi = icmp ult i32 %i.eu, 17
  br i1 %i.fi, label %bb.r, label %bb.v, !prof !26

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fj = icmp samesign ugt i32 %i.eu, 3
  br i1 %i.fj, label %bb.s, label %bb.t, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.fk = getelementptr i8, ptr %0, i64 %i.ev
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fm = zext i32 %.0.copyload.i57 to i64
  %i.fn = shl nuw i64 %i.fm, 32
  %.0.copyload.i58 = load i32, ptr %i.fl, align 1
  %i.fo = zext i32 %.0.copyload.i58 to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo
  %i.fq = and i64 %i.ev, 24
  %i.fr = lshr i64 %i.ev, 3
  %i.fs = lshr exact i64 %i.fq, %i.fr             ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 %i.fs
  %.0.copyload.i59 = load i32, ptr %i.ft, align 1
  %i.fu = zext i32 %.0.copyload.i59 to i64
  %i.fv = shl nuw i64 %i.fu, 32
  %i.fw = sub nsw i64 0, %i.fs
  %i.fx = getelementptr inbounds i8, ptr %i.fl, i64 %i.fw
  %.0.copyload.i60 = load i32, ptr %i.fx, align 1
  %i.fy = zext i32 %.0.copyload.i60 to i64
  %i.fz = or disjoint i64 %i.fv, %i.fy
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.ga = load i8, ptr %0, align 1
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl nuw i64 %i.gb, 56
  %i.gd = lshr exact i64 %i.ev, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 32
  %i.gi = or disjoint i64 %i.gh, %i.gc
  %i.gj = getelementptr i8, ptr %0, i64 %i.ev
  %i.gk = getelementptr i8, ptr %i.gj, i64 -1
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i64
  %i.gn = or disjoint i64 %i.gi, %i.gm
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.go = icmp ugt i32 %i.eu, 48
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gq = load i64, ptr %i.gp, align 8            ; 3 uses
  br i1 %i.go, label %.preheader, label %.thread137, !prof !5

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gz, %.preheader ], [ %i.fh, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hu, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.hv, %.preheader ], [ %i.ev, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hj, %.preheader ], [ %i.fh, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.ht, %.preheader ], [ %i.fh, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gr = xor i64 %.0.copyload.i61, %i.ew
  %i.gs = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gs, align 1
  %i.gt = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gu = zext i64 %i.gr to i128
  %i.gv = zext i64 %i.gt to i128
  %i.gw = mul nuw i128 %i.gv, %i.gu               ; 2 uses
  %i.gx = lshr i128 %i.gw, 64
  %i.gy = xor i128 %i.gx, %i.gw
  %i.gz = trunc i128 %i.gy to i64                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.ha, align 1
  %i.hb = xor i64 %.0.copyload.i63, %i.ez
  %i.hc = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.hc, align 1
  %i.hd = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.he = zext i64 %i.hb to i128
  %i.hf = zext i64 %i.hd to i128
  %i.hg = mul nuw i128 %i.hf, %i.he               ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = xor i128 %i.hh, %i.hg
  %i.hj = trunc i128 %i.hi to i64                 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hk, align 1
  %i.hl = xor i64 %i.gq, %.0.copyload.i65
  %i.hm = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hm, align 1
  %i.hn = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.ho = zext i64 %i.hl to i128
  %i.hp = zext i64 %i.hn to i128
  %i.hq = mul nuw i128 %i.hp, %i.ho               ; 2 uses
  %i.hr = lshr i128 %i.hq, 64
  %i.hs = xor i128 %i.hr, %i.hq
  %i.ht = trunc i128 %i.hs to i64                 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.hv = add i64 %.062.i.i33, -48                ; 5 uses
  %i.hw = icmp ugt i64 %i.hv, 47
  br i1 %i.hw, label %.preheader, label %bb.w, !prof !26, !llvm.loop !494

bb.w:                                             ; preds = %.preheader
  %i.hx = xor i64 %i.hj, %i.gz
  %i.hy = xor i64 %i.hx, %i.ht                    ; 2 uses
  %i.hz = icmp samesign ugt i64 %i.hv, 16
  br i1 %i.hz, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.hv, %bb.w ], [ %i.ev, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hu, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hy, %bb.w ], [ %i.fh, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.ia = xor i64 %i.gq, %.0.copyload.i67
  %i.ib = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.ib, align 1
  %i.ic = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.id = xor i64 %i.ic, %i.ez
  %i.ie = zext i64 %i.ia to i128
  %i.if = zext i64 %i.id to i128
  %i.ig = mul nuw i128 %i.if, %i.ie               ; 2 uses
  %i.ih = lshr i128 %i.ig, 64
  %i.ii = xor i128 %i.ih, %i.ig
  %i.ij = trunc i128 %i.ii to i64                 ; 2 uses
  %i.ik = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ik, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.il = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.il, align 1
  %i.im = xor i64 %.0.copyload.i69, %i.gq
  %i.in = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.in, align 1
  %i.io = xor i64 %.0.copyload.i70, %i.ij
  %i.ip = zext i64 %i.im to i128
  %i.iq = zext i64 %i.io to i128
  %i.ir = mul nuw i128 %i.iq, %i.ip               ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = xor i128 %i.is, %i.ir
  %i.iu = trunc i128 %i.it to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.hv, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hu, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.iu, %bb.x ], [ %i.ij, %.thread137 ], [ %i.hy, %bb.w ]
  %i.iv = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.iw, align 1
  %i.ix = getelementptr i8, ptr %i.iv, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.ix, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fz, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fp, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gn, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.fh, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.fh, %bb.u ], [ %i.fh, %bb.t ]
  %i.iy = xor i64 %.0105, %i.ez
  %i.iz = xor i64 %.3.i.i29, %.0106
  %i.ja = zext i64 %i.iy to i128
  %i.jb = zext i64 %i.iz to i128
  %i.jc = mul nuw i128 %i.jb, %i.ja               ; 2 uses
  %i.jd = trunc i128 %i.jc to i64
  %i.je = lshr i128 %i.jc, 64
  %i.jf = trunc nuw i128 %i.je to i64
  %i.jg = xor i64 %i.ev, %i.jd
  %i.jh = xor i64 %i.jg, %i.ew
  %i.ji = xor i64 %i.ez, %i.jf
  %i.jj = zext i64 %i.jh to i128
  %i.jk = zext i64 %i.ji to i128
  %i.jl = mul nuw i128 %i.jk, %i.jj               ; 2 uses
  %i.jm = lshr i128 %i.jl, 64
  %i.jn = xor i128 %i.jm, %i.jl
  %i.jo = trunc i128 %i.jn to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37: ; preds = %._crit_edge168, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28
  %.0.i30 = phi i64 [ %i.et, %._crit_edge168 ], [ %i.jo, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28 ]
  %i.jp = trunc i64 %.0.i30 to i32
  %i.jq = and i32 %i.jp, 1073741823               ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  %i.js = shl nuw i32 %i.jq, 2
  %i.jt = or disjoint i32 %i.js, 2
  %i.ju = select i1 %i.jr, i32 110, i32 %i.jt
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37, %bb.p
  %.1 = phi i32 [ %i.ju, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37 ], [ %i.el, %bb.p ], [ %spec.select, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit ], [ %i.ar, %._crit_edge.thread ]
  ret i32 %.1
}

declare noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30
  %3 = load ptr, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  store ptr %i.aq, ptr %i.o, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8
  store ptr %i.aq, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8
  store ptr %i.aa, ptr %i.t, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #30 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !26

bb.o:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8
  store ptr %i.bb, ptr %i.av, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24

_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #27
  store ptr %i.aq, ptr %0, align 8
  store i64 %i.am, ptr %i.k, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8
  %i.be = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_6StringEEELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

end_hunk_1
