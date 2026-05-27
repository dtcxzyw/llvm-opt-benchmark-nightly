inline.NumInlined: 1266
inline.NumDeleted: 647
begin_hunk_0
@.str.64 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN4node9inspector21InspectorSocketServerC1ESt10unique_ptrINS0_20SocketServerDelegateESt14default_deleteIS3_EEP9uv_loop_sRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_17InspectPublishUidEP8_IO_FILE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN4node9inspector21InspectorSocketServerC2ESt10unique_ptrINS0_20SocketServerDelegateESt14default_deleteIS3_EEP9uv_loop_sRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_17InspectPublishUidEP8_IO_FILE
@_ZN4node9inspector21InspectorSocketServerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4node9inspector21InspectorSocketServerD2Ev
@_ZN4node9inspector13SocketSessionC1EPNS0_21InspectorSocketServerEii = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN4node9inspector13SocketSessionC2EPNS0_21InspectorSocketServerEii

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector15FormatWsAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_b(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call fastcc void @_ZN4node9inspector12_GLOBAL__N_114FormatHostPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2)
  call fastcc void @_ZN4node9inspector12_GLOBAL__N_113FormatAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4)
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4node9inspector12_GLOBAL__N_113FormatAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 328
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 336
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 337
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.g, ptr %4, align 8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %4, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8
  %i.l = load ptr, ptr %4, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 16, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  %i.w = load ptr, ptr %4, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef nonnull %i.p) #20
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.39, i64 noundef 5) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ab, i64 noundef %i.ad) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.a, i64 noundef 1) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext 47) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.al, %bb.d ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = load ptr, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.an, i64 noundef %i.ap) #20 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !alias.scope !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !alias.scope !11
  store i8 0, ptr %i.ar, align 8, !alias.scope !11
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !noalias !11 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !11 ; 2 uses
  %i.ax = icmp ugt ptr %i.au, %i.aw
  %.08.i.i.i = select i1 %i.ax, ptr %i.au, ptr %i.aw ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !11 ; 2 uses
  %i.ba = ptrtoint ptr %.08.i.i.i to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.az, i64 noundef %i.bc) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.g
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %4, align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.bj = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.u
  br i1 %i.bk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bl = load i64, ptr %i.u, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4node9inspector12_GLOBAL__N_114FormatHostPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 41 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = tail call ptr @memchr(ptr noundef %i.f, i32 noundef 58, i64 noundef %i.e) #20
  %i.h = icmp eq ptr %i.g, null
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  %.1.i = phi i1 [ %i.h, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ true, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.i) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 337
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.n, ptr %3, align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.p = getelementptr i8, ptr %i.n, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q
  store ptr %i.o, ptr %i.r, align 8
  %i.s = load ptr, ptr %3, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %3, i64 %i.u
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.v, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 16, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %3, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, ptr noundef nonnull %i.w) #20
  br i1 %.1.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 91, ptr %i.c, align 1
  %i.ah = load ptr, ptr %3, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8
  %.not.i4 = icmp eq i64 %i.am, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef 1) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 91) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ap, i64 noundef %i.aq) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 93, ptr %i.b, align 1
  %i.as = load ptr, ptr %3, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %.not.i6 = icmp eq i64 %i.ax, 0
  br i1 %.not.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 1) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 93) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = load i64, ptr %i.d, align 8
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ba, i64 noundef %i.bb) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1
  %i.bd = load ptr, ptr %3, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8
  %.not.i9 = icmp eq i64 %i.bi, 0
  br i1 %.not.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 1) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11

bb.i:                                             ; preds = %bb.g
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 58) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11: ; preds = %bb.h, %bb.i
  %.0.i10 = phi ptr [ %i.bj, %bb.h ], [ %3, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i10, i32 noundef %2) #20 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !alias.scope !18
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bn, align 8, !alias.scope !18
  store i8 0, ptr %i.bm, align 8, !alias.scope !18
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !18 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !18 ; 2 uses
  %i.bs = icmp ugt ptr %i.bp, %i.br
  %.08.i.i.i = select i1 %i.bs, ptr %i.bp, ptr %i.br ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !18 ; 2 uses
  %i.bv = ptrtoint ptr %.08.i.i.i to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bu, i64 noundef %i.bx) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.k
  %i.bz = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bz, ptr %3, align 8
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.ce = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ab
  br i1 %i.cf, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cg = load i64, ptr %i.ab, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector25PrintDebuggerReadyMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10unique_ptrINS0_12ServerSocketENS_15FunctionDeleterISB_XadL_ZNS0_21InspectorSocketServer17CloseServerSocketEPSB_EEEEESaISG_EERKS9_IS6_SaIS6_EEPKcbP8_IO_FILE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ne ptr %5, null
  %or.cond.not = and i1 %4, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_0
