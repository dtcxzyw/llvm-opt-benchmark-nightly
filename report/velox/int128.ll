inline.NumInlined: 331
inline.NumDeleted: 140
begin_hunk_0_@_ZN4absl12lts_20240116lsERSoNS0_7uint128E:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 225 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24, !range !32, !noundef !33
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %._crit_edge.i48, label %bb.s

._crit_edge.i48:                                  ; preds = %bb.r
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %.pre.i50 = load i8, ptr %.phi.trans.insert.i49, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit54.invoke

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i43, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

.invoke:                                          ; preds = %bb.d, %bb.s, %bb.o
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !35
  %.not.i1.i.i45 = icmp eq i8 %i.bz, 0
  br i1 %.not.i1.i.i45, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 89
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bx)
          to label %.noexc52 unwind label %bb.l

.noexc52:                                         ; preds = %bb.u
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef signext i8 %i.ce(ptr noundef nonnull align 8 dereferenceable(570) %i.bx, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46 unwind label %bb.l, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46: ; preds = %.noexc52, %bb.t
  %.0.i.i.i47 = phi i8 [ %i.cb, %bb.t ], [ %i.cf, %.noexc52 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  store i8 %.0.i.i.i47, ptr %i.cg, align 8, !tbaa !42
  store i8 1, ptr %i.bt, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit54.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit54.invoke: ; preds = %._crit_edge.i48, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46, %._crit_edge.i36, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34
  %i.ch = phi i64 [ 2, %._crit_edge.i36 ], [ 2, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34 ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46 ], [ 0, %._crit_edge.i48 ]
  %i.ci = phi i8 [ %.pre.i38, %._crit_edge.i36 ], [ %.0.i.i.i35, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34 ], [ %.0.i.i.i47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46 ], [ %.pre.i50, %._crit_edge.i48 ]
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ch, i64 noundef %i.p, i8 noundef signext %i.ci)
          to label %bb.v unwind label %bb.l       ; 0 uses

bb.v:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit54.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %bb.a
  %i.ck = load ptr, ptr %3, align 8, !tbaa !60
  %i.cl = load i64, ptr %i.m, align 8, !tbaa !54
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.v
  %i.cn = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !56
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %i.cm

bb.w:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.l ]
  %i.cs = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.w
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !56
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 7 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i64 noundef %1, i64 noundef %i.b) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit: ; preds = %bb.a
  %i.d = sub i64 9223372036854775807, %i.b
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit
  %i.f = add i64 %i.b, %2                         ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !56
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %.not.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.m = sub i64 %i.b, %1                         ; 2 uses
  %.not28.i = icmp eq i64 %i.b, %1
  %.not29.i = icmp eq i64 %2, 0
  %or.cond.i = or i1 %.not29.i, %.not28.i
  br i1 %or.cond.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %2 ; 2 uses
  %cond31.i = icmp eq i64 %i.m, 1
  br i1 %cond31.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.n, align 1, !tbaa !56
  store i8 %i.p, ptr %i.o, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.n, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef 0, ptr noundef null, i64 noundef %2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i: ; preds = %bb.h, %bb.d
  %.not30.i = icmp eq i64 %2, 0
  br i1 %.not30.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread: ; preds = %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i
  %i.q = load ptr, ptr %0, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1 ; 2 uses
  %cond.i = icmp eq i64 %2, 1
  br i1 %cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread
  store i8 %3, ptr %i.r, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %3, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.i, %bb.j
  store i64 %i.f, ptr %i.a, align 8, !tbaa !54
  %i.s = load ptr, ptr %0, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f
  store i8 0, ptr %i.t, align 1, !tbaa !56
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202401166int1288ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !54
  store i8 0, ptr %i.a, align 8, !tbaa !56
  %.sroa.02.0.copyload = load i128, ptr %1, align 16, !tbaa !62 ; 2 uses
  %i.c = icmp slt i128 %.sroa.02.0.copyload, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.pre = load i128, ptr %1, align 16, !tbaa !62
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.copyload = phi i128 [ %.sroa.0.0.copyload.pre, %bb.c ], [ %.sroa.02.0.copyload, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %.sroa.06.0.v.i = tail call i128 @llvm.abs.i128(i128 %.sroa.0.0.copyload, i1 false) ; 2 uses
  %i.e = trunc i128 %.sroa.06.0.v.i to i64
  %i.f = lshr i128 %.sroa.06.0.v.i, 64
  %i.g = trunc nuw i128 %i.f to i64
  invoke fastcc void @_ZN4absl12lts_2024011612_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias nonnull writable align 8 %2, i64 %i.e, i64 %i.g, i32 noundef 2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %2, align 8, !tbaa !60     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54   ; 6 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !54   ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.e
  %i.n = add i64 %i.k, %i.j                       ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !56
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.n, %i.s
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.j, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.h, align 1, !tbaa !56
  store i8 %i.u, ptr %i.t, align 1, !tbaa !56
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.j)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.k
  store i64 %i.n, ptr %i.b, align 8, !tbaa !54
  %i.v = load ptr, ptr %0, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i8 0, ptr %i.w, align 1, !tbaa !56
  %i.x = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !56
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.n:                                             ; preds = %bb.k, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.n
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !56
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.ad, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.o
  %i.al = load i64, ptr %i.a, align 8, !tbaa !56
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20240116lsERSoNS0_6int128E(ptr noundef nonnull align 8 dereferenceable(8) %0, i128 %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %i.h, align 8, !tbaa !54
  store i8 0, ptr %i.g, align 8, !tbaa !56
  %i.i = and i32 %i.f, 74
  switch i32 %i.i, label %bb.f [
    i32 2, label %.thread
    i32 0, label %.thread
  ]

.thread:                                          ; preds = %bb.a, %bb.a
  %i.j = icmp slt i128 %1, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.c:                                             ; preds = %.thread
  %i.l = and i32 %i.f, 2048
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %4 = phi ptr [ @.str.1, %bb.c ], [ @.str, %.thread ]
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %4, i64 noundef 1)
          to label %bb.e unwind label %bb.b       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.sroa.06.0.v.i = call i128 @llvm.abs.i128(i128 %1, i1 false) ; 2 uses
  %.sroa.06.0.i = trunc i128 %.sroa.06.0.v.i to i64
  %.sroa.3.0.v.i = lshr i128 %.sroa.06.0.v.i, 64
  %.sroa.3.0.i = trunc nuw i128 %.sroa.3.0.v.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre100 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert101 = getelementptr inbounds i8, ptr %0, i64 %.pre100
  %.phi.trans.insert102 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert101, i64 24
  %.pre103 = load i32, ptr %.phi.trans.insert102, align 8, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.n = trunc i128 %1 to i64
  %i.o = lshr i128 %1, 64
  %i.p = trunc nuw i128 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %5 = phi i32 [ %.pre103, %bb.e ], [ %i.f, %bb.f ]
  %6 = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.097.0 = phi i64 [ %.sroa.06.0.i, %bb.e ], [ %i.n, %bb.f ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.i, %bb.e ], [ %i.p, %bb.f ]
  invoke fastcc void @_ZN4absl12lts_2024011612_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 %.sroa.097.0, i64 %.sroa.3.0, i32 noundef %5)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %3, align 8, !tbaa !60     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !54   ; 6 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !54   ; 5 uses
  %i.u = sub i64 9223372036854775807, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.h
  %i.w = add i64 %i.t, %i.s                       ; 3 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !56
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.w, %i.ab
  br i1 %.not.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.s, 1
  br i1 %cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.q, align 1, !tbaa !56
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !56
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.t, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.s)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.n
  store i64 %i.w, ptr %i.h, align 8, !tbaa !54
  %i.ae = load ptr, ptr %2, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 0, ptr %i.af, align 1, !tbaa !56
  %i.ag = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !56
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr i8, ptr %i.al, i64 -24    ; 5 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !43
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.p, label %bb.as

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = sub nuw i64 %i.aq, %i.ar                ; 6 uses
  %i.au = trunc i32 %i.f to i8
  %trunc = and i8 %i.au, -80
  switch i8 %trunc, label %bb.ao [
    i8 32, label %bb.u
    i8 16, label %bb.ac
  ]

bb.q:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.r:                                             ; preds = %bb.n, %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.r
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !56
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.q
  %.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.aw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.at

bb.s:                                             ; preds = %bb.as
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.t:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke, %.invoke, %.noexc87, %bb.ar, %.noexc75, %bb.an, %.noexc63, %bb.ah, %bb.z, %bb.y, %.noexc49, %bb.x, %bb.aj
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.u:                                             ; preds = %bb.p
  %i.be = load i64, ptr %i.am, align 8
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 225 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !24, !range !32, !noundef !33
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i47 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i47, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !35
  %.not.i1.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i1.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 89
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
          to label %.noexc49 unwind label %bb.t

.noexc49:                                         ; preds = %bb.x
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 32)
          to label %.noexc49._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge unwind label %bb.t, !inline_history !61

.noexc49._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge: ; preds = %.noexc49
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc49._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge, %bb.w
  %.pre.a = phi i64 [ %i.ar, %bb.w ], [ %.pre.pre, %.noexc49._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge ]
  %.0.i.i.i = phi i8 [ %i.bo, %bb.w ], [ %i.bs, %.noexc49._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  store i8 %.0.i.i.i, ptr %i.bt, align 8, !tbaa !42
  store i8 1, ptr %i.bg, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %._crit_edge.i
  %i.bu = phi i64 [ %i.ar, %._crit_edge.i ], [ %.pre.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ] ; 5 uses
  %i.bv = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ] ; 2 uses
  %i.bw = sub i64 9223372036854775807, %i.bu
  %i.bx = icmp ult i64 %i.bw, %i.at
  br i1 %i.bx, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i51

bb.y:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
          to label %.noexc52 unwind label %bb.t

.noexc52:                                         ; preds = %bb.y
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i51: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.by = add i64 %i.bu, %i.at                    ; 3 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.g
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i51
  %i.cb = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.cb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i51
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !56
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cd = phi i64 [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.by, %i.cd
  br i1 %.not.i.i, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bu, i64 noundef 0, ptr noundef null, i64 noundef %i.at)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i_crit_edge unwind label %bb.t

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i_crit_edge: ; preds = %bb.z
  %.pre100.a = load ptr, ptr %2, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ce = phi ptr [ %.pre100.a, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i_crit_edge ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bu ; 2 uses
  %cond.i.i = icmp eq i64 %i.at, 1
  br i1 %cond.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i
  store i8 %i.bv, ptr %i.cf, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cf, i8 %i.bv, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.aa, %bb.ab
  store i64 %i.by, ptr %i.h, align 8, !tbaa !54
  %i.cg = load ptr, ptr %2, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i8 0, ptr %i.ch, align 1, !tbaa !56
  br label %bb.as

bb.ac:                                            ; preds = %bb.p
  br i1 %6, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load ptr, ptr %2, align 8, !tbaa !60
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !56
  switch i8 %i.cj, label %bb.ai [
    i8 43, label %bb.ae
    i8 45, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.ck = load i64, ptr %i.am, align 8
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 225 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !24, !range !32, !noundef !33
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %._crit_edge.i59, label %bb.af

._crit_edge.i59:                                  ; preds = %bb.ae
  %.phi.trans.insert.i60 = getelementptr inbounds nuw i8, ptr %i.cl, i64 224
  %.pre.i61 = load i8, ptr %.phi.trans.insert.i60, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i54 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i54, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55: ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !35
  %.not.i1.i.i56 = icmp eq i8 %i.cs, 0
  br i1 %.not.i1.i.i56, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 89
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cq)
          to label %.noexc63 unwind label %bb.t

.noexc63:                                         ; preds = %bb.ah
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cq, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57 unwind label %bb.t, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57: ; preds = %.noexc63, %bb.ag
  %.0.i.i.i58 = phi i8 [ %i.cu, %bb.ag ], [ %i.cy, %.noexc63 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 224
  store i8 %.0.i.i.i58, ptr %i.cz, align 8, !tbaa !42
  store i8 1, ptr %i.cm, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.da = and i32 %i.f, 586
  %or.cond.not99 = icmp eq i32 %i.da, 520
  %i.db = icmp ne i128 %1, 0
  %or.cond98 = select i1 %or.cond.not99, i1 %i.db, i1 false
  %i.dc = load i64, ptr %i.am, align 8
  %i.dd = getelementptr inbounds i8, ptr %0, i64 %i.dc ; 5 uses
  br i1 %or.cond98, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.de = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv(ptr noundef nonnull align 8 dereferenceable(264) %i.dd)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke unwind label %bb.t

bb.ak:                                            ; preds = %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 225 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !24, !range !32, !noundef !33
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %._crit_edge.i71, label %bb.al

._crit_edge.i71:                                  ; preds = %bb.ak
  %.phi.trans.insert.i72 = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  %.pre.i73 = load i8, ptr %.phi.trans.insert.i72, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke

bb.al:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i66 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i66, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67: ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !35
  %.not.i1.i.i68 = icmp eq i8 %i.dl, 0
  br i1 %.not.i1.i.i68, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 89
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i69

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dj)
          to label %.noexc75 unwind label %bb.t

.noexc75:                                         ; preds = %bb.an
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef signext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(570) %i.dj, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i69 unwind label %bb.t, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i69: ; preds = %.noexc75, %bb.am
  %.0.i.i.i70 = phi i8 [ %i.dn, %bb.am ], [ %i.dr, %.noexc75 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  store i8 %.0.i.i.i70, ptr %i.ds, align 8, !tbaa !42
  store i8 1, ptr %i.df, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke

bb.ao:                                            ; preds = %bb.p
  %i.dt = load i64, ptr %i.am, align 8
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 225 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !24, !range !32, !noundef !33
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %._crit_edge.i83, label %bb.ap

._crit_edge.i83:                                  ; preds = %bb.ao
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.du, i64 224
  %.pre.i85 = load i8, ptr %.phi.trans.insert.i84, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke

bb.ap:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 240
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i78 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i78, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79

.invoke:                                          ; preds = %bb.ap, %bb.al, %bb.af, %bb.v
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79: ; preds = %bb.ap
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !35
  %.not.i1.i.i80 = icmp eq i8 %i.eb, 0
  br i1 %.not.i1.i.i80, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 89
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i81

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dz)
          to label %.noexc87 unwind label %bb.t

.noexc87:                                         ; preds = %bb.ar
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef signext i8 %i.eg(ptr noundef nonnull align 8 dereferenceable(570) %i.dz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i81 unwind label %bb.t, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i81: ; preds = %.noexc87, %bb.aq
  %.0.i.i.i82 = phi i8 [ %i.ed, %bb.aq ], [ %i.eh, %.noexc87 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 224
  store i8 %.0.i.i.i82, ptr %i.ei, align 8, !tbaa !42
  store i8 1, ptr %i.dv, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke: ; preds = %._crit_edge.i83, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i81, %._crit_edge.i71, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i69, %bb.aj, %._crit_edge.i59, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57
  %i.ej = phi i64 [ 0, %._crit_edge.i71 ], [ 2, %bb.aj ], [ 1, %._crit_edge.i59 ], [ 1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57 ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i69 ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i81 ], [ 0, %._crit_edge.i83 ]
  %i.ek = phi i8 [ %.pre.i73, %._crit_edge.i71 ], [ %i.de, %bb.aj ], [ %.pre.i61, %._crit_edge.i59 ], [ %.0.i.i.i58, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57 ], [ %.0.i.i.i70, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i69 ], [ %.0.i.i.i82, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i81 ], [ %.pre.i85, %._crit_edge.i83 ]
  %i.el = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ej, i64 noundef %i.at, i8 noundef signext %i.ek)
          to label %bb.as unwind label %bb.t      ; 0 uses

bb.as:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit89.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.em = load ptr, ptr %2, align 8, !tbaa !60
  %i.en = load i64, ptr %i.h, align 8, !tbaa !54
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.em, i64 noundef %i.en)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.as
  %i.ep = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.g
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.er = load i64, ptr %i.g, align 8, !tbaa !56
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %i.eo

bb.at:                                            ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.b
  %.pn39.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ]
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !56
  store i8 %i.t, ptr %i.s, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !56
  store i8 %i.x, ptr %i.w, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !56
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !56
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !60
  store i64 %.0, ptr %i.h, align 8, !tbaa !56
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !65

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !56
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #18
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !60
  store i64 %.0, ptr %i.d, align 8, !tbaa !56
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !54
  store i8 0, ptr %i.c, align 1, !tbaa !56
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !56
  store i8 %i.t, ptr %i.r, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !54
  %i.v = load ptr, ptr %0, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { cold }
attributes #20 = { builtin allocsize(0) }

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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"_ZTSSt8ios_base", !8, i64 8, !8, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !5, i64 64, !4, i64 192, !18, i64 200, !19, i64 208}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !8, i64 8}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !27, i64 225}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 0, !26, i64 216, !5, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!26 = !{!"p1 _ZTSSo", !16, i64 0}
!27 = !{!"bool", !5, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!25, !29, i64 240}
!35 = !{!36, !5, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !27, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!39 = !{!"p1 int", !16, i64 0}
!40 = !{!"p1 short", !16, i64 0}
!41 = distinct !{null}
!42 = !{!25, !5, i64 224}
!43 = !{!12, !8, i64 16}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = distinct !{!46, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!49 = distinct !{!49, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!52 = !{!"p1 omnipotent char", !16, i64 0}
!53 = !{!48, !45}
!54 = !{!55, !8, i64 8}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !8, i64 8, !5, i64 16}
!56 = !{!5, !5, i64 0}
!57 = !{!58, !52, i64 40}
!58 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !19, i64 56}
!59 = !{!58, !52, i64 32}
!60 = !{!55, !52, i64 0}
!61 = !{ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv}
!62 = !{!63, !63, i64 0}
!63 = !{!"__int128", !5, i64 0}
!64 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
