Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstrumentation?download=true
inline.NumInlined: 3224
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17cmInstrumentation29InsertStaticSystemInformationERN4Json5ValueE:bb.a
bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn97 = phi { ptr, i32 } [ %i.ev, %bb.do ], [ %i.eu, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.et

bb.dq:                                            ; preds = %bb.bg, %bb.bf
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.bh
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #28
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn99 = phi { ptr, i32 } [ %i.ex, %bb.dr ], [ %i.ew, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.et

bb.dt:                                            ; preds = %bb.bj, %bb.bi
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.bk
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #28
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn101 = phi { ptr, i32 } [ %i.ez, %bb.du ], [ %i.ey, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.et

bb.dw:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.er, %bb.bl
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.dx:                                            ; preds = %.lr.ph, %.thread
  %.sroa.0126.0132 = phi ptr [ %i.ce, %.lr.ph ], [ %i.fw, %.thread ] ; 6 uses
  %i.fb = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0126.0132)
          to label %bb.dy unwind label %bb.el

bb.dy:                                            ; preds = %bb.dx
  %i.fc = invoke noundef zeroext i1 @_ZNK4Json5Value9isNumericEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fb)
          to label %bb.dz unwind label %bb.el

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.fc, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.fd = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0126.0132)
          to label %bb.eb unwind label %bb.el

bb.eb:                                            ; preds = %bb.ea
  %i.fe = invoke noundef i64 @_ZNK4Json5Value7asInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.fd)
          to label %bb.ec unwind label %bb.el

bb.ec:                                            ; preds = %bb.eb
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %.thread.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dz
  %i.fg = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0126.0132)
          to label %bb.ee unwind label %bb.el

bb.ee:                                            ; preds = %bb.ed
  %i.fh = invoke noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fg)
          to label %bb.ef unwind label %bb.el

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.fh, label %bb.eg, label %.thread

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.fi = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0126.0132)
          to label %bb.eh unwind label %bb.em

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(40) %i.fi)
          to label %bb.ei unwind label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.fj = load i64, ptr %i.ch, align 8, !tbaa !30 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ci
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124: ; preds = %bb.ei
  %i.fn = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fn)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.ei
  %i.fo = load i64, ptr %i.ci, align 8, !tbaa !29
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #29
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %i.fk, label %.thread.thread, label %.thread

.thread.thread:                                   ; preds = %bb.ec, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef 0)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %.thread.thread
  %i.fq = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0126.0132)
          to label %bb.ek unwind label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  %i.fr = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, ptr noundef nonnull align 8 dereferenceable(40) %27) #28 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %.thread

bb.el:                                            ; preds = %bb.ee, %bb.ed, %bb.eb, %bb.ea, %bb.dy, %bb.dx
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.em:                                            ; preds = %bb.eh, %bb.eg
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.eq

bb.en:                                            ; preds = %.thread.thread
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ej
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #28
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.pn103 = phi { ptr, i32 } [ %i.fv, %bb.eo ], [ %i.fu, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.eq

.thread:                                          ; preds = %bb.ef, %bb.ek, %.critedge
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0126.0132, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fw, %i.cg
  br i1 %.not, label %._crit_edge, label %bb.dx

bb.eq:                                            ; preds = %bb.em, %bb.ep, %bb.el
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.ep ], [ %i.ft, %bb.em ], [ %i.fs, %bb.el ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.et

bb.er:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.fx = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.es unwind label %bb.dw     ; 0 uses

bb.es:                                            ; preds = %bb.er
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.et:                                            ; preds = %bb.dw, %bb.eq, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.bx, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.fa, %bb.dw ], [ %.pn101, %bb.dv ], [ %.pn99, %bb.ds ], [ %.pn97, %bb.dp ], [ %.pn95, %bb.dm ], [ %.pn93, %bb.dj ], [ %.pn91, %bb.dg ], [ %.pn89, %bb.dd ], [ %.pn87, %bb.da ], [ %.pn85, %bb.cx ], [ %.pn83, %bb.cu ], [ %.pn81, %bb.cr ], [ %.pn79, %bb.co ], [ %.pn77, %bb.cl ], [ %.pn75, %bb.ci ], [ %.pn72.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn69.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn67, %bb.bx ], [ %.pn65, %bb.bu ], [ %.pn103.pn, %bb.eq ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"struct.std::pair.805"], align 8 ; 9 uses
  %4 = alloca [2 x %"struct.std::pair.805"], align 8 ; 9 uses
  %5 = alloca %"class.std::vector.21", align 8    ; 15 uses
  %6 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %7 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::basic_ofstream", align 8 ; 24 uses
  %12 = alloca %"class.Json::StreamWriterBuilder", align 8 ; 8 uses
  %13 = alloca %"class.Json::Value", align 8      ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator.1", align 1 ; 5 uses
  %18 = alloca %"class.std::vector.780", align 8  ; 10 uses
  %19 = alloca %"class.Json::Value", align 8      ; 13 uses
  %20 = alloca %"class.Json::Value", align 8      ; 11 uses
  %21 = alloca %"class.Json::Value", align 8      ; 11 uses
  %22 = alloca %"class.Json::Value", align 8      ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %24 = alloca %"class.std::allocator.1", align 1 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::allocator.1", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.45)
          to label %bb.b unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.c = invoke { ptr, i8 } @_ZNK4Json5Value5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract11 = extractvalue { ptr, i8 } %i.c, 0
  %.fca.1.extract12 = extractvalue { ptr, i8 } %i.c, 1
  store ptr %.fca.0.extract11, ptr %6, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %.fca.1.extract12, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.d = invoke { ptr, i8 } @_ZNK4Json5Value3endEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.d unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.0.extract = extractvalue { ptr, i8 } %i.d, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.d, 1
  store ptr %.fca.0.extract, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %_ZN4Json18ValueConstIteratorppEv.exit

_ZN4Json18ValueConstIteratorppEv.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.i = invoke noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %bb.e unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZN4Json18ValueConstIteratorppEv.exit
  br i1 %i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.j = load ptr, ptr %5, align 8, !tbaa !135    ; 6 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !135  ; 6 uses
  %.not.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EvT_SL_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 5
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_T0_T1_"(ptr %i.j, ptr %i.k, i64 noundef %i.r)
          to label %.noexc unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %i.s = icmp sgt i64 %i.n, 512
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 512 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_T0_"(ptr %i.j, ptr nonnull %i.t)
          to label %.noexc89 unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %bb.h
  %.not6.i.i.i.i = icmp eq ptr %i.t, %i.k
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EvT_SL_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc89, %.noexc90
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.u, %.noexc90 ], [ %i.t, %.noexc89 ] ; 2 uses
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_T0_"(ptr nonnull %.sroa.0.07.i.i.i.i)
          to label %.noexc90 unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.k
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EvT_SL_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !680

bb.i:                                             ; preds = %.noexc
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_T0_"(ptr %i.j, ptr %i.k)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EvT_SL_T0_.exit" unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.a
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp181

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %_ZNK4Json18ValueConstIteratordeEv.exit unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4Json18ValueConstIteratordeEv.exit:           ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNK4Json18ValueConstIteratordeEv.exit
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !100  ; 7 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !101
  %.not.i.i93 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i93, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !30  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !28
  %i.af = load i64, ptr %i.g, align 8, !tbaa !29
  store i64 %i.af, ptr %i.z, align 8, !tbaa !29
  %.pre = load i64, ptr %i.h, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ac, %bb.n ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !30
  store ptr %i.g, ptr %8, align 8, !tbaa !28
  store i64 0, ptr %i.h, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.o
  %.pre232 = load ptr, ptr %8, align 8, !tbaa !28 ; 2 uses
  %i.aj = icmp eq ptr %.pre232, %i.g
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !29
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre232, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  invoke void @_ZN4Json17ValueIteratorBase9incrementEv(ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %_ZN4Json18ValueConstIteratorppEv.exit unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %_ZN4Json18ValueConstIteratorppEv.exit, %bb.c
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp186

bb.p:                                             ; preds = %_ZNK4Json18ValueConstIteratordeEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.q:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.q
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.p
  %.pn81 = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.an, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.loopexit.split-lp186

.loopexit.split-lp186:                            ; preds = %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn84 = phi { ptr, i32 } [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp186, %bb.j
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %.loopexit.split-lp186 ], [ %i.v, %bb.j ]
end_hunk_0
begin_hunk_1_@_ZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bw = load ptr, ptr %11, align 8, !tbaa !121
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %11, i64 %i.by ; 2 uses
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc107
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !130
  %i.cc = or i32 %i.cb, 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc107
  %.sink.i = phi i32 [ %i.cc, %bb.aa ], [ 0, %.noexc107 ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bz, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %bb.ap

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.ab
  %i.cd = load ptr, ptr %11, align 8, !tbaa !121
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %11, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !130
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.as, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  %i.ck = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.88, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.af unwind label %bb.aq

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.ci unwind label %bb.aq

bb.ag:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EvT_SL_T0_.exit"
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.ah:                                            ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

bb.ai:                                            ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.aj:                                            ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ak:                                            ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.al:                                            ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bj
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.am
  %i.cu = load i64, ptr %i.bj, align 8, !tbaa !29
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #28
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.cq, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit156

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit156

bb.ap:                                            ; preds = %bb.as, %bb.ab, %bb.z
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread: ; preds = %bb.ac
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aq:                                            ; preds = %bb.af, %bb.ae
  %.026 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.da = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.aq
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !29
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.df = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread: ; preds = %bb.ad
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !29
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.do = load i64, ptr %i.dg, align 8, !tbaa !29
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dp) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br i1 %.026, label %bb.ar, label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br i1 %.026, label %bb.ar, label %bb.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread
  %.pn58.pn168.ph = phi { ptr, i32 } [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.thread ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn58.pn168 = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn58.pn168.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ck) #28
  br label %bb.cd

bb.as:                                            ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.136, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 0)
          to label %bb.at unwind label %.thread

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 0)
          to label %.preheader unwind label %.thread299

.preheader:                                       ; preds = %bb.at
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.ds = load ptr, ptr %5, align 8, !tbaa !99    ; 2 uses
  %.not193 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %28 = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZN17cmInstrumentation15ReadJsonSnippetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %21, ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ds)
          to label %bb.au unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %.lr.ph
  %i.dv = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %21) #28 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  invoke void @_ZN17cmInstrumentation15BuildTraceEventERSt6vectorImSaImEERKN4Json5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %22, ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(40) %20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122.peel unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122.peel: ; preds = %bb.au
  %i.dw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(40) %22) #28 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %.pre234 = load ptr, ptr %i.bs, align 8, !tbaa !121
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre234, i64 16
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8
  %i.dx = invoke noundef i32 %.pre235(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %11)
          to label %bb.av unwind label %bb.ax     ; 0 uses

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122.peel
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aw unwind label %bb.ax     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.dz = load ptr, ptr %11, align 8, !tbaa !121
  %i.ea = getelementptr i8, ptr %i.dz, i64 -24
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds i8, ptr %11, i64 %i.eb
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ec, i32 noundef 0)
          to label %bb.be unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122.peel
  %i.ed = landingpad { ptr, i32 }
          catch ptr @_ZTINSt8ios_base7failureB5cxx11E
          catch ptr null                          ; 2 uses
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  %i.ef = extractvalue { ptr, i32 } %i.ed, 1
  %i.eg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt8ios_base7failureB5cxx11E) #28
  %i.eh = icmp eq i32 %i.ef, %i.eg
  %i.ei = call ptr @__cxa_begin_catch(ptr %i.ee) #28 ; 2 uses
  br i1 %i.eh, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.138, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.az unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ba unwind label %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.ej = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %28
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i127.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.peel: ; preds = %bb.ba
  %i.el = load i64, ptr %28, align 8, !tbaa !29
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i127.peel: ; preds = %bb.ba
  %30 = load i64, ptr %29, align 8, !tbaa !30
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i127.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !121
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef ptr %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %i.ei) #28
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !90
  invoke void @_Z8cmStrCatIRA39_KcPS0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 1 dereferenceable(39) @.str.139, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bc unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.bd unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.er = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dt
  br i1 %i.es, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.peel: ; preds = %bb.bd
  %i.et = load i64, ptr %i.dt, align 8, !tbaa !29
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124.peel: ; preds = %bb.bd
  %32 = load i64, ptr %i.du, align 8, !tbaa !30
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel.invoke

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel.invoke, %bb.aw
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.ew = load ptr, ptr %5, align 8, !tbaa !99    ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ugt i64 %i.ez, 32
  br i1 %i.fa, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bl, %bb.be, %.preheader
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.140, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120 unwind label %bb.bu ; 0 uses

.thread:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit153

.thread299:                                       ; preds = %bb.at
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit153

.peel.next:                                       ; preds = %bb.be, %bb.bl
  %i.fe = phi ptr [ %i.fz, %bb.bl ], [ %i.ew, %bb.be ]
  %.0190 = phi i64 [ %i.fx, %bb.bl ], [ 1, %bb.be ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %.0190
  invoke void @_ZN17cmInstrumentation15ReadJsonSnippetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %21, ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %bb.bf unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %.peel.next
  %i.fg = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %21) #28 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  invoke void @_ZN17cmInstrumentation15BuildTraceEventERSt6vectorImSaImEERKN4Json5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %22, ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(40) %20)
          to label %bb.bg unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.fh = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(40) %22) #28 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.137, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122 unwind label %bb.bh ; 0 uses

.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.cb

.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.au
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.cb

bb.bh:                                            ; preds = %bb.bg, %bb.bs, %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
  %i.fj = landingpad { ptr, i32 }
          catch ptr @_ZTINSt8ios_base7failureB5cxx11E
          catch ptr null                          ; 2 uses
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  %i.fl = extractvalue { ptr, i32 } %i.fj, 1
  %i.fm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt8ios_base7failureB5cxx11E) #28
  %i.fn = icmp eq i32 %i.fl, %i.fm
  %i.fo = call ptr @__cxa_begin_catch(ptr %i.fk) #28 ; 2 uses
  br i1 %i.fn, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !121
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(32) %i.fo) #28
  store ptr %i.fs, ptr %i.a, align 8, !tbaa !90
  invoke void @_Z8cmStrCatIRA39_KcPS0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 1 dereferenceable(39) @.str.139, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bj unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.bk unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.ft = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.dt
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.bk
  %i.fv = load i64, ptr %i.dt, align 8, !tbaa !29
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.invoke

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.invoke, %bb.bq, %bb.bs
  %i.fx = add nuw i64 %.0190, 1                   ; 2 uses
  %i.fy = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.fz = load ptr, ptr %5, align 8, !tbaa !99    ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 5
  %i.ge = icmp ult i64 %i.fx, %i.gd
  br i1 %i.ge, label %.peel.next, label %._crit_edge, !llvm.loop !693

bb.bm:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.138, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bn unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bo unwind label %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.gf = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %28
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.bo
  %i.gh = load i64, ptr %28, align 8, !tbaa !29
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  invoke void @__cxa_end_catch()
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122: ; preds = %bb.bg
  %i.gj = load ptr, ptr %i.bs, align 8, !tbaa !121
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = invoke noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %11)
          to label %bb.bp unwind label %bb.bh     ; 0 uses

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
  %i.gn = urem i64 %.0190, 50
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gp = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.gq = load ptr, ptr %5, align 8, !tbaa !99
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 5
  %i.gv = add nsw i64 %i.gu, -1
  %i.gw = icmp eq i64 %.0190, %i.gv
  br i1 %i.gw, label %bb.br, label %bb.bl

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bs unwind label %bb.bh     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.gy = load ptr, ptr %11, align 8, !tbaa !121
  %i.gz = getelementptr i8, ptr %i.gy, i64 -24
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %11, i64 %i.ha
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.hb, i32 noundef 0)
          to label %bb.bl unwind label %bb.bh

.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.ay
  %lpad.loopexit.split-lp332 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.az
  %lpad.loopexit.split-lp335 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %28
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp
  %i.he = load i64, ptr %28, align 8, !tbaa !29
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  %.pn63 = phi { ptr, i32 } [ %lpad.loopexit.split-lp335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %lpad.loopexit.split-lp332, %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  invoke void @__cxa_end_catch()
          to label %bb.cb unwind label %bb.ch

.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.bb
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bj, %bb.bc
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.dt
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp
  %i.hi = load i64, ptr %i.dt, align 8, !tbaa !29
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  %.pn65 = phi { ptr, i32 } [ %lpad.loopexit.split-lp341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  invoke void @__cxa_end_catch()
          to label %bb.cb unwind label %bb.ch

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.peel.invoke
  %lpad.loopexit.split-lp344 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120: ; preds = %._crit_edge
  %i.hk = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.bu)
          to label %.noexc136 unwind label %bb.bu

.noexc136:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120
  %.not.i135 = icmp eq ptr %i.hk, null
  br i1 %.not.i135, label %bb.bt, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit

bb.bt:                                            ; preds = %.noexc136
  %i.hl = load ptr, ptr %11, align 8, !tbaa !121
  %i.hm = getelementptr i8, ptr %i.hl, i64 -24
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds i8, ptr %11, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !130
  %i.hr = or i32 %i.hq, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ho, i32 noundef %i.hr)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120, %._crit_edge
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  %i.hu = call ptr @__cxa_begin_catch(ptr %i.ht) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.138, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.hv = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.bw
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !29
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc136, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ia = load ptr, ptr %18, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !144
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.not.i141 = icmp eq ptr %i.bs, null
  br i1 %.not.i141, label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ig = load ptr, ptr %i.bs, align 8, !tbaa !121
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #28, !inline_history !5
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i
  call void @_ZN4Json19StreamWriterBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ij = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !29
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.io = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !29
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.it = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %i.iu = load ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ja, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 3 uses
  %i.iv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !29
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.ja, %i.iu
  br i1 %.not.i.i.i148, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.jb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.jc = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ca:                                            ; preds = %bb.bv
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.ca
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !29
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.bz
  %.pn61 = phi { ptr, i32 } [ %i.jg, %bb.bz ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.jh, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %bb.cb unwind label %bb.ch

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %lpad.loopexit.split-lp344, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
end_hunk_1
