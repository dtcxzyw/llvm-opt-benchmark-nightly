inline.NumInlined: 329
inline.NumDeleted: 145
begin_hunk_0_@_ZN4absllsERSoNS_7uint128E:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 89
  %i.bn = load i8, ptr %i.bm, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i25

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj) #17
  %i.bo = load ptr, ptr %i.bj, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 32) #17, !inline_history !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i25

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i25: ; preds = %bb.q, %bb.p
  %.0.i.i.i26 = phi i8 [ %i.bn, %bb.p ], [ %i.br, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  store i8 %.0.i.i.i26, ptr %i.bs, align 8
  store i8 1, ptr %i.bf, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit30

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit30: ; preds = %._crit_edge.i27, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i25
  %i.bt = phi i8 [ %.pre.i29, %._crit_edge.i27 ], [ %.0.i.i.i26, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i25 ]
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 2, i64 noundef %i.p, i8 noundef signext %i.bt) ; 0 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.b, %bb.l
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 225 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !range !5, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %._crit_edge.i36, label %bb.s

._crit_edge.i36:                                  ; preds = %bb.r
  %.phi.trans.insert.i37 = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %.pre.i38 = load i8, ptr %.phi.trans.insert.i37, align 8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit39

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8            ; 6 uses
  %.not.i.i.i31 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i31, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32

bb.t:                                             ; preds = %bb.s
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32: ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i8, ptr %i.ce, align 8
  %.not.i1.i.i33 = icmp eq i8 %i.cf, 0
  br i1 %.not.i1.i.i33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 89
  %i.ch = load i8, ptr %i.cg, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cd) #17
  %i.ci = load ptr, ptr %i.cd, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef signext i8 %i.ck(ptr noundef nonnull align 8 dereferenceable(570) %i.cd, i8 noundef signext 32) #17, !inline_history !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34: ; preds = %bb.v, %bb.u
  %.0.i.i.i35 = phi i8 [ %i.ch, %bb.u ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  store i8 %.0.i.i.i35, ptr %i.cm, align 8
  store i8 1, ptr %i.bz, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit39

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit39: ; preds = %._crit_edge.i36, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34
  %i.cn = phi i8 [ %.pre.i38, %._crit_edge.i36 ], [ %.0.i.i.i35, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i34 ]
  %i.co = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.p, i8 noundef signext %i.cn) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit39, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit30, %bb.a
  %i.cp = load ptr, ptr %3, align 8
  %i.cq = load i64, ptr %i.m, align 8
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cp, i64 noundef %i.cq) #17
  %i.cs = load ptr, ptr %3, align 8               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.cr
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i64 noundef %1, i64 noundef %i.b) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit: ; preds = %bb.a
  %i.d = sub i64 9223372036854775807, %i.b
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit
  %i.f = add i64 %i.b, %2                         ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.h, align 8
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
  %i.p = load i8, ptr %i.n, align 1
  store i8 %i.p, ptr %i.o, align 1
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
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1 ; 2 uses
  %cond.i = icmp eq i64 %2, 1
  br i1 %cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread
  store i8 %3, ptr %i.r, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %3, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.i, %bb.j
  store i64 %i.f, ptr %i.a, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f
  store i8 0, ptr %i.t, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl6int1288ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 2 uses
  %i.c = icmp slt i128 %.sroa.02.0.copyload, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %.sroa.0.0.copyload.pr = load i128, ptr %1, align 16
  br label %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit

_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload = phi i128 [ %.sroa.0.0.copyload.pr, %bb.b ], [ %.sroa.02.0.copyload, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.sroa.06.0.v.i = tail call i128 @llvm.abs.i128(i128 %.sroa.0.0.copyload, i1 false) ; 2 uses
  %.sroa.06.0.i = trunc i128 %.sroa.06.0.v.i to i64
  %.sroa.3.0.v.i = lshr i128 %.sroa.06.0.v.i, 64
  %.sroa.3.0.i = trunc nuw i128 %.sroa.3.0.v.i to i64
  call fastcc void @_ZN4absl12_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias nonnull writable align 8 %2, i64 %.sroa.06.0.i, i64 %.sroa.3.0.i, i32 noundef 2)
  %i.e = load ptr, ptr %2, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 6 uses
  %i.h = load i64, ptr %i.b, align 8              ; 5 uses
  %i.i = sub i64 9223372036854775807, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit
  %i.k = add i64 %i.h, %i.g                       ; 3 uses
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.n = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.o = load i64, ptr %i.a, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.k, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.e, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.h, i64 noundef 0, ptr noundef %i.e, i64 noundef %i.g)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.k, ptr %i.b, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 0, ptr %i.t, align 1
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absllsERSoNS_6int128E(ptr noundef nonnull align 8 dereferenceable(8) %0, i128 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %i.i = and i32 %i.f, 74
  switch i32 %i.i, label %bb.e [
    i32 2, label %.thread
    i32 0, label %.thread
  ]

.thread:                                          ; preds = %bb.a, %bb.a
  %i.j = icmp slt i128 %1, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.k = and i32 %i.f, 2048
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.str.1.sink = phi ptr [ @.str, %.thread ], [ @.str.1, %bb.b ]
  %i.l = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.str.1.sink, i64 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.sroa.06.0.v.i = call i128 @llvm.abs.i128(i128 %1, i1 false) ; 2 uses
  %.sroa.06.0.i = trunc i128 %.sroa.06.0.v.i to i64
  %.sroa.3.0.v.i = lshr i128 %.sroa.06.0.v.i, 64
  %.sroa.3.0.i = trunc nuw i128 %.sroa.3.0.v.i to i64
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre67 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert68 = getelementptr inbounds i8, ptr %0, i64 %.pre67
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert68, i64 24
  %.pre70 = load i32, ptr %.phi.trans.insert69, align 8
  br label %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.m = trunc i128 %1 to i64
  %i.n = lshr i128 %1, 64
  %i.o = trunc nuw i128 %i.n to i64
  br label %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit

_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit: ; preds = %bb.e, %bb.d
  %4 = phi i32 [ %.pre70, %bb.d ], [ %i.f, %bb.e ]
  %5 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.sroa.064.0 = phi i64 [ %.sroa.06.0.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.i, %bb.d ], [ %i.o, %bb.e ]
  call fastcc void @_ZN4absl12_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 %.sroa.064.0, i64 %.sroa.3.0, i32 noundef %4)
  %i.p = load ptr, ptr %3, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 6 uses
  %i.s = load i64, ptr %i.h, align 8              ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.f:                                             ; preds = %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN4absl12_GLOBAL__N_121UnsignedAbsoluteValueENS_6int128E.exit
  %i.v = add i64 %i.s, %i.r                       ; 3 uses
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.r, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.p, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.s, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  store i64 %i.v, ptr %i.h, align 8
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 0, ptr %i.ae, align 1
  %i.af = load ptr, ptr %3, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  store i64 0, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.h, align 8             ; 4 uses
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.ao

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = sub nuw i64 %i.ap, %i.aq                ; 9 uses
  %i.at = trunc i32 %i.f to i8
  %trunc = and i8 %i.at, -80
  switch i8 %trunc, label %bb.aj [
    i8 32, label %bb.m
    i8 16, label %bb.v
  ]

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 225 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !range !5, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %i.bc = load ptr, ptr %i.bb, align 8            ; 6 uses
  %.not.i.i.i32 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i32, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load i8, ptr %i.bd, align 8
  %.not.i1.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 89
  %i.bg = load i8, ptr %i.bf, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bc) #17
  %i.bh = load ptr, ptr %i.bc, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef signext i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext 32) #17, !inline_history !15
  %.pre.pre = load i64, ptr %i.h, align 8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.q, %bb.p
  %.pre.a = phi i64 [ %i.aq, %bb.p ], [ %.pre.pre, %bb.q ]
  %.0.i.i.i = phi i8 [ %i.bg, %bb.p ], [ %i.bk, %bb.q ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  store i8 %.0.i.i.i, ptr %i.bl, align 8
  store i8 1, ptr %i.ay, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bm = phi i64 [ %i.aq, %._crit_edge.i ], [ %.pre.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ] ; 5 uses
  %i.bn = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ] ; 2 uses
  %i.bo = sub i64 9223372036854775807, %i.bm
  %i.bp = icmp ult i64 %i.bo, %i.as
  br i1 %i.bp, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i33

bb.r:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i33: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.bq = add i64 %i.bm, %i.as                    ; 3 uses
  %i.br = load ptr, ptr %2, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.g
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i33
  %i.bt = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i33
  %i.bu = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bv = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.bq, %i.bv
  br i1 %.not.i.i, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bm, i64 noundef 0, ptr noundef null, i64 noundef %i.as)
  %.pre67.a = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.s
  %i.bw = phi ptr [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.pre67.a, %bb.s ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bm ; 2 uses
  %cond.i.i = icmp eq i64 %i.as, 1
  br i1 %cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i
  store i8 %i.bn, ptr %i.bx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.bx, i8 %i.bn, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.t, %bb.u
  store i64 %i.bq, ptr %i.h, align 8
  %i.by = load ptr, ptr %2, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i8 0, ptr %i.bz, align 1
  br label %bb.ao

bb.v:                                             ; preds = %bb.l
  br i1 %5, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %2, align 8
  %i.cb = load i8, ptr %i.ca, align 1
  switch i8 %i.cb, label %bb.ac [
    i8 43, label %bb.x
    i8 45, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 225 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !range !5, !noundef !6
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %._crit_edge.i39, label %bb.y

._crit_edge.i39:                                  ; preds = %bb.x
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %i.cf, i64 224
  %.pre.i41 = load i8, ptr %.phi.trans.insert.i40, align 8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit42

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8            ; 6 uses
  %.not.i.i.i34 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i34, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35

bb.z:                                             ; preds = %bb.y
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35: ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load i8, ptr %i.cl, align 8
  %.not.i1.i.i36 = icmp eq i8 %i.cm, 0
  br i1 %.not.i1.i.i36, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 89
  %i.co = load i8, ptr %i.cn, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i37

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ck) #17
  %i.cp = load ptr, ptr %i.ck, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.ck, i8 noundef signext 32) #17, !inline_history !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i37

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i37: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i38 = phi i8 [ %i.co, %bb.aa ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 224
  store i8 %.0.i.i.i38, ptr %i.ct, align 8
  store i8 1, ptr %i.cg, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit42

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit42: ; preds = %._crit_edge.i39, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i37
  %i.cu = phi i8 [ %.pre.i41, %._crit_edge.i39 ], [ %.0.i.i.i38, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i37 ]
  %i.cv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, i64 noundef %i.as, i8 noundef signext %i.cu) ; 0 uses
  br label %bb.ao

bb.ac:                                            ; preds = %bb.w, %bb.v
  %i.cw = and i32 %i.f, 586
  %or.cond.not66 = icmp eq i32 %i.cw, 520
  %i.cx = icmp ne i128 %1, 0
  %or.cond65 = select i1 %or.cond.not66, i1 %i.cx, i1 false
  %i.cy = load ptr, ptr %0, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %0, i64 %i.da ; 5 uses
  br i1 %or.cond65, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv(ptr noundef nonnull align 8 dereferenceable(264) %i.db)
  %i.dd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 2, i64 noundef %i.as, i8 noundef signext %i.dc) ; 0 uses
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 225 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !range !5, !noundef !6
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %._crit_edge.i48, label %bb.af

._crit_edge.i48:                                  ; preds = %bb.ae
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %i.db, i64 224
  %.pre.i50 = load i8, ptr %.phi.trans.insert.i49, align 8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit51

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %i.di = load ptr, ptr %i.dh, align 8            ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i43, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load i8, ptr %i.dj, align 8
  %.not.i1.i.i45 = icmp eq i8 %i.dk, 0
  br i1 %.not.i1.i.i45, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 89
  %i.dm = load i8, ptr %i.dl, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.di) #17
  %i.dn = load ptr, ptr %i.di, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 32) #17, !inline_history !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i47 = phi i8 [ %i.dm, %bb.ah ], [ %i.dq, %bb.ai ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 224
  store i8 %.0.i.i.i47, ptr %i.dr, align 8
  store i8 1, ptr %i.de, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit51

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit51: ; preds = %._crit_edge.i48, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46
  %i.ds = phi i8 [ %.pre.i50, %._crit_edge.i48 ], [ %.0.i.i.i47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i46 ]
  %i.dt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.as, i8 noundef signext %i.ds) ; 0 uses
  br label %bb.ao

bb.aj:                                            ; preds = %bb.l
  %i.du = load ptr, ptr %0, align 8
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %0, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 225 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !range !5, !noundef !6
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %._crit_edge.i57, label %bb.ak

._crit_edge.i57:                                  ; preds = %bb.aj
  %.phi.trans.insert.i58 = getelementptr inbounds nuw i8, ptr %i.dx, i64 224
  %.pre.i59 = load i8, ptr %.phi.trans.insert.i58, align 8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit60

bb.ak:                                            ; preds = %bb.aj
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 240
  %i.ec = load ptr, ptr %i.eb, align 8            ; 6 uses
  %.not.i.i.i52 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i52, label %bb.al, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53: ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i8, ptr %i.ed, align 8
  %.not.i1.i.i54 = icmp eq i8 %i.ee, 0
  br i1 %.not.i1.i.i54, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 89
  %i.eg = load i8, ptr %i.ef, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i55

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ec) #17
  %i.eh = load ptr, ptr %i.ec, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef signext i8 %i.ej(ptr noundef nonnull align 8 dereferenceable(570) %i.ec, i8 noundef signext 32) #17, !inline_history !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i55

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i55: ; preds = %bb.an, %bb.am
  %.0.i.i.i56 = phi i8 [ %i.eg, %bb.am ], [ %i.ek, %bb.an ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 224
  store i8 %.0.i.i.i56, ptr %i.el, align 8
  store i8 1, ptr %i.dy, align 1
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit60

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit60: ; preds = %._crit_edge.i57, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i55
  %i.em = phi i8 [ %.pre.i59, %._crit_edge.i57 ], [ %.0.i.i.i56, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i55 ]
  %i.en = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.as, i8 noundef signext %i.em) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit60, %bb.ad, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit51, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eo = load ptr, ptr %2, align 8
  %i.ep = load i64, ptr %i.h, align 8
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.eo, i64 noundef %i.ep) #17
  %i.er = load ptr, ptr %2, align 8               ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.g
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ao
  %i.et = load i64, ptr %i.g, align 8
  %i.eu = add i64 %i.et, 1
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
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
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
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
  %i.ae = load i64, ptr %i.h, align 8
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #18
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.r, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{null, null, ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv, null, null}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!10 = distinct !{!10, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!13 = distinct !{!13, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!14 = !{!12, !9}
!15 = distinct !{ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv, null, null}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
