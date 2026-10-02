Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/str_replace?download=true
inline.NumInlined: 160
inline.NumDeleted: 91
begin_hunk_0_@_ZN4absl12lts_2026052613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE:bb.a
bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = phi ptr [ %i.d, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i18 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #14
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not98 = icmp eq i64 %i.b, 0
  br i1 %.not98, label %._crit_edge, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = mul nuw nsw i64 %i.b, 40
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15 ; 6 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !24
  store ptr %i.g, ptr %i.e, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !31
  %i.i = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph70.split

.lr.ph70.split:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %.critedge
  %i.o = phi ptr [ %i.bu, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  %.02068 = phi ptr [ %i.bx, %.critedge ], [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 6 uses
  %i.p = phi ptr [ %i.bw, %.critedge ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 9 uses
  %i.q = phi ptr [ %i.bv, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  %.sroa.0.0.copyload45 = load i64, ptr %.02068, align 8, !tbaa !18 ; 6 uses
  %.sroa.8.0..020.sroa_idx = getelementptr inbounds nuw i8, ptr %.02068, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..020.sroa_idx, align 8, !tbaa !19 ; 4 uses
  %i.r = add i64 %.sroa.0.0.copyload45, -1
  %or.cond53.not = icmp ult i64 %i.r, %.fr
  br i1 %or.cond53.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph70.split
  %i.s = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !20
  %i.t = sext i8 %i.s to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload45
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.z, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.x, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.u = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.u, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.v = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.t, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #12 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.v, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload45)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.l, %i.y                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.z, %.sroa.0.0.copyload45
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !0

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.aa, %i.m                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.02068, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02068, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !19
  store i64 %.sroa.0.0.copyload45, ptr %i.o, align 8, !tbaa !18
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ae, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !23
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = ptrtoint ptr %i.q to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.al = sdiv exact i64 %i.aj, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 230584300921369395)
  %i.ap = select i1 %i.an, i64 230584300921369395, i64 %i.ao ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #15
          to label %.noexc43 unwind label %.loopexit ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 5 uses
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.ad, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.02068, i64 24
  %.sroa.2.0.copyload.i.i34 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i33, align 8, !tbaa !19
  store i64 %.sroa.0.0.copyload45, ptr %i.as, align 8, !tbaa !18
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.0.0.copyload.i.i32, ptr %i.at, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sroa.2.0.copyload.i.i34, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %i.ab, ptr %i.au, align 8, !tbaa !17
  %.not10.i.i.i.i35 = icmp eq ptr %i.q, %i.o
  br i1 %.not10.i.i.i.i35, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.noexc43, %.lr.ph.i.i.i.i36
  %.012.i.i.i.i37 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i36 ], [ %i.ar, %.noexc43 ] ; 2 uses
  %.0911.i.i.i.i38 = phi ptr [ %i.av, %.lr.ph.i.i.i.i36 ], [ %i.q, %.noexc43 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i38, i64 40, i1 false), !tbaa.struct !25, !alias.scope !47
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i38, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 40 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.av, %i.o
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i36, !llvm.loop !37

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i36, %.noexc43
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ar, %.noexc43 ], [ %i.aw, %.lr.ph.i.i.i.i36 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.q, null
  br i1 %.not.i37.i, label %.noexc26, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aj) #14
  br label %.noexc26

.noexc26:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc26, %bb.f
  %i.az = phi ptr [ %i.ax, %.noexc26 ], [ %i.ag, %bb.f ] ; 4 uses
  %i.ba = phi ptr [ %i.ar, %.noexc26 ], [ %i.q, %bb.f ] ; 6 uses
  %i.bb = phi ptr [ %i.ay, %.noexc26 ], [ %i.p, %bb.f ] ; 3 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40                ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %.not2457 = icmp eq i64 %i.bg, 0
  br i1 %.not2457, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %i.bh = phi i64 [ %i.bt, %bb.j ], [ %i.bg, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.058 = phi i64 [ %i.bh, %bb.j ], [ %i.bf, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bi = getelementptr [40 x i8], ptr %i.ba, i64 %.058 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -80    ; 3 uses
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bh ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 -48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17 ; 2 uses
  %.not.i27 = icmp eq i64 %i.bm, %i.bo
  %i.bp = icmp ult i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bj, align 8
  %i.br = load i64, ptr %i.bk, align 8
  %i.bs = icmp ugt i64 %i.bq, %i.br
  %.0.i = select i1 %.not.i27, i1 %i.bs, i1 %i.bp
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false), !tbaa.struct !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = add i64 %i.bh, -1                       ; 2 uses
  %.not24 = icmp eq i64 %i.bt, 0
  br i1 %.not24, label %.critedge, label %.lr.ph, !llvm.loop !38

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.q, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph70.split
  %i.bu = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph70.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bv = phi ptr [ %i.ba, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.q, %.lr.ph70.split ], [ %i.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ba, %bb.j ], [ %i.ba, %.lr.ph ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bb, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.p, %.lr.ph70.split ], [ %i.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bb, %bb.j ], [ %i.bb, %.lr.ph ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02068, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph70.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i
  %.lcssa64 = phi ptr [ null, %bb.b ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.bv, %.critedge ]
  %.lcssa60 = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.bw, %.critedge ]
  store ptr %.lcssa60, ptr %i.d, align 8
  store ptr %.lcssa64, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = ptrtoint ptr %i.o to i64
  %i.bz = ptrtoint ptr %i.q to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ca) #14
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !21}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4absl12lts_2026052616strings_internal18ViableSubstitutionE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !13, i64 0, !14, i64 8}
!16 = !{!"_ZTSN4absl12lts_2026052616strings_internal18ViableSubstitutionE", !15, i64 0, !15, i64 16, !13, i64 32}
!17 = !{!16, !13, i64 32}
!18 = !{!13, !13, i64 0}
!19 = !{!14, !14, i64 0}
!20 = !{!6, !6, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!23 = !{!22, !11, i64 8}
!24 = !{!22, !11, i64 0}
!25 = !{i64 0, i64 8, !18, i64 8, i64 8, !19, i64 16, i64 8, !18, i64 24, i64 8, !19, i64 32, i64 8, !18}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !13, i64 8, !6, i64 16}
!28 = !{!27, !13, i64 8}
!29 = !{!26, !14, i64 0}
!30 = !{!27, !14, i64 0}
!31 = !{!22, !11, i64 16}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = !{!"p1 _ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEES3_E", !10, i64 0}
!40 = !{!"_ZTSSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EE", !39, i64 0, !13, i64 8}
!41 = !{!40, !13, i64 8}
!42 = !{!40, !39, i64 0}
!44 = distinct !{!44, i1 false, !"_ZSt19__relocate_object_aIN4absl12lts_2026052616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aIN4absl12lts_2026052616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aIN4absl12lts_2026052616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!47 = !{!45, !46}
end_hunk_0
