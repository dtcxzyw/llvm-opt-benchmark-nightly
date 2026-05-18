inline.NumInlined: 7915
inline.NumDeleted: 2037
begin_hunk_0_@_ZN6duckdb20IntervalToStringCast6FormatENS_10interval_tEPc:bb.a
  store i8 48, ptr %i.ay, align 1, !tbaa !23
  %i.bb = trunc i64 %.neg48 to i8
  %i.bc = add i8 %i.bb, 48
  br label %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = shl nsw i64 %.neg48, 1
  %i.be = and i64 %i.bd, 4294967294
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23
  store i8 %i.bg, ptr %i.ay, align 1, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23
  br label %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit

_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit: ; preds = %bb.t, %bb.u
  %.sink.i.i = phi i8 [ %i.bc, %bb.t ], [ %i.bi, %bb.u ]
  %i.bj = getelementptr i8, ptr %i.ax, i64 2
  store i8 %.sink.i.i, ptr %i.bj, align 1, !tbaa !23
  %i.bk = getelementptr i8, ptr %i.aw, i64 3
  store i8 58, ptr %i.bk, align 1, !tbaa !23
  %i.bl = getelementptr i8, ptr %2, i64 %i.av     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %i.bn = trunc i64 %.neg49 to i32
  %i.bo = icmp slt i32 %i.bn, 10
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit
  store i8 48, ptr %i.bm, align 1, !tbaa !23
  %i.bp = trunc i64 %.neg49 to i8
  %i.bq = add i8 %i.bp, 48
  br label %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit58

bb.w:                                             ; preds = %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit
  %i.br = shl nsw i64 %.neg49, 1
  %i.bs = and i64 %i.br, 4294967294
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  store i8 %i.bu, ptr %i.bm, align 1, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  br label %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit58

_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit58: ; preds = %bb.v, %bb.w
  %.sink.i.i57 = phi i8 [ %i.bq, %bb.v ], [ %i.bw, %bb.w ]
  %i.bx = getelementptr i8, ptr %i.bl, i64 5
  store i8 %.sink.i.i57, ptr %i.bx, align 1, !tbaa !23
  %i.by = add i64 %i.av, 6                        ; 2 uses
  %.not52 = icmp eq i64 %.neg50, %i.ar
  br i1 %.not52, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit58
  %i.bz = add i64 %i.av, 7
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  store i8 46, ptr %i.ca, align 1, !tbaa !23
  %i.cb = call noundef i32 @_ZN6duckdb15NumericCastImplIilLb0EE7ConvertEl(i64 noundef %.neg51)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cc
  %i.ce = call noundef i32 @_ZN6duckdb16TimeToStringCast12FormatMicrosEiPc(i32 noundef %i.cb, ptr noundef %i.cd)
  %i.cf = sub nsw i32 6, %i.ce
  %i.cg = call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.cf)
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ci = add i64 %i.ch, %i.cg
  br label %bb.aa

bb.y:                                             ; preds = %_ZN6duckdb20IntervalToStringCast19FormatIntervalValueEiPcRmPKcm.exit56
  br i1 %i.af, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 3472339291344613424, ptr %2, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.x, %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit58, %bb.z
  %.0 = phi i64 [ 8, %bb.z ], [ %i.by, %_ZN6duckdb20IntervalToStringCast15FormatTwoDigitsElPcRm.exit58 ], [ %i.ci, %bb.x ], [ %i.ae, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationINS_10uhugeint_tEEENS_8string_tET_RNS_6VectorE(i64 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb20UhugeintToStringCast6FormatENS_10uhugeint_tERNS_6VectorE(i64 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(104) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb20UhugeintToStringCast6FormatENS_10uhugeint_tERNS_6VectorE(i64 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNK6duckdb10uhugeint_t8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = invoke { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 3 uses
  store i64 %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = trunc i64 %i.e to i32
  %i.i = icmp ult i32 %i.h, 13                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.k = select i1 %i.i, ptr %i.j, ptr %i.g
  %i.l = load ptr, ptr %5, align 8, !tbaa !18
  %i.m = load i64, ptr %i.b, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.l, i64 %i.m, i1 false)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %i.e, 15                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  %i.p = sub nuw nsw i64 12, %i.n
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = load i32, ptr %i.q, align 1
  store i32 %i.r, ptr %i.j, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit
  call void @_ZdlPv(ptr noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.load = load ptr, ptr %i.f, align 8
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationINS_6date_tEEENS_8string_tET_RNS_6VectorE(i32 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  switch i32 %0, label %bb.d [
    i32 2147483647, label %bb.b
    i32 -2147483647, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN6duckdb4Date4PINFE, align 8, !tbaa !923
  %i.c = tail call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.b)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN6duckdb4Date4NINFE, align 8, !tbaa !923
  %i.e = tail call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.d)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_(i32 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.i = icmp slt i32 %i.h, 1                     ; 2 uses
  br i1 %i.i, label %bb.e, label %_ZN6duckdb16DateToStringCast6LengthEPiRmRb.exit

bb.e:                                             ; preds = %bb.d
  %i.j = sub i32 1, %i.h                          ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  br label %_ZN6duckdb16DateToStringCast6LengthEPiRmRb.exit

_ZN6duckdb16DateToStringCast6LengthEPiRmRb.exit:  ; preds = %bb.d, %bb.e
  %i.k = phi i32 [ %i.j, %bb.e ], [ %i.h, %bb.d ] ; 4 uses
  %.0.i.i = phi i64 [ 11, %bb.e ], [ 6, %bb.d ]
  %3 = icmp sgt i32 %i.k, 9999
  %4 = select i1 %3, i64 5, i64 4
  %5 = icmp sgt i32 %i.k, 99999
  %6 = zext i1 %5 to i64
  %7 = add nuw nsw i64 %4, %6
  %8 = icmp sgt i32 %i.k, 999999
  %9 = zext i1 %8 to i64
  %10 = add nuw nsw i64 %7, %9
  %11 = icmp sgt i32 %i.k, 9999999
  %12 = zext i1 %11 to i64
  %13 = add nuw nsw i64 %10, %12                  ; 2 uses
  %i.l = add nuw nsw i64 %13, %.0.i.i
  %i.m = call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.l) ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0        ; 2 uses
  store i64 %i.n, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  %i.q = trunc i64 %i.n to i32
  %i.r = icmp ult i32 %i.q, 13
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.t = select i1 %i.r, ptr %i.s, ptr %i.p
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3
  %i.v = load i32, ptr %i.f, align 4, !tbaa !3
  %i.w = load i32, ptr %i.g, align 4, !tbaa !3
  call void @_ZN6duckdb16DateToStringCast6FormatEPciiimb(ptr noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, i64 noundef %13, i1 noundef zeroext %i.i)
  %i.x = load i32, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.y = icmp ult i32 %i.x, 13
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb16DateToStringCast6LengthEPiRmRb.exit
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.z
  %i.ab = sub nuw nsw i64 12, %i.z
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.ab, i1 false)
  %.fca.1.load.pre.pre = load ptr, ptr %i.o, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.g:                                             ; preds = %_ZN6duckdb16DateToStringCast6LengthEPiRmRb.exit
  %i.ac = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 1
  store i32 %i.ad, ptr %i.s, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.f, %bb.g
  %.fca.1.load.pre = phi ptr [ %.fca.1.load.pre.pre, %bb.f ], [ %i.ac, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.fca.0.load.pre = load i64, ptr %2, align 8
  %i.ae = insertvalue { i64, ptr } poison, i64 %.fca.0.load.pre, 0
  %i.af = insertvalue { i64, ptr } %i.ae, ptr %.fca.1.load.pre, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit, %bb.c, %bb.b
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.af, %_ZN6duckdb8string_t8FinalizeEv.exit ], [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret { i64, ptr } %.fca.1.insert.merged
}

declare void @_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_(i32, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationINS_7dtime_tEEENS_8string_tET_RNS_6VectorE(i64 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb12StringAsTimeILb0EEENS_8string_tENS_7dtime_tERNS_6VectorE(i64 %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb12StringAsTimeILb0EEENS_8string_tENS_7dtime_tERNS_6VectorE(i64 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 12 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = alloca [10 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  call void @_ZN6duckdb4Time7ConvertENS_7dtime_tERiS2_S2_S2_(i64 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, i8 0, i64 10, i1 false)
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN6duckdb16TimeToStringCast6LengthEPiPc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef i32 @_ZN6duckdb16TimeToStringCast12FormatMicrosEiPc(i32 noundef %i.f, ptr noundef nonnull %i.b)
  %i.i = call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.h)
  %i.j = sub i64 15, %i.i
  br label %_ZN6duckdb16TimeToStringCast6LengthEPiPc.exit

_ZN6duckdb16TimeToStringCast6LengthEPiPc.exit:    ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ 8, %bb.a ] ; 3 uses
  %i.k = call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.0.i.i) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 3 uses
  store i64 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.n = extractvalue { i64, ptr } %i.k, 1        ; 11 uses
  store ptr %i.n, ptr %i.m, align 8
  %i.o = trunc i64 %i.l to i32
  %i.p = icmp ult i32 %i.o, 13                    ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.n       ; 2 uses
  %i.s = load i32, ptr %i.a, align 16, !tbaa !3   ; 3 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  %i.u = load i32, ptr %i.d, align 8, !tbaa !3    ; 3 uses
  %i.v = icmp slt i32 %i.s, 10
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb16TimeToStringCast6LengthEPiPc.exit
  store i8 48, ptr %i.r, align 1, !tbaa !23
  %i.w = trunc i32 %i.s to i8
  %i.x = add i8 %i.w, 48
  br label %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit.i.i

bb.d:                                             ; preds = %_ZN6duckdb16TimeToStringCast6LengthEPiPc.exit
  %i.y = shl nuw nsw i32 %i.s, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  store i8 %i.ab, ptr %i.r, align 1, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  br label %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit.i.i

_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i8 [ %i.x, %bb.c ], [ %i.ad, %bb.d ]
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.sel = select i1 %i.p, ptr %.sroa.gep, ptr %.sroa.gep15
  store i8 %.sink.i.i.i, ptr %.sroa.sel, align 1, !tbaa !23
  %.sroa.gep16 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.gep17 = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %.sroa.sel18 = select i1 %i.p, ptr %.sroa.gep16, ptr %.sroa.gep17
  store i8 58, ptr %.sroa.sel18, align 1, !tbaa !23
  %.sroa.gep19 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %.sroa.sel21 = select i1 %i.p, ptr %.sroa.gep19, ptr %.sroa.gep20 ; 2 uses
  %i.ae = icmp slt i32 %i.t, 10
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit.i.i
  store i8 48, ptr %.sroa.sel21, align 1, !tbaa !23
  %i.af = trunc i32 %i.t to i8
  %i.ag = add i8 %i.af, 48
  br label %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit13.i.i

bb.f:                                             ; preds = %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit.i.i
  %i.ah = shl nuw nsw i32 %i.t, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  store i8 %i.ak, ptr %.sroa.sel21, align 1, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  br label %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit13.i.i

_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit13.i.i: ; preds = %bb.f, %bb.e
  %.sink.i12.i.i = phi i8 [ %i.ag, %bb.e ], [ %i.am, %bb.f ]
  %.sroa.gep23 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.sel24 = select i1 %i.p, ptr %i.m, ptr %.sroa.gep23
  store i8 %.sink.i12.i.i, ptr %.sroa.sel24, align 1, !tbaa !23
  %.sroa.gep25 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %.sroa.gep26 = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %.sroa.sel27 = select i1 %i.p, ptr %.sroa.gep25, ptr %.sroa.gep26
  store i8 58, ptr %.sroa.sel27, align 1, !tbaa !23
  %.sroa.gep28 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sroa.gep29 = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %.sroa.sel30 = select i1 %i.p, ptr %.sroa.gep28, ptr %.sroa.gep29 ; 2 uses
  %i.an = icmp slt i32 %i.u, 10
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit13.i.i
  store i8 48, ptr %.sroa.sel30, align 1, !tbaa !23
  %i.ao = trunc i32 %i.u to i8
  %i.ap = add i8 %i.ao, 48
  br label %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit15.i.i

bb.h:                                             ; preds = %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit13.i.i
  %i.aq = shl nuw nsw i32 %i.u, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !23
  store i8 %i.at, ptr %.sroa.sel30, align 1, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !23
  br label %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit15.i.i

_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit15.i.i: ; preds = %bb.h, %bb.g
  %.sink.i14.i.i = phi i8 [ %i.ap, %bb.g ], [ %i.av, %bb.h ]
  %.sroa.gep31 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %.sroa.sel33 = select i1 %i.p, ptr %.sroa.gep31, ptr %.sroa.gep32
  store i8 %.sink.i14.i.i, ptr %.sroa.sel33, align 1, !tbaa !23
  %i.aw = icmp ugt i64 %.0.i.i, 8
  br i1 %i.aw, label %bb.i, label %_ZN6duckdb16TimeToStringCast6FormatEPcmPiS1_.exit

bb.i:                                             ; preds = %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit15.i.i
  %.sroa.gep34 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.sel36 = select i1 %i.p, ptr %.sroa.gep34, ptr %.sroa.gep35
  store i8 46, ptr %.sroa.sel36, align 1, !tbaa !23
  %.sroa.gep37 = getelementptr inbounds nuw i8, ptr %2, i64 13
  %.sroa.gep38 = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %.sroa.sel39 = select i1 %i.p, ptr %.sroa.gep37, ptr %.sroa.gep38
  %i.ax = add i64 %.0.i.i, -9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.sel39, ptr nonnull align 1 %i.b, i64 %i.ax, i1 false)
  br label %_ZN6duckdb16TimeToStringCast6FormatEPcmPiS1_.exit

_ZN6duckdb16TimeToStringCast6FormatEPcmPiS1_.exit: ; preds = %_ZN6duckdb16TimeToStringCast15FormatTwoDigitsEPci.exit15.i.i, %bb.i
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6duckdb16TimeToStringCast6FormatEPcmPiS1_.exit
  %i.ay = and i64 %i.l, 15                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ay
  %i.ba = sub nuw nsw i64 12, %i.ay
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ba, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.m, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.k:                                             ; preds = %_ZN6duckdb16TimeToStringCast6FormatEPcmPiS1_.exit
  %i.bb = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 1
  store i32 %i.bc, ptr %i.q, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.j, %bb.k
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.j ], [ %i.bb, %bb.k ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb6VectorD2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !54

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2807 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !2810
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !2812
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !2813
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !2813
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, !prof !54

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2807 ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i6, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !2810
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !2812
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !242
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !2814
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !242
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !2814
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !54

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !2815
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !2815
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthIhEEiT_(i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6duckdb9Timestamp7ConvertENS_14timestamp_ns_tERNS_6date_tERNS_7dtime_tERi(i64, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v8i16(<8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v4i16(<4 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN6duckdb12optional_ptrINS_14CastParametersELb1EEE", !11, i64 0}
!11 = !{!"p1 _ZTSN6duckdb14CastParametersE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN6duckdb12optional_ptrIKNS_10ExpressionELb1EEE", !17, i64 0}
!17 = !{!"p1 _ZTSN6duckdb10ExpressionE", !12, i64 0}
!18 = !{!19, !21, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !14, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!20, !21, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!19, !14, i64 8}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!27 = distinct !{!27, !"_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!28 = distinct !{!28, !29, !"_ZN6duckdb10StringUtil6FormatIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_DpT_: argument 0"}
!29 = distinct !{!29, !"_ZN6duckdb10StringUtil6FormatIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_DpT_"}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!32 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !12, i64 0}
!33 = !{!31, !32, i64 8}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!38 = distinct !{!38, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!39 = !{!40, !40, i64 0}
!40 = !{!"bool", !5, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !5, i64 0}
!43 = !{!44, !14, i64 8}
!44 = !{!"_ZTSN6duckdb9hugeint_tE", !14, i64 0, !14, i64 8}
!45 = !{!44, !14, i64 0}
!46 = !{!47, !14, i64 8}
!47 = !{!"_ZTSN6duckdb10uhugeint_tE", !14, i64 0, !14, i64 8}
!48 = !{!47, !14, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !5, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !5, i64 0}
!53 = distinct !{!53, !35}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = !{!64, !42, i64 0}
!64 = !{!"_ZTSN6duckdb15IntegerCastDataIsEE", !42, i64 0}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !35}
!67 = !{!68, !14, i64 8}
!68 = !{!"_ZTSN6duckdb22IntegerDecimalCastDataIaEE", !14, i64 0, !14, i64 8, !42, i64 16}
!69 = !{!68, !42, i64 16}
!70 = !{!68, !14, i64 0}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35}
!76 = distinct !{!76, !35}
!77 = distinct !{!77, !35}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35}
!81 = !{!82, !14, i64 8}
!82 = !{!"_ZTSN6duckdb22IntegerDecimalCastDataIsEE", !14, i64 0, !14, i64 8, !42, i64 16}
!83 = !{!82, !42, i64 16}
!84 = !{!82, !14, i64 0}
!85 = distinct !{!85, !35}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !35}
!89 = distinct !{!89, !35}
!90 = distinct !{!90, !35}
!91 = distinct !{!91, !35}
!92 = distinct !{!92, !35}
!93 = distinct !{!93, !35}
!94 = distinct !{!94, !35}
!95 = distinct !{!95, !35}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35}
!98 = distinct !{!98, !35}
!99 = !{!100, !14, i64 8}
!100 = !{!"_ZTSN6duckdb22IntegerDecimalCastDataIiEE", !14, i64 0, !14, i64 8, !42, i64 16}
!101 = !{!100, !42, i64 16}
!102 = !{!100, !14, i64 0}
!103 = distinct !{!103, !35}
!104 = distinct !{!104, !35}
!105 = distinct !{!105, !35}
!106 = distinct !{!106, !35}
!107 = distinct !{!107, !35}
!108 = distinct !{!108, !35}
!109 = distinct !{!109, !35}
!110 = distinct !{!110, !35}
!111 = distinct !{!111, !35}
!112 = distinct !{!112, !35}
!113 = distinct !{!113, !35}
!114 = distinct !{!114, !35}
!115 = distinct !{!115, !35}
!116 = distinct !{!116, !35}
!117 = !{!118, !14, i64 8}
!118 = !{!"_ZTSN6duckdb22IntegerDecimalCastDataIlEE", !14, i64 0, !14, i64 8, !42, i64 16}
!119 = !{!118, !42, i64 16}
!120 = !{!118, !14, i64 0}
!121 = distinct !{!121, !35}
!122 = distinct !{!122, !35}
!123 = distinct !{!123, !35}
!124 = distinct !{!124, !35}
!125 = distinct !{!125, !35}
!126 = distinct !{!126, !35}
!127 = distinct !{!127, !35}
!128 = distinct !{!128, !35}
!129 = distinct !{!129, !35}
!130 = distinct !{!130, !35}
!131 = distinct !{!131, !35}
!132 = distinct !{!132, !35}
!133 = distinct !{!133, !35}
!134 = distinct !{!134, !35}
!135 = distinct !{!135, !35}
!136 = distinct !{!136, !35}
!137 = !{!138, !14, i64 8}
!138 = !{!"_ZTSN6duckdb22IntegerDecimalCastDataIhEE", !14, i64 0, !14, i64 8, !42, i64 16}
!139 = !{!138, !42, i64 16}
!140 = !{!138, !14, i64 0}
!141 = distinct !{!141, !35}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !35}
!144 = distinct !{!144, !35}
!145 = distinct !{!145, !35}
!146 = distinct !{!146, !35}
end_hunk_1
