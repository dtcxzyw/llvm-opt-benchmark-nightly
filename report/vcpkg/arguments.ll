Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/arguments?download=true
inline.NumInlined: 1513
inline.NumDeleted: 450
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL20C_A_T_C_H_T_E_S_T_12v:.noexc.i

_ZN5Catch16AssertionHandlerD2Ev.exit91:           ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %i.jz = load ptr, ptr %i.ek, align 8, !tbaa !71
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.jz)
          to label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit unwind label %bb.cf

bb.cf:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit91
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #22
  unreachable

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit91
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @_ZN5vcpkg17VcpkgCmdArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not4.i.i.i = icmp eq ptr %i.h, %i.m
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit ] ; 3 uses
  %i.kc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !18
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kh, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.cg:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit90
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ci unwind label %bb.cp

bb.ch:                                            ; preds = %bb.cb, %bb.ca
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %.pn43 = phi { ptr, i32 } [ %i.kj, %bb.ch ], [ %i.ki, %bb.cg ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %29) #19
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bw
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.ci ], [ %i.je, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bv, %bb.bu, %bb.az, %bb.ay
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.cj ], [ %i.gs, %bb.az ], [ %i.jd, %bb.bv ], [ %.pn39.pn, %bb.bu ], [ %i.gr, %bb.ay ]
  call void @_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %19) #19
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNSt4pairIKN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit78
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %bb.ck ], [ %i.et, %_ZNSt4pairIKN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ax, %bb.ac, %bb.ab
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn, %bb.cl ], [ %.pn33.pn, %bb.ax ], [ %i.dj, %bb.ac ], [ %.pn29.pn, %bb.ab ]
  call void @_ZN5vcpkg17VcpkgCmdArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %6) #19
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.i
  %.pn43.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn, %bb.cm ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit
  %.pn43.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn.pn, %bb.cn ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn43.pn.pn.pn.pn.pn.pn

bb.cp:                                            ; preds = %bb.cg, %bb.br, %bb.au, %bb.y
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_14v() #1 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %0 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector", align 8       ; 7 uses
  %2 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %3 = alloca %"struct.vcpkg::VcpkgCmdArguments", align 8 ; 8 uses
  %4 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %5 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %6 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 25, ptr %i.a, align 8, !tbaa !19
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %2, align 8, !tbaa !20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.112, i64 25, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = load ptr, ptr %2, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 10 uses

.thread:                                          ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.h, ptr %1, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.b unwind label %bb.a       ; 4 uses

bb.a:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #21
  br label %.body

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !25
  %i.p = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = ptrtoint ptr %i.h to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  invoke void @_ZN5vcpkg17VcpkgCmdArguments24create_from_arg_sequenceEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::VcpkgCmdArguments") align 8 %3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.x)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr @.str.113, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr @.str, ptr %6, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 179, ptr %i.z, align 8, !tbaa !28
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.114) #19
  %i.aa = load ptr, ptr %7, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.aa, i64 %i.ac, i32 noundef 2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1434
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !57, !range !36, !noundef !37
  %8 = trunc nuw i8 %i.ae to i1
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 1435
  %.val.i.i = load i8, ptr %9, align 1, !range !36
  %.not = xor i8 %.val.i.i, 1
  %10 = select i1 %8, i8 %.not, i8 0              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !39, !alias.scope !290
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %10, ptr %i.ag, align 1, !tbaa !40, !alias.scope !290
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %0, align 8, !tbaa !42, !alias.scope !290
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %10, ptr %i.ah, align 2, !tbaa !55, !alias.scope !290
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(10) %0)
          to label %bb.e unwind label %.body17

.body17:                                          ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = call ptr @__cxa_begin_catch(ptr %i.aj) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.i unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  br label %bb.j

bb.f:                                             ; preds = %.noexc.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread, %bb.a
  %i.am = phi { ptr, i32 } [ %i.i, %.thread ], [ %i.n, %bb.a ] ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %.body
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.am, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.s

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.q

bb.i:                                             ; preds = %.body17
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.e
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.av = load i8, ptr %i.au, align 2, !tbaa !51, !range !36, !noundef !37
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52, !nonnull !37, !align !53 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN5vcpkg17VcpkgCmdArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not4.i.i.i = icmp eq ptr %i.h, %i.m
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZN5Catch16AssertionHandlerD2Ev.exit ] ; 3 uses
  %i.be = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.n:                                             ; preds = %.body17
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.t

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pn12 = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.bk, %bb.n ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %bb.p ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN5vcpkg17VcpkgCmdArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %3) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %bb.q ], [ %i.as, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.r ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn12.pn.pn.pn

bb.t:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_16v() #1 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %0 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %1 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %2 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %3 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %4 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %5 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %6 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %7 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 7 uses
  %10 = alloca [4 x %"class.std::__cxx11::basic_string"], align 8 ; 35 uses
  %11 = alloca %"struct.vcpkg::VcpkgCmdArguments", align 8 ; 12 uses
  %12 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %13 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %17 = alloca %"class.Catch::BinaryExpr.90", align 8 ; 13 uses
  %18 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %20 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %21 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %22 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %24 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %25 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %26 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %27 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %28 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %30 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %31 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %32 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %33 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %34 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %36 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %37 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %38 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %39 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
end_hunk_0
