Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/str_replace_test?download=true
inline.NumInlined: 2144
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt8_Rb_treeIPKcSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !62 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !514

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIPKcSt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt3mapIPKcS5_St4lessIS5_ESaISt4pairIKS5_S5_EEEEESt6vectorINS1_18ViableSubstitutionESaISE_EESt17basic_string_viewIcSt11char_traitsIcEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.80") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = freeze i64 %1                            ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60   ; 4 uses
  %i.e = icmp ugt i64 %i.d, 230584300921369395
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not54 = icmp eq i64 %i.d, 0
  br i1 %.not54, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = mul nuw nsw i64 %i.d, 40
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !66
  store ptr %i.i, ptr %i.g, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.d
  store ptr %i.j, ptr %i.f, align 8, !tbaa !67
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.k = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not3135 = icmp eq ptr %i.m, %i.n
  br i1 %.not3135, label %._crit_edge, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.critedge, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  ret void

bb.c:                                             ; preds = %.lr.ph39, %.critedge
  %i.t = phi ptr [ %i.k, %.lr.ph39 ], [ %i.bk, %.critedge ] ; 6 uses
  %i.u = phi ptr [ %i.k, %.lr.ph39 ], [ %i.bl, %.critedge ] ; 13 uses
  %.sroa.022.036 = phi ptr [ %i.m, %.lr.ph39 ], [ %i.bm, %.critedge ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.036, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 5 uses
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #19 ; 6 uses
  store i64 %i.x, ptr %5, align 8, !tbaa !34
  store ptr %i.w, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.y = add i64 %i.x, -1
  %or.cond.not = icmp ult i64 %i.y, %i.b
  br i1 %or.cond.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.z = load i8, ptr %i.w, align 1, !tbaa !32
  %i.aa = sext i8 %i.z to i32
  %invariant.op = sub i64 1, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.ag, %bb.e ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.ae, %bb.e ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.ab = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ab, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.d
  %i.ac = call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.aa, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #19 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ac, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %i.w, i64 %i.x)
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ad, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.q, %i.af                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ag, %i.x
  br i1 %.not25.i.i, label %.critedge, label %bb.d, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ah, %i.r                     ; 3 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !68
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.022.036, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.u, %i.al
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #19
  store i64 %i.x, ptr %i.u, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.am, ptr %.sroa.2.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %i.ai, ptr %i.ap, align 8, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  store ptr %i.aq, ptr %i.s, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit_crit_edge unwind label %bb.j

._ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.h
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !102
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !66
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit_crit_edge, %bb.g
  %i.ar = phi ptr [ %.pre40, %._ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit_crit_edge ], [ %i.t, %bb.g ] ; 6 uses
  %i.as = phi ptr [ %.pre, %._ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit_crit_edge ], [ %i.aq, %bb.g ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40                ; 2 uses
  %i.ax = add nsw i64 %i.aw, -1                   ; 2 uses
  %.not32 = icmp eq i64 %i.ax, 0
  br i1 %.not32, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit, %bb.i
  %6 = phi i64 [ %i.bj, %bb.i ], [ %i.ax, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit ] ; 3 uses
  %.033 = phi i64 [ %6, %bb.i ], [ %i.aw, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit ]
  %i.ay = getelementptr [40 x i8], ptr %i.ar, i64 %.033 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -80    ; 3 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %6 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 -48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !104 ; 2 uses
  %.not.i21 = icmp eq i64 %i.bc, %i.be
  %i.bf = icmp ult i64 %i.bc, %i.be
  %i.bg = load i64, ptr %i.az, align 8
  %i.bh = load i64, ptr %i.ba, align 8
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  %.0.i = select i1 %.not.i21, i1 %i.bi, i1 %i.bf
  br i1 %.0.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bj = add i64 %6, -1                          ; 2 uses
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !515

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e, %bb.d, %bb.i, %.lr.ph, %bb.c, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.bk = phi ptr [ %i.t, %bb.c ], [ %i.ar, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit ], [ %i.t, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ar, %bb.i ], [ %i.ar, %.lr.ph ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bl = phi ptr [ %i.u, %bb.c ], [ %i.as, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEERS3_DpOT_.exit ], [ %i.u, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.as, %bb.i ], [ %i.as, %.lr.ph ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.022.036) #23 ; 2 uses
  %.not31 = icmp eq ptr %i.bm, %i.n
  br i1 %.not31, label %._crit_edge, label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !66  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre41, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %.pre41 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.pre41, i64 noundef %i.bs) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN4absl12lts_2026052616strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEERKPKcRmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !66     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !61
  %i.r = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #19
  %i.t = load i64, ptr %4, align 8, !tbaa !68
  store i64 %.sroa.0.0.copyload.i, ptr %i.q, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.s, ptr %i.u, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.t, ptr %i.v, align 8, !tbaa !104
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !105, !alias.scope !522
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.x, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.aa, %.lr.ph.i.i.i30 ], [ %i.y, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.z, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i31, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i32, i64 40, i1 false), !tbaa.struct !105, !alias.scope !523
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 40 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.y, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.aa, %.lr.ph.i.i.i30 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #20
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !66
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIA33_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(33) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !530
  store ptr %3, ptr %i.a, align 8, !tbaa !61, !noalias !531
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA33_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA33_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA33_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.g = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA33_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt3mapISt17basic_string_viewIcSt11char_traitsIcEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEEEESt6vectorINS1_18ViableSubstitutionESaISG_EES7_RKT_:bb.a
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not99 = icmp eq i64 %i.b, 0
  br i1 %.not99, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = mul nuw nsw i64 %i.b, 40
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !66
  store ptr %i.g, ptr %i.e, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !67
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted62 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.promoted = phi ptr [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not5266 = icmp eq ptr %i.j, %i.k
  br i1 %.not5266, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %2 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph69.split

._crit_edge:                                      ; preds = %.critedge, %.lr.ph69, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.lcssa63 = phi ptr [ %.promoted62, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted62, %.lr.ph69 ], [ %i.bw, %.critedge ]
  %.lcssa59 = phi ptr [ %.promoted, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted, %.lr.ph69 ], [ %i.bx, %.critedge ]
  store ptr %.lcssa59, ptr %i.d, align 8
  store ptr %.lcssa63, ptr %0, align 8
  ret void

.lr.ph69.split:                                   ; preds = %.lr.ph69, %.critedge
  %i.p = phi ptr [ %i.bv, %.critedge ], [ %.promoted62, %.lr.ph69 ] ; 16 uses
  %.sroa.041.067 = phi ptr [ %i.by, %.critedge ], [ %i.j, %.lr.ph69 ] ; 6 uses
  %i.q = phi ptr [ %i.bx, %.critedge ], [ %.promoted, %.lr.ph69 ] ; 9 uses
  %i.r = phi ptr [ %i.bw, %.critedge ], [ %.promoted62, %.lr.ph69 ] ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.041.067, i64 32
  %.sroa.0.0.copyload39 = load i64, ptr %i.s, align 8, !tbaa !68 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.041.067, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !61 ; 4 uses
  %i.t = add i64 %.sroa.0.0.copyload39, -1
  %or.cond51.not = icmp ult i64 %i.t, %.fr
  br i1 %or.cond51.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph69.split
  %i.u = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !32
  %i.v = sext i8 %i.u to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload39
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.ab, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.z, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.w = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.w, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.x = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.v, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #19 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.x, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload39)
  %i.y = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.y, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.m, %i.aa                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ab, %.sroa.0.0.copyload39
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = sub i64 %i.ac, %i.n                     ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.041.067, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.041.067, i64 56
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload39, ptr %i.p, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ag, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.ad, ptr %i.ah, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = ptrtoint ptr %i.p to i64
  %i.ak = ptrtoint ptr %i.r to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr %i.d, align 8
  store ptr %i.r, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.an = sdiv exact i64 %i.al, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 230584300921369395)
  %i.ar = select i1 %i.ap, i64 230584300921369395, i64 %i.aq ; 3 uses
  %.not.i.i22 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i22)
  %i.as = mul nuw nsw i64 %i.ar, 40
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #22
          to label %.noexc37 unwind label %.loopexit ; 5 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 5 uses
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.af, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.041.067, i64 56
  %.sroa.2.0.copyload.i.i28 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i27, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload39, ptr %i.au, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.0.0.copyload.i.i26, ptr %i.av, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %.sroa.2.0.copyload.i.i28, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.ad, ptr %i.aw, align 8, !tbaa !104
  %.not10.i.i.i.i29 = icmp eq ptr %i.r, %i.p
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %.noexc37, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i30 ], [ %i.at, %.noexc37 ] ; 2 uses
  %.0911.i.i.i.i32 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i30 ], [ %i.r, %.noexc37 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i32, i64 40, i1 false), !tbaa.struct !105, !alias.scope !544
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 40 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.ax, %i.p
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i30, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i30, %.noexc37
  %.0.lcssa.i.i.i.i = phi ptr [ %i.at, %.noexc37 ], [ %i.ay, %.lr.ph.i.i.i.i30 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.r, null
  br i1 %.not.i37.i, label %.noexc20, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.al) #20
  br label %.noexc20

.noexc20:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.az, ptr %i.o, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.ar
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc20, %bb.f
  %i.bb = phi ptr [ %i.az, %.noexc20 ], [ %i.ai, %bb.f ] ; 4 uses
  %i.bc = phi ptr [ %i.at, %.noexc20 ], [ %i.r, %bb.f ] ; 6 uses
  %i.bd = phi ptr [ %i.ba, %.noexc20 ], [ %i.q, %bb.f ] ; 3 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 40                ; 2 uses
  %i.bi = add nsw i64 %i.bh, -1                   ; 2 uses
  %.not56 = icmp eq i64 %i.bi, 0
  br i1 %.not56, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %5 = phi i64 [ %i.bu, %bb.j ], [ %i.bi, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.057 = phi i64 [ %5, %bb.j ], [ %i.bh, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bj = getelementptr [40 x i8], ptr %i.bc, i64 %.057 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -80    ; 3 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bc, i64 %5 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 -48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !104 ; 2 uses
  %.not.i21 = icmp eq i64 %i.bn, %i.bp
  %i.bq = icmp ult i64 %i.bn, %i.bp
  %i.br = load i64, ptr %i.bk, align 8
  %i.bs = load i64, ptr %i.bl, align 8
  %i.bt = icmp ugt i64 %i.br, %i.bs
  %.0.i = select i1 %.not.i21, i1 %i.bt, i1 %i.bq
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i64 40, i1 false), !tbaa.struct !105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bu = add i64 %5, -1                          ; 2 uses
  %.not = icmp eq i64 %i.bu, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !543

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.d, align 8
  store ptr %i.r, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph69.split
  %i.bv = phi ptr [ %i.bb, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.p, %.lr.ph69.split ], [ %i.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bb, %bb.j ], [ %i.bb, %.lr.ph ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bw = phi ptr [ %i.bc, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.r, %.lr.ph69.split ], [ %i.r, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bc, %bb.j ], [ %i.bc, %.lr.ph ], [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bx = phi ptr [ %i.bd, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.q, %.lr.ph69.split ], [ %i.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bd, %bb.j ], [ %i.bd, %.lr.ph ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.by = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.041.067) #23 ; 2 uses
  %.not52 = icmp eq ptr %i.by, %i.k
  br i1 %.not52, label %._crit_edge, label %.lr.ph69.split

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = ptrtoint ptr %i.p to i64
  %i.ca = ptrtoint ptr %i.r to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.cb) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EEEES3_INS1_18ViableSubstitutionESaISE_EESt17basic_string_viewIcS8_ERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.80") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !77     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6                   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not99 = icmp eq ptr %i.b, %i.c
  br i1 %.not99, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = mul nuw nsw i64 %i.g, 40
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !66
  store ptr %i.l, ptr %i.j, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !67
  %.pre = load ptr, ptr %3, align 8, !tbaa !549
  %.pre82 = load ptr, ptr %i.a, align 8, !tbaa !549
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted61 = phi ptr [ %i.l, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.promoted = phi ptr [ %i.m, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %.pre82, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.c, %bb.b ] ; 2 uses
  %.not5165 = icmp eq ptr %i.o, %i.n
  br i1 %.not5165, label %._crit_edge, label %.lr.ph68

.lr.ph68:                                         ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph68.split

._crit_edge:                                      ; preds = %.critedge, %.lr.ph68, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.lcssa62 = phi ptr [ %.promoted61, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted61, %.lr.ph68 ], [ %i.ci, %.critedge ]
  %.lcssa58 = phi ptr [ %.promoted, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted, %.lr.ph68 ], [ %i.cj, %.critedge ]
  store ptr %.lcssa58, ptr %i.i, align 8
  store ptr %.lcssa62, ptr %0, align 8
  ret void

.lr.ph68.split:                                   ; preds = %.lr.ph68, %.critedge
  %i.t = phi ptr [ %i.ch, %.critedge ], [ %.promoted61, %.lr.ph68 ] ; 16 uses
  %.sroa.040.066 = phi ptr [ %i.ck, %.critedge ], [ %i.o, %.lr.ph68 ] ; 6 uses
  %i.u = phi ptr [ %i.cj, %.critedge ], [ %.promoted, %.lr.ph68 ] ; 9 uses
  %i.v = phi ptr [ %i.ci, %.critedge ], [ %.promoted61, %.lr.ph68 ] ; 16 uses
  %i.w = load ptr, ptr %.sroa.040.066, align 8, !tbaa !36 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 6 uses
  %i.z = add i64 %i.y, -1
  %or.cond50.not = icmp ult i64 %i.z, %.fr
  br i1 %or.cond50.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph68.split
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !32
  %i.ab = sext i8 %i.aa to i32
  %invariant.op = sub i64 1, %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.ah, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.af, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.ac = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ac, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.ad = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.ab, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #19 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ad, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull %i.w, i64 %i.y)
  %i.ae = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ae, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.q, %i.ag                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ah, %i.y
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub i64 %i.ai, %i.r                     ; 3 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  store i64 %i.y, ptr %i.t, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.am, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %i.t to i64
  %i.at = ptrtoint ptr %i.v to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.u, ptr %i.i, align 8
  store ptr %i.v, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.aw = sdiv exact i64 %i.au, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 230584300921369395)
  %i.ba = select i1 %i.ay, i64 230584300921369395, i64 %i.az ; 3 uses
  %.not.i.i22 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i22)
  %i.bb = mul nuw nsw i64 %i.ba, 40
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #22
          to label %.noexc35 unwind label %.loopexit ; 5 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au ; 5 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !31
  store i64 %i.y, ptr %i.bd, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.w, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %.sroa.2.0..sroa_idx.i.i26, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 %i.aj, ptr %i.bi, align 8, !tbaa !104
  %.not10.i.i.i.i27 = icmp eq ptr %i.v, %i.t
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %.noexc35, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i28 ], [ %i.bc, %.noexc35 ] ; 2 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i28 ], [ %i.v, %.noexc35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i30, i64 40, i1 false), !tbaa.struct !105, !alias.scope !550
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.bj, %i.t
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i, label %.lr.ph.i.i.i.i28, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i: ; preds = %.lr.ph.i.i.i.i28, %.noexc35
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bc, %.noexc35 ], [ %i.bk, %.lr.ph.i.i.i.i28 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.v, null
  br i1 %.not.i36.i, label %.noexc20, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.au) #20
  br label %.noexc20

.noexc20:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bc, i64 %i.ba
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit: ; preds = %.noexc20, %bb.f
  %i.bn = phi ptr [ %i.bl, %.noexc20 ], [ %i.ar, %bb.f ] ; 4 uses
  %i.bo = phi ptr [ %i.bc, %.noexc20 ], [ %i.v, %bb.f ] ; 6 uses
  %i.bp = phi ptr [ %i.bm, %.noexc20 ], [ %i.u, %bb.f ] ; 3 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 40                ; 2 uses
  %i.bu = add nsw i64 %i.bt, -1                   ; 2 uses
  %.not55 = icmp eq i64 %i.bu, 0
  br i1 %.not55, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit, %bb.j
  %5 = phi i64 [ %i.cg, %bb.j ], [ %i.bu, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ] ; 3 uses
  %.056 = phi i64 [ %5, %bb.j ], [ %i.bt, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ]
  %i.bv = getelementptr [40 x i8], ptr %i.bo, i64 %.056 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -80    ; 3 uses
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %5 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 -48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !104 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !104 ; 2 uses
  %.not.i21 = icmp eq i64 %i.bz, %i.cb
  %i.cc = icmp ult i64 %i.bz, %i.cb
  %i.cd = load i64, ptr %i.bw, align 8
  %i.ce = load i64, ptr %i.bx, align 8
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  %.0.i = select i1 %.not.i21, i1 %i.cf, i1 %i.cc
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i64 40, i1 false), !tbaa.struct !105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cg = add i64 %5, -1                          ; 2 uses
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !548

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.u, ptr %i.i, align 8
  store ptr %i.v, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph68.split
  %i.ch = phi ptr [ %i.bn, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ], [ %i.t, %.lr.ph68.split ], [ %i.t, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bn, %bb.j ], [ %i.bn, %.lr.ph ], [ %i.t, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.ci = phi ptr [ %i.bo, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ], [ %i.v, %.lr.ph68.split ], [ %i.v, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bo, %bb.j ], [ %i.bo, %.lr.ph ], [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.cj = phi ptr [ %i.bp, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ], [ %i.u, %.lr.ph68.split ], [ %i.u, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bp, %bb.j ], [ %i.bp, %.lr.ph ], [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 64 ; 2 uses
  %.not51 = icmp eq ptr %i.ck, %i.n
  br i1 %.not51, label %._crit_edge, label %.lr.ph68.split

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = ptrtoint ptr %i.t to i64
  %i.cm = ptrtoint ptr %i.v to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.cn) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  store ptr %3, ptr %i.a, align 8, !tbaa !61, !noalias !558
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.g = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !32
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.s = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !29
  %i.s = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !36
  %i.z = load i64, ptr %i.t, align 8, !tbaa !32
  store i64 %i.z, ptr %i.r, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !31
  store ptr %i.t, ptr %2, align 8, !tbaa !36
  store i64 0, ptr %i.ab, align 8, !tbaa !31
  store i8 0, ptr %i.t, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !29
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
end_hunk_1
begin_hunk_2_@_ZNSt8__detail15_List_node_base7_M_hookEPS0_
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsINSt7__cxx114listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES9_ESaISA_EEEEESt6vectorINS1_18ViableSubstitutionESaISE_EES9_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.80") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not97 = icmp eq i64 %i.b, 0
  br i1 %.not97, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = mul nuw nsw i64 %i.b, 40
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !66
  store ptr %i.g, ptr %i.e, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !67
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted62 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.promoted = phi ptr [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.sroa.041.066 = load ptr, ptr %3, align 8, !tbaa !80 ; 2 uses
  %.not5267 = icmp eq ptr %.sroa.041.066, %3
  br i1 %.not5267, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph69.split

._crit_edge:                                      ; preds = %.critedge, %.lr.ph69, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.lcssa63 = phi ptr [ %.promoted62, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted62, %.lr.ph69 ], [ %i.bt, %.critedge ]
  %.lcssa59 = phi ptr [ %.promoted, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted, %.lr.ph69 ], [ %i.bu, %.critedge ]
  store ptr %.lcssa59, ptr %i.d, align 8
  store ptr %.lcssa63, ptr %0, align 8
  ret void

.lr.ph69.split:                                   ; preds = %.lr.ph69, %.critedge
  %i.m = phi ptr [ %i.bs, %.critedge ], [ %.promoted62, %.lr.ph69 ] ; 16 uses
  %.sroa.041.068 = phi ptr [ %.sroa.041.0, %.critedge ], [ %.sroa.041.066, %.lr.ph69 ] ; 6 uses
  %i.n = phi ptr [ %i.bu, %.critedge ], [ %.promoted, %.lr.ph69 ] ; 9 uses
  %i.o = phi ptr [ %i.bt, %.critedge ], [ %.promoted62, %.lr.ph69 ] ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 16
  %.sroa.0.0.copyload39 = load i64, ptr %i.p, align 8, !tbaa !68 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !61 ; 4 uses
  %i.q = add i64 %.sroa.0.0.copyload39, -1
  %or.cond51.not = icmp ult i64 %i.q, %.fr
  br i1 %or.cond51.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph69.split
  %i.r = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !32
  %i.s = sext i8 %i.r to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload39
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.y, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.w, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.t = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.t, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.u = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.s, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #19 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.u, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload39)
  %i.v = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.v, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.j, %i.x                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.y, %.sroa.0.0.copyload39
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 40
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload39, ptr %i.m, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ad, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.l, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.m to i64
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.o, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.ak = sdiv exact i64 %i.ai, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 230584300921369395)
  %i.ao = select i1 %i.am, i64 230584300921369395, i64 %i.an ; 3 uses
  %.not.i.i22 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i22)
  %i.ap = mul nuw nsw i64 %i.ao, 40
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #22
          to label %.noexc37 unwind label %.loopexit ; 5 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai ; 5 uses
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.ac, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 40
  %.sroa.2.0.copyload.i.i28 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i27, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload39, ptr %i.ar, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.0.0.copyload.i.i26, ptr %i.as, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %.sroa.2.0.copyload.i.i28, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.aa, ptr %i.at, align 8, !tbaa !104
  %.not10.i.i.i.i29 = icmp eq ptr %i.o, %i.m
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %.noexc37, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %i.av, %.lr.ph.i.i.i.i30 ], [ %i.aq, %.noexc37 ] ; 2 uses
  %.0911.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i30 ], [ %i.o, %.noexc37 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i32, i64 40, i1 false), !tbaa.struct !105, !alias.scope !592
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 40 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.au, %i.m
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i30, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i30, %.noexc37
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aq, %.noexc37 ], [ %i.av, %.lr.ph.i.i.i.i30 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.o, null
  br i1 %.not.i37.i, label %.noexc20, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ai) #20
  br label %.noexc20

.noexc20:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc20, %bb.f
  %i.ay = phi ptr [ %i.aw, %.noexc20 ], [ %i.af, %bb.f ] ; 4 uses
  %i.az = phi ptr [ %i.aq, %.noexc20 ], [ %i.o, %bb.f ] ; 6 uses
  %i.ba = phi ptr [ %i.ax, %.noexc20 ], [ %i.n, %bb.f ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 40                ; 2 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %.not56 = icmp eq i64 %i.bf, 0
  br i1 %.not56, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %5 = phi i64 [ %i.br, %bb.j ], [ %i.bf, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.057 = phi i64 [ %5, %bb.j ], [ %i.be, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bg = getelementptr [40 x i8], ptr %i.az, i64 %.057 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -80    ; 3 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %5 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 -48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !104 ; 2 uses
  %.not.i21 = icmp eq i64 %i.bk, %i.bm
  %i.bn = icmp ult i64 %i.bk, %i.bm
  %i.bo = load i64, ptr %i.bh, align 8
  %i.bp = load i64, ptr %i.bi, align 8
  %i.bq = icmp ugt i64 %i.bo, %i.bp
  %.0.i = select i1 %.not.i21, i1 %i.bq, i1 %i.bn
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false), !tbaa.struct !105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.br = add i64 %5, -1                          ; 2 uses
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !591

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.o, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph69.split
  %i.bs = phi ptr [ %i.ay, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.m, %.lr.ph69.split ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ay, %bb.j ], [ %i.ay, %.lr.ph ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bt = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph69.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.ba, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.n, %.lr.ph69.split ], [ %i.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ba, %bb.j ], [ %i.ba, %.lr.ph ], [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %.sroa.041.0 = load ptr, ptr %.sroa.041.068, align 8, !tbaa !80 ; 2 uses
  %.not52 = icmp eq ptr %.sroa.041.0, %3
  br i1 %.not52, label %._crit_edge, label %.lr.ph69.split

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = ptrtoint ptr %i.m to i64
  %i.bw = ptrtoint ptr %i.o to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bx) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEiEESaISD_EEEES3_INS1_18ViableSubstitutionESaISG_EES8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.80") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !87     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not98 = icmp eq ptr %i.b, %i.c
  br i1 %.not98, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = mul nuw nsw i64 %i.g, 40
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !66
  store ptr %i.l, ptr %i.j, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !67
  %.pre = load ptr, ptr %3, align 8, !tbaa !597
  %.pre81 = load ptr, ptr %i.a, align 8, !tbaa !597
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted60 = phi ptr [ %i.l, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.promoted = phi ptr [ %i.m, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %.pre81, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.c, %bb.b ] ; 2 uses
  %.not5064 = icmp eq ptr %i.o, %i.n
  br i1 %.not5064, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph67.split

._crit_edge:                                      ; preds = %.critedge, %.lr.ph67, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.lcssa61 = phi ptr [ %.promoted60, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted60, %.lr.ph67 ], [ %i.cg, %.critedge ]
  %.lcssa57 = phi ptr [ %.promoted, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted, %.lr.ph67 ], [ %i.ch, %.critedge ]
  store ptr %.lcssa57, ptr %i.i, align 8
  store ptr %.lcssa61, ptr %0, align 8
  ret void

.lr.ph67.split:                                   ; preds = %.lr.ph67, %.critedge
  %i.t = phi ptr [ %i.cf, %.critedge ], [ %.promoted60, %.lr.ph67 ] ; 16 uses
  %.sroa.039.065 = phi ptr [ %i.ci, %.critedge ], [ %i.o, %.lr.ph67 ] ; 6 uses
  %i.u = phi ptr [ %i.ch, %.critedge ], [ %.promoted, %.lr.ph67 ] ; 9 uses
  %i.v = phi ptr [ %i.cg, %.critedge ], [ %.promoted60, %.lr.ph67 ] ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.039.065, i64 40
  %.sroa.0.0.copyload37 = load i64, ptr %i.w, align 8, !tbaa !68 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.039.065, i64 48
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !61 ; 4 uses
  %i.x = add i64 %.sroa.0.0.copyload37, -1
  %or.cond49.not = icmp ult i64 %i.x, %.fr
  br i1 %or.cond49.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph67.split
  %i.y = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !32
  %i.z = sext i8 %i.y to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload37
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.af, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.ad, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.aa = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.aa, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.ab = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.z, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #19 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload37)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.q, %i.ae                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.af, %.sroa.0.0.copyload37
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.ag, %i.r                     ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.039.065, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.039.065, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31
  store i64 %.sroa.0.0.copyload37, ptr %i.t, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %i.ah, ptr %i.ao, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = ptrtoint ptr %i.t to i64
  %i.ar = ptrtoint ptr %i.v to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.u, ptr %i.i, align 8
  store ptr %i.v, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.au = sdiv exact i64 %i.as, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 230584300921369395)
  %i.ay = select i1 %i.aw, i64 230584300921369395, i64 %i.ax ; 3 uses
  %.not.i.i22 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i22)
  %i.az = mul nuw nsw i64 %i.ay, 40
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #22
          to label %.noexc35 unwind label %.loopexit ; 5 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 5 uses
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.065, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31
  store i64 %.sroa.0.0.copyload37, ptr %i.bb, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.bc, ptr %.sroa.2.0..sroa_idx.i.i26, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %i.ah, ptr %i.bg, align 8, !tbaa !104
  %.not10.i.i.i.i27 = icmp eq ptr %i.v, %i.t
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %.noexc35, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i28 ], [ %i.ba, %.noexc35 ] ; 2 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i28 ], [ %i.v, %.noexc35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i30, i64 40, i1 false), !tbaa.struct !105, !alias.scope !598
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.bh, %i.t
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i, label %.lr.ph.i.i.i.i28, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i: ; preds = %.lr.ph.i.i.i.i28, %.noexc35
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ba, %.noexc35 ], [ %i.bi, %.lr.ph.i.i.i.i28 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.v, null
  br i1 %.not.i36.i, label %.noexc20, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.as) #20
  br label %.noexc20

.noexc20:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35.i
  store ptr %i.bj, ptr %i.s, align 8, !tbaa !102
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.ay
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit: ; preds = %.noexc20, %bb.f
  %i.bl = phi ptr [ %i.bj, %.noexc20 ], [ %i.ap, %bb.f ] ; 4 uses
  %i.bm = phi ptr [ %i.ba, %.noexc20 ], [ %i.v, %bb.f ] ; 6 uses
  %i.bn = phi ptr [ %i.bk, %.noexc20 ], [ %i.u, %bb.f ] ; 3 uses
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 40                ; 2 uses
  %i.bs = add nsw i64 %i.br, -1                   ; 2 uses
  %.not54 = icmp eq i64 %i.bs, 0
  br i1 %.not54, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit, %bb.j
  %5 = phi i64 [ %i.ce, %bb.j ], [ %i.bs, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ] ; 3 uses
  %.055 = phi i64 [ %5, %bb.j ], [ %i.br, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ]
  %i.bt = getelementptr [40 x i8], ptr %i.bm, i64 %.055 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -80    ; 3 uses
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %5 ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bt, i64 -48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !104 ; 2 uses
  %.not.i21 = icmp eq i64 %i.bx, %i.bz
  %i.ca = icmp ult i64 %i.bx, %i.bz
  %i.cb = load i64, ptr %i.bu, align 8
  %i.cc = load i64, ptr %i.bv, align 8
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  %.0.i = select i1 %.not.i21, i1 %i.cd, i1 %i.ca
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i64 40, i1 false), !tbaa.struct !105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ce = add i64 %5, -1                          ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !596

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.u, ptr %i.i, align 8
  store ptr %i.v, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph67.split
  %i.cf = phi ptr [ %i.bl, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ], [ %i.t, %.lr.ph67.split ], [ %i.t, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bl, %bb.j ], [ %i.bl, %.lr.ph ], [ %i.t, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.cg = phi ptr [ %i.bm, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ], [ %i.v, %.lr.ph67.split ], [ %i.v, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bm, %bb.j ], [ %i.bm, %.lr.ph ], [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.ch = phi ptr [ %i.bn, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS9_SaIcEEERmEEERS3_DpOT_.exit ], [ %i.u, %.lr.ph67.split ], [ %i.u, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bn, %bb.j ], [ %i.bn, %.lr.ph ], [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.039.065, i64 56 ; 2 uses
  %.not50 = icmp eq ptr %i.ci, %i.n
  br i1 %.not50, label %._crit_edge, label %.lr.ph67.split

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = ptrtoint ptr %i.t to i64
  %i.ck = ptrtoint ptr %i.v to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.cl) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt6vectorI4ContSaIS4_EEEES3_INS1_18ViableSubstitutionESaIS7_EESt17basic_string_viewIcSt11char_traitsIcEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.80") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20260526::strings_internal::Splitter", align 8 ; 11 uses
  %6 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 13 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !93     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not165 = icmp eq ptr %i.b, %i.c
  br i1 %.not165, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = mul nuw nsw i64 %i.g, 40
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !66
  store ptr %i.l, ptr %i.j, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !67
  %.pre = load ptr, ptr %3, align 8, !tbaa !607
  %.pre144 = load ptr, ptr %i.a, align 8, !tbaa !607
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted100 = phi ptr [ %i.l, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 6 uses
  %.promoted = phi ptr [ %i.m, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 5 uses
  %i.n = phi ptr [ %.pre144, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.o = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not77106 = icmp eq ptr %i.o, %i.n
  br i1 %.not77106, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph108.split.us, label %.lr.ph108.split

.lr.ph108.split.us:                               ; preds = %.lr.ph108, %.critedge.us
  %.sroa.048.0107.us = phi ptr [ %i.af, %.critedge.us ], [ %i.o, %.lr.ph108 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %.sroa.0.0.copyload.i.us = load i64, ptr %.sroa.048.0107.us, align 8, !tbaa !68 ; 5 uses
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.048.0107.us, i64 8
  %.sroa.2.0.copyload.i.us = load ptr, ptr %.sroa.2.0..sroa_idx.i.us, align 8, !tbaa !61 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.us, ptr %5, align 8, !tbaa !68, !alias.scope !608
  store ptr %.sroa.2.0.copyload.i.us, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !tbaa !61, !alias.scope !608
  store i8 58, ptr %i.p, align 8, !tbaa !32, !alias.scope !608
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %6, align 8, !tbaa !111, !alias.scope !609
  store i32 0, ptr %i.q, align 8, !tbaa !112, !alias.scope !609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !609
  store ptr %5, ptr %i.s, align 8, !tbaa !113, !alias.scope !609
  store i8 58, ptr %i.t, align 8, !tbaa !32, !alias.scope !609
  %i.y = icmp eq ptr %.sroa.2.0.copyload.i.us, null
  br i1 %i.y, label %.critedge.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph108.split.us
  %i.z = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i64 %.sroa.0.0.copyload.i.us, ptr nonnull %.sroa.2.0.copyload.i.us, i64 noundef 0)
          to label %.noexc22.us unwind label %.loopexit.split.us

.noexc22.us:                                      ; preds = %bb.c
  %i.aa = extractvalue { i64, ptr } %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.us, i64 %.sroa.0.0.copyload.i.us
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc22.us
  store i32 1, ptr %i.q, align 8, !tbaa !112, !alias.scope !609
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc22.us
  %i.ad = load i64, ptr %6, align 8, !tbaa !111, !alias.scope !609 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %.sroa.0.0.copyload.i.us
  br i1 %i.ae, label %.split.us, label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph108.split.us, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.048.0107.us, i64 16 ; 2 uses
  %.not77.us = icmp eq ptr %i.af, %i.n
  br i1 %.not77.us, label %._crit_edge, label %.lr.ph108.split.us

.loopexit.split.us:                               ; preds = %bb.c
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

._crit_edge:                                      ; preds = %.critedge, %.critedge.us, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit
  %.lcssa101 = phi ptr [ %.promoted100, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted100, %.critedge.us ], [ %i.da, %.critedge ]
  %.lcssa95 = phi ptr [ %.promoted, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE7reserveEm.exit ], [ %.promoted, %.critedge.us ], [ %i.db, %.critedge ]
  store ptr %.lcssa95, ptr %i.i, align 8
  store ptr %.lcssa101, ptr %0, align 8
  ret void

.lr.ph108.split:                                  ; preds = %.lr.ph108, %.critedge
  %i.ag = phi ptr [ %i.cz, %.critedge ], [ %.promoted100, %.lr.ph108 ] ; 17 uses
  %.sroa.048.0107 = phi ptr [ %i.dc, %.critedge ], [ %i.o, %.lr.ph108 ] ; 4 uses
  %i.ah = phi ptr [ %i.db, %.critedge ], [ %.promoted, %.lr.ph108 ] ; 13 uses
  %i.ai = phi ptr [ %i.da, %.critedge ], [ %.promoted100, %.lr.ph108 ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.048.0107, align 8, !tbaa !68 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.048.0107, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !61 ; 5 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !tbaa !68, !alias.scope !608
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !tbaa !61, !alias.scope !608
  store i8 58, ptr %i.p, align 8, !tbaa !32, !alias.scope !608
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %6, align 8, !tbaa !111, !alias.scope !609
  store i32 0, ptr %i.q, align 8, !tbaa !112, !alias.scope !609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !609
  store ptr %5, ptr %i.s, align 8, !tbaa !113, !alias.scope !609
  store i8 58, ptr %i.t, align 8, !tbaa !32, !alias.scope !609
  %i.aj = icmp eq ptr %.sroa.2.0.copyload.i, null
  br i1 %i.aj, label %.thread, label %bb.f

.thread:                                          ; preds = %.lr.ph108.split
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.critedge

bb.f:                                             ; preds = %.lr.ph108.split
  %i.ak = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.2.0.copyload.i, i64 noundef 0)
          to label %.noexc22 unwind label %.loopexit.split

.noexc22:                                         ; preds = %bb.f
  %i.al = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc22
  store i32 1, ptr %i.q, align 8, !tbaa !112, !alias.scope !609
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc22
  %i.ao = load i64, ptr %6, align 8, !tbaa !111, !alias.scope !609 ; 4 uses
  %i.ap = icmp ugt i64 %i.ao, %.sroa.0.0.copyload.i
  br i1 %i.ap, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.h, %bb.e
  %.us-phi112 = phi ptr [ %.promoted100, %bb.e ], [ %i.ai, %bb.h ] ; 2 uses
  %.us-phi113 = phi ptr [ %.promoted, %bb.e ], [ %i.ah, %bb.h ] ; 2 uses
  %.us-phi114 = phi i64 [ %i.ad, %bb.e ], [ %i.ao, %bb.h ]
  %.us-phi115 = phi i64 [ %.sroa.0.0.copyload.i.us, %bb.e ], [ %.sroa.0.0.copyload.i, %bb.h ]
  store ptr %.us-phi113, ptr %i.i, align 8
  store ptr %.us-phi112, ptr %0, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i64 noundef %.us-phi114, i64 noundef %.us-phi115) #24
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %.split.us
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %i.ao ; 5 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.aq, %i.as
  %i.au = sub nuw i64 %.sroa.0.0.copyload.i, %i.ao
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.at) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.av = add i64 %.sroa.speculated.i.i.i.i.i, -1
  %or.cond76.not = icmp ult i64 %i.av, %.fr
  br i1 %or.cond76.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.ax = sext i8 %i.aw to i32
  %invariant.op = sub i64 1, %.sroa.speculated.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.bd, %bb.k ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.bb, %bb.k ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.ay = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ay, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.j
  %i.az = call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.ax, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #19 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.az, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.az, ptr nonnull %i.ar, i64 %.sroa.speculated.i.i.i.i.i)
  %i.ba = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ba, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.v, %i.bc                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.bd, %.sroa.speculated.i.i.i.i.i
  br i1 %.not25.i.i, label %.critedge, label %bb.j, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = sub i64 %i.be, %i.w                     ; 3 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %.critedge, label %bb.l

.loopexit.split:                                  ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.us, %.loopexit.split
  %.us-phi = phi ptr [ %i.ai, %.loopexit.split ], [ %.promoted100, %.loopexit.split.us ] ; 2 uses
  %.us-phi110 = phi ptr [ %i.ah, %.loopexit.split ], [ %.promoted, %.loopexit.split.us ] ; 2 uses
  %.us-phi111 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  store ptr %.us-phi110, ptr %i.i, align 8
  store ptr %.us-phi, ptr %0, align 8
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.bh = invoke { i64, ptr } @_Z3getILi1EESt17basic_string_viewIcSt11char_traitsIcEERK4Cont(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.048.0107)
          to label %bb.m unwind label %.loopexit80 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bi = extractvalue { i64, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bh, 1      ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ar, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.bj, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %i.bf, ptr %i.bl, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  store ptr %i.bm, ptr %i.x, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.ag to i64
  %i.bo = ptrtoint ptr %i.ai to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  store ptr %i.ah, ptr %i.i, align 8
  store ptr %i.ai, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
          to label %.noexc40 unwind label %.loopexit.split-lp81

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.br = sdiv exact i64 %i.bp, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 230584300921369395)
  %i.bv = select i1 %i.bt, i64 230584300921369395, i64 %i.bu ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.bw = mul nuw nsw i64 %i.bv, 40
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #22
          to label %.noexc41 unwind label %.loopexit80 ; 5 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 5 uses
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.by, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ar, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bi, ptr %i.bz, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bj, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bf, ptr %i.ca, align 8, !tbaa !104
  %.not10.i.i.i.i33 = icmp eq ptr %i.ai, %i.ag
  br i1 %.not10.i.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %.noexc41, %.lr.ph.i.i.i.i34
  %.012.i.i.i.i35 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i34 ], [ %i.bx, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i36 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i34 ], [ %i.ai, %.noexc41 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i36, i64 40, i1 false), !tbaa.struct !105, !alias.scope !610
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i36, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i35, i64 40 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cb, %i.ag
  br i1 %.not.i.i.i.i37, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i34, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i34, %.noexc41
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bx, %.noexc41 ], [ %i.cc, %.lr.ph.i.i.i.i34 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.ai, null
  br i1 %.not.i37.i, label %.noexc24, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bp) #20
  br label %.noexc24

.noexc24:                                         ; preds = %bb.q, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.cd, ptr %i.x, align 8, !tbaa !102
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit: ; preds = %.noexc24, %bb.n
  %i.cf = phi ptr [ %i.cd, %.noexc24 ], [ %i.bm, %bb.n ] ; 4 uses
  %i.cg = phi ptr [ %i.bx, %.noexc24 ], [ %i.ai, %bb.n ] ; 6 uses
  %i.ch = phi ptr [ %i.ce, %.noexc24 ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 40                ; 2 uses
  %i.cm = add nsw i64 %i.cl, -1                   ; 2 uses
  %.not92 = icmp eq i64 %i.cm, 0
  br i1 %.not92, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit, %bb.r
  %7 = phi i64 [ %i.cy, %bb.r ], [ %i.cm, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.093 = phi i64 [ %7, %bb.r ], [ %i.cl, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ]
  %i.cn = getelementptr [40 x i8], ptr %i.cg, i64 %.093 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -80    ; 3 uses
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %7 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 -48
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !104 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !104 ; 2 uses
  %.not.i25 = icmp eq i64 %i.cr, %i.ct
  %i.cu = icmp ult i64 %i.cr, %i.ct
  %i.cv = load i64, ptr %i.co, align 8
  %i.cw = load i64, ptr %i.cp, align 8
  %i.cx = icmp ugt i64 %i.cv, %i.cw
  %.0.i = select i1 %.not.i25, i1 %i.cx, i1 %i.cu
  br i1 %.0.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.cp, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.co, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = add i64 %7, -1                          ; 2 uses
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !606

.loopexit80:                                      ; preds = %bb.l, %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %i.i, align 8
  store ptr %i.ai, ptr %0, align 8
  br label %bb.s

.loopexit.split-lp81:                             ; preds = %bb.p
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.k, %bb.j, %bb.r, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.i, %.thread
  %i.cz = phi ptr [ %i.cf, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ], [ %i.ag, %.thread ], [ %i.ag, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ag, %bb.i ], [ %i.cf, %bb.r ], [ %i.cf, %.lr.ph ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.ag, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.da = phi ptr [ %i.cg, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ], [ %i.ai, %.thread ], [ %i.ai, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ai, %bb.i ], [ %i.cg, %bb.r ], [ %i.cg, %.lr.ph ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ai, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.db = phi ptr [ %i.ch, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ], [ %i.ah, %.thread ], [ %i.ah, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ah, %bb.i ], [ %i.ch, %bb.r ], [ %i.ch, %.lr.ph ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %i.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.048.0107, i64 16 ; 2 uses
  %.not77 = icmp eq ptr %i.dc, %i.n
  br i1 %.not77, label %._crit_edge, label %.lr.ph108.split

bb.s:                                             ; preds = %.loopexit80, %.loopexit.split-lp81, %.loopexit, %.loopexit.split-lp
  %i.dd = phi ptr [ %i.ag, %.loopexit.split-lp81 ], [ %.us-phi113, %.loopexit.split-lp ], [ %.us-phi110, %.loopexit ], [ %i.ah, %.loopexit80 ]
  %i.de = phi ptr [ %i.ai, %.loopexit.split-lp81 ], [ %.us-phi112, %.loopexit.split-lp ], [ %.us-phi, %.loopexit ], [ %i.ai, %.loopexit80 ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp83, %.loopexit.split-lp81 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.us-phi111, %.loopexit ], [ %lpad.loopexit82, %.loopexit80 ]
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dh) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.s, %bb.t
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, ptr } @_Z3getILi1EESt17basic_string_viewIcSt11char_traitsIcEERK4Cont(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::strings_internal::Splitter", align 8 ; 6 uses
  %2 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !68 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !61 ; 5 uses
  store i64 %.sroa.0.0.copyload, ptr %1, align 8, !tbaa !68, !alias.scope !616
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !61, !alias.scope !616
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 58, ptr %i.a, align 8, !tbaa !32, !alias.scope !616
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 0, ptr %2, align 8, !tbaa !111, !alias.scope !617
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !112, !alias.scope !617
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !617
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !113, !alias.scope !617
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i8 58, ptr %i.e, align 8, !tbaa !32, !alias.scope !617
  %i.f = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %i.f, label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread, label %bb.b

_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread: ; preds = %bb.a
  store i32 2, ptr %i.b, align 8, !tbaa !112, !alias.scope !617
  store i64 %.sroa.0.0.copyload, ptr %2, align 8, !tbaa !111, !alias.scope !617
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = call { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %.sroa.0.0.copyload, ptr nonnull %.sroa.2.0.copyload, i64 noundef 0) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !tbaa !112, !alias.scope !617
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i64, ptr %2, align 8, !tbaa !111, !alias.scope !617 ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sroa.0.0.copyload
  br i1 %i.m, label %bb.e, label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i64 noundef %i.l, i64 noundef %.sroa.0.0.copyload) #24
  unreachable

_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %bb.d
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %i.l ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.n, %i.p
  %i.r = sub nuw i64 %.sroa.0.0.copyload, %i.l
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 3 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.c, align 8, !tbaa !68, !alias.scope !617
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !61, !alias.scope !617
  %i.s = add i64 %i.l, %i.h
  %i.t = add i64 %i.s, %.sroa.speculated.i.i.i.i  ; 2 uses
  %.pre = load i32, ptr %i.b, align 8, !tbaa !112
  %i.u = icmp eq i32 %.pre, 1
  store i64 %i.t, ptr %2, align 8, !tbaa !111, !alias.scope !617
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br i1 %i.u, label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %.sroa.4.0..sroa_idx.i13 = phi ptr [ %.sroa.4.0..sroa_idx.i12, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread ], [ %.sroa.4.0..sroa_idx.i, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  %i.v = phi i64 [ %.sroa.0.0.copyload, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread ], [ %i.t, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 8, !tbaa !68 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61 ; 3 uses
  %i.x = call { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.v)
  %i.y = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = load i64, ptr %2, align 8, !tbaa !111   ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, %.sroa.0.0.copyload.i.i
  br i1 %i.ac, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i64 noundef %i.ab, i64 noundef %.sroa.0.0.copyload.i.i) #24
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.ab ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.ab
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag)
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i13, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !615

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.sroa.23.0.copyload = phi ptr [ %i.ae, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.o, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  %.sroa.02.0.copyload = phi i64 [ %.sroa.speculated.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %.sroa.speculated.i.i.i.i, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.02.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.23.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

declare { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_str_replace_test.cc() #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.h, ptr %18, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 13, ptr %i.i, align 8, !tbaa !31
end_hunk_2
