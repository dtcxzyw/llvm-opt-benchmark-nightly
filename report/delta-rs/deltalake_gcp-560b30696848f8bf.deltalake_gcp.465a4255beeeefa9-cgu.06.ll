inline.NumInlined: 182
inline.NumDeleted: 88
begin_hunk_0_@_RNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4_15GcpConfigHelper5build:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %.thread129 unwind label %bb.f

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper15has_full_config0EB2K_.exit.i: ; preds = %_RNvMNtCs62u4JVtZyFF_13deltalake_gcp6configNtB2_13GcpCredential4keys.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper15has_full_config0EB2K_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread129 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper15has_full_config0EB2K_.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread136.loopexit:                              ; preds = %.lr.ph226
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

.thread136.loopexit.split-lp.loopexit:            ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i86
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

.thread136.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %._crit_edge179, %._crit_edge182, %bb.u, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEE5force0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

bb.g:                                             ; preds = %bb.bc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread132

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !309
  br i1 %i.ai, label %.loopexit164, label %bb.b

._crit_edge224:                                   ; preds = %bb.b, %bb.a
  %i.an = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.ao = load i64, ptr %i.w, align 8, !noundef !9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = icmp samesign eq i64 %i.ao, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.05.0176 = phi ptr [ %i.an, %.lr.ph ], [ %i.at, %bb.p ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.0176, i64 1 ; 2 uses
  %.sroa.05.0.val77 = load i8, ptr %.sroa.05.0176, align 1, !range !296, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !316
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !322
  %i.au = call noundef dereferenceable_or_null(1) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #19, !noalias !322 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.invoke, label %_RNvMNtCs62u4JVtZyFF_13deltalake_gcp6configNtB2_13GcpCredential4keys.exit.i82, !prof !29

_RNvMNtCs62u4JVtZyFF_13deltalake_gcp6configNtB2_13GcpCredential4keys.exit.i82: ; preds = %bb.i
  %i.aw = trunc nuw i8 %.sroa.05.0.val77 to i1
  %.210 = select i1 %i.aw, i8 21, i8 19
  store i8 %.210, ptr %i.au, align 1, !noalias !322
  store i64 1, ptr %i.c, align 8, !alias.scope !319, !noalias !316
  store ptr %i.au, ptr %i.ar, align 8, !alias.scope !319, !noalias !316
  store i64 1, ptr %i.as, align 8, !alias.scope !319, !noalias !316
  %i.ax = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.au)
          to label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper14has_any_config0EB2K_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs62u4JVtZyFF_13deltalake_gcp6configNtB2_13GcpCredential4keys.exit.i82
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.c) #16
          to label %.thread129 unwind label %bb.m

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper14has_any_config0EB2K_.exit.i: ; preds = %_RNvMNtCs62u4JVtZyFF_13deltalake_gcp6configNtB2_13GcpCredential4keys.exit.i82
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i86 unwind label %bb.k

bb.k:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper14has_any_config0EB2K_.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread129 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i86: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB2I_15GcpConfigHelper14has_any_config0EB2K_.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.thread136.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.05.0.val79 = load i8, ptr %.sroa.05.0176, align 1, !range !296, !noundef !9
  %i.bc = invoke fastcc noundef zeroext i1 @_RNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4_15GcpConfigHelper24has_full_config_with_env(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, i8 %.sroa.05.0.val79)
          to label %bb.q unwind label %.thread136.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.bd = icmp eq ptr %i.at, %i.ap
  br i1 %i.bd, label %._crit_edge.loopexit, label %bb.i

bb.q:                                             ; preds = %bb.o
  br i1 %i.bc, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %.sroa.05.0.val = load i8, ptr %.sroa.05.0176, align 1, !range !296, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !323
  %i.be = call noundef dereferenceable_or_null(1) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #19, !noalias !323 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.invoke, label %.lr.ph178, !prof !29

.lr.ph178:                                        ; preds = %bb.r
  %i.bg = trunc nuw i8 %.sroa.05.0.val to i1
  %.211 = select i1 %i.bg, i8 21, i8 19
  store i8 %.211, ptr %i.be, align 1, !noalias !323
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.be, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.bh, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.t

.loopexit153:                                     ; preds = %bb.t, %bb.w, %bb.aa, %bb.ad
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp154:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp154, %.loopexit153
  %lpad.phi157 = phi { ptr, i32 } [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.thread129 unwind label %bb.af

bb.t:                                             ; preds = %.lr.ph178, %bb.y
  %i.bl = phi ptr [ %i.be, %.lr.ph178 ], [ %i.bt, %bb.y ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !326
  %i.bn = load i8, ptr %i.bl, align 1, !range !25, !noalias !326, !noundef !9 ; 2 uses
  store i8 %i.bn, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef %i.bn)
          to label %bb.v unwind label %.loopexit153

._crit_edge179:                                   ; preds = %bb.y
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit97 unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit97: ; preds = %._crit_edge179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit164

.loopexit164:                                     ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit97, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs62u4JVtZyFF_13deltalake_gcp6config15CREDENTIAL_KEYS, i64 24) acquire, align 8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEE5force0ECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.u, !prof !329

bb.u:                                             ; preds = %.loopexit164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs62u4JVtZyFF_13deltalake_gcp6config15CREDENTIAL_KEYS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs62u4JVtZyFF_13deltalake_gcp6config15CREDENTIAL_KEYS, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc98 unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEE5force0ECs62u4JVtZyFF_13deltalake_gcp.exit

bb.v:                                             ; preds = %bb.t
  %i.bq = load i8, ptr %i.bi, align 8, !range !330, !noundef !9 ; 2 uses
  %.not67 = icmp eq i8 %i.bq, 23
  br i1 %.not67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.043.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %.sroa.544.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.br = invoke fastcc noundef align 8 ptr @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bj, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %i.s)
          to label %bb.z unwind label %.loopexit153 ; 2 uses

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %bb.x
  %i.bs = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !331, !nonnull !9, !noundef !9
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !331, !nonnull !9, !noundef !9 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bs
  br i1 %i.bu, label %._crit_edge179, label %bb.t

bb.z:                                             ; preds = %bb.w
  %.not68 = icmp eq ptr %i.br, null
  br i1 %.not68, label %bb.ab, label %bb.aa, !prof !29

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.ad unwind label %.loopexit153

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #20
          to label %bb.ac unwind label %.loopexit.split-lp154

bb.ac:                                            ; preds = %bb.bm, %bb.ar, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.bq, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.bv = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14insert_no_growCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.043.0.copyload, i64 noundef %.sroa.544.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ae unwind label %.loopexit153 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

bb.af:                                            ; preds = %.thread129, %.thread132, %bb.aj, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit115, %bb.be, %bb.av
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.u, align 8
  %.pre191 = load i64, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge224
  %i.bx = phi i64 [ %.pre191, %._crit_edge.loopexit ], [ 0, %._crit_edge224 ] ; 2 uses
  %i.by = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.an, %._crit_edge224 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  %i.ca = icmp samesign eq i64 %i.bx, 0
  br i1 %i.ca, label %._crit_edge227, label %.lr.ph226

bb.ag:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.0225, i64 1 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bz
  br i1 %i.cc, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %._crit_edge, %bb.ag
  %.sroa.016.0225 = phi ptr [ %i.cb, %bb.ag ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.016.0.val78 = load i8, ptr %.sroa.016.0225, align 1, !range !296, !noundef !9
  %i.cd = invoke fastcc noundef zeroext i1 @_RNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4_15GcpConfigHelper24has_full_config_with_env(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, i8 %.sroa.016.0.val78)
          to label %bb.ah unwind label %.thread136.loopexit

._crit_edge227:                                   ; preds = %bb.ag, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.cf, align 8
  br label %bb.au

bb.ah:                                            ; preds = %.lr.ph226
  br i1 %i.cd, label %bb.ai, label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %.sroa.016.0.val = load i8, ptr %.sroa.016.0225, align 1, !range !296, !noundef !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !333
  %i.cg = call noundef dereferenceable_or_null(1) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #19, !noalias !333 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.invoke, label %.lr.ph181, !prof !29

.invoke:                                          ; preds = %.lr.ph223, %bb.i, %bb.ai, %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #20
          to label %.cont unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph181:                                        ; preds = %bb.ai
  %i.ci = trunc nuw i8 %.sroa.016.0.val to i1
  %.212 = select i1 %i.ci, i8 21, i8 19
  store i8 %.212, ptr %i.cg, align 1, !noalias !333
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.cg, ptr %i.q, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.cj, ptr %.sroa.622.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ak

.loopexit145:                                     ; preds = %bb.ak, %bb.am, %bb.aq, %bb.as
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp146:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp146, %.loopexit145
  %lpad.phi149 = phi { ptr, i32 } [ %lpad.loopexit147, %.loopexit145 ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp146 ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.thread129 unwind label %bb.af

bb.ak:                                            ; preds = %.lr.ph181, %bb.ao
  %i.cn = phi ptr [ %i.cg, %.lr.ph181 ], [ %i.ct, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !336
  %i.cp = load i8, ptr %i.cn, align 1, !range !25, !noalias !336, !noundef !9 ; 2 uses
  store i8 %i.cp, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef %i.cp)
          to label %bb.al unwind label %.loopexit145

._crit_edge182:                                   ; preds = %bb.ao
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit108 unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEECs62u4JVtZyFF_13deltalake_gcp.exit108: ; preds = %._crit_edge182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit164

bb.al:                                            ; preds = %bb.ak
  %i.cq = load i8, ptr %i.ck, align 8, !range !330, !noundef !9 ; 2 uses
  %.not70 = icmp eq i8 %i.cq, 23
  br i1 %.not70, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.051.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %.sroa.552.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cr = invoke fastcc noundef align 8 ptr @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cl, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %i.p)
          to label %bb.ap unwind label %.loopexit145 ; 2 uses

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.at, %bb.an
  %i.cs = load ptr, ptr %.sroa.622.0..sroa_idx, align 8, !alias.scope !339, !nonnull !9, !noundef !9
  %i.ct = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !339, !nonnull !9, !noundef !9 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cs
  br i1 %i.cu, label %._crit_edge182, label %bb.ak

bb.ap:                                            ; preds = %bb.am
  %.not71 = icmp eq ptr %i.cr, null
  br i1 %.not71, label %bb.ar, label %bb.aq, !prof !29

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %bb.as unwind label %.loopexit145

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %bb.ac unwind label %.loopexit.split-lp146

bb.as:                                            ; preds = %bb.aq
end_hunk_0
