inline.NumInlined: 4280
inline.NumDeleted: 1275
begin_hunk_0_@_ZN11OpenImageIO4v3_18ArgParse10parse_argsEiPPKc:bb.a

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
  %.sroa.0.i.i.i137 = alloca { i64, i64 }, align 8 ; 4 uses
  %11 = alloca %"class.std::function", align 8    ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
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
  store i64 %i.ak, ptr %12, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 16, i1 false), !tbaa.struct !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 328 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !96
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.an, align 8, !tbaa !96
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !96
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
  store i64 %i.cb, ptr %11, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i137)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i137, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 16, i1 false), !tbaa.struct !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i137, i64 16, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i137)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 328 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 336
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !96
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ce, align 8, !tbaa !96
  store <2 x ptr> %i.cg, ptr %i.cc, align 8, !tbaa !96
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
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph267, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181
  %.091266 = phi i32 [ 1, %.lr.ph267 ], [ %i.kl, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181 ] ; 15 uses
  %.097265 = phi i1 [ false, %.lr.ph267 ], [ %.198, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181 ] ; 5 uses
  store i32 %.091266, ptr %i.cr, align 8, !tbaa !150
  store i32 -1, ptr %i.cs, align 4, !tbaa !131
  %i.di = load i8, ptr %i.ct, align 4, !tbaa !130, !range !95, !noundef !139
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.dl = sext i32 %.091266 to i64                ; 7 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl ; 6 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !27 ; 5 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = icmp eq i8 %i.do, 45
  br i1 %i.dp, label %bb.t, label %bb.by

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16  ; 2 uses
  %i.ds = sext i8 %i.dr to i32
  %i.dt = call i32 @isalpha(i32 noundef %i.ds) #43
  %.not107 = icmp ne i32 %i.dt, 0
  %i.du = icmp eq i8 %i.dr, 45
  %or.cond124 = or i1 %i.du, %.not107
  br i1 %or.cond124, label %bb.u, label %bb.by

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr %i.cy, ptr %13, align 8, !tbaa !10
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dn) #39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.dv, ptr %i.a, align 8, !tbaa !28
  %i.dw = icmp ugt i64 %i.dv, 15
  br i1 %i.dw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.dx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc139 unwind label %.loopexit214 ; 2 uses

.noexc139:                                        ; preds = %.noexc.i
  store ptr %i.dx, ptr %13, align 8, !tbaa !22
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.dy, ptr %i.cy, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc139, %bb.u
  %i.dz = phi ptr [ %i.dx, %.noexc139 ], [ %i.cy, %bb.u ] ; 2 uses
  switch i64 %i.dv, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ea = load i8, ptr %i.dn, align 1, !tbaa !16
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !16
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %i.dn, i64 %i.dv, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.eb, ptr %i.cz, align 8, !tbaa !13
  %i.ec = load ptr, ptr %13, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.ee = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 58, i64 noundef 0) #39 ; 5 uses
  %.not109 = icmp eq i64 %i.ee, -1
  br i1 %.not109, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = load i64, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.84, i64 noundef %i.ee, i64 noundef %i.ef) #42
          to label %.noexc140 unwind label %bb.aa

.noexc140:                                        ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.y
  store i64 %i.ee, ptr %i.cz, align 8, !tbaa !13
  %i.eh = load ptr, ptr %13, align 8, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ee
  store i8 0, ptr %i.ei, align 1, !tbaa !16
  br label %bb.ab

.loopexit214:                                     ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.aa:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.x
  %i.ek = load ptr, ptr %13, align 8, !tbaa !22   ; 5 uses
  %i.el = load ptr, ptr %i.da, align 8, !tbaa !142 ; 2 uses
  %i.em = load ptr, ptr %i.db, align 8, !tbaa !142 ; 2 uses
  %.not4344.i141 = icmp eq ptr %i.el, %i.em
  br i1 %.not4344.i141, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit149, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread.i145, %.lr.ph.i142
  %.sroa.031.045.i143 = phi ptr [ %i.el, %.lr.ph.i142 ], [ %i.ff, %.thread.i145 ] ; 2 uses
  %i.eo = load ptr, ptr %.sroa.031.045.i143, align 8, !tbaa !143 ; 25 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !22 ; 5 uses
  %i.er = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.eq) #43
  %.not.i144 = icmp eq i32 %i.er, 0
  br i1 %.not.i144, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !16
  %i.et = icmp eq i8 %i.es, 45
  br i1 %i.et, label %bb.ae, label %.thread.i145

bb.ae:                                            ; preds = %bb.ad
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ev = icmp eq i8 %i.eu, 45
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !16
  %i.ex = icmp eq i8 %i.ew, 45                    ; 2 uses
  br i1 %i.ev, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ex, label %bb.ag, label %.thread.i145

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !16
  %.not27.i147 = icmp eq i8 %i.ez, 45
  br i1 %.not27.i147, label %.thread.i145, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(1) %i.eq) #43
  %.not28.i148 = icmp eq i32 %i.fa, 0
  br i1 %.not28.i148, label %bb.as, label %.thread.i145

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.ex, label %bb.aj, label %.thread.i145

bb.aj:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %i.fd = icmp eq i8 %i.fc, 45
  br i1 %i.fd, label %bb.ak, label %.thread.i145

bb.ak:                                            ; preds = %bb.aj
  %i.fe = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.fb) #43
  %.not30.i = icmp eq i32 %i.fe, 0
  br i1 %.not30.i, label %bb.as, label %.thread.i145

.thread.i145:                                     ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.031.045.i143, i64 8 ; 2 uses
  %.not43.i146 = icmp eq ptr %i.ff, %i.em
  br i1 %.not43.i146, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit149, label %bb.ac

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit149: ; preds = %bb.ab, %.thread.i145
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  store ptr %i.ek, ptr %15, align 8, !tbaa !17
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fg = load i64, ptr %i.cz, align 8, !tbaa !13
  store i64 %i.fg, ptr %16, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl13closest_matchB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull dead_on_return %15, i64 noundef 2)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit149
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fh = load i64, ptr %17, align 8, !tbaa !13
  %.not111 = icmp eq i64 %i.fh, 0
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.dl ; 2 uses
  br i1 %.not111, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.critedge128 unwind label %bb.ap

bb.an:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit149
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ap:                                            ; preds = %bb.aq, %bb.am
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %18
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  %i.fp = load i64, ptr %18, align 8, !tbaa !16
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aq:                                            ; preds = %bb.al
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %.critedge128 unwind label %bb.ap

.critedge128:                                     ; preds = %bb.aq, %bb.am
  %19 = load ptr, ptr %14, align 8, !tbaa !22     ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.critedge128
  %22 = load i64, ptr %20, align 8, !tbaa !16
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %23) #40
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  %i.fr = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.cy
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.ar
  %i.ft = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.ao ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fm, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %bb.bx

bb.as:                                            ; preds = %bb.ah, %bb.ac, %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eo, i64 352 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !151
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !151
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eo, i64 232 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !76
  %i.gb = and i32 %i.ga, -2
  %switch = icmp eq i32 %i.gb, 2
  br i1 %switch, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %bb.as
  %i.gc = load i8, ptr %i.h, align 1, !tbaa !141, !range !95, !noundef !139
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eo, i64 358
  %i.gf = load i8, ptr %i.ge, align 2, !tbaa !152, !range !95, !noundef !139
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.av, label %bb.bw

bb.av:                                            ; preds = %bb.au, %bb.at
  invoke void @_ZN11OpenImageIO4v3_19ArgOption13set_parameterEiPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.eo, i32 noundef 0, ptr noundef null)
          to label %bb.aw unwind label %bb.an

bb.aw:                                            ; preds = %bb.av
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 356
  %i.gi = load i8, ptr %i.gh, align 4, !tbaa !93, !range !95, !noundef !139
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ax, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit

bb.ax:                                            ; preds = %bb.aw
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eo, i64 344
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !153 ; 2 uses
  %.not.i153 = icmp eq ptr %i.gl, null
  br i1 %.not.i153, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.dl
  %i.go = invoke noundef i32 %i.gl(i32 noundef 1, ptr noundef %i.gn)
          to label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit unwind label %bb.an, !inline_history !154 ; 0 uses

_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit: ; preds = %bb.ax, %bb.ay, %bb.aw
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 328
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !43
  %.not.i.i155.not = icmp eq ptr %i.gq, null
  br i1 %.not.i.i155.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.gt, ptr %10, align 8
  store i64 1, ptr %i.dg, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 336
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !155
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(32) %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit unwind label %bb.an, !inline_history !156

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.bw

bb.ba:                                            ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.gw = load i32, ptr %i.fz, align 8, !tbaa !76
  %i.gx = icmp eq i32 %i.gw, 2
  %i.gy = zext i1 %i.gx to i32
  store i32 %i.gy, ptr %i.d, align 4, !tbaa !3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eo, i64 136
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !22
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 263, ptr %8, align 8
  store ptr %i.ha, ptr %9, align 8, !tbaa !17
  store i64 %i.hc, ptr %i.dh, align 8, !tbaa !19
  %i.hd = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %8) #39
  invoke void @_ZN11OpenImageIO4v3_114ParamValueList9attributeIKSt4byteEEvNS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiNS0_4spanIT_Lm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull dead_on_return %9, i64 263, i32 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.d, i64 %i.hd)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  br label %bb.bw

bb.bc:                                            ; preds = %bb.ba
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  br label %bb.bx

bb.bd:                                            ; preds = %bb.as
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eo, i64 236
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !91 ; 5 uses
  %.not116.not263 = icmp slt i32 %i.hg, 1
  br i1 %.not116.not263, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bd
  %i.hh = add i32 %.091266, 1
  %i.hi = sext i32 %i.hh to i64
  %wide.trip.count = zext nneg i32 %i.hg to i64
  br label %bb.bf

bb.be:                                            ; preds = %bb.bq, %bb.bp
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bf:                                            ; preds = %.lr.ph, %bb.bk
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bk ] ; 4 uses
  %i.hk = add nsw i64 %indvars.iv, %i.hi          ; 2 uses
  %i.hl = load i32, ptr %i.f, align 8, !tbaa !113
  %i.hm = sext i32 %i.hl to i64
  %.not113 = icmp slt i64 %i.hk, %i.hm
  br i1 %.not113, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hn = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.ho = add nuw nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.e, align 4, !tbaa !3
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %bb.bw

bb.bi:                                            ; preds = %bb.bg
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %bb.bx

bb.bj:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hk
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !27
  %i.ht = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN11OpenImageIO4v3_19ArgOption13set_parameterEiPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.eo, i32 noundef %i.ht, ptr noundef %i.hs)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.bf, !llvm.loop !157

bb.bl:                                            ; preds = %bb.bj
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.critedge:                                        ; preds = %bb.bk, %bb.bd
  %i.hv = load i8, ptr %i.h, align 1, !tbaa !141, !range !95, !noundef !139
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.critedge
  %i.hx = getelementptr inbounds nuw i8, ptr %i.eo, i64 358
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !152, !range !95, !noundef !139
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm, %.critedge
  %i.ia = getelementptr inbounds nuw i8, ptr %i.eo, i64 356
  %i.ib = load i8, ptr %i.ia, align 4, !tbaa !93, !range !95, !noundef !139
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.bo, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit162

bb.bo:                                            ; preds = %bb.bn
  %i.id = getelementptr inbounds nuw i8, ptr %i.eo, i64 344
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !153 ; 2 uses
  %.not.i160 = icmp eq ptr %i.ie, null
  br i1 %.not.i160, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit162, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.dl
  %i.ih = add nsw i32 %i.hg, 1
  %i.ii = invoke noundef i32 %i.ie(i32 noundef %i.ih, ptr noundef %i.ig)
          to label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit162 unwind label %bb.be, !inline_history !154 ; 0 uses

_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit162: ; preds = %bb.bo, %bb.bp, %bb.bn
  %i.ij = getelementptr inbounds nuw i8, ptr %i.eo, i64 328
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !43
  %.not.i.i163.not = icmp eq ptr %i.ik, null
  br i1 %.not.i.i163.not, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit162
  %i.il = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %i.im = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.in = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.dl
  %i.io = add nsw i32 %i.hg, 1
  %i.ip = sext i32 %i.io to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.in, ptr %7, align 8
  store i64 %i.ip, ptr %i.dc, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.eo, i64 336
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !155
  invoke void %i.ir(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit167 unwind label %bb.be, !inline_history !156

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit167: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.bv

bb.br:                                            ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit162
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.it = getelementptr [8 x i8], ptr %i.is, i64 %i.dl
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eo, i64 136
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !22
  %i.iy = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !13
  %.not.i.i168 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i168, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i, label %bb.bs

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i: ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.ja = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iv) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.iv, ptr %5, align 8, !tbaa !17
  store i64 %i.ja, ptr %i.de, align 8, !tbaa !19
  %i.jb = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
          to label %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i unwind label %bb.bu

_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i: ; preds = %bb.bs, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i
  %i.jc = phi ptr [ null, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i ], [ %i.jb, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.ix, ptr %6, align 8, !tbaa !17
  store i64 %i.iz, ptr %i.df, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_7ustringE(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull dead_on_return %6, ptr %i.jc)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i, %bb.bs
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bv:                                            ; preds = %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit167, %bb.bt, %bb.bm
  %i.je = add nsw i32 %i.hg, %.091266
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bh, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit, %bb.bb, %bb.au
  %.394 = phi i32 [ %.091266, %bb.au ], [ %.091266, %bb.bb ], [ %.091266, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit ], [ %i.je, %bb.bv ], [ %.091266, %bb.bh ]
  %.289 = phi i1 [ true, %bb.au ], [ true, %bb.bb ], [ true, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit ], [ true, %bb.bv ], [ false, %bb.bh ]
  %i.jf = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.cy
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bw
  %i.jh = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br i1 %.289, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181, label %.loopexit

bb.bx:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bc, %bb.bi, %bb.bl, %bb.bu, %bb.be, %bb.aa
  %.pn119.pn = phi { ptr, i32 } [ %i.ej, %bb.aa ], [ %i.fk, %bb.an ], [ %i.he, %bb.bc ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hj, %bb.be ], [ %i.jd, %bb.bu ], [ %i.hp, %bb.bi ], [ %i.hu, %bb.bl ] ; 2 uses
  %i.jj = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.cy
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.bx
  %i.jl = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.bx, %.loopexit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %lpad.loopexit, %.loopexit214 ], [ %.pn119.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.ci

bb.by:                                            ; preds = %bb.t, %bb.s
  %i.jn = load i8, ptr %i.h, align 1, !tbaa !141, !range !95, !noundef !139
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.bz, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181

bb.bz:                                            ; preds = %bb.by
  %i.jp = load ptr, ptr %i.cu, align 8, !tbaa !158 ; 6 uses
  %i.jq = icmp eq ptr %i.jp, null
  %or.cond = select i1 %i.jq, i1 true, i1 %.097265
  br i1 %or.cond, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 328
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !43
  %.not.i.i177.not = icmp eq ptr %i.js, null
  br i1 %.not.i.i177.not, label %bb.cb, label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit179

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit179: ; preds = %bb.ca
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.dm, ptr %4, align 8
  store i64 1, ptr %i.cv, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 336
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !155
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(32) %i.jt, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181

bb.cb:                                            ; preds = %bb.ca
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 344
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !153 ; 2 uses
  %.not.i180 = icmp eq ptr %i.jx, null
  br i1 %.not.i180, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jy = call noundef i32 %i.jx(i32 noundef 1, ptr noundef nonnull %i.dm), !inline_history !154 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181

bb.cd:                                            ; preds = %bb.bz
  %i.jz = load ptr, ptr %i.cw, align 8, !tbaa !159 ; 6 uses
  %.not108 = icmp eq ptr %i.jz, null
  br i1 %.not108, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 328
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !43
  %.not.i.i182.not = icmp eq ptr %i.kb, null
  br i1 %.not.i.i182.not, label %bb.cf, label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184: ; preds = %bb.ce
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.dm, ptr %3, align 8
  store i64 1, ptr %i.cx, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 336
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !155
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !156
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181

bb.cf:                                            ; preds = %bb.ce
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 344
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !153 ; 2 uses
  %.not.i185 = icmp eq ptr %i.kg, null
  br i1 %.not.i185, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kh = call noundef i32 %i.kg(i32 noundef 1, ptr noundef nonnull %i.dm), !inline_history !154 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181

bb.ch:                                            ; preds = %bb.cd
  call void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
  br label %.loopexit

_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181: ; preds = %bb.cg, %bb.cf, %bb.cc, %bb.cb, %bb.by, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.198 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.097265, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184 ], [ false, %bb.cc ], [ false, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit179 ], [ %.097265, %bb.by ], [ false, %bb.cb ], [ %.097265, %bb.cf ], [ %.097265, %bb.cg ]
  %.495 = phi i32 [ %.394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.091266, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184 ], [ %.091266, %bb.cc ], [ %.091266, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit179 ], [ %.091266, %bb.by ], [ %.091266, %bb.cb ], [ %.091266, %bb.cf ], [ %.091266, %bb.cg ]
  %i.ki = load i32, ptr %i.cs, align 4, !tbaa !131 ; 2 uses
  %i.kj = icmp slt i32 %i.ki, 0
  %i.kk = add nsw i32 %.495, 1
  %i.kl = select i1 %i.kj, i32 %i.kk, i32 %i.ki   ; 2 uses
  %i.km = load i32, ptr %i.f, align 8, !tbaa !113
  %i.kn = icmp slt i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.r, label %.loopexit, !llvm.loop !160

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.ch
  %24 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ -1, %bb.ch ], [ 0, %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit136 ], [ 0, %bb.r ], [ 0, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit181 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ]
  ret i32 %24

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.q, %bb.i
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.co, %bb.q ], [ %i.ax, %bb.i ]
  resume { ptr, i32 } %.pn119.pn.pn.pn
}

declare void @_ZN11OpenImageIO4v3_17Sysutil4TermC1ERKSo(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse9prog_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.g, ptr %i.a, align 8, !tbaa !28
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.j, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !16
  store i8 %i.l, ptr %i.k, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse8geterrorB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.g, ptr %i.a, align 8, !tbaa !28
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.j, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !16
  store i8 %i.l, ptr %i.k, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !13
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !22
  store i8 0, ptr %i.t, align 1, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse10print_helpEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  store ptr %i.g, ptr %4, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  store i64 %i.j, ptr %i.h, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %4, i32 noundef 1)
  %i.k = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 7) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  store ptr %i.q, ptr %5, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  store i64 %i.t, ptr %i.r, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %5, i32 noundef 1)
  %.pre = load ptr, ptr %0, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  store ptr %i.w, ptr %6, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  store i64 %i.z, ptr %i.x, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %6, i32 noundef 1)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #42
  unreachable

end_hunk_0
