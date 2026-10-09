Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.03?download=true
inline.NumInlined: 4552
inline.NumDeleted: 3455
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNCNvNtNtCslFlrwjHoTci_14polars_compute18horizontal_flatten7struct_28horizontal_flatten_uncheckeds0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB1p_NCINvMsj_NtB1u_3vecINtB5I_3VecB1p_E14extend_trustedBN_E0E0EB2W_:bb.a
  %i.u = add i64 %.val15.i, 1, !dbg !17894        ; 2 uses
  %i.v = add nuw i64 %.sroa.01.0.i, 1, !dbg !17895 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j, !dbg !17896
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_BS_uNCNCNvNtNtCslFlrwjHoTci_14polars_compute18horizontal_flatten7struct_28horizontal_flatten_uncheckeds0_00NCINvNvB2f_8for_each4callBS_NCINvMsj_NtBX_3vecINtB5X_3VecBS_E14extend_trustedINtB35_3MapBF_B3H_EE0E0E0EB3R_.exit, label %bb.c, !dbg !17896

.loopexit.i:                                      ; preds = %_RNCNCNvNtNtCslFlrwjHoTci_14polars_compute18horizontal_flatten7struct_28horizontal_flatten_uncheckeds0_00B9_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !17897, !noalias !17869
  resume { ptr, i32 } %lpad.phi.i, !dbg !17898

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_BS_uNCNCNvNtNtCslFlrwjHoTci_14polars_compute18horizontal_flatten7struct_28horizontal_flatten_uncheckeds0_00NCINvNvB2f_8for_each4callBS_NCINvMsj_NtBX_3vecINtB5X_3VecBS_E14extend_trustedINtB35_3MapBF_B3H_EE0E0E0EB3R_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.e ], !dbg !17899
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !17899, !noalias !17869
  ret void, !dbg !17900
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17901 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !17998, !nonnull !598, !noundef !598 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17998
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17998, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !17999 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17999
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17999 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17999
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !17999
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18000
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18001

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18002
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18002
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18002
  br label %bb.c, !dbg !18003

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bl, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bm, %bb.p ], !dbg !18004 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17984), !dbg !18006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17985), !dbg !18007
  %i.i = load i8, ptr %i.h, align 1, !dbg !18008, !alias.scope !17986, !noalias !17987, !noundef !598
  %i.j = sitofp i8 %i.i to float, !dbg !18009     ; 2 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !18010, !noalias !17990 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !18011
  br i1 %i.l, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !18011, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !dbg !18012, !noalias !17991

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.n = and i128 %i.m, 36028797018963968, !dbg !18013
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.n, 0, !dbg !18013
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.o, !dbg !18014

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = and i64 %i.k, 36028797018963968, !dbg !18015
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0, !dbg !18015
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.o, !dbg !18014

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.p = bitcast float %i.j to i32, !dbg !18016   ; 5 uses
  %i.q = and i32 %i.p, -2147483648, !dbg !18017   ; 2 uses
  %i.r = and i32 %i.p, 2139095040, !dbg !18018    ; 6 uses
  %i.s = and i32 %i.p, 8388607, !dbg !18019       ; 4 uses
  %i.t = icmp eq i32 %i.r, 2139095040, !dbg !18020
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !18020

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0, !dbg !18021
  %..i.i.i.i.i.i.i = select i1 %i.u, i32 0, i32 512, !dbg !18022
  %i.v = lshr exact i32 %i.q, 16, !dbg !18023
  %i.w = lshr i32 %i.s, 13, !dbg !18024
  %i.x = or disjoint i32 %i.w, %i.v, !dbg !18023
  %i.y = or i32 %i.x, %..i.i.i.i.i.i.i, !dbg !18025
  %i.z = trunc nuw i32 %i.y to i16, !dbg !18025
  %i.aa = or disjoint i16 %i.z, 31744, !dbg !18025
  br label %bb.p, !dbg !18026

bb.f:                                             ; preds = %bb.d
  %i.ab = lshr exact i32 %i.q, 16, !dbg !18027    ; 4 uses
  %i.ac = lshr exact i32 %i.r, 23, !dbg !18028    ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.r, 1191182336, !dbg !18029
  br i1 %i.ad, label %bb.h, label %bb.g, !dbg !18029

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %i.r, 947912704, !dbg !18030
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !18030

bb.h:                                             ; preds = %bb.f
  %i.af = trunc nuw i32 %i.ab to i16, !dbg !18031
  %i.ag = or disjoint i16 %i.af, 31744, !dbg !18031
  br label %bb.p, !dbg !18032

bb.i:                                             ; preds = %bb.g
  %i.ah = lshr exact i32 %i.r, 13, !dbg !18033
  %i.ai = add nuw nsw i32 %i.ah, 16384, !dbg !18033
  %i.aj = lshr i32 %i.s, 13, !dbg !18034
  %i.ak = and i32 %i.p, 4096, !dbg !18035
  %i.al = icmp ne i32 %i.ak, 0, !dbg !18035
  %i.am = and i32 %i.p, 12287
  %i.an = icmp ne i32 %i.am, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.al, %i.an, !dbg !18036
  %i.ao = or disjoint i32 %i.ai, %i.aj, !dbg !18036
  %i.ap = or i32 %i.ao, %i.ab, !dbg !18036
  %i.aq = trunc i32 %i.ap to i16, !dbg !18036
  %i.ar = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !18035
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.aq, %i.ar, !dbg !18035
  br label %bb.p, !dbg !18035

bb.j:                                             ; preds = %bb.g
  %i.as = icmp samesign ult i32 %i.r, 855638016, !dbg !18037
  br i1 %i.as, label %bb.l, label %bb.k, !dbg !18037

bb.k:                                             ; preds = %bb.j
  %i.at = sub nsw i32 126, %i.ac, !dbg !18037
  %i.au = or disjoint i32 %i.s, 8388608, !dbg !18038 ; 3 uses
  %i.av = lshr i32 %i.au, %i.at, !dbg !18039      ; 2 uses
  %i.aw = sub nsw i32 29, %i.ac, !dbg !18040
  %i.ax = and i32 %i.aw, 31, !dbg !18041          ; 2 uses
  %i.ay = shl nuw i32 1, %i.ax, !dbg !18041
  %i.az = and i32 %i.ay, %i.au, !dbg !18042
  %i.ba = icmp eq i32 %i.az, 0, !dbg !18042
  br i1 %i.ba, label %bb.n, label %bb.m, !dbg !18042

bb.l:                                             ; preds = %bb.j
  %i.bb = trunc nuw i32 %i.ab to i16, !dbg !18043
  br label %bb.p, !dbg !18032

bb.m:                                             ; preds = %bb.k
  %i.bc = shl i32 3, %i.ax, !dbg !18044
  %i.bd = add nuw i32 %i.bc, 16777215, !dbg !18045
  %i.be = and i32 %i.bd, %i.au, !dbg !18046
  %i.bf = icmp ne i32 %i.be, 0, !dbg !18046
  %i.bg = zext i1 %i.bf to i32, !dbg !18046
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i32 %i.av, %i.bg, !dbg !18046
  br label %bb.n, !dbg !18046

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.k ], [ %spec.select.i.i.i.i.i.i.i, %bb.m ], !dbg !18047
  %i.bh = or i32 %.sroa.03.0.i.i.i.i.i.i.i, %i.ab, !dbg !18048
  %i.bi = trunc nuw i32 %i.bh to i16, !dbg !18048
  br label %bb.p, !dbg !18032

bb.o:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.bj = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.j), !dbg !18049
  br label %bb.p, !dbg !18049

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.bj, %bb.o ], [ %i.aa, %bb.e ], [ %i.ag, %bb.h ], [ %i.bb, %bb.l ], [ %i.bi, %bb.n ], [ %spec.select7.i.i.i.i.i.i.i, %bb.i ], !dbg !18050
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !18051
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bk, align 2, !dbg !18052, !noalias !17992
  %i.bl = add i64 %.val15.i, 1, !dbg !18053       ; 2 uses
  %i.bm = add nuw i64 %.sroa.01.0.i, 1, !dbg !18054 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.g, !dbg !18055
  br i1 %i.bn, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !18055

bb.q:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !18056, !noalias !17991
  resume { ptr, i32 } %i.bo, !dbg !18057

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bl, %bb.p ], !dbg !18058
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18058, !noalias !17991
  ret void, !dbg !18059
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18060 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18131, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18131
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18131, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18132 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18132
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18132 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18132
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18132 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18133
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18134

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18135    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18135    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18135      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 10, !dbg !18136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18136

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 3, !dbg !18136
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18136
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18136
  %i.k = sub i64 %i.j, %i.f, !dbg !18136
  %i.l = shl i64 %i.k, 3, !dbg !18136
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18136
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18136
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18136
  %found.conflict = and i1 %bound0, %bound1, !dbg !18136
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18137

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18137

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18137 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18138 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2, !dbg !18139
  %wide.load = load <2 x i8>, ptr %i.p, align 1, !dbg !18139, !alias.scope !18120, !noalias !18121
  %wide.load4 = load <2 x i8>, ptr %i.q, align 1, !dbg !18139, !alias.scope !18120, !noalias !18121
  %i.r = sitofp <2 x i8> %wide.load to <2 x double>, !dbg !18140
  %i.s = sitofp <2 x i8> %wide.load4 to <2 x double>, !dbg !18140
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !18141 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18142
  store <2 x double> %i.r, ptr %i.t, align 8, !dbg !18142, !alias.scope !18123, !noalias !18124
  store <2 x double> %i.s, ptr %i.u, align 8, !dbg !18142, !alias.scope !18123, !noalias !18124
  %index.next = add nuw i64 %index, 4, !dbg !18137 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !18143
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !18143, !llvm.loop !18109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18143
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18143

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18143        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18143
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18143

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18138 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18137 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18138
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.y = sitofp i8 %.val16.i.prol to double, !dbg !18140
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !18141
  store double %i.y, ptr %i.z, align 8, !dbg !18142, !noalias !18125
  %i.aa = add i64 %i.w, 1, !dbg !18144            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18145 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18143 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18143
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18143, !llvm.loop !18114

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18143
  %i.ad = add i64 %i.ac, %i.f, !dbg !18143
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !18143
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18143

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18138 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18137 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.ah = sitofp i8 %.val16.i to double, !dbg !18140
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18141
  store double %i.ah, ptr %i.ai, align 8, !dbg !18142, !noalias !18125
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !18138
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.al = sitofp i8 %.val16.i.1 to double, !dbg !18140
  %i.am = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18141
  %i.an = getelementptr i8, ptr %i.am, i64 8, !dbg !18141
  store double %i.al, ptr %i.an, align 8, !dbg !18142, !noalias !18125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !18138
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.aq = sitofp i8 %.val16.i.2 to double, !dbg !18140
  %i.ar = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18141
  %i.as = getelementptr i8, ptr %i.ar, i64 16, !dbg !18141
  store double %i.aq, ptr %i.as, align 8, !dbg !18142, !noalias !18125
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !18138
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.av = sitofp i8 %.val16.i.3 to double, !dbg !18140
  %i.aw = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18141
  %i.ax = getelementptr i8, ptr %i.aw, i64 24, !dbg !18141
  store double %i.av, ptr %i.ax, align 8, !dbg !18142, !noalias !18125
  %i.ay = add i64 %i.af, 4, !dbg !18144           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !18145 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !18143
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18143, !llvm.loop !18115

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !18146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18146, !noalias !18121
  ret void, !dbg !18147
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18148 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18218, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18218
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18218, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18219 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18219
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18219 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18219
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18219 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18220
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18221

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18222    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18222    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18222      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 12, !dbg !18223
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18223

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18223
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18223
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18223
  %i.k = sub i64 %i.j, %i.f, !dbg !18223
  %i.l = shl i64 %i.k, 2, !dbg !18223
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18223
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18223
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18223
  %found.conflict = and i1 %bound0, %bound1, !dbg !18223
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18224

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18224

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18224 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18225 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !18226
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !18226, !alias.scope !18208, !noalias !18209
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !18226, !alias.scope !18208, !noalias !18209
  %i.r = sitofp <4 x i8> %wide.load to <4 x float>, !dbg !18227
  %i.s = sitofp <4 x i8> %wide.load4 to <4 x float>, !dbg !18227
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !18228 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18229
  store <4 x float> %i.r, ptr %i.t, align 4, !dbg !18229, !alias.scope !18210, !noalias !18211
  store <4 x float> %i.s, ptr %i.u, align 4, !dbg !18229, !alias.scope !18210, !noalias !18211
  %index.next = add nuw i64 %index, 8, !dbg !18224 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !18230
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !18230, !llvm.loop !18197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18230
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18230

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18230        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18230
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18230

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18225 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18224 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18225
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.y = sitofp i8 %.val16.i.prol to float, !dbg !18227
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !18228
  store float %i.y, ptr %i.z, align 4, !dbg !18229, !noalias !18212
  %i.aa = add i64 %i.w, 1, !dbg !18231            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18232 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18230 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18230
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18230, !llvm.loop !18202

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18230
  %i.ad = add i64 %i.ac, %i.f, !dbg !18230
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !18230
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18230

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18225 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18224 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.ah = sitofp i8 %.val16.i to float, !dbg !18227
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18228
  store float %i.ah, ptr %i.ai, align 4, !dbg !18229, !noalias !18212
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !18225
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.al = sitofp i8 %.val16.i.1 to float, !dbg !18227
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18228
  %i.an = getelementptr i8, ptr %i.am, i64 4, !dbg !18228
  store float %i.al, ptr %i.an, align 4, !dbg !18229, !noalias !18212
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !18225
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.aq = sitofp i8 %.val16.i.2 to float, !dbg !18227
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18228
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !18228
  store float %i.aq, ptr %i.as, align 4, !dbg !18229, !noalias !18212
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !18225
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.av = sitofp i8 %.val16.i.3 to float, !dbg !18227
  %i.aw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18228
  %i.ax = getelementptr i8, ptr %i.aw, i64 12, !dbg !18228
  store float %i.av, ptr %i.ax, align 4, !dbg !18229, !noalias !18212
  %i.ay = add i64 %i.af, 4, !dbg !18231           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !18232 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !18230
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18230, !llvm.loop !18203

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !18233
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18233, !noalias !18209
  ret void, !dbg !18234
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18235 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18294, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18294
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18294, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18295 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18295
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18295 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18295
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18295 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !18296
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18296
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18297

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18298    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18298    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18298      ; 9 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !18299
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18299

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !18299
  %i.i = sub i64 %i.f, %i.h, !dbg !18299
  %diff.check = icmp ugt i64 %i.i, -32, !dbg !18299
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18300

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.g, 32, !dbg !18299
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !18299

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 28
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18299

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18300 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18301 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18302
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !18302, !noalias !18287
  %wide.load4 = load <16 x i8>, ptr %i.n, align 1, !dbg !18302, !noalias !18287
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !18303 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !18304
  store <16 x i8> %wide.load, ptr %i.o, align 1, !dbg !18304, !noalias !18288
  store <16 x i8> %wide.load4, ptr %i.p, align 1, !dbg !18304, !noalias !18288
  %index.next = add nuw i64 %index, 32, !dbg !18300 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !18305
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !18305, !llvm.loop !18275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18305
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18305

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18300
  %n.vec5 = and i64 %i.g, -4                      ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !18300 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index6, !dbg !18301
  %wide.load7 = load <4 x i8>, ptr %i.t, align 1, !dbg !18302, !noalias !18287
  %i.u = getelementptr i8, ptr %i.s, i64 %index6, !dbg !18303
  store <4 x i8> %wide.load7, ptr %i.u, align 1, !dbg !18304, !noalias !18288
  %index.next8 = add nuw i64 %index6, 4, !dbg !18300 ; 2 uses
  %i.v = icmp eq i64 %index.next8, %n.vec5, !dbg !18305
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18305, !llvm.loop !18276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.g, %n.vec5, !dbg !18305
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18305

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18305        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18305
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18305

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.w = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18301 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18300 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18301
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !18303
  store i8 %.val16.i.prol, ptr %i.y, align 1, !dbg !18304, !noalias !18288
  %i.z = add i64 %i.w, 1, !dbg !18306             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18307 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18305 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18305
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18305, !llvm.loop !18281

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18305
  %i.ac = add i64 %i.ab, %i.f, !dbg !18305
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !18305
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18305

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ae = phi i64 [ %i.at, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18301 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18300 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18303
  store i8 %.val16.i, ptr %i.ag, align 1, !dbg !18304, !noalias !18288
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !18301
  %.val16.i.1 = load i8, ptr %i.ai, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.aj = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18303
  %i.ak = getelementptr i8, ptr %i.aj, i64 1, !dbg !18303
  store i8 %.val16.i.1, ptr %i.ak, align 1, !dbg !18304, !noalias !18288
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2, !dbg !18301
  %.val16.i.2 = load i8, ptr %i.am, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.an = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18303
  %i.ao = getelementptr i8, ptr %i.an, i64 2, !dbg !18303
  store i8 %.val16.i.2, ptr %i.ao, align 1, !dbg !18304, !noalias !18288
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3, !dbg !18301
  %.val16.i.3 = load i8, ptr %i.aq, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.ar = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18303
  %i.as = getelementptr i8, ptr %i.ar, i64 3, !dbg !18303
  store i8 %.val16.i.3, ptr %i.as, align 1, !dbg !18304, !noalias !18288
  %i.at = add i64 %i.ae, 4, !dbg !18306           ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4, !dbg !18307 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.g, !dbg !18305
  br i1 %i.av, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18305, !llvm.loop !18282

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.at, %vec.epilog.scalar.ph ], !dbg !18308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18308, !noalias !18287
  ret void, !dbg !18309
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18310 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18381, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18381
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18381, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18382 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18382
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18382 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18382
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18382 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18383
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18384

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18385    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18385    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18385      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 16, !dbg !18386
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18386

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18386
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18386
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18386
  %i.k = sub i64 %i.j, %i.f, !dbg !18386
  %i.l = shl i64 %i.k, 2, !dbg !18386
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18386
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18386
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18386
  %found.conflict = and i1 %bound0, %bound1, !dbg !18386
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18387

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18387

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18387 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18388 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !18389
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !18389, !alias.scope !18370, !noalias !18371
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !18389, !alias.scope !18370, !noalias !18371
  %i.r = sext <4 x i8> %wide.load to <4 x i32>, !dbg !18390
  %i.s = sext <4 x i8> %wide.load4 to <4 x i32>, !dbg !18390
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !18391 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18392
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !18392, !alias.scope !18373, !noalias !18374
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !18392, !alias.scope !18373, !noalias !18374
  %index.next = add nuw i64 %index, 8, !dbg !18387 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !18393
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !18393, !llvm.loop !18359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18393
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18393

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18393        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18393
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18393

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18388 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18387 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18388
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.y = sext i8 %.val16.i.prol to i32, !dbg !18390
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !18391
  store i32 %i.y, ptr %i.z, align 4, !dbg !18392, !noalias !18375
  %i.aa = add i64 %i.w, 1, !dbg !18394            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18395 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18393 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18393
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18393, !llvm.loop !18364

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18393
  %i.ad = add i64 %i.ac, %i.f, !dbg !18393
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !18393
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18393

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18388 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18387 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.ah = sext i8 %.val16.i to i32, !dbg !18390
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18391
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !18392, !noalias !18375
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !18388
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.al = sext i8 %.val16.i.1 to i32, !dbg !18390
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18391
  %i.an = getelementptr i8, ptr %i.am, i64 4, !dbg !18391
  store i32 %i.al, ptr %i.an, align 4, !dbg !18392, !noalias !18375
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !18388
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.aq = sext i8 %.val16.i.2 to i32, !dbg !18390
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18391
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !18391
  store i32 %i.aq, ptr %i.as, align 4, !dbg !18392, !noalias !18375
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !18388
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.av = sext i8 %.val16.i.3 to i32, !dbg !18390
  %i.aw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18391
  %i.ax = getelementptr i8, ptr %i.aw, i64 12, !dbg !18391
  store i32 %i.av, ptr %i.ax, align 4, !dbg !18392, !noalias !18375
  %i.ay = add i64 %i.af, 4, !dbg !18394           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !18395 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !18393
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18393, !llvm.loop !18365

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !18396
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18396, !noalias !18371
  ret void, !dbg !18397
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecmE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18398 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18469, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18469
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18469, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18470 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18470
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18470 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18470
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18470 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18471
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRamuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18472

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18473    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18473    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18473      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 16, !dbg !18474
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18474

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18474
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18474
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18474
  %i.k = sub i64 %i.j, %i.f, !dbg !18474
  %i.l = shl i64 %i.k, 2, !dbg !18474
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18474
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18474
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18474
  %found.conflict = and i1 %bound0, %bound1, !dbg !18474
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18475

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18475

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18475 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18476 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !18477
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !18477, !alias.scope !18458, !noalias !18459
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !18477, !alias.scope !18458, !noalias !18459
  %i.r = sext <4 x i8> %wide.load to <4 x i32>, !dbg !18478
  %i.s = sext <4 x i8> %wide.load4 to <4 x i32>, !dbg !18478
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !18479 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18480
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !18480, !alias.scope !18461, !noalias !18462
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !18480, !alias.scope !18461, !noalias !18462
  %index.next = add nuw i64 %index, 8, !dbg !18475 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !18481
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !18481, !llvm.loop !18447

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18481
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRamuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18481

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18481        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18481
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18481

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18476 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18475 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18476
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !18477, !noalias !18459, !noundef !598
  %i.y = sext i8 %.val16.i.prol to i32, !dbg !18478
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !18479
  store i32 %i.y, ptr %i.z, align 4, !dbg !18480, !noalias !18463
  %i.aa = add i64 %i.w, 1, !dbg !18482            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18483 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18481 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18481
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18481, !llvm.loop !18452

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18481
  %i.ad = add i64 %i.ac, %i.f, !dbg !18481
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !18481
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRamuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18481

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18476 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18475 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18476
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !18477, !noalias !18459, !noundef !598
  %i.ah = sext i8 %.val16.i to i32, !dbg !18478
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18479
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !18480, !noalias !18463
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18476
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !18476
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !18477, !noalias !18459, !noundef !598
  %i.al = sext i8 %.val16.i.1 to i32, !dbg !18478
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18479
  %i.an = getelementptr i8, ptr %i.am, i64 4, !dbg !18479
  store i32 %i.al, ptr %i.an, align 4, !dbg !18480, !noalias !18463
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18476
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !18476
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !18477, !noalias !18459, !noundef !598
  %i.aq = sext i8 %.val16.i.2 to i32, !dbg !18478
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18479
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !18479
  store i32 %i.aq, ptr %i.as, align 4, !dbg !18480, !noalias !18463
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18476
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !18476
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !18477, !noalias !18459, !noundef !598
  %i.av = sext i8 %.val16.i.3 to i32, !dbg !18478
  %i.aw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18479
  %i.ax = getelementptr i8, ptr %i.aw, i64 12, !dbg !18479
  store i32 %i.av, ptr %i.ax, align 4, !dbg !18480, !noalias !18463
  %i.ay = add i64 %i.af, 4, !dbg !18482           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !18483 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !18481
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRamuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18481, !llvm.loop !18453

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRamuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !18484
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18484, !noalias !18459
  ret void, !dbg !18485
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18486 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18548, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18548
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18548, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18549 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18549
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18549 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18549
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18549 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18550
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18551

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18552    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18552    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18552      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !18553
  %i.h = add i64 %i.e, -1, !dbg !18553
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !18553
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18553

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !18553
  br label %bb.c, !dbg !18553

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !18554 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !18555 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18554
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18556, !noalias !18540, !noundef !598
  %i.l = sext i8 %.val16.i to i128, !dbg !18557
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18558
  store i128 %i.l, ptr %i.m, align 16, !dbg !18559, !noalias !18542
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18554
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !18554
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !18556, !noalias !18540, !noundef !598
  %i.p = sext i8 %.val16.i.1 to i128, !dbg !18557
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18558
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !18558
  store i128 %i.p, ptr %i.r, align 16, !dbg !18559, !noalias !18542
  %i.s = add i64 %i.j, 2, !dbg !18560             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !18561 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !18562  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !18562
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !18562

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18562
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !18562

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !18562
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !18562
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !18554
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !18556, !noalias !18540, !noundef !598
  %i.v = sext i8 %.val16.i.epil to i128, !dbg !18557
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !18558
  store i128 %i.v, ptr %i.w, align 16, !dbg !18559, !noalias !18542
  %i.x = add i64 %.epil.init, 1, !dbg !18560
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !18563
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18563, !noalias !18540
  ret void, !dbg !18564
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18565 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18627, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18627
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18627, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18628 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18628
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18628 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18628
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18628 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18629
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18630

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18631    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18631    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18631      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !18632
  %i.h = add i64 %i.e, -1, !dbg !18632
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !18632
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18632

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !18632
  br label %bb.c, !dbg !18632

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !18633 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !18634 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18633
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18635, !noalias !18619, !noundef !598
  %i.l = sext i8 %.val16.i to i128, !dbg !18636
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18637
  store i128 %i.l, ptr %i.m, align 16, !dbg !18638, !noalias !18621
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18633
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !18633
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !18635, !noalias !18619, !noundef !598
  %i.p = sext i8 %.val16.i.1 to i128, !dbg !18636
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18637
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !18637
  store i128 %i.p, ptr %i.r, align 16, !dbg !18638, !noalias !18621
  %i.s = add i64 %i.j, 2, !dbg !18639             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !18640 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !18641  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !18641
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !18641

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18641
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !18641

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !18641
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !18641
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !18633
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !18635, !noalias !18619, !noundef !598
  %i.v = sext i8 %.val16.i.epil to i128, !dbg !18636
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !18637
  store i128 %i.v, ptr %i.w, align 16, !dbg !18638, !noalias !18621
  %i.x = add i64 %.epil.init, 1, !dbg !18639
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !18642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18642, !noalias !18619
  ret void, !dbg !18643
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecsE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18644 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18716, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18716
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18716, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18717 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18717
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18717 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18717
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18717 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18718
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18719

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18720    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18720    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18720      ; 9 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !18721
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18721

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !18721
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18721
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18721
  %i.k = sub i64 %i.j, %i.f, !dbg !18721
  %i.l = shl i64 %i.k, 1, !dbg !18721
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18721
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18721
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18721
  %found.conflict = and i1 %bound0, %bound1, !dbg !18721
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18722

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !18721
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !18721

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18721

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18722 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18723 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !18724
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !18724, !alias.scope !18705, !noalias !18706
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !18724, !alias.scope !18705, !noalias !18706
  %i.s = sext <8 x i8> %wide.load to <8 x i16>, !dbg !18725
  %i.t = sext <8 x i8> %wide.load5 to <8 x i16>, !dbg !18725
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !18726 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !18727
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !18727, !alias.scope !18708, !noalias !18709
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !18727, !alias.scope !18708, !noalias !18709
  %index.next = add nuw i64 %index, 16, !dbg !18722 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !18728
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !18728, !llvm.loop !18693

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18728
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18728

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18722
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !18722 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !18723
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !18724, !alias.scope !18705, !noalias !18706
  %i.aa = sext <4 x i8> %wide.load8 to <4 x i16>, !dbg !18725
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !18726
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !18727, !alias.scope !18708, !noalias !18709
  %index.next9 = add nuw i64 %index7, 4, !dbg !18722 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !18728
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18728, !llvm.loop !18694

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !18728
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18728

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18728        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18728
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18728

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ad = phi i64 [ %i.ah, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18723 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18722 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18723
  %.val16.i.prol = load i8, ptr %i.ae, align 1, !dbg !18724, !noalias !18706, !noundef !598
  %i.af = sext i8 %.val16.i.prol to i16, !dbg !18725
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !18726
  store i16 %i.af, ptr %i.ag, align 2, !dbg !18727, !noalias !18710
  %i.ah = add i64 %i.ad, 1, !dbg !18729           ; 3 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18730 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18728 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18728
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18728, !llvm.loop !18699

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18728
  %i.ak = add i64 %i.aj, %i.f, !dbg !18728
  %i.al = icmp ugt i64 %i.ak, -4, !dbg !18728
  br i1 %i.al, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18728

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.am = phi i64 [ %i.bf, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18723 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18722 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18723
  %.val16.i = load i8, ptr %i.an, align 1, !dbg !18724, !noalias !18706, !noundef !598
  %i.ao = sext i8 %.val16.i to i16, !dbg !18725
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18726
  store i16 %i.ao, ptr %i.ap, align 2, !dbg !18727, !noalias !18710
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18723
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !18723
  %.val16.i.1 = load i8, ptr %i.ar, align 1, !dbg !18724, !noalias !18706, !noundef !598
  %i.as = sext i8 %.val16.i.1 to i16, !dbg !18725
  %i.at = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18726
  %i.au = getelementptr i8, ptr %i.at, i64 2, !dbg !18726
  store i16 %i.as, ptr %i.au, align 2, !dbg !18727, !noalias !18710
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18723
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2, !dbg !18723
  %.val16.i.2 = load i8, ptr %i.aw, align 1, !dbg !18724, !noalias !18706, !noundef !598
  %i.ax = sext i8 %.val16.i.2 to i16, !dbg !18725
  %i.ay = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18726
  %i.az = getelementptr i8, ptr %i.ay, i64 4, !dbg !18726
  store i16 %i.ax, ptr %i.az, align 2, !dbg !18727, !noalias !18710
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18723
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3, !dbg !18723
  %.val16.i.3 = load i8, ptr %i.bb, align 1, !dbg !18724, !noalias !18706, !noundef !598
  %i.bc = sext i8 %.val16.i.3 to i16, !dbg !18725
  %i.bd = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18726
  %i.be = getelementptr i8, ptr %i.bd, i64 6, !dbg !18726
  store i16 %i.bc, ptr %i.be, align 2, !dbg !18727, !noalias !18710
  %i.bf = add i64 %i.am, 4, !dbg !18729           ; 2 uses
  %i.bg = add nuw i64 %.sroa.01.0.i, 4, !dbg !18730 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.g, !dbg !18728
  br i1 %i.bh, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18728, !llvm.loop !18700

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bf, %vec.epilog.scalar.ph ], !dbg !18731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18731, !noalias !18706
  ret void, !dbg !18732
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VectE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18733 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18805, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18805
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18805, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18806 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18806
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18806 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18806
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18806 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18807
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18808

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18809    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18809    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18809      ; 9 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !18810
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18810

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !18810
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18810
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18810
  %i.k = sub i64 %i.j, %i.f, !dbg !18810
  %i.l = shl i64 %i.k, 1, !dbg !18810
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18810
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18810
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18810
  %found.conflict = and i1 %bound0, %bound1, !dbg !18810
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18811

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !18810
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !18810

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18810

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18811 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18812 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !18813
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !18813, !alias.scope !18794, !noalias !18795
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !18813, !alias.scope !18794, !noalias !18795
  %i.s = sext <8 x i8> %wide.load to <8 x i16>, !dbg !18814
  %i.t = sext <8 x i8> %wide.load5 to <8 x i16>, !dbg !18814
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !18815 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !18816
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !18816, !alias.scope !18797, !noalias !18798
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !18816, !alias.scope !18797, !noalias !18798
  %index.next = add nuw i64 %index, 16, !dbg !18811 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !18817
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !18817, !llvm.loop !18782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18817
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18817

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18811
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !18811 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !18812
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !18813, !alias.scope !18794, !noalias !18795
  %i.aa = sext <4 x i8> %wide.load8 to <4 x i16>, !dbg !18814
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !18815
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !18816, !alias.scope !18797, !noalias !18798
  %index.next9 = add nuw i64 %index7, 4, !dbg !18811 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !18817
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18817, !llvm.loop !18783

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !18817
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18817

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18817        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18817
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18817

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ad = phi i64 [ %i.ah, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18812 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18811 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18812
  %.val16.i.prol = load i8, ptr %i.ae, align 1, !dbg !18813, !noalias !18795, !noundef !598
  %i.af = sext i8 %.val16.i.prol to i16, !dbg !18814
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !18815
  store i16 %i.af, ptr %i.ag, align 2, !dbg !18816, !noalias !18799
  %i.ah = add i64 %i.ad, 1, !dbg !18818           ; 3 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18819 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18817 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18817
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18817, !llvm.loop !18788

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18817
  %i.ak = add i64 %i.aj, %i.f, !dbg !18817
  %i.al = icmp ugt i64 %i.ak, -4, !dbg !18817
  br i1 %i.al, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18817

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.am = phi i64 [ %i.bf, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18812 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18811 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18812
  %.val16.i = load i8, ptr %i.an, align 1, !dbg !18813, !noalias !18795, !noundef !598
  %i.ao = sext i8 %.val16.i to i16, !dbg !18814
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18815
  store i16 %i.ao, ptr %i.ap, align 2, !dbg !18816, !noalias !18799
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18812
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !18812
  %.val16.i.1 = load i8, ptr %i.ar, align 1, !dbg !18813, !noalias !18795, !noundef !598
  %i.as = sext i8 %.val16.i.1 to i16, !dbg !18814
  %i.at = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18815
  %i.au = getelementptr i8, ptr %i.at, i64 2, !dbg !18815
  store i16 %i.as, ptr %i.au, align 2, !dbg !18816, !noalias !18799
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18812
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2, !dbg !18812
  %.val16.i.2 = load i8, ptr %i.aw, align 1, !dbg !18813, !noalias !18795, !noundef !598
  %i.ax = sext i8 %.val16.i.2 to i16, !dbg !18814
  %i.ay = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18815
  %i.az = getelementptr i8, ptr %i.ay, i64 4, !dbg !18815
  store i16 %i.ax, ptr %i.az, align 2, !dbg !18816, !noalias !18799
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18812
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3, !dbg !18812
  %.val16.i.3 = load i8, ptr %i.bb, align 1, !dbg !18813, !noalias !18795, !noundef !598
  %i.bc = sext i8 %.val16.i.3 to i16, !dbg !18814
  %i.bd = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !18815
  %i.be = getelementptr i8, ptr %i.bd, i64 6, !dbg !18815
  store i16 %i.bc, ptr %i.be, align 2, !dbg !18816, !noalias !18799
  %i.bf = add i64 %i.am, 4, !dbg !18818           ; 2 uses
  %i.bg = add nuw i64 %.sroa.01.0.i, 4, !dbg !18819 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.g, !dbg !18817
  br i1 %i.bh, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18817, !llvm.loop !18789

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bf, %vec.epilog.scalar.ph ], !dbg !18820
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18820, !noalias !18795
  ret void, !dbg !18821
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18822 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18885, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18885
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18885, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18886 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18886
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18886 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18886
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18886 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18887
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18888

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18889    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18889    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18889      ; 2 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18890        ; 3 uses
  %i.h = sub i64 %i.f, %i.e, !dbg !18890
  %i.i = icmp ugt i64 %i.h, -4, !dbg !18890
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18890

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -4, !dbg !18890
  br label %bb.c, !dbg !18890

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !18891 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !18892 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18891
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18893, !noalias !18877, !noundef !598
  %i.l = sext i8 %.val16.i to i64, !dbg !18894
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18895
  store i64 %i.l, ptr %i.m, align 8, !dbg !18896, !noalias !18879
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18891
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !18891
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !18893, !noalias !18877, !noundef !598
  %i.p = sext i8 %.val16.i.1 to i64, !dbg !18894
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18895
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !18895
  store i64 %i.p, ptr %i.r, align 8, !dbg !18896, !noalias !18879
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18891
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2, !dbg !18891
  %.val16.i.2 = load i8, ptr %i.t, align 1, !dbg !18893, !noalias !18877, !noundef !598
  %i.u = sext i8 %.val16.i.2 to i64, !dbg !18894
  %i.v = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18895
  %i.w = getelementptr i8, ptr %i.v, i64 16, !dbg !18895
  store i64 %i.u, ptr %i.w, align 8, !dbg !18896, !noalias !18879
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18891
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !18891
  %.val16.i.3 = load i8, ptr %i.y, align 1, !dbg !18893, !noalias !18877, !noundef !598
  %i.z = sext i8 %.val16.i.3 to i64, !dbg !18894
  %i.aa = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18895
  %i.ab = getelementptr i8, ptr %i.aa, i64 24, !dbg !18895
  store i64 %i.z, ptr %i.ab, align 8, !dbg !18896, !noalias !18879
  %i.ac = add i64 %i.j, 4, !dbg !18897            ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4, !dbg !18898 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !18899  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !18899
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !18899

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18899
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !18899

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !18899
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !18899
  br label %bb.d, !dbg !18899

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ], !dbg !18891 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ], !dbg !18892 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !18891
  %.val16.i.epil = load i8, ptr %i.af, align 1, !dbg !18893, !noalias !18877, !noundef !598
  %i.ag = sext i8 %.val16.i.epil to i64, !dbg !18894
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18895
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !18896, !noalias !18879
  %i.ai = add i64 %i.ae, 1, !dbg !18897           ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !18898
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !18899 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !18899
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.d, !dbg !18899, !llvm.loop !18872

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ], !dbg !18900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18900, !noalias !18877
  ret void, !dbg !18901
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18902 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18965, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18965
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18965, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18966 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18966
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18966 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18966
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18966 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18967
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRayuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18968

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18969    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18969    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18969      ; 2 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18970        ; 3 uses
  %i.h = sub i64 %i.f, %i.e, !dbg !18970
  %i.i = icmp ugt i64 %i.h, -4, !dbg !18970
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18970

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -4, !dbg !18970
  br label %bb.c, !dbg !18970

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !18971 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !18972 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18971
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18973, !noalias !18957, !noundef !598
  %i.l = sext i8 %.val16.i to i64, !dbg !18974
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18975
  store i64 %i.l, ptr %i.m, align 8, !dbg !18976, !noalias !18959
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %.val16.i = load float, ptr %i.k, align 4, !dbg !21072, !noalias !21057, !noundef !598
  %i.l = tail call noundef i64 @llvm.fptoui.sat.i64.f32(float %.val16.i), !dbg !21073
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21074
  store i64 %i.l, ptr %i.m, align 8, !dbg !21075, !noalias !21058
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !21070
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !21070
  %.val16.i.1 = load float, ptr %i.o, align 4, !dbg !21072, !noalias !21057, !noundef !598
  %i.p = tail call noundef i64 @llvm.fptoui.sat.i64.f32(float %.val16.i.1), !dbg !21073
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21074
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !21074
  store i64 %i.p, ptr %i.r, align 8, !dbg !21075, !noalias !21058
  %i.s = add i64 %i.j, 2, !dbg !21076             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !21077 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !21078  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21078
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21078

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 4, !dbg !21078
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !21078
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21078

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !21078
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21078
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !21070
  %.val16.i.epil = load float, ptr %i.v, align 4, !dbg !21072, !noalias !21057, !noundef !598
  %i.w = tail call noundef i64 @llvm.fptoui.sat.i64.f32(float %.val16.i.epil), !dbg !21073
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !21074
  store i64 %i.w, ptr %i.x, align 8, !dbg !21075, !noalias !21058
  %i.y = add i64 %.epil.init, 1, !dbg !21076
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !21079
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21079, !noalias !21057
  ret void, !dbg !21080
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21081 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21178, !nonnull !598, !noundef !598 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21178
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21178, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21179 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21179
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21179 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21179
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !21179
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21180
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21181

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21182
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21182
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21182
  br label %bb.c, !dbg !21183

bb.c:                                             ; preds = %bb.n, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bc, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bd, %bb.n ], !dbg !21184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21164), !dbg !21186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21165), !dbg !21187
  %i.i = load i8, ptr %i.h, align 1, !dbg !21188, !alias.scope !21166, !noalias !21167, !noundef !598
  %i.j = uitofp i8 %i.i to float, !dbg !21189     ; 2 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !21190, !noalias !21170 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !21191
  br i1 %i.l, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !21191, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.o, !dbg !21192, !noalias !21171

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.n = and i128 %i.m, 36028797018963968, !dbg !21193
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.n, 0, !dbg !21193
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !21194

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = and i64 %i.k, 36028797018963968, !dbg !21195
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0, !dbg !21195
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !21194

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.p = bitcast float %i.j to i32, !dbg !21196   ; 7 uses
  %i.q = and i32 %i.p, 2139095040, !dbg !21197    ; 3 uses
  %i.r = and i32 %i.p, 8388607, !dbg !21198       ; 4 uses
  %i.s = icmp eq i32 %i.q, 2139095040, !dbg !21199
  br i1 %i.s, label %bb.e, label %bb.f, !dbg !21199

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 0, !dbg !21200
  %..i.i.i.i.i.i.i = select i1 %i.t, i32 0, i32 512, !dbg !21201
  %i.u = lshr i32 %i.r, 13, !dbg !21202
  %i.v = or i32 %..i.i.i.i.i.i.i, %i.u, !dbg !21203
  %i.w = trunc nuw nsw i32 %i.v to i16, !dbg !21203
  %i.x = or disjoint i16 %i.w, 31744, !dbg !21203
  br label %bb.n, !dbg !21204

bb.f:                                             ; preds = %bb.d
  %i.y = lshr i32 %i.p, 23, !dbg !21205           ; 2 uses
  %i.z = icmp samesign ugt i32 %i.q, 1191182336, !dbg !21206
  br i1 %i.z, label %bb.n, label %bb.g, !dbg !21206

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp samesign ult i32 %i.p, 947912704, !dbg !21207
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !21207

bb.h:                                             ; preds = %bb.g
  %i.ab = lshr exact i32 %i.q, 13, !dbg !21208
  %i.ac = add nuw nsw i32 %i.ab, 16384, !dbg !21208
  %i.ad = lshr i32 %i.r, 13, !dbg !21209
  %i.ae = and i32 %i.p, 4096, !dbg !21210
  %i.af = icmp ne i32 %i.ae, 0, !dbg !21210
  %i.ag = and i32 %i.p, 12287
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.af, %i.ah, !dbg !21211
  %i.ai = or disjoint i32 %i.ac, %i.ad, !dbg !21211
  %i.aj = trunc i32 %i.ai to i16, !dbg !21211
  %i.ak = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !21210
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.aj, %i.ak, !dbg !21210
  br label %bb.n, !dbg !21210

bb.i:                                             ; preds = %bb.g
  %i.al = icmp samesign ult i32 %i.p, 855638016, !dbg !21212
  br i1 %i.al, label %bb.n, label %bb.j, !dbg !21212

bb.j:                                             ; preds = %bb.i
  %i.am = sub nsw i32 126, %i.y, !dbg !21212
  %i.an = or disjoint i32 %i.r, 8388608, !dbg !21213 ; 3 uses
  %i.ao = lshr i32 %i.an, %i.am, !dbg !21214      ; 2 uses
  %i.ap = sub nsw i32 29, %i.y, !dbg !21215
  %i.aq = and i32 %i.ap, 31, !dbg !21216          ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq, !dbg !21216
  %i.as = and i32 %i.ar, %i.an, !dbg !21217
  %i.at = icmp eq i32 %i.as, 0, !dbg !21217
  br i1 %i.at, label %bb.l, label %bb.k, !dbg !21217

bb.k:                                             ; preds = %bb.j
  %i.au = shl i32 3, %i.aq, !dbg !21218
  %i.av = add nuw i32 %i.au, 16777215, !dbg !21219
  %i.aw = and i32 %i.av, %i.an, !dbg !21220
  %i.ax = icmp ne i32 %i.aw, 0, !dbg !21220
  %i.ay = zext i1 %i.ax to i32, !dbg !21220
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i32 %i.ao, %i.ay, !dbg !21220
  br label %bb.l, !dbg !21220

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.j ], [ %spec.select.i.i.i.i.i.i.i, %bb.k ], !dbg !21221
  %i.az = trunc nuw i32 %.sroa.03.0.i.i.i.i.i.i.i to i16, !dbg !21222
  br label %bb.n, !dbg !21223

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.ba = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.j), !dbg !21224
  br label %bb.n, !dbg !21224

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.ba, %bb.m ], [ %i.x, %bb.e ], [ %spec.select7.i.i.i.i.i.i.i, %bb.h ], [ 31744, %bb.f ], [ %i.az, %bb.l ], [ 0, %bb.i ], !dbg !21225
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !21226
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bb, align 2, !dbg !21227, !noalias !21172
  %i.bc = add i64 %.val15.i, 1, !dbg !21228       ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 1, !dbg !21229 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.g, !dbg !21230
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !21230

bb.o:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !21231, !noalias !21171
  resume { ptr, i32 } %i.bf, !dbg !21232

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.n, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bc, %bb.n ], !dbg !21233
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21233, !noalias !21171
  ret void, !dbg !21234
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21235 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21294, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21294
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21294, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21295 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21295
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21295 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21295
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21295 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !21296
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21296
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21297

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21298    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21298    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21298      ; 9 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !21299
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21299

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !21299
  %i.i = sub i64 %i.f, %i.h, !dbg !21299
  %diff.check = icmp ugt i64 %i.i, -32, !dbg !21299
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21300

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.g, 32, !dbg !21299
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !21299

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 28
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21299

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21300 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21301 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !21302
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !21302, !noalias !21287
  %wide.load4 = load <16 x i8>, ptr %i.n, align 1, !dbg !21302, !noalias !21287
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !21303 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !21304
  store <16 x i8> %wide.load, ptr %i.o, align 1, !dbg !21304, !noalias !21288
  store <16 x i8> %wide.load4, ptr %i.p, align 1, !dbg !21304, !noalias !21288
  %index.next = add nuw i64 %index, 32, !dbg !21300 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !21305
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !21305, !llvm.loop !21275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21305
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21305

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21300
  %n.vec5 = and i64 %i.g, -4                      ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !21300 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index6, !dbg !21301
  %wide.load7 = load <4 x i8>, ptr %i.t, align 1, !dbg !21302, !noalias !21287
  %i.u = getelementptr i8, ptr %i.s, i64 %index6, !dbg !21303
  store <4 x i8> %wide.load7, ptr %i.u, align 1, !dbg !21304, !noalias !21288
  %index.next8 = add nuw i64 %index6, 4, !dbg !21300 ; 2 uses
  %i.v = icmp eq i64 %index.next8, %n.vec5, !dbg !21305
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21305, !llvm.loop !21276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.g, %n.vec5, !dbg !21305
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21305

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21305        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21305
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21305

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.w = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21301 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21300 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21301
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !21303
  store i8 %.val16.i.prol, ptr %i.y, align 1, !dbg !21304, !noalias !21288
  %i.z = add i64 %i.w, 1, !dbg !21306             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21307 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21305 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21305
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21305, !llvm.loop !21281

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21305
  %i.ac = add i64 %i.ab, %i.f, !dbg !21305
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !21305
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21305

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ae = phi i64 [ %i.at, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21301 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21300 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21303
  store i8 %.val16.i, ptr %i.ag, align 1, !dbg !21304, !noalias !21288
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !21301
  %.val16.i.1 = load i8, ptr %i.ai, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.aj = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21303
  %i.ak = getelementptr i8, ptr %i.aj, i64 1, !dbg !21303
  store i8 %.val16.i.1, ptr %i.ak, align 1, !dbg !21304, !noalias !21288
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2, !dbg !21301
  %.val16.i.2 = load i8, ptr %i.am, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.an = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21303
  %i.ao = getelementptr i8, ptr %i.an, i64 2, !dbg !21303
  store i8 %.val16.i.2, ptr %i.ao, align 1, !dbg !21304, !noalias !21288
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3, !dbg !21301
  %.val16.i.3 = load i8, ptr %i.aq, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.ar = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21303
  %i.as = getelementptr i8, ptr %i.ar, i64 3, !dbg !21303
  store i8 %.val16.i.3, ptr %i.as, align 1, !dbg !21304, !noalias !21288
  %i.at = add i64 %i.ae, 4, !dbg !21306           ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4, !dbg !21307 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.g, !dbg !21305
  br i1 %i.av, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21305, !llvm.loop !21282

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.at, %vec.epilog.scalar.ph ], !dbg !21308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21308, !noalias !21287
  ret void, !dbg !21309
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21310 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21381, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21381
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21381, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21382 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21382
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21382 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21382
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21382 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21383
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21384

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21385    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21385    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21385      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 10, !dbg !21386
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !21386

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 3, !dbg !21386
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21386
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21386
  %i.k = sub i64 %i.j, %i.f, !dbg !21386
  %i.l = shl i64 %i.k, 3, !dbg !21386
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21386
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21386
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21386
  %found.conflict = and i1 %bound0, %bound1, !dbg !21386
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !21387

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21387

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21387 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21388 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2, !dbg !21389
  %wide.load = load <2 x i8>, ptr %i.p, align 1, !dbg !21389, !alias.scope !21370, !noalias !21371
  %wide.load4 = load <2 x i8>, ptr %i.q, align 1, !dbg !21389, !alias.scope !21370, !noalias !21371
  %i.r = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !21390
  %i.s = uitofp <2 x i8> %wide.load4 to <2 x double>, !dbg !21390
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !21391 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !21392
  store <2 x double> %i.r, ptr %i.t, align 8, !dbg !21392, !alias.scope !21373, !noalias !21374
  store <2 x double> %i.s, ptr %i.u, align 8, !dbg !21392, !alias.scope !21373, !noalias !21374
  %index.next = add nuw i64 %index, 4, !dbg !21387 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !21393
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !21393, !llvm.loop !21359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21393
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21393

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21393        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21393
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21393

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !21388 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !21387 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21388
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.y = uitofp i8 %.val16.i.prol to double, !dbg !21390
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !21391
  store double %i.y, ptr %i.z, align 8, !dbg !21392, !noalias !21375
  %i.aa = add i64 %i.w, 1, !dbg !21394            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21395 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21393 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21393
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21393, !llvm.loop !21364

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21393
  %i.ad = add i64 %i.ac, %i.f, !dbg !21393
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !21393
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21393

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21388 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21387 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.ah = uitofp i8 %.val16.i to double, !dbg !21390
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21391
  store double %i.ah, ptr %i.ai, align 8, !dbg !21392, !noalias !21375
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !21388
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.al = uitofp i8 %.val16.i.1 to double, !dbg !21390
  %i.am = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21391
  %i.an = getelementptr i8, ptr %i.am, i64 8, !dbg !21391
  store double %i.al, ptr %i.an, align 8, !dbg !21392, !noalias !21375
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !21388
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.aq = uitofp i8 %.val16.i.2 to double, !dbg !21390
  %i.ar = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21391
  %i.as = getelementptr i8, ptr %i.ar, i64 16, !dbg !21391
  store double %i.aq, ptr %i.as, align 8, !dbg !21392, !noalias !21375
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !21388
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.av = uitofp i8 %.val16.i.3 to double, !dbg !21390
  %i.aw = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21391
  %i.ax = getelementptr i8, ptr %i.aw, i64 24, !dbg !21391
  store double %i.av, ptr %i.ax, align 8, !dbg !21392, !noalias !21375
  %i.ay = add i64 %i.af, 4, !dbg !21394           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !21395 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !21393
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21393, !llvm.loop !21365

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !21396
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21396, !noalias !21371
  ret void, !dbg !21397
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21398 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21468, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21468
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21468, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21469 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21469
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21469 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21469
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21469 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21470
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21471

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21472    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21472    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21472      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 12, !dbg !21473
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !21473

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !21473
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21473
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21473
  %i.k = sub i64 %i.j, %i.f, !dbg !21473
  %i.l = shl i64 %i.k, 2, !dbg !21473
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21473
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21473
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21473
  %found.conflict = and i1 %bound0, %bound1, !dbg !21473
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !21474

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21474

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21474 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21475 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !21476
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !21476, !alias.scope !21458, !noalias !21459
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !21476, !alias.scope !21458, !noalias !21459
  %i.r = uitofp <4 x i8> %wide.load to <4 x float>, !dbg !21477
  %i.s = uitofp <4 x i8> %wide.load4 to <4 x float>, !dbg !21477
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !21478 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !21479
  store <4 x float> %i.r, ptr %i.t, align 4, !dbg !21479, !alias.scope !21460, !noalias !21461
  store <4 x float> %i.s, ptr %i.u, align 4, !dbg !21479, !alias.scope !21460, !noalias !21461
  %index.next = add nuw i64 %index, 8, !dbg !21474 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !21480
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !21480, !llvm.loop !21447

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21480
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21480

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21480        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21480
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21480

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !21475 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !21474 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21475
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !21476, !noalias !21459, !noundef !598
  %i.y = uitofp i8 %.val16.i.prol to float, !dbg !21477
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !21478
  store float %i.y, ptr %i.z, align 4, !dbg !21479, !noalias !21462
  %i.aa = add i64 %i.w, 1, !dbg !21481            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21482 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21480 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21480
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21480, !llvm.loop !21452

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21480
  %i.ad = add i64 %i.ac, %i.f, !dbg !21480
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !21480
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21480

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21475 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21474 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21475
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !21476, !noalias !21459, !noundef !598
  %i.ah = uitofp i8 %.val16.i to float, !dbg !21477
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21478
  store float %i.ah, ptr %i.ai, align 4, !dbg !21479, !noalias !21462
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21475
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !21475
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !21476, !noalias !21459, !noundef !598
  %i.al = uitofp i8 %.val16.i.1 to float, !dbg !21477
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21478
  %i.an = getelementptr i8, ptr %i.am, i64 4, !dbg !21478
  store float %i.al, ptr %i.an, align 4, !dbg !21479, !noalias !21462
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21475
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !21475
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !21476, !noalias !21459, !noundef !598
  %i.aq = uitofp i8 %.val16.i.2 to float, !dbg !21477
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21478
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !21478
  store float %i.aq, ptr %i.as, align 4, !dbg !21479, !noalias !21462
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21475
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !21475
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !21476, !noalias !21459, !noundef !598
  %i.av = uitofp i8 %.val16.i.3 to float, !dbg !21477
  %i.aw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21478
  %i.ax = getelementptr i8, ptr %i.aw, i64 12, !dbg !21478
  store float %i.av, ptr %i.ax, align 4, !dbg !21479, !noalias !21462
  %i.ay = add i64 %i.af, 4, !dbg !21481           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !21482 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !21480
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21480, !llvm.loop !21453

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !21483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21483, !noalias !21459
  ret void, !dbg !21484
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21485 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21556, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21556
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21556, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21557 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21557
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21557 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21557
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21557 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21558
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21559

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21560    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21560    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21560      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 16, !dbg !21561
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !21561

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !21561
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21561
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21561
  %i.k = sub i64 %i.j, %i.f, !dbg !21561
  %i.l = shl i64 %i.k, 2, !dbg !21561
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21561
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21561
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21561
  %found.conflict = and i1 %bound0, %bound1, !dbg !21561
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !21562

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21562

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21562 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21563 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !21564
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !21564, !alias.scope !21545, !noalias !21546
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !21564, !alias.scope !21545, !noalias !21546
  %i.r = zext <4 x i8> %wide.load to <4 x i32>, !dbg !21565
  %i.s = zext <4 x i8> %wide.load4 to <4 x i32>, !dbg !21565
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !21566 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !21567
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !21567, !alias.scope !21548, !noalias !21549
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !21567, !alias.scope !21548, !noalias !21549
  %index.next = add nuw i64 %index, 8, !dbg !21562 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !21568
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !21568, !llvm.loop !21534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21568
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21568

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21568        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21568
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21568

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !21563 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !21562 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21563
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !21564, !noalias !21546, !noundef !598
  %i.y = zext i8 %.val16.i.prol to i32, !dbg !21565
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !21566
  store i32 %i.y, ptr %i.z, align 4, !dbg !21567, !noalias !21550
  %i.aa = add i64 %i.w, 1, !dbg !21569            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21570 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21568 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21568
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21568, !llvm.loop !21539

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21568
  %i.ad = add i64 %i.ac, %i.f, !dbg !21568
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !21568
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21568

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21563 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21562 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21563
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !21564, !noalias !21546, !noundef !598
  %i.ah = zext i8 %.val16.i to i32, !dbg !21565
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21566
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !21567, !noalias !21550
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21563
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !21563
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !21564, !noalias !21546, !noundef !598
  %i.al = zext i8 %.val16.i.1 to i32, !dbg !21565
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21566
  %i.an = getelementptr i8, ptr %i.am, i64 4, !dbg !21566
  store i32 %i.al, ptr %i.an, align 4, !dbg !21567, !noalias !21550
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21563
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !21563
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !21564, !noalias !21546, !noundef !598
  %i.aq = zext i8 %.val16.i.2 to i32, !dbg !21565
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21566
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !21566
  store i32 %i.aq, ptr %i.as, align 4, !dbg !21567, !noalias !21550
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21563
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !21563
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !21564, !noalias !21546, !noundef !598
  %i.av = zext i8 %.val16.i.3 to i32, !dbg !21565
  %i.aw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21566
  %i.ax = getelementptr i8, ptr %i.aw, i64 12, !dbg !21566
  store i32 %i.av, ptr %i.ax, align 4, !dbg !21567, !noalias !21550
  %i.ay = add i64 %i.af, 4, !dbg !21569           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !21570 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !21568
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21568, !llvm.loop !21540

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !21571
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21571, !noalias !21546
  ret void, !dbg !21572
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecmE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21573 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21644, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21644
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21644, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21645 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21645
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21645 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21645
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21645 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21646
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21647

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21648    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21648    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21648      ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 16, !dbg !21649
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !21649

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !21649
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21649
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21649
  %i.k = sub i64 %i.j, %i.f, !dbg !21649
  %i.l = shl i64 %i.k, 2, !dbg !21649
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21649
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21649
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21649
  %found.conflict = and i1 %bound0, %bound1, !dbg !21649
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !21650

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21650

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21650 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21651 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !21652
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !21652, !alias.scope !21633, !noalias !21634
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !21652, !alias.scope !21633, !noalias !21634
  %i.r = zext <4 x i8> %wide.load to <4 x i32>, !dbg !21653
  %i.s = zext <4 x i8> %wide.load4 to <4 x i32>, !dbg !21653
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !21654 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !21655
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !21655, !alias.scope !21636, !noalias !21637
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !21655, !alias.scope !21636, !noalias !21637
  %index.next = add nuw i64 %index, 8, !dbg !21650 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !21656
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !21656, !llvm.loop !21622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21656
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21656

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21656        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21656
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21656

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !21651 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !21650 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21651
  %.val16.i.prol = load i8, ptr %i.x, align 1, !dbg !21652, !noalias !21634, !noundef !598
  %i.y = zext i8 %.val16.i.prol to i32, !dbg !21653
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !21654
  store i32 %i.y, ptr %i.z, align 4, !dbg !21655, !noalias !21638
  %i.aa = add i64 %i.w, 1, !dbg !21657            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21658 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21656 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21656
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21656, !llvm.loop !21627

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21656
  %i.ad = add i64 %i.ac, %i.f, !dbg !21656
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !21656
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21656

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21651 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21650 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21651
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !21652, !noalias !21634, !noundef !598
  %i.ah = zext i8 %.val16.i to i32, !dbg !21653
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21654
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !21655, !noalias !21638
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21651
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !21651
  %.val16.i.1 = load i8, ptr %i.ak, align 1, !dbg !21652, !noalias !21634, !noundef !598
  %i.al = zext i8 %.val16.i.1 to i32, !dbg !21653
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21654
  %i.an = getelementptr i8, ptr %i.am, i64 4, !dbg !21654
  store i32 %i.al, ptr %i.an, align 4, !dbg !21655, !noalias !21638
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21651
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2, !dbg !21651
  %.val16.i.2 = load i8, ptr %i.ap, align 1, !dbg !21652, !noalias !21634, !noundef !598
  %i.aq = zext i8 %.val16.i.2 to i32, !dbg !21653
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21654
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !21654
  store i32 %i.aq, ptr %i.as, align 4, !dbg !21655, !noalias !21638
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21651
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3, !dbg !21651
  %.val16.i.3 = load i8, ptr %i.au, align 1, !dbg !21652, !noalias !21634, !noundef !598
  %i.av = zext i8 %.val16.i.3 to i32, !dbg !21653
  %i.aw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21654
  %i.ax = getelementptr i8, ptr %i.aw, i64 12, !dbg !21654
  store i32 %i.av, ptr %i.ax, align 4, !dbg !21655, !noalias !21638
  %i.ay = add i64 %i.af, 4, !dbg !21657           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 4, !dbg !21658 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.g, !dbg !21656
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21656, !llvm.loop !21628

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !21659
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21659, !noalias !21634
  ret void, !dbg !21660
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21661 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21723, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21723
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21723, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21724 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21724
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21724 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21724
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21724 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21725
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21726

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21727    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21727    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21727      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !21728
  %i.h = add i64 %i.e, -1, !dbg !21728
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !21728
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !21728

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !21728
  br label %bb.c, !dbg !21728

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !21729 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !21730 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21729
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !21731, !noalias !21715, !noundef !598
  %i.l = zext i8 %.val16.i to i128, !dbg !21732
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21733
  store i128 %i.l, ptr %i.m, align 16, !dbg !21734, !noalias !21717
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21729
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !21729
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !21731, !noalias !21715, !noundef !598
  %i.p = zext i8 %.val16.i.1 to i128, !dbg !21732
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21733
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !21733
  store i128 %i.p, ptr %i.r, align 16, !dbg !21734, !noalias !21717
  %i.s = add i64 %i.j, 2, !dbg !21735             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !21736 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !21737  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21737
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21737

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21737
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21737

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !21737
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21737
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !21729
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !21731, !noalias !21715, !noundef !598
  %i.v = zext i8 %.val16.i.epil to i128, !dbg !21732
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !21733
  store i128 %i.v, ptr %i.w, align 16, !dbg !21734, !noalias !21717
  %i.x = add i64 %.epil.init, 1, !dbg !21735
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !21738
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21738, !noalias !21715
  ret void, !dbg !21739
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21740 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21802, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21802
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21802, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21803 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21803
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21803 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21803
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21803 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21804
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21805

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21806    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21806    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21806      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !21807
  %i.h = add i64 %i.e, -1, !dbg !21807
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !21807
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !21807

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !21807
  br label %bb.c, !dbg !21807

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !21808 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !21809 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21808
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !21810, !noalias !21794, !noundef !598
  %i.l = zext i8 %.val16.i to i128, !dbg !21811
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21812
  store i128 %i.l, ptr %i.m, align 16, !dbg !21813, !noalias !21796
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21808
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !21808
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !21810, !noalias !21794, !noundef !598
  %i.p = zext i8 %.val16.i.1 to i128, !dbg !21811
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21812
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !21812
  store i128 %i.p, ptr %i.r, align 16, !dbg !21813, !noalias !21796
  %i.s = add i64 %i.j, 2, !dbg !21814             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !21815 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !21816  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21816
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21816

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21816
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21816

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !21816
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21816
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !21808
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !21810, !noalias !21794, !noundef !598
  %i.v = zext i8 %.val16.i.epil to i128, !dbg !21811
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !21812
  store i128 %i.v, ptr %i.w, align 16, !dbg !21813, !noalias !21796
  %i.x = add i64 %.epil.init, 1, !dbg !21814
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !21817
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21817, !noalias !21794
  ret void, !dbg !21818
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecsE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21819 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21891, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21891
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21891, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21892 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21892
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21892 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21892
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21892 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21893
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21894

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21895    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21895    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21895      ; 9 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !21896
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21896

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !21896
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21896
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21896
  %i.k = sub i64 %i.j, %i.f, !dbg !21896
  %i.l = shl i64 %i.k, 1, !dbg !21896
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21896
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21896
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21896
  %found.conflict = and i1 %bound0, %bound1, !dbg !21896
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21897

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !21896
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !21896

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21896

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21897 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21898 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !21899
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !21899, !alias.scope !21880, !noalias !21881
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !21899, !alias.scope !21880, !noalias !21881
  %i.s = zext <8 x i8> %wide.load to <8 x i16>, !dbg !21900
  %i.t = zext <8 x i8> %wide.load5 to <8 x i16>, !dbg !21900
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !21901 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !21902
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !21902, !alias.scope !21883, !noalias !21884
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !21902, !alias.scope !21883, !noalias !21884
  %index.next = add nuw i64 %index, 16, !dbg !21897 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !21903
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !21903, !llvm.loop !21868

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21903
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21903

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21897
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21897 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !21898
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !21899, !alias.scope !21880, !noalias !21881
  %i.aa = zext <4 x i8> %wide.load8 to <4 x i16>, !dbg !21900
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !21901
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !21902, !alias.scope !21883, !noalias !21884
  %index.next9 = add nuw i64 %index7, 4, !dbg !21897 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !21903
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21903, !llvm.loop !21869

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !21903
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21903

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21903        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21903
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21903

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ad = phi i64 [ %i.ah, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21898 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21897 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21898
  %.val16.i.prol = load i8, ptr %i.ae, align 1, !dbg !21899, !noalias !21881, !noundef !598
  %i.af = zext i8 %.val16.i.prol to i16, !dbg !21900
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !21901
  store i16 %i.af, ptr %i.ag, align 2, !dbg !21902, !noalias !21885
  %i.ah = add i64 %i.ad, 1, !dbg !21904           ; 3 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21905 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21903 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21903
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21903, !llvm.loop !21874

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21903
  %i.ak = add i64 %i.aj, %i.f, !dbg !21903
  %i.al = icmp ugt i64 %i.ak, -4, !dbg !21903
  br i1 %i.al, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21903

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.am = phi i64 [ %i.bf, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21898 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21897 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21898
  %.val16.i = load i8, ptr %i.an, align 1, !dbg !21899, !noalias !21881, !noundef !598
  %i.ao = zext i8 %.val16.i to i16, !dbg !21900
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21901
  store i16 %i.ao, ptr %i.ap, align 2, !dbg !21902, !noalias !21885
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21898
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !21898
  %.val16.i.1 = load i8, ptr %i.ar, align 1, !dbg !21899, !noalias !21881, !noundef !598
  %i.as = zext i8 %.val16.i.1 to i16, !dbg !21900
  %i.at = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21901
  %i.au = getelementptr i8, ptr %i.at, i64 2, !dbg !21901
  store i16 %i.as, ptr %i.au, align 2, !dbg !21902, !noalias !21885
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21898
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2, !dbg !21898
  %.val16.i.2 = load i8, ptr %i.aw, align 1, !dbg !21899, !noalias !21881, !noundef !598
  %i.ax = zext i8 %.val16.i.2 to i16, !dbg !21900
  %i.ay = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21901
  %i.az = getelementptr i8, ptr %i.ay, i64 4, !dbg !21901
  store i16 %i.ax, ptr %i.az, align 2, !dbg !21902, !noalias !21885
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21898
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3, !dbg !21898
  %.val16.i.3 = load i8, ptr %i.bb, align 1, !dbg !21899, !noalias !21881, !noundef !598
  %i.bc = zext i8 %.val16.i.3 to i16, !dbg !21900
  %i.bd = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21901
  %i.be = getelementptr i8, ptr %i.bd, i64 6, !dbg !21901
  store i16 %i.bc, ptr %i.be, align 2, !dbg !21902, !noalias !21885
  %i.bf = add i64 %i.am, 4, !dbg !21904           ; 2 uses
  %i.bg = add nuw i64 %.sroa.01.0.i, 4, !dbg !21905 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.g, !dbg !21903
  br i1 %i.bh, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21903, !llvm.loop !21875

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bf, %vec.epilog.scalar.ph ], !dbg !21906
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21906, !noalias !21881
  ret void, !dbg !21907
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VectE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21908 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21980, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21980
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21980, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21981 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21981
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21981 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21981
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21981 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21982
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21983

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21984    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21984    ; 3 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21984      ; 9 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !21985
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21985

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !21985
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21985
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21985
  %i.k = sub i64 %i.j, %i.f, !dbg !21985
  %i.l = shl i64 %i.k, 1, !dbg !21985
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21985
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21985
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21985
  %found.conflict = and i1 %bound0, %bound1, !dbg !21985
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21986

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !21985
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !21985

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21985

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21986 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21987 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !21988
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !21988, !alias.scope !21969, !noalias !21970
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !21988, !alias.scope !21969, !noalias !21970
  %i.s = zext <8 x i8> %wide.load to <8 x i16>, !dbg !21989
  %i.t = zext <8 x i8> %wide.load5 to <8 x i16>, !dbg !21989
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !21990 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !21991
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !21991, !alias.scope !21972, !noalias !21973
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !21991, !alias.scope !21972, !noalias !21973
  %index.next = add nuw i64 %index, 16, !dbg !21986 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !21992
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !21992, !llvm.loop !21957

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21992
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21992

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21986
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21986 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !21987
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !21988, !alias.scope !21969, !noalias !21970
  %i.aa = zext <4 x i8> %wide.load8 to <4 x i16>, !dbg !21989
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !21990
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !21991, !alias.scope !21972, !noalias !21973
  %index.next9 = add nuw i64 %index7, 4, !dbg !21986 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !21992
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21992, !llvm.loop !21958

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !21992
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21992

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21992        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21992
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21992

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ad = phi i64 [ %i.ah, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21987 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21986 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21987
  %.val16.i.prol = load i8, ptr %i.ae, align 1, !dbg !21988, !noalias !21970, !noundef !598
  %i.af = zext i8 %.val16.i.prol to i16, !dbg !21989
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !21990
  store i16 %i.af, ptr %i.ag, align 2, !dbg !21991, !noalias !21974
  %i.ah = add i64 %i.ad, 1, !dbg !21993           ; 3 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21994 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21992 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21992
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21992, !llvm.loop !21963

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ah, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21992
  %i.ak = add i64 %i.aj, %i.f, !dbg !21992
  %i.al = icmp ugt i64 %i.ak, -4, !dbg !21992
  br i1 %i.al, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21992

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.am = phi i64 [ %i.bf, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21987 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21986 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21987
  %.val16.i = load i8, ptr %i.an, align 1, !dbg !21988, !noalias !21970, !noundef !598
  %i.ao = zext i8 %.val16.i to i16, !dbg !21989
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21990
  store i16 %i.ao, ptr %i.ap, align 2, !dbg !21991, !noalias !21974
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21987
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !21987
  %.val16.i.1 = load i8, ptr %i.ar, align 1, !dbg !21988, !noalias !21970, !noundef !598
  %i.as = zext i8 %.val16.i.1 to i16, !dbg !21989
  %i.at = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21990
  %i.au = getelementptr i8, ptr %i.at, i64 2, !dbg !21990
  store i16 %i.as, ptr %i.au, align 2, !dbg !21991, !noalias !21974
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21987
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2, !dbg !21987
  %.val16.i.2 = load i8, ptr %i.aw, align 1, !dbg !21988, !noalias !21970, !noundef !598
  %i.ax = zext i8 %.val16.i.2 to i16, !dbg !21989
  %i.ay = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21990
  %i.az = getelementptr i8, ptr %i.ay, i64 4, !dbg !21990
  store i16 %i.ax, ptr %i.az, align 2, !dbg !21991, !noalias !21974
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21987
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3, !dbg !21987
  %.val16.i.3 = load i8, ptr %i.bb, align 1, !dbg !21988, !noalias !21970, !noundef !598
  %i.bc = zext i8 %.val16.i.3 to i16, !dbg !21989
  %i.bd = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.am, !dbg !21990
  %i.be = getelementptr i8, ptr %i.bd, i64 6, !dbg !21990
  store i16 %i.bc, ptr %i.be, align 2, !dbg !21991, !noalias !21974
  %i.bf = add i64 %i.am, 4, !dbg !21993           ; 2 uses
  %i.bg = add nuw i64 %.sroa.01.0.i, 4, !dbg !21994 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.g, !dbg !21992
  br i1 %i.bh, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21992, !llvm.loop !21964

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bf, %vec.epilog.scalar.ph ], !dbg !21995
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21995, !noalias !21970
  ret void, !dbg !21996
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21997 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !22060, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22060
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22060, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !22061 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22061
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22061 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22061
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22061 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !22062
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !22063

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !22064    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !22064    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !22064      ; 2 uses
  %xtraiter = and i64 %i.g, 3, !dbg !22065        ; 3 uses
  %i.h = sub i64 %i.f, %i.e, !dbg !22065
  %i.i = icmp ugt i64 %i.h, -4, !dbg !22065
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !22065

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -4, !dbg !22065
  br label %bb.c, !dbg !22065

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !22066 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !22067 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !22066
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !22068, !noalias !22052, !noundef !598
  %i.l = zext i8 %.val16.i to i64, !dbg !22069
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22070
  store i64 %i.l, ptr %i.m, align 8, !dbg !22071, !noalias !22054
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !22066
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !22066
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !22068, !noalias !22052, !noundef !598
  %i.p = zext i8 %.val16.i.1 to i64, !dbg !22069
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22070
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !22070
  store i64 %i.p, ptr %i.r, align 8, !dbg !22071, !noalias !22054
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !22066
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2, !dbg !22066
  %.val16.i.2 = load i8, ptr %i.t, align 1, !dbg !22068, !noalias !22052, !noundef !598
  %i.u = zext i8 %.val16.i.2 to i64, !dbg !22069
  %i.v = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22070
  %i.w = getelementptr i8, ptr %i.v, i64 16, !dbg !22070
  store i64 %i.u, ptr %i.w, align 8, !dbg !22071, !noalias !22054
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !22066
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !22066
  %.val16.i.3 = load i8, ptr %i.y, align 1, !dbg !22068, !noalias !22052, !noundef !598
  %i.z = zext i8 %.val16.i.3 to i64, !dbg !22069
  %i.aa = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22070
  %i.ab = getelementptr i8, ptr %i.aa, i64 24, !dbg !22070
  store i64 %i.z, ptr %i.ab, align 8, !dbg !22071, !noalias !22054
  %i.ac = add i64 %i.j, 4, !dbg !22072            ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4, !dbg !22073 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !22074  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22074
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !22074

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22074
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !22074

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !22074
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !22074
  br label %bb.d, !dbg !22074

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ], !dbg !22066 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ], !dbg !22067 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !22066
  %.val16.i.epil = load i8, ptr %i.af, align 1, !dbg !22068, !noalias !22052, !noundef !598
  %i.ag = zext i8 %.val16.i.epil to i64, !dbg !22069
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !22070
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !22071, !noalias !22054
  %i.ai = add i64 %i.ae, 1, !dbg !22072           ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !22073
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !22074 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !22074
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.d, !dbg !22074, !llvm.loop !22047

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ], !dbg !22075
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !22075, !noalias !22052
  ret void, !dbg !22076
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !22077 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !22140, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22140
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22140, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !22141 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22141
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22141 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22141
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22141 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !22142
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !22143

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !22144    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !22144    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !22144      ; 2 uses
  %xtraiter = and i64 %i.g, 3, !dbg !22145        ; 3 uses
  %i.h = sub i64 %i.f, %i.e, !dbg !22145
  %i.i = icmp ugt i64 %i.h, -4, !dbg !22145
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !22145

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -4, !dbg !22145
  br label %bb.c, !dbg !22145

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !22146 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !22147 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !22146
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !22148, !noalias !22132, !noundef !598
  %i.l = zext i8 %.val16.i to i64, !dbg !22149
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22150
  store i64 %i.l, ptr %i.m, align 8, !dbg !22151, !noalias !22134
end_hunk_1
