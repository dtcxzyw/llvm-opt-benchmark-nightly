inline.NumInlined: 1445
inline.NumDeleted: 684
begin_hunk_0_@_ZN6Assimp6Logger4infoIJRA74_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA74_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12AC3DImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((88, 90)) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.55, i32 noundef 1)
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 8
  %i.e = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.56, i32 noundef 1)
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 1
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12AC3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef captures(none) %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.65", align 8    ; 11 uses
  %i.a = alloca [3 x i8], align 1                 ; 10 uses
  %6 = alloca %"class.std::vector.39", align 8    ; 17 uses
  %7 = alloca %"class.std::vector", align 8       ; 14 uses
  %8 = alloca %"class.std::vector.18", align 8    ; 11 uses
  %9 = alloca %"class.std::vector.29", align 8    ; 11 uses
  %10 = alloca %"class.std::vector.34", align 8   ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.b, ptr %4, align 8
  store i16 25202, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.d, align 2
  %i.e = load ptr, ptr %1, align 8
  %i.f = load ptr, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.e, ptr noundef nonnull %i.b)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !68 ; 6 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %4, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.l = load i64, ptr %i.b, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(26) @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.59)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit128

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit128

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp12BaseImporter16TextFileToBufferEPNS_8IOStreamERSt6vectorIcSaIcEENS0_12TextFileModeE(ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(5) @.str.60, i64 noundef 4) #26
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.61)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.cx unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #25
  br label %bb.cv

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ak = load i8, ptr %i.aj, align 1             ; 4 uses
  %i.al = sext i8 %i.ak to i32                    ; 2 uses
  %i.am = add i8 %i.ak, -48
  %or.cond.i = icmp ult i8 %i.am, 10
  br i1 %or.cond.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add i8 %i.ak, -97
  %or.cond5.i = icmp ult i8 %i.an, 6
  br i1 %or.cond5.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add i8 %i.ak, -65
  %or.cond8.i = icmp ult i8 %i.ao, 6
  br i1 %or.cond8.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit, label %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137

_ZN6Assimp17HexDigitToDecimalEc.exit.thread137:   ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 45, ptr %i.a, align 1
  br label %.lr.ph.i.preheader

_ZN6Assimp17HexDigitToDecimalEc.exit.thread:      ; preds = %bb.l, %bb.k
  %.sink = phi i32 [ -48, %bb.k ], [ -87, %bb.l ]
  %i.aq = add nsw i32 %.sink, %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.lr.ph.i.preheader

_ZN6Assimp17HexDigitToDecimalEc.exit:             ; preds = %bb.m
  %i.ar = add nsw i32 %i.al, -55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137
  %.153.i.ph = phi ptr [ %i.a, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread ], [ %i.a, %_ZN6Assimp17HexDigitToDecimalEc.exit ], [ %i.ap, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137 ]
  %.13350.i.ph = phi i32 [ 1, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread ], [ 1, %_ZN6Assimp17HexDigitToDecimalEc.exit ], [ 2, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137 ]
  %.13849.i.ph = phi i32 [ %i.aq, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread ], [ %i.ar, %_ZN6Assimp17HexDigitToDecimalEc.exit ], [ 1, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %.153.i = phi ptr [ %.2.i, %bb.o ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.o ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.bb, %bb.o ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.o ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.o ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.as = sdiv i32 %.13849.i, %.03051.i           ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.at = icmp ne i32 %i.as, 0
  %i.au = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.av = or i1 %i.au, %i.at
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.av ; 2 uses
  br i1 %or.cond3.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.aw = trunc i32 %i.as to i8
  %i.ax = add i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.153.i, align 1
  %i.az = add nuw nsw i32 %.13350.i, 1
  %i.ba = mul i32 %i.as, %.03051.i                ; 0 uses
  br i1 %i.au, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.n ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.az, %bb.n ], [ %.13350.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi ptr [ %i.ay, %bb.n ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.bb = sdiv i32 %.03051.i, 10
  %i.bc = icmp ult i32 %.234.i, 3
  br i1 %i.bc, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.n, %bb.o
  %.4.i = phi ptr [ %.2.i, %bb.o ], [ %i.ay, %bb.n ]
  store i8 0, ptr %.4.i, align 1
  %i.bd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.p unwind label %bb.au

bb.p:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  invoke void @_ZN6Assimp6Logger4infoIJRA27_KcRA3_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, ptr noundef nonnull align 1 dereferenceable(27) @.str.62, ptr noundef nonnull align 1 dereferenceable(3) %i.a)
          to label %bb.q unwind label %bb.au

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.bg = invoke noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #27
          to label %.noexc130 unwind label %bb.av ; 5 uses

.noexc130:                                        ; preds = %bb.q
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp12AC3DImporter8MaterialEPS2_ET0_T_S7_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.bg)
          to label %.noexc65 unwind label %bb.r   ; 0 uses

bb.r:                                             ; preds = %.noexc130
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 440) #29
  invoke void @__cxa_rethrow() #28
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #30
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

.noexc65:                                         ; preds = %.noexc130
  %i.bo = load ptr, ptr %6, align 8               ; 3 uses
  %i.bp = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc65, %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i ], [ %i.bo, %.noexc65 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #29
  br label %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i

_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i, %.noexc65
  %i.bx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i ], [ %i.bo, %.noexc65 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i
  %i.by = load ptr, ptr %i.be, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #29
  br label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.v, %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i
  store ptr %i.bg, ptr %6, align 8
  store ptr %i.bg, ptr %i.bf, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 440
  store ptr %i.cc, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 5)
          to label %bb.w unwind label %bb.aw

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %8, ptr %i.cd, align 8
  br label %bb.x

bb.x:                                             ; preds = %.backedge, %bb.w
  %i.ce = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.cf = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ci = sub i64 %i.ch, %i.cg
  %scevgep.i.i.i = getelementptr i8, ptr %i.cf, i64 %i.ci
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.0.i.i.i = phi ptr [ %i.cf, %bb.x ], [ %i.ck, %bb.aa ] ; 7 uses
  %i.cj = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.cj, label %bb.z [
    i8 13, label %.critedge.i.i.i
    i8 10, label %.critedge.i.i.i
    i8 0, label %.critedge.i.i.i
    i8 35, label %.critedge.i.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %.not22.i.i.i = icmp eq ptr %.0.i.i.i, %i.ce
  br i1 %.not22.i.i.i, label %.critedge.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.y, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %bb.z, %bb.y, %bb.y, %bb.y, %bb.y
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.y ], [ %.0.i.i.i, %bb.y ], [ %.0.i.i.i, %bb.y ], [ %.0.i.i.i, %bb.y ], [ %scevgep.i.i.i, %bb.z ] ; 3 uses
  %.0.lcssa24.i.i.i = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.cl = sub i64 %i.ch, %.0.lcssa24.i.i.i
  %scevgep25.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.cl
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %.0.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.cn, %bb.ad ] ; 4 uses
  %i.cm = load i8, ptr %.1.i.i.i, align 1
end_hunk_0
