inline.NumInlined: 4279
inline.NumDeleted: 1275
begin_hunk_0_@_ZN11OpenImageIO4v3_18ArgParse10parse_argsEiPPKc:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 234
  %i.f = load i8, ptr %i.e, align 2, !tbaa !138, !range !95, !noundef !139
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @_ZN11OpenImageIO4v3_17Sysutil4TermC1ERKSo(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store ptr @.str.17, ptr %5, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.h, align 8, !tbaa !19
  call void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull dead_on_return %5)
  %i.i = load ptr, ptr %4, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse9prog_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = load ptr, ptr %6, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18 unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18: ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.18, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load ptr, ptr %7, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19 unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  store ptr @.str.19, ptr %9, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 7, ptr %i.v, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull dead_on_return %9)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  %i.w = load ptr, ptr %8, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit20 unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit20: ; preds = %bb.f
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.m, !inline_history !140 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @_ZNK11OpenImageIO4v3_18ArgParse10print_helpEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @exit(i32 noundef 1) #45
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.k:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit20, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ah, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %bb.k ] ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.n
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ad, %bb.i ] ; 2 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.o
  %i.av = load i64, ptr %i.at, align 8, !tbaa !16
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.g
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.ab, %bb.g ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.p
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.q:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_ZN11OpenImageIO4v3_18ArgParse4Impl10parse_argsEiPPKc(ptr noundef nonnull align 8 dereferenceable(392) initializes((8, 12), (16, 24), (235, 236)) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::function", align 16   ; 9 uses
  %12 = alloca %"class.std::function", align 16   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %2, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 235 ; 4 uses
  store i8 1, ptr %i.h, align 1, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !142  ; 2 uses
  %.not4344.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4344.i, label %.loopexit216, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.thread.i
  %.sroa.031.045.i = phi ptr [ %i.x, %.thread.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.031.045.i, align 8, !tbaa !143
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 4 uses
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.20, ptr noundef nonnull dereferenceable(1) %i.q) #43
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = load i8, ptr %i.q, align 1, !tbaa !16
  %i.t = icmp eq i8 %i.s, 45
  br i1 %i.t, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %.not27.i = icmp eq i8 %i.v, 45
  br i1 %.not27.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(9) getelementptr inbounds nuw (i8, ptr @.str.20, i64 1), ptr noundef nonnull dereferenceable(1) %i.q) #43
  %.not28.i = icmp eq i32 %i.w, 0
  br i1 %.not28.i, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.031.045.i, i64 8 ; 2 uses
  %.not43.i = icmp eq ptr %i.x, %i.n
  br i1 %.not43.i, label %.loopexit216, label %.lr.ph.i

.loopexit216:                                     ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.y = tail call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #44 ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !144, !nonnull !139, !align !145
  invoke void @_ZN11OpenImageIO4v3_19ArgOptionC2ERNS0_8ArgParseEPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.20)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.loopexit216
  store ptr %i.y, ptr %i.b, align 8, !tbaa !143
  %i.aa = call ptr @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE14_M_emplace_auxIJPS3_EEEN9__gnu_cxx17__normal_iteratorIPS6_S8_EENSC_IPKS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull @.str.21, i64 noundef 22) ; 0 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 312 ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.am, align 8
  store i64 %i.ak, ptr %12, align 16, !tbaa !147
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %12, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !148
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.aj, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 328 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !96
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.an, align 8, !tbaa !96
  store <2 x ptr> %i.ap, ptr %i.al, align 16, !tbaa !96
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.ao, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit" unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #41
  unreachable

"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit": ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143
  %i.aw = call noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %i.av) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit

bb.i:                                             ; preds = %.loopexit216
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 360) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.ci

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit: ; preds = %bb.e, %.lr.ph.i, %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !149, !range !95, !noundef !139
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !142 ; 2 uses
  %.not4344.i128 = icmp eq ptr %i.bc, %i.be
  br i1 %.not4344.i128, label %.loopexit215, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.j, %.thread.i132
  %.sroa.031.045.i130 = phi ptr [ %i.bo, %.thread.i132 ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.031.045.i130, align 8, !tbaa !143
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 4 uses
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.22, ptr noundef nonnull dereferenceable(1) %i.bh) #43
  %.not.i131 = icmp eq i32 %i.bi, 0
  br i1 %.not.i131, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i129
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bk = icmp eq i8 %i.bj, 45
  br i1 %i.bk, label %bb.l, label %.thread.i132

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %.not27.i134 = icmp eq i8 %i.bm, 45
  br i1 %.not27.i134, label %.thread.i132, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) getelementptr inbounds nuw (i8, ptr @.str.22, i64 1), ptr noundef nonnull dereferenceable(1) %i.bh) #43
  %.not28.i135 = icmp eq i32 %i.bn, 0
  br i1 %.not28.i135, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136, label %.thread.i132

.thread.i132:                                     ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.031.045.i130, i64 8 ; 2 uses
  %.not43.i133 = icmp eq ptr %i.bo, %i.be
  br i1 %.not43.i133, label %.loopexit215, label %.lr.ph.i129

.loopexit215:                                     ; preds = %.thread.i132, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.bp = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #44 ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !144, !nonnull !139, !align !145
  invoke void @_ZN11OpenImageIO4v3_19ArgOptionC2ERNS0_8ArgParseEPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull @.str.22)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %.loopexit215
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !143
  %i.br = call ptr @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE14_M_emplace_auxIJPS3_EEEN9__gnu_cxx17__normal_iteratorIPS6_S8_EENSC_IPKS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !143 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 200
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 208
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef 0, i64 noundef %i.bw, ptr noundef nonnull @.str.23, i64 noundef 18) ; 0 uses
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !143 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 312 ; 2 uses
  %i.cb = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cd, align 8
  store i64 %i.cb, ptr %11, align 16, !tbaa !147
  %.sroa.0.i.i.i137.sroa.0.0.copyload = load <16 x i8>, ptr %11, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 16, i1 false), !tbaa.struct !148
  store <16 x i8> %.sroa.0.i.i.i137.sroa.0.0.copyload, ptr %i.ca, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 328 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 336
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !96
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ce, align 8, !tbaa !96
  store <2 x ptr> %i.cg, ptr %i.cc, align 16, !tbaa !96
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.cf, align 8, !tbaa !96
  %.not.i.i138 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i138, label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit" unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #41
  unreachable

"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit": ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !143
  %i.cn = call noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %i.cm) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136

bb.q:                                             ; preds = %.loopexit215
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 360) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br label %bb.ci

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136: ; preds = %bb.m, %.lr.ph.i129, %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit
  %i.cp = load i32, ptr %i.f, align 8, !tbaa !113
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %.lr.ph267, label %.loopexit

.lr.ph267:                                        ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph267, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181
  %.091266 = phi i32 [ 1, %.lr.ph267 ], [ %i.ko, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181 ] ; 16 uses
  %.097265 = phi i1 [ false, %.lr.ph267 ], [ %.198, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181 ] ; 5 uses
  store i32 %.091266, ptr %i.cr, align 8, !tbaa !150
  store i32 -1, ptr %i.cs, align 4, !tbaa !131
  %i.dl = load i8, ptr %i.ct, align 4, !tbaa !130, !range !95, !noundef !139
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.do = sext i32 %.091266 to i64                ; 7 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do ; 6 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !27 ; 5 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = icmp eq i8 %i.dr, 45
  br i1 %i.ds, label %bb.t, label %bb.by

bb.t:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 2 uses
  %i.dv = sext i8 %i.du to i32
  %i.dw = call i32 @isalpha(i32 noundef %i.dv) #43
  %.not107 = icmp ne i32 %i.dw, 0
  %i.dx = icmp eq i8 %i.du, 45
  %or.cond124 = or i1 %i.dx, %.not107
  br i1 %or.cond124, label %bb.u, label %bb.by

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr %i.cy, ptr %13, align 8, !tbaa !10
  %i.dy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !28
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc139 unwind label %.loopexit214 ; 2 uses

.noexc139:                                        ; preds = %.noexc.i
  store ptr %i.ea, ptr %13, align 8, !tbaa !22
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.eb, ptr %i.cy, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc139, %bb.u
  %i.ec = phi ptr [ %i.ea, %.noexc139 ], [ %i.cy, %bb.u ] ; 2 uses
  switch i64 %i.dy, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ed = load i8, ptr %i.dq, align 1, !tbaa !16
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !16
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr nonnull align 1 %i.dq, i64 %i.dy, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.ee, ptr %i.cz, align 8, !tbaa !13
  %i.ef = load ptr, ptr %13, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.eh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 58, i64 noundef 0) #39 ; 5 uses
  %.not109 = icmp eq i64 %i.eh, -1
  br i1 %.not109, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = load i64, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.ej = icmp ugt i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.84, i64 noundef %i.eh, i64 noundef %i.ei) #42
          to label %.noexc140 unwind label %bb.aa

.noexc140:                                        ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.y
  store i64 %i.eh, ptr %i.cz, align 8, !tbaa !13
  %i.ek = load ptr, ptr %13, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh
  store i8 0, ptr %i.el, align 1, !tbaa !16
  br label %bb.ab

.loopexit214:                                     ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.aa:                                            ; preds = %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.x
  %i.en = load ptr, ptr %13, align 8, !tbaa !22   ; 5 uses
  %i.eo = load ptr, ptr %i.da, align 8, !tbaa !142 ; 2 uses
  %i.ep = load ptr, ptr %i.db, align 8, !tbaa !142 ; 2 uses
  %.not4344.i141 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not4344.i141, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit149, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread.i145, %.lr.ph.i142
  %.sroa.031.045.i143 = phi ptr [ %i.eo, %.lr.ph.i142 ], [ %i.fi, %.thread.i145 ] ; 2 uses
  %i.er = load ptr, ptr %.sroa.031.045.i143, align 8, !tbaa !143 ; 25 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22 ; 5 uses
  %i.eu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(1) %i.et) #43
  %.not.i144 = icmp eq i32 %i.eu, 0
  br i1 %.not.i144, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ew = icmp eq i8 %i.ev, 45
  br i1 %i.ew, label %bb.ae, label %.thread.i145

bb.ae:                                            ; preds = %bb.ad
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !16
  %i.ey = icmp eq i8 %i.ex, 45
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !16
  %i.fa = icmp eq i8 %i.ez, 45                    ; 2 uses
  br i1 %i.ey, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %i.fa, label %bb.ag, label %.thread.i145

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %.not27.i147 = icmp eq i8 %i.fc, 45
  br i1 %.not27.i147, label %.thread.i145, label %bb.ah
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18ArgParse3Arg4helpENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !13  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !13
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !22
  br label %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.u, ptr %i.q, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !16
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !16
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !16
  store ptr %i.u, ptr %i.q, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !16
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.r, ptr %2, align 8, !tbaa !22
  store i64 %i.ai, ptr %i.v, align 8, !tbaa !16
  br label %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !22
  br label %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
  %i.am = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.r, %bb.j ], [ %i.v, %bb.k ], [ %i.u, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !13
  store i8 0, ptr %i.am, align 1, !tbaa !16
  %i.ao = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg5nargsEi(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_19ArgOption5nargsEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg7metavarENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.a, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.d, ptr %i.b, align 8, !tbaa !19
  call void @_ZN11OpenImageIO4v3_19ArgOption7metavarENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull dead_on_return %2)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_19ArgOption7metavarENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef dead_on_return %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.8", align 16    ; 9 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.a, ptr %3, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.d, ptr %i.b, align 8, !tbaa !19
  store ptr @.str.8, ptr %4, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !19
  call void @_ZN11OpenImageIO4v3_17Strutil6splitsB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_i(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %2, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, i32 noundef -1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load <2 x ptr>, ptr %2, align 16, !tbaa !20
  store <2 x ptr> %i.m, ptr %i.f, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !34
  store ptr %i.o, ptr %i.j, align 8, !tbaa !34
  %.not4.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = ptrtoint ptr %i.g to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.b
  %i.y = load ptr, ptr %2, align 16, !tbaa !40    ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.y, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 16, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ah = load ptr, ptr %i.n, align 16, !tbaa !34
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.al, align 4, !tbaa !91
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 5
  %i.as = trunc i64 %i.ar to i32
  call void @_ZN11OpenImageIO4v3_19ArgOption5nargsEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %i.as)
  call void @_ZN11OpenImageIO4v3_19ArgOption20compute_prettyformatEv(ptr noundef nonnull align 8 dereferenceable(360) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg6actionEOSt8functionIFvRS2_NS0_4spanIKPKcLm18446744073709551615EEEEE(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !96
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i

_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !148
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !96
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 16, !tbaa !96
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSEOSB_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSEOSB_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #41
  unreachable

_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSEOSB_.exit: ; preds = %_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEC2EOSB_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg4destENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.f, ptr noundef %i.b, i64 noundef %i.d) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg6hiddenEv(ptr noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(8) initializes((357, 358)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 357
  store i8 1, ptr %i.a, align 1, !tbaa !163
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg10always_runEv(ptr noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(8) initializes((358, 359)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 358
  store i8 1, ptr %i.a, align 2, !tbaa !152
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse10do_nothingEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::function.37") align 8 captures(none) initializes((0, 32)) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_14spanIKPKcLm18446744073709551615EEEEZNS1_8ArgParse10do_nothingEvE3$_0E9_M_invokeERKSt9_Any_dataOS6_", ptr %i.b, align 8, !tbaa !240
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_14spanIKPKcLm18446744073709551615EEEEZNS1_8ArgParse10do_nothingEvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse10store_trueEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::function") align 8 captures(none) initializes((0, 32)) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_10store_trueEvE3$_0E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.b, align 8, !tbaa !155
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_10store_trueEvE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse11store_falseEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::function") align 8 captures(none) initializes((0, 32)) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_11store_falseEvE3$_0E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.b, align 8, !tbaa !155
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_11store_falseEvE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse5introENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse5usageENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse11descriptionENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse6epilogENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse4progENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse14print_defaultsEb(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 %i.a, ptr %i.c, align 8, !tbaa !164
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse8add_helpEb(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 233
  store i8 %i.a, ptr %i.c, align 1, !tbaa !149
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse11add_versionENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ArgParse13exit_on_errorEb(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 234
  store i8 %i.a, ptr %i.c, align 2, !tbaa !138
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_18ArgParse4Impl5foundEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_18ArgParse12command_lineB5cxx11Ev:bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %i.l = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 32) #43
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i64, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a                   ; 2 uses
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.r = load i64, ptr %i.a, align 8
  %i.s = select i1 %i.p, i64 15, i64 %i.r
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.u = phi ptr [ %.pre.i.i, %.noexc ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 34, ptr %i.v, align 1, !tbaa !16
  store i64 %i.n, ptr %i.b, align 8, !tbaa !13
  %i.w = load ptr, ptr %0, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1, !tbaa !16
  %i.y = load ptr, ptr %1, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !129
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #39 ; 2 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !13
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %bb.e, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #42
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ac, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a                 ; 2 uses
  br i1 %i.al, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.am = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.an = load i64, ptr %i.a, align 8
  %i.ao = select i1 %i.al, i64 15, i64 %i.an
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.g
  %.pre.i.i12 = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11, %.noexc13
  %i.aq = phi ptr [ %.pre.i.i12, %.noexc13 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 34, ptr %i.ar, align 1, !tbaa !16
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !13
  %i.as = load ptr, ptr %0, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18

.loopexit:                                        ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.phi

bb.i:                                             ; preds = %.lr.ph
  %i.ay = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #39 ; 2 uses
  %i.az = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15: ; preds = %bb.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.k, i64 noundef %i.ay)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !108   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !113 ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.a                 ; 2 uses
  br i1 %i.bm, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19: ; preds = %bb.k, %bb.j
  %i.bo = load i64, ptr %i.a, align 8
  %i.bp = select i1 %i.bm, i64 15, i64 %i.bo
  %i.bq = icmp ugt i64 %i.bk, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.l
  %.pre.i.i20 = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19, %.noexc21
  %i.br = phi ptr [ %.pre.i.i20, %.noexc21 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i8 32, ptr %i.bs, align 1, !tbaa !16
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !13
  %i.bt = load ptr, ptr %0, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bk
  store i8 0, ptr %i.bu, align 1, !tbaa !16
  %.pre = load ptr, ptr %1, align 8, !tbaa !108   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre25 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !113
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18
  %i.bv = phi i32 [ %.pre25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18 ]
  %i.bw = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = sext i32 %i.bv to i64
  %i.by = icmp slt i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !248

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse18set_preoption_helpESt8functionIFvRKS1_RSoEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.24", align 16 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !96
  br label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !43  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h

_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !148
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !96
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !96
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #41
  unreachable

_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit: ; preds = %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse19set_postoption_helpESt8functionIFvRKS1_RSoEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.24", align 16 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !96
  br label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !43  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h

_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !148
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !96
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !96
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #41
  unreachable

_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEaSERKS7_.exit: ; preds = %_ZNSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEC2ERKS7_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse7runningEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 235
  store i8 %i.a, ptr %i.c, align 1, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ArgParse7runningEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 235
  %i.c = load i8, ptr %i.b, align 1, !tbaa !141, !range !95, !noundef !139
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse5abortEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  store i8 %i.a, ptr %i.c, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ArgParse7abortedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.c = load i8, ptr %i.b, align 4, !tbaa !130, !range !95, !noundef !139
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_18ArgParse11current_argEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !150
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_18ArgParse12set_next_argEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store i32 %1, ptr %i.b, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #18 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #39 ; 0 uses
  tail call void @_ZSt9terminatev() #41
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZN11OpenImageIO4v3_17Strutil8to_upperERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110Filesystem8filenameB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef dead_on_return) local_unnamed_addr #11

declare void @_ZN11OpenImageIO4v3_17Sysutil17this_program_pathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRKN11OpenImageIO4v3_18ArgParseERSoENS2_4Impl16m_preoption_helpMUlS4_S5_E_EE9_M_invokeERKSt9_Any_dataS4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN11OpenImageIO4v3_18ArgParseERSoENS2_4Impl16m_preoption_helpMUlS4_S5_E_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS1_RSoE_E, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !96
  br label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl16m_preoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRKN11OpenImageIO4v3_18ArgParseERSoENS2_4Impl17m_postoption_helpMUlS4_S5_E_EE9_M_invokeERKSt9_Any_dataS4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN11OpenImageIO4v3_18ArgParseERSoENS2_4Impl17m_postoption_helpMUlS4_S5_E_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS1_RSoE_E, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !96
  br label %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIN11OpenImageIO4v3_18ArgParse4Impl17m_postoption_helpMUlRKS3_RSoE_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #39, !inline_history !249
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
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
end_hunk_2
