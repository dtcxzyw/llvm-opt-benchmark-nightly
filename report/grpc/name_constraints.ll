Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/name_constraints?download=true
inline.NumInlined: 489
inline.NumDeleted: 279
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bssl12_GLOBAL__N_117Rfc822NameMatchesESt17basic_string_viewIcSt11char_traitsIcEES4_S4_NS0_19Rfc822NameMatchTypeEb:bb.a
  %or.cond.i.i40 = icmp ult i8 %i.an, 10
  %i.ao = and i8 %i.am, -33
  %i.ap = add i8 %i.ao, -65
  %i.aq = icmp ult i8 %i.ap, 26
  %i.ar = or i1 %or.cond.i.i40, %i.aq
  %i.as = add i8 %i.am, -45
  %i.at = icmp ult i8 %i.as, 2
  %or.cond5.i41 = or i1 %i.at, %i.ar
  br i1 %or.cond5.i41, label %bb.g, label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split

_ZN4bssl12_GLOBAL__N_121IsAllowedRfc822DomainESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.g
  %i.au = icmp eq i64 %.sroa.054.0, 0
  br i1 %i.au, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN4bssl12_GLOBAL__N_121IsAllowedRfc822DomainESt17basic_string_viewIcSt11char_traitsIcEE.exit
  br i1 %7, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = invoke noundef zeroext i1 @_ZN4bssl11string_util13IsEqualNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %.sroa.054.0, ptr %.sroa.9.0)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  br i1 %i.av, label %.invoke, label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split

bb.k:                                             ; preds = %bb.h
  %i.aw = icmp eq i64 %0, %.sroa.054.0
  br i1 %i.aw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.k
  %bcmp.i = call i32 @bcmp(ptr %1, ptr %.sroa.9.0, i64 %0)
  %i.ax = icmp eq i32 %bcmp.i, 0
  br i1 %i.ax, label %.invoke, label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split

bb.l:                                             ; preds = %_ZN4bssl12_GLOBAL__N_121IsAllowedRfc822DomainESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ay = load i8, ptr %.sroa.11.0, align 1, !tbaa !57
  %i.az = icmp eq i8 %i.ay, 46
  br i1 %i.az, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.ba = invoke noundef zeroext i1 @_ZN4bssl11string_util14EndsWithNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %2, ptr %3, i64 %.sroa.0.0, ptr nonnull %.sroa.11.0)
          to label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split unwind label %bb.d

.invoke:                                          ; preds = %bb.l, %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.bb = invoke noundef zeroext i1 @_ZN4bssl11string_util13IsEqualNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %2, ptr %3, i64 %.sroa.0.0, ptr %.sroa.11.0)
          to label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split unwind label %bb.d

_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split: ; preds = %.lr.ph.i, %.lr.ph.i39, %.invoke, %bb.j, %bb.m, %bb.b, %bb.f, %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.0.ph = phi i1 [ %i.a, %.lr.ph.i39 ], [ false, %bb.k ], [ %i.a, %bb.f ], [ %i.a, %bb.b ], [ false, %bb.j ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.bb, %.invoke ], [ %i.ba, %bb.m ], [ %i.a, %.lr.ph.i ]
  %.pr = load ptr, ptr %8, align 8, !tbaa !38
  br label %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split, %bb.a
  %i.bc = phi ptr [ %.pr, %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split ], [ %i.d, %bb.a ] ; 3 uses
  %.0 = phi i1 [ %.0.ph, %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.threadthread-pre-split ], [ %i.a, %bb.a ]
  %.not.i.i.i44 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit45, label %bb.n

bb.n:                                             ; preds = %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !59
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit45

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit45: ; preds = %_ZN4bssl12_GLOBAL__N_124IsAllowedRfc822LocalPartESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4bssl12_GLOBAL__N_114DNSNameMatchesESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_17WildcardMatchTypeE(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !57
  %i.f = icmp eq i8 %i.e, 46
  %i.g = sext i1 %i.f to i64
  %spec.select = add i64 %0, %i.g
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  %.sroa.038.0 = phi i64 [ %spec.select, %bb.c ], [ 0, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !57
  %i.k = icmp eq i8 %i.j, 46
  %i.l = sext i1 %i.k to i64
  %spec.select54 = add i64 %2, %i.l               ; 9 uses
  %i.m = icmp eq i32 %4, 0
  %i.n = icmp ugt i64 %.sroa.038.0, 2
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %.critedge
  %i.o = load i8, ptr %1, align 1, !tbaa !57
  %i.p = icmp eq i8 %i.o, 42
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !57
  %i.s = icmp eq i8 %i.r, 46
  %i.t = icmp ne i64 %spec.select54, 0
  %or.cond55 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond55, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.e
  %i.u = tail call ptr @memchr(ptr noundef nonnull %3, i32 noundef 46, i64 noundef %spec.select54) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %.not = icmp eq i64 %i.x, -1
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.y = add nuw i64 %i.x, 1                      ; 3 uses
  %.not57 = icmp ult i64 %i.x, %spec.select54
  br i1 %.not57, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %i.y, i64 noundef %spec.select54) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.f
  %i.z = sub nuw i64 %spec.select54, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.ab = add i64 %.sroa.038.0, -2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = tail call noundef zeroext i1 @_ZN4bssl11string_util13IsEqualNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %i.ab, ptr nonnull %i.ac, i64 %i.z, ptr nonnull %i.aa)
  br i1 %i.ad, label %bb.n, label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.e, %bb.d, %.critedge
  %i.ae = tail call noundef zeroext i1 @_ZN4bssl11string_util14EndsWithNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %.sroa.038.0, ptr %1, i64 %spec.select54, ptr nonnull %3)
  br i1 %i.ae, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.thread
  %i.af = icmp eq i64 %.sroa.038.0, %spec.select54
  br i1 %i.af, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %spec.select54, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %3, align 1, !tbaa !57
  %i.ai = icmp eq i8 %i.ah, 46
  %i.aj = sext i1 %i.ai to i64
  %spec.select56 = add i64 %spec.select54, %i.aj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.022.1 = phi i64 [ 0, %bb.i ], [ %spec.select56, %bb.j ] ; 2 uses
  %i.ak = icmp ugt i64 %.sroa.038.0, %.sroa.022.1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = xor i64 %.sroa.022.1, -1
  %i.am = getelementptr i8, ptr %1, i64 %.sroa.038.0
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !57
  %i.ap = icmp eq i8 %i.ao, 46
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.l, %bb.h, %.thread, %bb.a, %bb.m
  %.3 = phi i1 [ true, %bb.l ], [ false, %.thread ], [ true, %bb.h ], [ false, %bb.m ], [ true, %bb.a ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4bssl19VerifyNameInSubtreeENS_3der5InputES1_(ptr, i64, ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4bssl27IPAddressMatchesWithNetmaskENS_3der5InputES1_S1_(ptr, i64, ptr, i64, ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4bssl3der5InputESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = load ptr, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE11_M_allocateEm.exit.i, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4bssl3der5InputESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN4bssl3der5InputESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN4bssl3der5InputESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !40       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4bssl3der5InputESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #17
  br label %_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4bssl3der5InputESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !78
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !61

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !40
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !40
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4bssl3der5InputES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4bssl3der5InputESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !38     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !38       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #17
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !59
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !61

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !80
  br label %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !38
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !37  ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !38
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !80
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !79

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN4bssl3der5InputES3_ESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !42     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = load ptr, ptr %0, align 8, !tbaa !42     ; 9 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE11_M_allocateEm.exit.i, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4bssl3der5InputES3_ESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -32
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -32
  %i.s = add i64 %i.r, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt4pairIN4bssl3der5InputES3_ESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

_ZNSt6vectorISt4pairIN4bssl3der5InputES3_ESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !42       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIN4bssl3der5InputES3_ESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #17
  br label %_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4bssl3der5InputES3_ESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !84
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.ad = and i64 %i.f, 32
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ai = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %i.aj = icmp eq i64 %i.f, 32
  br i1 %i.aj, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.as = add nsw i64 %.012.i.i.i.i.i, -2
  %i.at = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !81

bb.h:                                             ; preds = %bb.f
  %i.au = ashr exact i64 %i.ab, 5                 ; 3 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %i.aw = and i64 %i.ab, 32
  %lcmp.mod53.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod53.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bb = add nsw i64 %i.au, -1
  br label %.lr.ph.i.i.i.i.i26.prol.loopexit

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i26.prol ]
  %i.bc = icmp eq i64 %i.ab, 32
  br i1 %i.bc, label %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i29, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.bl = add nsw i64 %.012.i.i.i.i.i27, -2
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i27, 2
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !82

_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26, %.lr.ph.i.i.i.i.i26.prol.loopexit
  %.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.pre32 = load ptr, ptr %i.y, align 8, !tbaa !41 ; 2 uses
  %.pre33 = load ptr, ptr %0, align 8, !tbaa !42
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !41
  %.pre35 = ptrtoint ptr %.pre32 to i64
  %.pre36 = ptrtoint ptr %.pre33 to i64
  %.pre38 = sub i64 %.pre35, %.pre36
  br label %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit

_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit, %bb.h
  %.pre-phi39 = phi i64 [ %.pre38, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.ab, %bb.h ]
  %i.bn = phi ptr [ %.pre34, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.bo = phi ptr [ %.pre32, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.z, %bb.h ]
  %i.bp = phi ptr [ %.pre, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.c, %bb.h ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre-phi39 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bq, %i.bn
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bo, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.bq, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0810.i.i.i.i, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !83

_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIPSt4pairIN4bssl3der5InputES3_ES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseISt4pairIN4bssl3der5InputES3_ESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIN4bssl3der5InputES3_ES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare noundef zeroext i1 @_ZN4bssl3der6Parser10ReadRawTLVEPNS0_5InputE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4bssl16ParseGeneralNameENS_3der5InputENS_12GeneralNames29ParseGeneralNameIPAddressTypeEPS2_PNS_10CertErrorsE(ptr, i64, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4bssl11string_util13IsEqualNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4bssl11string_util14EndsWithNoCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZN4bssl12GeneralNamesC1Ev(ptr noundef nonnull align 8 dereferenceable(244)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
end_hunk_0
