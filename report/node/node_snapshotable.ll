Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_snapshotable?download=true
inline.NumInlined: 6455
inline.NumDeleted: 1960
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNK4node26BlobSerializerDeserializer5ToStrINS_8builtins13CodeCacheInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %3, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #29
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #29
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %3, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %3, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #29
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.10, i64 noundef 28) #29 ; 0 uses
  %i.aq = load ptr, ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.aq, i64 noundef %i.as) #29 ; 2 uses
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.11, i64 noundef 9) #29 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 noundef %i.aw) #29
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.12, i64 noundef 2) #29 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !alias.scope !103
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ba, align 8, !alias.scope !103
  store i8 0, ptr %i.az, align 8, !alias.scope !103
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !103 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !103 ; 2 uses
  %i.bf = icmp ugt ptr %i.bc, %i.be
  %.08.i.i.i = select i1 %i.bf, ptr %i.bc, ptr %i.be ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !103 ; 2 uses
  %i.bi = ptrtoint ptr %.08.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bh, i64 noundef %i.bk) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.bm = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bm, ptr %3, align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bo = getelementptr i8, ptr %i.bm, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %3, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.br, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.bs = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aj
  br i1 %i.bt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bu = load i64, ptr %i.aj, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #29
  store ptr %i.f, ptr %3, align 8
  %i.bw = load i64, ptr %i.h, align 8
  %i.bx = getelementptr inbounds i8, ptr %3, i64 %i.bw
  store ptr %i.g, ptr %i.bx, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4node18SnapshotSerializer5WriteINS_8builtins13CodeCacheInfoETnPNSt9enable_ifIXntsr3std7is_sameIT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5valueEvE4typeELPv0ETnPNS4_IXntsr3std13is_arithmeticIS5_EE5valueEvE4typeELSF_0EEEmRKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvPKcDpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  tail call void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.f, i64 53, ptr nonnull @.str.56, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #34
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvPKcDpOT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call noundef i64 @_ZN4node14BlobSerializerINS_18SnapshotSerializerEE15WriteStringViewESt17basic_string_viewIcSt11char_traitsIcEENS_13StringLogModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.i, ptr %i.g, i32 noundef 1)
  %i.k = tail call noundef i64 @_ZN4node14BlobSerializerINS_18SnapshotSerializerEE15WriteArithmeticImEEmPKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 1)
  %i.l = add i64 %i.j, %i.k
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load i64, ptr %i.c, align 8
  %i.o = tail call noundef i64 @_ZN4node14BlobSerializerINS_18SnapshotSerializerEE15WriteArithmeticIhEEmPKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %i.n)
  %i.p = add i64 %i.l, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.a, align 8
  %i.q = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit

bb.c:                                             ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvPKcDpOT_.exit
  %i.s = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.s, i64 48, ptr nonnull @.str.57, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
  %.pre = load i64, ptr %i.a, align 8
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvPKcDpOT_.exit, %bb.c
  %i.t = phi i64 [ %i.p, %_ZNK4node26BlobSerializerDeserializer5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvPKcDpOT_.exit ], [ %.pre, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN4node14BlobSerializerINS_18SnapshotSerializerEE15WriteArithmeticIhEEmPKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8
  %i.e = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge.i.i, label %bb.s

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.h, ptr %3, align 8
  store i16 8315, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.j, align 2
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph: ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 17
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pre42.pre = load i64, ptr %i.i, align 8       ; 6 uses
  %i.p = icmp ugt i64 %2, 16
  br i1 %i.p, label %bb.j, label %bb.n

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.040 = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.040
  %i.r = load i8, ptr %i.q, align 1               ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.s = icmp ult i8 %i.r, 10                     ; 2 uses
  %i.t = icmp ult i8 %i.r, 100
  %. = select i1 %i.t, i32 2, i32 3               ; 2 uses
  %i.u = zext nneg i32 %. to i64
  %i.v = select i1 %i.s, i64 1, i64 %i.u          ; 4 uses
  store ptr %i.k, ptr %5, align 8, !alias.scope !109
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.w = getelementptr i8, ptr %i.k, i64 %i.v     ; 2 uses
  store i8 0, ptr %i.w, align 1
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, i8 45, i64 %i.v, i1 false)
  %i.x = getelementptr i8, ptr %i.k, i64 %i.v     ; 4 uses
  store i8 0, ptr %i.x, align 1
  %i.y = icmp ugt i8 %i.r, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i10

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.z = urem i8 %i.r, 100
  %i.aa = shl nuw i8 %i.z, 1
  %i.ab = udiv i8 %i.r, 100
  %i.ac = zext i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !noalias !109
  %i.ag = getelementptr i8, ptr %i.x, i64 -1
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load i8, ptr %i.ad, align 2, !noalias !109
  %i.ai = zext nneg i32 %. to i64
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -2
  store i8 %i.ah, ptr %i.ak, align 1
  br label %bb.b, !llvm.loop !7

._crit_edge.i.i10:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.al = shl nuw i8 %i.r, 1
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !109
  store i8 %i.ap, ptr %i.o, align 1
  %i.aq = load i8, ptr %i.an, align 2, !noalias !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread
  %.ph = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ], [ %i.x, %.lr.ph.preheader.i.i ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ], [ %i.ab, %.lr.ph.preheader.i.i ]
  %i.ar = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b, %._crit_edge.i.i10
  %i.as = phi ptr [ %.ph, %bb.b ], [ %i.x, %._crit_edge.i.i10 ]
  %storemerge.i.i = phi i8 [ %i.ar, %bb.b ], [ %i.aq, %._crit_edge.i.i10 ]
  store i8 %storemerge.i.i, ptr %i.k, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.at = add nuw nsw i64 %i.v, 1                 ; 2 uses
  store i8 44, ptr %i.as, align 1, !noalias !110
  store i64 %i.at, ptr %i.l, align 8, !noalias !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  store i8 0, ptr %i.au, align 1, !noalias !110
  store ptr %i.m, ptr %4, align 8, !alias.scope !110
  %i.av = load ptr, ptr %5, align 8, !noalias !110 ; 3 uses
  %i.aw = icmp eq ptr %i.av, %i.k
  br i1 %i.aw, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ax = load i64, ptr %i.l, align 8, !noalias !110 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.az, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.av, ptr %4, align 8, !alias.scope !110
  %i.ba = load i64, ptr %i.k, align 8, !noalias !110
  store i64 %i.ba, ptr %i.m, align 8, !alias.scope !110
  %.pre.i = load i64, ptr %i.l, align 8, !noalias !110
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bb = phi ptr [ %i.m, %bb.c ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.bc = phi i64 [ %i.ax, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 7 uses
  store i64 %i.bc, ptr %i.n, align 8, !alias.scope !110
  store ptr %i.k, ptr %5, align 8, !noalias !110
  store i64 0, ptr %i.l, align 8, !noalias !110
  store i8 0, ptr %i.k, align 8, !noalias !110
  %i.bd = load i64, ptr %i.i, align 8             ; 5 uses
  %i.be = sub i64 9223372036854775807, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.bg = add i64 %i.bd, %i.bc                    ; 3 uses
  %i.bh = load ptr, ptr %3, align 8               ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bj = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bk = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.bg, %i.bl
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.bc, 1
  br i1 %cond.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load i8, ptr %i.bb, align 1
  store i8 %i.bn, ptr %i.bm, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bb, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bd, i64 noundef 0, ptr noundef %i.bb, i64 noundef %i.bc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.bg, ptr %i.i, align 8
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i8 0, ptr %i.bp, align 1
  %i.bq = load ptr, ptr %4, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.m
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bs = load i64, ptr %i.m, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.bu = load ptr, ptr %5, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.k
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.k, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.by = add nuw nsw i64 %.040, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, !llvm.loop !108

bb.j:                                             ; preds = %._crit_edge
  %i.bz = icmp sgt i64 %.pre42.pre, 9223372036854775804
  br i1 %i.bz, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %bb.j
  %i.ca = add nsw i64 %.pre42.pre, 3              ; 3 uses
  %i.cb = load ptr, ptr %3, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.h
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.cd = icmp ult i64 %.pre42.pre, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.ce = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22 ]
  %.not.i.i.i18 = icmp ugt i64 %i.ca, %i.cf
  br i1 %.not.i.i.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.pre42.pre
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cg, ptr noundef nonnull align 1 dereferenceable(3) @.str.398, i64 3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.pre42.pre, i64 noundef 0, ptr noundef nonnull @.str.398, i64 noundef 3)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.l, %bb.m
  store i64 %i.ca, ptr %i.i, align 8
  %i.ch = load ptr, ptr %3, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca
  store i8 0, ptr %i.ci, align 1
  %.pre41 = load i64, ptr %i.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %._crit_edge
  %i.cj = phi i64 [ %.pre41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %.pre42.pre, %._crit_edge ] ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775807
  br i1 %i.ck, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23: ; preds = %._crit_edge.i.i, %bb.n
end_hunk_0
begin_hunk_1_@_ZN4nodeL19GetCodeCacheDefNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4nodeL19GetCodeCacheDefNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.an, ptr %1, align 8
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 8 uses
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.302) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ar = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !34

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #31 ; 2 uses
  store ptr %i.at, ptr %1, align 8
  store i64 %i.ao, ptr %i.an, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %._crit_edge
  %i.au = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.an, %._crit_edge ] ; 3 uses
  switch i64 %i.ao, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %i.a, align 16
  store i8 %i.av, ptr %i.au, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 16 %i.a, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ao, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ay, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ay, ptr noundef nonnull align 1 dereferenceable(11) @.str.318, i64 11, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.ba, align 1
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.bb = load ptr, ptr %2, align 8               ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.bd = load i64, ptr %i.ay, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bf = load ptr, ptr %1, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.an
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.an, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02 = phi i64 [ %i.bo, %.lr.ph ], [ %.02.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.02
  %i.bk = load i8, ptr %i.bj, align 1             ; 2 uses
  %i.bl = and i8 %i.bk, -3
  %or.cond = icmp eq i8 %i.bl, 45
  %i.bm = select i1 %or.cond, i8 95, i8 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = add nuw nsw i64 %.02, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %.8.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !238
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node22WriteByteVectorLiteralIhEEvPSoPKT_mPKcb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.446, i64 noundef 13) #29 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.455, i64 noundef 7) #29 ; 0 uses
  %.not.i30 = icmp eq ptr %3, null                ; 2 uses
  br i1 %4, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.447, i64 noundef 2) #29 ; 0 uses
  br i1 %.not.i30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k) #29
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i64 noundef %i.l) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.448, i64 noundef 3) #29 ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.456, i64 noundef 35) #29 ; 0 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.457, i64 noundef 4) #29 ; 0 uses
  br label %bb.s

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f
  %.02833 = phi i64 [ %i.aa, %bb.f ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.02833
  %i.r = load i8, ptr %i.q, align 1
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4node12GetOctalCodeB5cxx11Eh(i8 noundef zeroext %i.r) #29 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.t, i64 noundef %i.v) #29 ; 0 uses
  %i.x = and i64 %.02833, 63
  %i.y = icmp eq i64 %i.x, 63
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.450, i64 noundef 3) #29 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aa = add nuw i64 %.02833, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !240

bb.g:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.411, i64 noundef 1) #29 ; 0 uses
  br i1 %.not.i30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai) #29
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i64 noundef %i.aj) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.h, %bb.i
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.452, i64 noundef 6) #29 ; 0 uses
  %.not36 = icmp eq i64 %2, 0
  br i1 %.not36, label %._crit_edge35, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ao = add i64 %2, -1                          ; 2 uses
  %.not47 = icmp eq i64 %i.ao, 0
  br i1 %.not47, label %._crit_edge35.loopexit.peel.begin, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aq = add i64 %2, -2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

._crit_edge35.loopexit.peel.begin:                ; preds = %bb.r, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph
  %i.ar = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph ], [ %i.ek, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.au = icmp ult i8 %i.at, 10                   ; 2 uses
  %i.av = icmp ult i8 %i.at, 100
  %..peel = select i1 %i.av, i32 2, i32 3         ; 2 uses
  %i.aw = zext nneg i32 %..peel to i64
  %i.ax = select i1 %i.au, i64 1, i64 %i.aw       ; 6 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !245
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread: ; preds = %._crit_edge35.loopexit.peel.begin
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !245
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel: ; preds = %._crit_edge35.loopexit.peel.begin
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.ax, i1 false)
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !245
  %i.ay = getelementptr i8, ptr %i.am, i64 %i.ax  ; 2 uses
  store i8 0, ptr %i.ay, align 1
  %i.az = icmp ugt i8 %i.at, 99
  br i1 %i.az, label %.lr.ph.preheader.i.i.peel, label %._crit_edge.i.i.peel

.lr.ph.preheader.i.i.peel:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel
  %i.ba = urem i8 %i.at, 100
  %i.bb = shl nuw i8 %i.ba, 1
  %i.bc = udiv i8 %i.at, 100
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !245
  %i.bh = getelementptr i8, ptr %i.ay, i64 -1
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = load i8, ptr %i.be, align 2, !noalias !245
  %i.bj = add nsw i32 %..peel, -2
  %i.bk = zext nneg i32 %i.bj to i64
  br label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread
  %.sink59 = phi i64 [ %i.bk, %.lr.ph.preheader.i.i.peel ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %.sink = phi i8 [ %i.bi, %.lr.ph.preheader.i.i.peel ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %.0.lcssa.i.i.peel.ph = phi i8 [ %i.bc, %.lr.ph.preheader.i.i.peel ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %i.bl = getelementptr i8, ptr %i.am, i64 %.sink59
  store i8 %.sink, ptr %i.bl, align 1
  %i.bm = or disjoint i8 %.0.lcssa.i.i.peel.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.peel

._crit_edge.i.i.peel:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel
  %i.bn = shl nuw i8 %i.at, 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !noalias !245
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = load i8, ptr %i.bp, align 2, !noalias !245
  br label %_ZNSt7__cxx119to_stringEi.exit.peel

_ZNSt7__cxx119to_stringEi.exit.peel:              ; preds = %._crit_edge.i.i.peel, %bb.j
  %storemerge.i.i.peel = phi i8 [ %i.bm, %bb.j ], [ %i.bt, %._crit_edge.i.i.peel ]
  store i8 %storemerge.i.i.peel, ptr %i.am, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.am, i64 noundef %i.ax) #29 ; 4 uses
  %i.bv = icmp eq i64 %i.ar, %i.ao
  %i.bw = select i1 %i.bv, i8 10, i8 44           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bw, ptr %i.a, align 1
  %i.bx = load ptr, ptr %i.bu, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  %.not.i32.peel = icmp eq i64 %i.cc, 0
  br i1 %.not.i32.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.peel
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a, i64 noundef 1) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.peel
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %i.bw) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %5, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.am
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel
  %i.ch = load i64, ptr %i.am, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.cj = and i64 %i.ar, 63
  %i.ck = icmp eq i64 %i.cj, 63
  br i1 %i.ck, label %bb.m, label %._crit_edge35

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.453, i64 noundef 5) #29 ; 0 uses
  %i.cm = lshr i64 %i.ar, 6
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.cm) #29
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.226, i64 noundef 1) #29 ; 0 uses
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.454, i64 noundef 3) #29 ; 0 uses
  br label %bb.s

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split, %bb.r
  %.034 = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split ], [ %i.ek, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.034
  %i.cr = load i8, ptr %i.cq, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.cs = icmp ult i8 %i.cr, 10                   ; 2 uses
  %i.ct = icmp ult i8 %i.cr, 100
  %. = select i1 %i.ct, i32 2, i32 3              ; 2 uses
  %i.cu = zext nneg i32 %. to i64
  %i.cv = select i1 %i.cs, i64 1, i64 %i.cu       ; 6 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !246
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  store i64 %i.cv, ptr %i.an, align 8, !alias.scope !246
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.cv, i1 false)
  store i64 %i.cv, ptr %i.an, align 8, !alias.scope !246
  %i.cw = getelementptr i8, ptr %i.am, i64 %i.cv  ; 2 uses
  store i8 0, ptr %i.cw, align 1
  %i.cx = icmp ugt i8 %i.cr, 99
  br i1 %i.cx, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.cy = urem i8 %i.cr, 100
  %i.cz = shl nuw i8 %i.cy, 1
  %i.da = udiv i8 %i.cr, 100
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !noalias !246
  %i.df = getelementptr i8, ptr %i.cw, i64 -1
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = load i8, ptr %i.dc, align 2, !noalias !246
  %i.dh = add nsw i32 %., -2
  %i.di = zext nneg i32 %i.dh to i64
  br label %bb.n, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.dj = shl nuw i8 %i.cr, 1
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !246
  store i8 %i.dn, ptr %i.ap, align 1
  %i.do = load i8, ptr %i.dl, align 2, !noalias !246
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread
  %.sink62 = phi i64 [ %i.di, %.lr.ph.preheader.i.i ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.sink60 = phi i8 [ %i.dg, %.lr.ph.preheader.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.da, %.lr.ph.preheader.i.i ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %i.dp = getelementptr i8, ptr %i.am, i64 %.sink62
  store i8 %.sink60, ptr %i.dp, align 1
  %i.dq = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i, %bb.n
  %storemerge.i.i = phi i8 [ %i.dq, %bb.n ], [ %i.do, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.am, align 8
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.am, i64 noundef %i.cv) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 44, ptr %i.a, align 1
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8
  %.not.i32 = icmp eq i64 %i.dx, 0
  br i1 %.not.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull %i.a, i64 noundef 1) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.p:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i8 noundef signext 44) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ea = load ptr, ptr %5, align 8               ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.am
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ec = load i64, ptr %i.am, align 8
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ee = and i64 %.034, 63
  %i.ef = icmp eq i64 %i.ee, 63
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.453, i64 noundef 5) #29 ; 0 uses
  %i.eh = lshr i64 %.034, 6
  %i.ei = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.eh) #29
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.226, i64 noundef 1) #29 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %i.ek = add nuw i64 %.034, 1                    ; 2 uses
  %exitcond37.not = icmp eq i64 %.034, %i.aq
  br i1 %exitcond37.not, label %._crit_edge35.loopexit.peel.begin, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, !llvm.loop !244

bb.s:                                             ; preds = %._crit_edge35, %._crit_edge
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4nodelsERSoRKNS_24IsolateDataSerializeInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4nodelsERSoRKNS_16SnapshotMetadataE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node15SnapshotBuilder25CollectExternalReferencesEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !249 ; 2 uses
  tail call void @_ZN4node25ExternalReferenceRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29, !noalias !249
  store ptr %i.d, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8, !alias.scope !249
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #29
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #32
  br label %_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit

_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node15SnapshotBuilder23InitializeIsolateParamsEPKNS_12SnapshotDataEPN2v87Isolate12CreateParamsE(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node15SnapshotBuilder23InitializeIsolateParamsEPKNS_12SnapshotDataEPN2v87Isolate12CreateParamsEE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load atomic i8, ptr @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.j = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !252 ; 2 uses
  tail call void @_ZN4node25ExternalReferenceRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #29, !noalias !252
  store ptr %i.j, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8, !alias.scope !252
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  br label %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit

_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load ptr, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l) #29
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.o, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4nodeorENS_13SnapshotFlagsES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = or i32 %1, %0
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4nodeanENS_13SnapshotFlagsES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = and i32 %1, %0
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN4nodeoRERNS_13SnapshotFlagsES0_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = or i32 %i.a, %1                          ; 2 uses
  store i32 %i.b, ptr %0, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4node16WithoutCodeCacheERKNS_13SnapshotFlagsE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #9 {
end_hunk_1
begin_hunk_2_@_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmEEES6_St17basic_string_viewIcS4_EOT_DpOT0_:bb.a
  %i.bz = load i64, ptr %i.bx, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.cc = load ptr, ptr %17, align 8              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.ch = load ptr, ptr %18, align 8              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ck = load i64, ptr %i.ci, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #29
  call void @abort() #30
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.cm = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.cn = icmp ugt i64 %i.cm, %1
  br i1 %i.cn, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.375, i64 noundef %i.cm, i64 noundef %1) #30
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.r
  %i.co = sub nuw i64 %1, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.co, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !722
  %i.cs = load ptr, ptr %7, align 8, !noalias !722
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cs, i64 noundef %i.cr), !noalias !722 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !alias.scope !722
  %i.cv = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8            ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cv, ptr %0, align 8, !alias.scope !722
  %i.dc = load i64, ptr %i.cw, align 8
  store i64 %i.dc, ptr %i.cu, align 8, !alias.scope !722
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.dd = phi i64 [ %i.cz, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dd, ptr %i.df, align 8, !alias.scope !722
  store ptr %i.cw, ptr %i.ct, align 8
  store i64 0, ptr %i.de, align 8
  store i8 0, ptr %i.cw, align 8
  %i.dg = load ptr, ptr %19, align 8              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.dj = load i64, ptr %i.dh, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.dl = load ptr, ptr %7, align 8               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.u
  %i.do = load i64, ptr %i.dm, align 8
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node16BlobDeserializerINS_20SnapshotDeserializerEE14ReadArithmeticIhEEvPT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %2, ptr %i.a, align 8
  %i.d = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNK4node26BlobSerializerDeserializer7GetNameIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 1, ptr %i.b, align 8
  %i.f = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.h, i64 31, ptr nonnull @.str.383, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.n, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.s, i64 %i.n, i1 false)
  %i.t = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.l

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.v = load i8, ptr %1, align 1                 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.w = icmp ult i8 %i.v, 10                     ; 2 uses
  %i.x = icmp ult i8 %i.v, 100
  %. = select i1 %i.x, i32 2, i32 3               ; 2 uses
  %i.y = zext nneg i32 %. to i64
  %i.z = select i1 %i.w, i64 1, i64 %i.y          ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aa, ptr %6, align 8, !alias.scope !729
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !alias.scope !729
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i8 45, i64 %i.z, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %i.ac, align 8, !alias.scope !729
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.z   ; 2 uses
  store i8 0, ptr %i.ad, align 1
  %i.ae = icmp ugt i8 %i.v, 99
  br i1 %i.ae, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.af = urem i8 %i.v, 100
  %i.ag = shl nuw i8 %i.af, 1
  %i.ah = udiv i8 %i.v, 100
  %i.ai = zext i8 %i.ag to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noalias !729
  %i.am = getelementptr i8, ptr %i.ad, i64 -1
  store i8 %i.al, ptr %i.am, align 1
  %i.an = load i8, ptr %i.aj, align 2, !noalias !729
  %i.ao = add nsw i32 %., -2
  %i.ap = zext nneg i32 %i.ao to i64
  br label %bb.e, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.aq = shl nuw i8 %i.v, 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !noalias !729
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = load i8, ptr %i.as, align 2, !noalias !729
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.e:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread
  %.sink32 = phi i64 [ %i.ap, %.lr.ph.preheader.i.i ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.sink = phi i8 [ %i.an, %.lr.ph.preheader.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %i.ax = getelementptr i8, ptr %i.aa, i64 %.sink32
  store i8 %.sink, ptr %i.ax, align 1
  %i.ay = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i, %bb.e
  %storemerge.i.i = phi i8 [ %i.ay, %bb.e ], [ %i.aw, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.384, i64 noundef 2), !noalias !730 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.ba, ptr %5, align 8, !alias.scope !730
  %i.bb = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.bb, ptr %5, align 8, !alias.scope !730
  %i.bi = load i64, ptr %i.bc, align 8
  store i64 %i.bi, ptr %i.ba, align 8, !alias.scope !730
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.bj = phi ptr [ %i.ba, %bb.f ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ] ; 2 uses
  %i.bk = phi i64 [ %i.bf, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.bk, ptr %i.bm, align 8, !alias.scope !730
  store ptr %i.bc, ptr %i.az, align 8
  store i64 0, ptr %i.bl, align 8
  store i8 0, ptr %i.bc, align 8
  %i.bn = load i64, ptr %i.a, align 8
  %i.bo = icmp ugt i64 %i.bn, 1                   ; 2 uses
  %i.bp = select i1 %i.bo, ptr @.str.385, ptr @.str.22 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.bq = select i1 %i.bo, i64 7, i64 2           ; 4 uses
  %i.br = sub i64 9223372036854775807, %i.bk
  %i.bs = icmp ult i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #30, !noalias !731
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.bt = add i64 %i.bk, %i.bq                    ; 3 uses
  %i.bu = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bv = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bw = load i64, ptr %i.ba, align 8, !noalias !731
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bx = phi i64 [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.by, ptr noundef nonnull align 1 dereferenceable(2) %i.bp, i64 %i.bq, i1 false), !noalias !731
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bk, i64 noundef 0, ptr noundef nonnull %i.bp, i64 noundef %i.bq), !noalias !731
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i, %bb.h
  store i64 %i.bt, ptr %i.bm, align 8, !noalias !731
  %i.bz = load ptr, ptr %5, align 8, !noalias !731
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt
  store i8 0, ptr %i.ca, align 1, !noalias !731
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.cb, ptr %4, align 8, !alias.scope !731
  %i.cc = load ptr, ptr %5, align 8, !noalias !731 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ba
  br i1 %i.cd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ce = load i64, ptr %i.bm, align 8, !noalias !731 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.cg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cc, ptr %4, align 8, !alias.scope !731
  %i.ch = load i64, ptr %i.ba, align 8, !noalias !731
  store i64 %i.ch, ptr %i.cb, align 8, !alias.scope !731
  %.pre.i5 = load i64, ptr %i.bm, align 8, !noalias !731
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ci = phi i64 [ %i.ce, %bb.j ], [ %.pre.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !alias.scope !731
  store ptr %i.ba, ptr %5, align 8, !noalias !731
  store i64 0, ptr %i.bm, align 8, !noalias !731
  store i8 0, ptr %i.ba, align 8, !noalias !731
  %i.ck = load ptr, ptr %6, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aa
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.cm = load i64, ptr %i.aa, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.co = load i8, ptr %0, align 8, !range !36, !noundef !37
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.k, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.cq = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.cq, i64 19, ptr nonnull @.str.386, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #34
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.k
  %i.cr = load ptr, ptr %4, align 8               ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cb
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit
  %i.ct = load i64, ptr %i.cb, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pre15 = load i64, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.d
  %i.cv = phi i64 [ %.pre15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.n, %bb.d ]
  %i.cw = load i64, ptr %i.q, align 8
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #14 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

end_hunk_2
