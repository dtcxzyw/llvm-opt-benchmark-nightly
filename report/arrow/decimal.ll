Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/decimal?download=true
inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow6Status7InvalidIJRA61_KcRiRA23_S2_RKiRA6_S2_S9_EEES0_DpOT_:bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !107, !noalias !390
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !390
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA61_KcRiRA23_S2_RKiRA6_S2_S9_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !390
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_9Decimal32E(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !391 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK5arrow9Decimal3215ToIntegerStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !91
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !107
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !107
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9Decimal6413FromBigEndianEPKhi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.3") align 8 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !392 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !10
  %i.c = add i32 %2, -9
  %i.d = icmp ult i32 %i.c, -8
  br i1 %i.d, label %bb.b, label %bb.e, !prof !115

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow6Status7InvalidIJRA61_KcRiRA23_S2_RKiRA6_S2_S9_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(61) @.str.14, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(23) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5arrow9Decimal6413FromBigEndianEPKhiE16kMinDecimalBytes, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5arrow9Decimal6413FromBigEndianEPKhiE16kMaxDecimalBytes)
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.e = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !92

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !101, !range !102, !noundef !103
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.lobit = ashr i8 %i.i, 7
  %i.j = sext i8 %.lobit to i64
  store i64 %i.j, ptr %i.b, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %1, i64 %i.l, i1 false)
  %i.o = load i64, ptr %i.b, align 8, !tbaa !114
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_9Decimal64E(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !393 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK5arrow9Decimal6415ToIntegerStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !91
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !107
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !107
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal12813FromBigEndianEPKhi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.11") align 8 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !394 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i32 %2, ptr %i.c, align 4, !tbaa !10
  %i.d = add i32 %2, -17
  %i.e = icmp ult i32 %i.d, -16
  br i1 %i.e, label %bb.b, label %bb.e, !prof !115

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow6Status7InvalidIJRA58_KcRA5_S2_RiRA23_S2_RKiRA6_S2_SB_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(58) @.str.15, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5arrow10Decimal12813FromBigEndianEPKhiE16kMinDecimalBytes, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5arrow10Decimal12813FromBigEndianEPKhiE16kMaxDecimalBytes)
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.f = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !92

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !101, !range !102, !noundef !103
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.j = load i8, ptr %1, align 1, !tbaa !107     ; 2 uses
  %.sroa.speculated27 = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 8) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = zext nneg i32 %.sroa.speculated27 to i64 ; 3 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %1, i64 %i.l, i1 false)
  %i.o = load i64, ptr %i.b, align 8, !tbaa !114
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.q = icmp eq i32 %.sroa.speculated27, 8
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp slt i8 %i.j, 0
  %i.s = icmp samesign ult i32 %2, 16
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = sext i1 %i.t to i64
  %i.v = shl nuw nsw i32 %.sroa.speculated27, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nsw i64 %i.u, %i.w
  %i.y = or i64 %i.p, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.021 = phi i64 [ %i.y, %bb.f ], [ %i.p, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.aa = sub nsw i32 %2, %.sroa.speculated27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.z, i64 %i.ac, i1 false)
  %i.af = load i64, ptr %i.a, align 8, !tbaa !114
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ah = icmp samesign ugt i32 %2, 7
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.lobit = ashr i8 %i.j, 7
  %i.ai = sext i8 %.lobit to i64
  %i.aj = shl nuw nsw i32 %2, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ai, %i.ak
  %i.am = or i64 %i.ag, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i64 [ %i.am, %bb.h ], [ %i.ag, %bb.g ]
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.021, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA58_KcRA5_S2_RiRA23_S2_RKiRA6_S2_SB_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(58) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !397 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !398
  call void @_ZN5arrow8internal12JoinToStringIJRA58_KcRA5_S2_RiRA23_S2_RKiRA6_S2_SB_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(58) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 4 dereferenceable(4) %7), !noalias !398
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %8, align 8, !tbaa !90, !noalias !398 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA58_KcRA5_S2_RiRA23_S2_RKiRA6_S2_SB_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !107, !noalias !398
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZN5arrow6Status8FromArgsIJRA58_KcRA5_S2_RiRA23_S2_RKiRA6_S2_SB_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !90, !noalias !398 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !107, !noalias !398
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !398
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA58_KcRA5_S2_RiRA23_S2_RKiRA6_S2_SB_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !398
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_10Decimal128E(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !399 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK5arrow10Decimal12815ToIntegerStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !91
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !107
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !107
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !406 {
bb.a:
  %2 = alloca %"class.arrow::Decimal256", align 8 ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Result.17", align 8  ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !90, !noalias !407
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !91, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !408
  call void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i64 %i.c, ptr %i.a, ptr noundef nonnull %2, ptr noundef null, ptr noundef null), !noalias !408
  %i.d = load ptr, ptr %4, align 8, !tbaa !83, !noalias !408 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !83, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !408
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread8, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.f = load ptr, ptr %3, align 8, !tbaa !83, !noalias !408 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i4.i.i, label %_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c, !prof !92

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !101, !range !102, !noundef !103
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread8:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !408
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !408
  %.pr = load ptr, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !408
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !104

.thread:                                          ; preds = %_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
end_hunk_0
