inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN11OpenImageIO4v3_17Strutil8vsprintfB5cxx11EPKcP13__va_list_tag:bb.a
bb.i:                                             ; preds = %.noexc.i26
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.d
  %i.ag = add nuw nsw i32 %i.n, 1                 ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 5 uses
  %i.ai = ptrtoint ptr %.sroa.9.0 to i64          ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.033.0 to i64        ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 8 uses
  %i.al = icmp ult i64 %i.ak, %i.ah
  br i1 %i.al, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.am = sub nuw nsw i64 %i.ah, %i.ak            ; 5 uses
  %i.an = ptrtoint ptr %.sroa.13.0 to i64         ; 2 uses
  %i.ao = sub i64 %i.an, %i.ai                    ; 2 uses
  %i.ap = xor i64 %i.ak, 9223372036854775807
  %i.aq = icmp ule i64 %i.ao, %i.ap
  call void @llvm.assume(i1 %i.aq)
  %.not28.i.i = icmp ult i64 %i.ao, %i.am
  br i1 %.not28.i.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %.sroa.9.0, align 1, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 1 ; 2 uses
  %i.as = add nsw i64 %i.am, -1                   ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %.sroa.9.0, i64 %i.am
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.am)
  %i.av = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #51
          to label %.noexc29 unwind label %bb.c   ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ak ; 2 uses
  store i8 0, ptr %i.ax, align 1, !tbaa !7
  %i.ay = add nsw i64 %i.am, -1                   ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ba, i8 0, i64 %i.ay, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.n, %.noexc29
  %.not35.i.i = icmp eq ptr %.sroa.9.0, %.sroa.033.0
  br i1 %.not35.i.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %.sroa.033.0, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.o, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  %i.bb = sub i64 %i.an, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.bb) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i: ; preds = %bb.p, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ah
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.q:                                             ; preds = %bb.j
  %i.be = icmp ugt i64 %i.ak, %i.ah
  br i1 %i.be, label %bb.r, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 %i.ah ; 2 uses
  %.not.i4.i = icmp eq ptr %.sroa.9.0, %i.bf
  %spec.select = select i1 %.not.i4.i, ptr %.sroa.9.0, ptr %i.bf
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.r, %bb.q, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, %bb.m, %bb.l
  %.sroa.13.1 = phi ptr [ %i.bd, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.13.0, %bb.q ], [ %.sroa.13.0, %bb.r ], [ %.sroa.13.0, %bb.l ], [ %.sroa.13.0, %bb.m ]
  %.sroa.9.1 = phi ptr [ %i.bc, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.9.0, %bb.q ], [ %spec.select, %bb.r ], [ %i.ar, %bb.l ], [ %i.au, %bb.m ]
  %.sroa.033.1 = phi ptr [ %i.aw, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.033.0, %bb.q ], [ %.sroa.033.0, %bb.r ], [ %.sroa.033.0, %bb.l ], [ %.sroa.033.0, %bb.m ] ; 2 uses
  call void @llvm.va_copy.p0(ptr %2, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit.i, !llvm.loop !115

bb.s:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = ptrtoint ptr %.sroa.13.0 to i64
  %i.bh = ptrtoint ptr %.sroa.033.0 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.bi) #48
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.h, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not.i.i.i30 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIcSaIcEED2Ev.exit31, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.bj = ptrtoint ptr %.sroa.13.0 to i64
  %i.bk = ptrtoint ptr %.sroa.033.0 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.bl) #48
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit31

_ZNSt6vectorIcSaIcEED2Ev.exit31:                  ; preds = %.critedge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #4

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Strutil9memformatB5cxx11Exi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.133", align 16 ; 6 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.130", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.130", align 16 ; 4 uses
  %i.a = icmp sgt i64 %1, 1073741823
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %1, 1048575
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp sgt i64 %1, 1023
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !116
  %.sroa.03.0.insert.ext.i = zext nneg i64 %i.d to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %5, align 16, !noalias !116
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.21, i64 5, i64 3, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !116
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !119
  %.sroa.03.0.insert.ext.i1 = zext i64 %1 to i128
  store i128 %.sroa.03.0.insert.ext.i1, ptr %4, align 16, !noalias !119
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.22, i64 4, i64 3, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !119
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %.sink10 = phi double [ f0x3E10000000000000, %bb.a ], [ f0x3EB0000000000000, %bb.b ]
  %.0 = phi ptr [ @.str.19, %bb.a ], [ @.str.20, %bb.b ]
  %i.e = uitofp nneg i64 %1 to double
  %i.f = fmul nnan double %.sink10, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !122
  store i32 %2, ptr %3, align 16, !tbaa !7, !alias.scope !125, !noalias !122
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.f, ptr %i.g, align 16, !tbaa !7, !alias.scope !130, !noalias !122
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.0, ptr %i.h, align 16, !tbaa !7, !alias.scope !130, !noalias !122
  call void @_ZN3fmt3v128vsprintfIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEENS0_17basic_string_viewIS4_EENS0_12vprintf_argsIS4_E4typeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.23, i64 8, i64 3233, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.153", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.152", align 16 ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.151", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.150", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !107
  store i8 0, ptr %i.a, align 8, !tbaa !7
  %11 = fdiv double %1, 8.640000e+04
  %12 = tail call double @llvm.floor.f64(double %11)
  %13 = fptosi double %12 to i32                  ; 2 uses
  %14 = frem double %1, 8.640000e+04              ; 2 uses
  %15 = fdiv double %14, 3.600000e+03
  %i.c = tail call double @llvm.floor.f64(double %15)
  %i.d = fptosi double %i.c to i32                ; 3 uses
  %i.e = frem double %14, 3.600000e+03            ; 2 uses
  %i.f = fdiv double %i.e, 6.000000e+01
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = frem double %i.e, 6.000000e+01           ; 2 uses
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !131
  store i32 %13, ptr %6, align 16, !tbaa !7, !alias.scope !134, !noalias !131
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.d, ptr %i.j, align 16, !tbaa !7, !alias.scope !134, !noalias !131
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.24, i64 8, i64 17, ptr nonnull %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !131
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !107
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.c
  %i.p = load ptr, ptr %7, align 8, !tbaa !110
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.p, i64 noundef %i.l)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.r = load ptr, ptr %7, align 8, !tbaa !110    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !7
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !110    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !7
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.e
  %.pn12 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !137
  %.sroa.03.0.insert.ext.i = zext i32 %i.d to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %5, align 16, !noalias !137
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.25, i64 4, i64 1, ptr nonnull %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !137
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %i.af = load i64, ptr %i.b, align 8, !tbaa !107
  %i.ag = sub i64 4611686018427387903, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #47
          to label %.noexc25 unwind label %bb.l

.noexc25:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24: ; preds = %bb.i
  %i.ai = load ptr, ptr %8, align 8, !tbaa !110
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ai, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27 unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24
  %i.ak = load ptr, ptr %8, align 8, !tbaa !110   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27
  %i.an = load i64, ptr %i.al, align 8, !tbaa !7
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.thread

bb.k:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i24, %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %8, align 8, !tbaa !110   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !7
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.x

bb.m:                                             ; preds = %bb.g
  %.not75 = icmp eq i32 %i.h, 0
  br i1 %.not75, label %bb.r, label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !140
  store i32 %i.h, ptr %4, align 16, !tbaa !7, !alias.scope !143, !noalias !140
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %2, ptr %i.aw, align 16, !tbaa !7, !alias.scope !143, !noalias !140
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %i.i, ptr %i.ax, align 16, !tbaa !7, !alias.scope !143, !noalias !140
  invoke void @_ZN3fmt3v128vsprintfIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEENS0_17basic_string_viewIS4_EENS0_12vprintf_argsIS4_E4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.26, i64 10, i64 2577, ptr nonnull %4)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !140
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !107 ; 2 uses
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !107
  %i.bb = sub i64 4611686018427387903, %i.ba
  %i.bc = icmp ult i64 %i.bb, %i.az
  br i1 %i.bc, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #47
          to label %.noexc36 unwind label %bb.q

.noexc36:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35: ; preds = %bb.n
  %i.bd = load ptr, ptr %9, align 8, !tbaa !110
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bd, i64 noundef %i.az)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit38 unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35
  %i.bf = load ptr, ptr %9, align 8, !tbaa !110   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit38
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !7
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.w

bb.p:                                             ; preds = %.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i35, %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %9, align 8, !tbaa !110   ; 2 uses
end_hunk_0
