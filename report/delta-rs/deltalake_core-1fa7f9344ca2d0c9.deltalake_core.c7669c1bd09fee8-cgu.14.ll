inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators18round_ms_datetimesNvB2_13ceil_datetimeEB8_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !5951
  store i8 %i.dl, ptr %i.cv, align 8, !alias.scope !5948, !noalias !5951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5953
  %i.du = load i64, ptr %i.bw, align 8, !alias.scope !5960, !noalias !5963, !noundef !12 ; 3 uses
  %i.dv = load i64, ptr %i.ac, align 8, !range !378, !alias.scope !5960, !noalias !5963, !noundef !12
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.al unwind label %bb.aj, !noalias !5963

bb.aj:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.z) #52
          to label %.body.thread unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %i.dz = load ptr, ptr %i.bv, align 8, !alias.scope !5960, !noalias !5963, !nonnull !12, !noundef !12
  %i.ea = getelementptr inbounds nuw [96 x i8], ptr %i.dz, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  %i.eb = add i64 %i.du, 1
  store i64 %i.eb, ptr %i.bw, align 8, !alias.scope !5960, !noalias !5963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  call void @llvm.experimental.noalias.scope.decl(metadata !5968)
  %i.ec = load i64, ptr %i.dh, align 16, !range !3996, !alias.scope !5968, !noalias !5965, !noundef !12 ; 2 uses
  %i.ed = xor i64 %i.ec, -9223372036854775808
  %i.ee = icmp slt i64 %i.ec, 0
  %i.ef = select i1 %i.ee, i64 %i.ed, i64 16
  switch i64 %i.ef, label %bb.am [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 4, label %bb.ar
    i64 5, label %bb.as
    i64 6, label %bb.at
    i64 7, label %bb.au
    i64 8, label %bb.av
    i64 9, label %bb.aw
    i64 10, label %bb.ax
    i64 11, label %bb.ay
    i64 12, label %bb.az
    i64 13, label %bb.ba
    i64 14, label %bb.bb
    i64 15, label %bb.be
    i64 16, label %bb.bj
  ]

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ao:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ar:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.at:                                            ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg)
          to label %.noexc19 unwind label %.body.thread13.loopexit

.noexc19:                                         ; preds = %bb.at
  store i64 -9223372036854775802, ptr %i.x, align 16, !alias.scope !5965, !noalias !5968
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.au:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.av:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.aw:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ax:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ay:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %.noexc20 unwind label %.body.thread13.loopexit

.noexc20:                                         ; preds = %bb.ay
  store i64 -9223372036854775797, ptr %i.x, align 16, !alias.scope !5965, !noalias !5968
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.az:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ba:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ei) #55
          to label %.noexc21 unwind label %.body.thread13.loopexit

.noexc21:                                         ; preds = %bb.ba
  store i64 -9223372036854775795, ptr %i.x, align 16, !alias.scope !5965, !noalias !5968
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.bb:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5971
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ej)
          to label %.noexc22 unwind label %.body.thread13.loopexit

.noexc22:                                         ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5971
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek)
          to label %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.bc, !noalias !5975

bb.bc:                                            ; preds = %.noexc22
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.k) #52
          to label %.body.thread unwind label %bb.bd, !noalias !5975

bb.bd:                                            ; preds = %bb.bc
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !5975
  unreachable

_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !5976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !5968
  store i64 -9223372036854775794, ptr %i.x, align 16, !alias.scope !5965, !noalias !5968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.be:                                            ; preds = %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !5977)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5980
  call void @llvm.experimental.noalias.scope.decl(metadata !5982)
  call void @llvm.experimental.noalias.scope.decl(metadata !5985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5987
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.en)
          to label %.noexc26 unwind label %.body.thread13.loopexit

.noexc26:                                         ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5987
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %_RNvXs1k_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_9ArrayTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.bf, !noalias !5988, !inline_history !5989

bb.bf:                                            ; preds = %.noexc26
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #52
          to label %.body.thread unwind label %bb.bg, !noalias !5988, !inline_history !5989

bb.bg:                                            ; preds = %bb.bf
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !5988, !inline_history !5989
  unreachable

_RNvXs1k_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_9ArrayTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc26
  %i.er = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.es = load i8, ptr %i.er, align 16, !range !208, !alias.scope !5990, !noalias !5988, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !5991
  store i8 %i.es, ptr %i.db, align 8, !alias.scope !5982, !noalias !5991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5980
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.bh, !noalias !5992

bb.bh:                                            ; preds = %_RNvXs1k_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_9ArrayTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.i) #52
          to label %.body.thread unwind label %bb.bi, !noalias !5992

bb.bi:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !5992
  unreachable

_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1k_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_9ArrayTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !5993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !5968
  store i64 -9223372036854775793, ptr %i.x, align 16, !alias.scope !5965, !noalias !5968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.bj:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !5994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5997
  call void @llvm.experimental.noalias.scope.decl(metadata !5999)
  call void @llvm.experimental.noalias.scope.decl(metadata !6002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6004
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.dh)
          to label %.noexc27 unwind label %.body.thread13.loopexit

.noexc27:                                         ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6004
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %bb.bm unwind label %bb.bl, !noalias !6005, !inline_history !6006

bb.bk:                                            ; preds = %bb.bn, %bb.bl
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ez, %bb.bn ], [ %i.ex, %bb.bl ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %.body.thread unwind label %bb.bo, !noalias !6005, !inline_history !6006

bb.bl:                                            ; preds = %.noexc27
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bm:                                            ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6004
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.bn, !noalias !6005, !inline_history !6006

bb.bn:                                            ; preds = %bb.bm
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #52
          to label %bb.bk unwind label %bb.bo, !noalias !6005, !inline_history !6006

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !6005, !inline_history !6006
  unreachable

_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bm
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.fc = load i8, ptr %i.fb, align 8, !range !208, !alias.scope !6007, !noalias !6005, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !6008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !6008
  store i8 %i.fc, ptr %i.cy, align 8, !alias.scope !5999, !noalias !6008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5997
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.bp, !noalias !6009

bb.bp:                                            ; preds = %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.e) #52
          to label %.body.thread unwind label %bb.bq, !noalias !6009

bb.bq:                                            ; preds = %bb.bp
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !6009
  unreachable

_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !6010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 88, i1 false), !noalias !5968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %.noexc21, %bb.az, %.noexc20, %bb.ax, %bb.aw, %bb.av, %bb.au, %.noexc19, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  invoke fastcc void @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators18round_ms_datetimesNvB2_13ceil_datetimeEB8_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.y, ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.x)
          to label %bb.br unwind label %.body.thread13.loopexit

bb.br:                                            ; preds = %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.fg = load i64, ptr %i.cj, align 8, !alias.scope !6011, !noalias !6014, !noundef !12 ; 3 uses
  %i.fh = load i64, ptr %i.ab, align 8, !range !378, !alias.scope !6011, !noalias !6014, !noundef !12
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.bv unwind label %bb.bt, !noalias !6014

bb.bt:                                            ; preds = %bb.bs
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.y) #52
          to label %.body.thread unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.bv:                                            ; preds = %bb.bs, %bb.br
  %i.fl = load ptr, ptr %i.ci, align 8, !alias.scope !6011, !noalias !6014, !nonnull !12, !noundef !12
  %i.fm = getelementptr inbounds nuw [96 x i8], ptr %i.fl, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.fm, ptr noundef nonnull align 16 dereferenceable(96) %i.y, i64 96, i1 false)
  %i.fn = add i64 %i.fg, 1
  store i64 %i.fn, ptr %i.cj, align 8, !alias.scope !6011, !noalias !6014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %exitcond.not = icmp eq i64 %i.df, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread16, label %bb.s

.body.thread:                                     ; preds = %.body.thread13.loopexit, %.body.thread13.loopexit.split-lp, %bb.bt, %bb.bc, %bb.bf, %bb.bh, %bb.bk, %bb.bp, %bb.aj, %bb.t
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.fj, %bb.bt ], [ %i.fe, %bb.bp ], [ %i.dx, %bb.aj ], [ %.pn.i, %bb.t ], [ %i.eu, %bb.bh ], [ %i.el, %bb.bc ], [ %i.ep, %bb.bf ], [ %.pn.i.i.i, %bb.bk ], [ %lpad.loopexit, %.body.thread13.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread13.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #52
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.ca, %bb.by, %.body.thread, %.body.thread9
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.bx:                                            ; preds = %bb.q, %bb.m
  unreachable

bb.by:                                            ; preds = %bb.o, %.body.thread
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body8, %.body.thread ], [ %i.bz, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #52
          to label %.body.thread9 unwind label %bb.bw

bb.bz:                                            ; preds = %bb.ca, %bb.h
  resume { ptr, i32 } %.pn9

bb.ca:                                            ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %1) #52
          to label %bb.bz unwind label %bb.bw
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6thrift19write_schema_helperQQINtNtB6_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 23 uses
  %i.h = alloca [96 x i8], align 8                ; 23 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 57 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.m = load i8, ptr %i.l, align 8, !range !1459, !noundef !12
  %.not33 = icmp eq i8 %i.m, 3
  br i1 %.not33, label %bb.ai, label %bb.ah

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNvNtBV_7expr_fn3andECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.0.0.copyload3 = load i64, ptr %i.f, align 16, !noalias !7089 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload3, 37
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4, i64 104, i1 false)
  store i64 %.sroa.0.0.copyload3, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldBX_NvNtB11_7expr_fn3andECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 37, ptr %0, align 16
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !7094
  %.promoted20 = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !208
  %i.i = trunc nuw i8 %i.h to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %.promoted23 = load ptr, ptr %i.c, align 8
  %.promoted27 = load i64, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold, %bb.a
  %.lcssa1730 = phi i64 [ %.lcssa1728, %select.unfold ], [ %.promoted27, %bb.a ] ; 2 uses
  %.lcssa1926 = phi ptr [ %.lcssa1924, %select.unfold ], [ %.promoted23, %bb.a ] ; 3 uses
  %.pre.i.i.i22 = phi i64 [ %.pre.i.i.i21, %select.unfold ], [ %.promoted20, %bb.a ] ; 4 uses
  %i.j = phi i8 [ %i.bt, %select.unfold ], [ %.promoted, %bb.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7100)
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7104)
  %i.l = icmp eq ptr %.lcssa1926, %i.e
  br i1 %i.l, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.l
  %i.m = phi i64 [ %i.bb, %bb.l ], [ %.lcssa1730, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %i.ax, %bb.l ], [ %.lcssa1926, %bb.c ] ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7113)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.n, align 1, !noalias !7116, !noundef !12 ; 5 uses
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.d, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = and i8 %i.q, 31
  %i.t = zext nneg i8 %i.s to i32                 ; 3 uses
  %i.u = icmp ne ptr %i.p, %i.e
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.w = load i8, ptr %i.p, align 1, !noalias !7116, !noundef !12
  %i.x = shl nuw nsw i32 %i.t, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %i.aa = or disjoint i32 %i.x, %i.z
  %i.ab = icmp samesign ugt i8 %i.q, -33
  br i1 %i.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = zext nneg i8 %i.q to i32
  br label %bb.e

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i
  %i.ad = icmp ne ptr %i.v, %i.e
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 3 uses
  %i.af = load i8, ptr %i.v, align 1, !noalias !7116, !noundef !12
  %i.ag = shl nuw nsw i32 %i.z, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 2 uses
  %i.ak = shl nuw nsw i32 %i.t, 12
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = icmp samesign ugt i8 %i.q, -17
  br i1 %i.am, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i
  %i.an = icmp ne ptr %i.ae, %i.e
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ap = load i8, ptr %i.ae, align 1, !noalias !7116, !noundef !12
  %i.aq = shl nuw nsw i32 %i.t, 18
  %i.ar = and i32 %i.aq, 1835008
  %i.as = shl nuw nsw i32 %i.aj, 6
  %i.at = and i8 %i.ap, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = or disjoint i32 %i.av, %i.ar
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %i.ae, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 7 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.al, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i ], [ %i.aw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i ], [ %i.ac, %bb.d ] ; 8 uses
  %i.ay = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.az, %i.o
  %i.bb = add i64 %i.ba, %i.m                     ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.f [
    i32 32, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bc = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 127
  br i1 %i.bc, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.bd = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.bd, label %bb.l [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.be = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.bf = zext i1 %i.be to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bg = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.bh = zext i1 %i.bg to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.bi = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !7120, !noundef !12
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.bm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !7120, !noundef !12
  %i.bq = lshr i8 %i.bp, 1
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bh, %bb.i ], [ %i.bl, %bb.j ], [ %i.bf, %bb.h ], [ %i.bq, %bb.k ]
  %i.br = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.g, %bb.f
  %i.bs = icmp eq ptr %i.ax, %i.e
  br i1 %i.bs, label %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i: ; preds = %bb.l
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !7121, !noalias !7122
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !7123, !noalias !7122
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.m:                                             ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !7121, !noalias !7122
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !7123, !noalias !7122
  store i64 %i.bb, ptr %0, align 8, !alias.scope !7094
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i, %bb.c
  %.lcssa1729 = phi i64 [ %i.bb, %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i ], [ %.lcssa1730, %bb.c ]
  %.lcssa1925 = phi ptr [ %i.ax, %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i ], [ %.lcssa1926, %bb.c ]
  store i8 1, ptr %i.a, align 1, !alias.scope !7124
  %.not.i.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i.i.i22
  %or.cond.not.i.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  br i1 %cond.fr, label %select.unfold, label %.loopexit

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.m
  %.lcssa1728 = phi i64 [ %i.bb, %bb.m ], [ %.lcssa1729, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.lcssa1924 = phi ptr [ %i.ax, %bb.m ], [ %.lcssa1925, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pre.i.i.i21 = phi i64 [ %i.bb, %bb.m ], [ %.pre.i.i.i22, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.bt = phi i8 [ 0, %bb.m ], [ 1, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn31 = phi i64 [ %i.m, %bb.m ], [ %.pre2.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.4.1.i.i = sub nuw i64 %.pn31, %.pre.i.i.i22 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.n

bb.n:                                             ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pre.i.i.i22
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b, %bb.n
  %.sroa.3.0 = phi i64 [ %.sroa.4.1.i.i, %bb.n ], [ undef, %bb.b ], [ undef, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1.i.i, %bb.n ], [ null, %bb.b ], [ null, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.bu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bv = insertvalue { ptr, i64 } %i.bu, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bv
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetB1n_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7127
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37), !noalias !7127 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !7127
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !7127
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !7127
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2p_8adapters6cloned6ClonedINtNtNtB2r_5slice4iter4IterBO_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterB14_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !7127

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !7127

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !7127
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterB14_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7127
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtCsbpG6u9KFjWn_8indexmap3set4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB2B_10SimplifierNtNtB1N_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvNtB1N_7expr_fn3andECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 16              ; 5 uses
  %i.b = alloca [224 x i8], align 16              ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %i.e = alloca [112 x i8], align 16              ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 16              ; 9 uses
  %.sroa.6.i.i.i = alloca [104 x i8], align 8     ; 5 uses
  %i.h = alloca [112 x i8], align 16              ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7130)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !7130, !noalias !7133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7135
  invoke void @_RNvXs9_NtNtCsbpG6u9KFjWn_8indexmap3set4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc unwind label %.body.thread22.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 16, !range !7143, !noalias !7135, !noundef !12
  %.not12.i.i.i = icmp eq i64 %i.j, 37
  br i1 %.not12.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !7135
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  call void @llvm.experimental.noalias.scope.decl(metadata !7147)
  %i.m = load ptr, ptr %i.k, align 8, !noalias !7149, !nonnull !12, !noundef !12
  %i.n = load i64, ptr %i.l, align 8, !noalias !7149, !noundef !12
  %i.o = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.m, i64 noundef %i.n)
          to label %bb.d unwind label %bb.c, !noalias !7154

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.g) #52
          to label %.body.thread unwind label %bb.e, !noalias !7154

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.g)
          to label %.noexc3 unwind label %.body.thread22.loopexit

.noexc3:                                          ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7135
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !7154
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.d
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.g, align 16, !alias.scope !7155, !noalias !7135 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i.i.i, i64 104, i1 false), !alias.scope !7155, !noalias !7135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7135
  %.not.i.i.i.i = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 37
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7135
  invoke void @_RNvXs9_NtNtCsbpG6u9KFjWn_8indexmap3set4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc4 unwind label %.body.thread22.loopexit

.noexc4:                                          ; preds = %bb.f
  %i.r = load i64, ptr %i.h, align 16, !range !7143, !noalias !7135, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.r, 37
  br i1 %.not.i.i.i, label %.loopexit, label %bb.b

.body.thread22.loopexit:                          ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread22.loopexit.split-lp:                 ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.i.i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7167)
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.e, align 16, !noalias !7168
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !7167, !noalias !7169, !nonnull !12
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7167, !noalias !7169
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter11filter_foldNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB11_NCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB1W_10SimplifierNtNtB15_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0NvNtB15_7expr_fn3andE0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7156
  invoke void @_RNvXs9_NtNtCsbpG6u9KFjWn_8indexmap3set4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.i unwind label %bb.q, !noalias !7170

.body.thread7.i.i:                                ; preds = %bb.m, %bb.l
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.d, align 16, !range !7143, !noalias !7156, !noundef !12
  %.not.i.i = icmp eq i64 %i.y, 37
  br i1 %.not.i.i, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3set4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldBP_NCINvNtNtB1F_8adapters6filter11filter_foldBP_BP_NCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3w_10SimplifierNtNtBT_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0NvNtBT_7expr_fn3andE0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.s, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !7156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !7156
  %i.z = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.u, i64 noundef %i.w)
          to label %bb.k unwind label %bb.n, !noalias !7171

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB5_10SimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_upCs14kWLkQVSKO_14deltalake_core:bb.a

bb.oh:                                            ; preds = %bb.oe
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr6InListECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ajd) #52
          to label %.thread6713 unwind label %bb.bt

bb.oi:                                            ; preds = %bb.og
  br i1 %.sroa.04786.0, label %.thread6714, label %.thread6712

bb.oj:                                            ; preds = %.thread6713, %.thread6711, %bb.og
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.aef) #52
          to label %.thread6712 unwind label %bb.bt

.thread6714:                                      ; preds = %.thread6713, %bb.oi
  %i.aje = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr6InListECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.aje) #52
          to label %.thread6712 unwind label %bb.bt

.thread6712:                                      ; preds = %.thread6711, %bb.nz, %bb.oc, %bb.od, %bb.oi, %bb.oj, %.thread6714
  %.pn6039 = phi { ptr, i32 } [ %i.ait, %bb.oc ], [ %i.aip, %bb.nz ], [ %i.aip, %bb.od ], [ %i.aib, %.thread6714 ], [ %i.aib, %bb.oi ], [ %i.aib, %bb.oj ], [ %i.aib, %.thread6711 ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aed, i64 noundef 112, i64 noundef 16) #51
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aec, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

bb.ok:                                            ; preds = %bb.lj
  %i.ajf = load i64, ptr %i.ady, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.ajg = icmp ne i64 %i.ajf, 35
  call void @llvm.assume(i1 %i.ajg)
  %i.ajh = icmp eq i64 %i.ajf, 28
  br i1 %i.ajh, label %bb.om, label %bb.ol, !prof !105

bb.ol:                                            ; preds = %bb.ok, %bb.lj
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @909) #50
          to label %bb.mj unwind label %bb.os

bb.om:                                            ; preds = %bb.ok
  %i.aji = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.aji, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ajj, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier19inlist_intersection(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aw, i1 noundef zeroext false)
          to label %bb.oo unwind label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.ajk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr6InListECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.aw) #52
          to label %.thread6715 unwind label %bb.bt

bb.oo:                                            ; preds = %bb.om
  %i.ajl = load i64, ptr %i.av, align 16, !range !7143, !noundef !12
  %i.ajm = icmp eq i64 %i.ajl, 37
  br i1 %i.ajm, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ajo, ptr noundef nonnull align 8 dereferenceable(40) %i.ajn, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  br label %bb.or

bb.oq:                                            ; preds = %bb.oo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.av, i64 112, i1 false)
  %.sroa.45711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %.sroa.45711.0..sroa_idx, align 16
  %.sroa.55712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.55712.0..sroa_idx, align 1
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr6InListECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.aw)
          to label %bb.ot unwind label %bb.os

bb.os:                                            ; preds = %bb.ol, %bb.or
  %.sroa.04788.1 = phi i1 [ false, %bb.or ], [ true, %bb.ol ] ; 2 uses
  %i.ajp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ajq = load i64, ptr %i.az, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.ajr = icmp ne i64 %i.ajq, 35
  call void @llvm.assume(i1 %i.ajr)
  %i.ajs = icmp eq i64 %i.ajq, 28
  br i1 %i.ajs, label %bb.pb, label %bb.pc

.thread6715:                                      ; preds = %bb.on
  %i.ajt = load i64, ptr %i.az, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.aju = icmp ne i64 %i.ajt, 35
  call void @llvm.assume(i1 %i.aju)
  %i.ajv = icmp eq i64 %i.ajt, 28
  br i1 %i.ajv, label %.thread6727, label %bb.pc

bb.ot:                                            ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ajw = load i64, ptr %i.az, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.ajx = icmp ne i64 %i.ajw, 35
  call void @llvm.assume(i1 %i.ajx)
  %i.ajy = icmp eq i64 %i.ajw, 28
  br i1 %i.ajy, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ov, %bb.ot
  %i.ajz = load i64, ptr %i.ady, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.aka = icmp ne i64 %i.ajz, 35
  call void @llvm.assume(i1 %i.aka)
  %i.akb = icmp eq i64 %i.ajz, 28
  br i1 %i.akb, label %bb.ox, label %bb.oy

bb.ov:                                            ; preds = %bb.ot
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.az)
          to label %bb.ou unwind label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.akc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akd = load i64, ptr %i.ady, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.ake = icmp ne i64 %i.akd, 35
  call void @llvm.assume(i1 %i.ake)
  %i.akf = icmp eq i64 %i.akd, 28
  br i1 %i.akf, label %.thread6733, label %bb.pa

bb.ox:                                            ; preds = %bb.oy, %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adw, i64 noundef 112, i64 noundef 16) #51
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adv, i64 noundef 112, i64 noundef 16) #51
  br label %bb.bz

bb.oy:                                            ; preds = %bb.ou
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ady)
          to label %bb.ox unwind label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %.thread6733

bb.pa:                                            ; preds = %bb.ow
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ady) #52
          to label %.thread6733 unwind label %bb.bt

bb.pb:                                            ; preds = %bb.os
  br i1 %.sroa.04788.1, label %bb.pe, label %.thread7344

bb.pc:                                            ; preds = %.thread6715, %bb.os
  %.pn60416722 = phi { ptr, i32 } [ %i.ajk, %.thread6715 ], [ %i.ajp, %bb.os ]
  %.sroa.04788.06719 = phi i1 [ false, %.thread6715 ], [ %.sroa.04788.1, %bb.os ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.az) #52
          to label %bb.pd unwind label %bb.bt

bb.pd:                                            ; preds = %bb.pe, %bb.pc
  %.pn60416721 = phi { ptr, i32 } [ %i.ajp, %bb.pe ], [ %.pn60416722, %bb.pc ] ; 3 uses
  %.sroa.04788.06718 = phi i1 [ true, %bb.pe ], [ %.sroa.04788.06719, %bb.pc ]
  %i.akh = load i64, ptr %i.ady, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.aki = icmp ne i64 %i.akh, 35
  call void @llvm.assume(i1 %i.aki)
  %i.akj = icmp eq i64 %i.akh, 28
  br i1 %i.akj, label %bb.pf, label %bb.pg

.thread7344:                                      ; preds = %bb.pb
  %i.akk = load i64, ptr %i.ady, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.akl = icmp ne i64 %i.akk, 35
  call void @llvm.assume(i1 %i.akl)
  %i.akm = icmp eq i64 %i.akk, 28
  br i1 %i.akm, label %.thread6733, label %bb.pg

.thread6727:                                      ; preds = %.thread6715
  %i.akn = load i64, ptr %i.ady, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.ako = icmp ne i64 %i.akn, 35
  call void @llvm.assume(i1 %i.ako)
  %i.akp = icmp eq i64 %i.akn, 28
  br i1 %i.akp, label %.thread6733, label %bb.pg

bb.pe:                                            ; preds = %bb.pb
  %i.akq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr6InListECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.akq) #52
          to label %bb.pd unwind label %bb.bt

bb.pf:                                            ; preds = %bb.pd
  br i1 %.sroa.04788.06718, label %bb.ph, label %.thread6733

bb.pg:                                            ; preds = %.thread7344, %.thread6727, %bb.pd
  %.pn604167216731 = phi { ptr, i32 } [ %i.ajk, %.thread6727 ], [ %.pn60416721, %bb.pd ], [ %i.ajp, %.thread7344 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ady) #52
          to label %.thread6733 unwind label %bb.bt

bb.ph:                                            ; preds = %bb.pf
  %i.akr = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr6InListECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.akr) #52
          to label %.thread6733 unwind label %bb.bt

.thread6733:                                      ; preds = %.thread7344, %.thread6727, %bb.ow, %bb.oz, %bb.pa, %bb.pf, %bb.pg, %bb.ph
  %.pn6043 = phi { ptr, i32 } [ %i.akg, %bb.oz ], [ %i.akc, %bb.ow ], [ %i.akc, %bb.pa ], [ %.pn60416721, %bb.ph ], [ %.pn60416721, %bb.pf ], [ %.pn604167216731, %bb.pg ], [ %i.ajk, %.thread6727 ], [ %i.ajp, %.thread7344 ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adw, i64 noundef 112, i64 noundef 16) #51
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adv, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

bb.pi:                                            ; preds = %bb.lg
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8, !nonnull !12, !align !503, !noundef !12
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.akv = load ptr, ptr %i.aku, align 16, !nonnull !12, !align !503, !noundef !12
  %i.akw = ptrtoint ptr %i.akt to i64
  %i.akx = ptrtoint ptr %i.akv to i64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.jm)
          to label %bb.pm unwind label %bb.pl

bb.pj:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jj)
  invoke fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.jj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @910, i64 69, ptr nonnull @910, ptr nonnull inttoptr (i64 139 to ptr))
          to label %bb.ps unwind label %bb.pr

bb.pk:                                            ; preds = %bb.pq, %bb.pl
  %.pn6048 = phi { ptr, i32 } [ %i.alb, %bb.pl ], [ %.pn6045.pn, %bb.pq ]
  %i.aky = load i64, ptr %i.ado, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.akz = icmp ne i64 %i.aky, 35
  call void @llvm.assume(i1 %i.akz)
  %i.ala = icmp eq i64 %i.aky, 8
  br i1 %i.ala, label %bb.qf, label %bb.qg

bb.pl:                                            ; preds = %bb.qa, %bb.pi
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

bb.pm:                                            ; preds = %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  %i.alc = load i64, ptr %i.ado, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.ald = icmp ne i64 %i.alc, 35
  call void @llvm.assume(i1 %i.ald)
  %i.ale = icmp eq i64 %i.alc, 8
  br i1 %i.ale, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.po, %bb.pm
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ado, i64 noundef 112, i64 noundef 16) #51
  %i.alf = insertelement <2 x i64> <i64 8, i64 poison>, i64 %i.akw, i64 1
  br label %bb.bw

bb.po:                                            ; preds = %bb.pm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ado)
          to label %bb.pn unwind label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.alg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ado, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

bb.pq:                                            ; preds = %bb.pt, %bb.pr
  %.pn6045.pn = phi { ptr, i32 } [ %.pn6045, %bb.pt ], [ %i.alh, %bb.pr ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.jm) #52
          to label %bb.pk unwind label %bb.bt

bb.pr:                                            ; preds = %bb.pj, %bb.pz
  %i.alh = landingpad { ptr, i32 }
          cleanup
  br label %bb.pq

bb.ps:                                            ; preds = %bb.pj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ji)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pv unwind label %bb.pu

bb.pt:                                            ; preds = %bb.py, %bb.pu
  %.pn6045 = phi { ptr, i32 } [ %i.ali, %bb.pu ], [ %i.alr, %bb.py ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jk) #52
          to label %bb.pq unwind label %bb.bt

bb.pu:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, %bb.pw, %bb.ps
  %i.ali = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.pv:                                            ; preds = %bb.ps
  %i.alj = load i64, ptr %i.h, align 8, !range !49, !noundef !12
  %i.alk = trunc nuw i64 %i.alj to i1
  %i.all = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.alm = load i64, ptr %i.all, align 8, !range !50, !noundef !12 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.alk, label %bb.pw, label %bb.px, !prof !51

bb.pw:                                            ; preds = %bb.pv
  %i.alo = load i64, ptr %i.aln, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.alm, i64 %i.alo) #50
          to label %bb.mj unwind label %bb.pu

bb.px:                                            ; preds = %bb.pv
  %i.alp = load ptr, ptr %i.aln, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.alm, ptr %i.ji, align 8
  %.sroa.44978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.alp, ptr %.sroa.44978.0..sroa_idx, align 8
  %.sroa.54979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 0, ptr %.sroa.54979.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh)
  store ptr %i.jk, ptr %i.jh, align 8
  %.sroa.44983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.44983.0..sroa_idx, align 8
  %i.alq = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store ptr %i.ji, ptr %i.alq, align 8
  %.sroa.44987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.44987.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jl, ptr noundef nonnull @230, ptr noundef nonnull %i.jh)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.alr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ji) #52
          to label %bb.pt unwind label %bb.bt

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %bb.pz unwind label %bb.pu

bb.pz:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %bb.qa unwind label %bb.pr

bb.qa:                                            ; preds = %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk)
  %.sroa.2179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2179.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 24, i1 false)
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.als, align 8
  store i64 37, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.jm)
          to label %bb.qb unwind label %bb.pl

bb.qb:                                            ; preds = %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  %i.alt = load i64, ptr %i.ado, align 16, !range !2421, !noundef !12 ; 2 uses
  %i.alu = icmp ne i64 %i.alt, 35
  call void @llvm.assume(i1 %i.alu)
  %i.alv = icmp eq i64 %i.alt, 8
  br i1 %i.alv, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qd, %bb.qb
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ado, i64 noundef 112, i64 noundef 16) #51
  br label %bb.bz

bb.qd:                                            ; preds = %bb.qb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ado)
          to label %bb.qc unwind label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ado, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

bb.qf:                                            ; preds = %bb.qg, %bb.pk
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ado, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

bb.qg:                                            ; preds = %bb.pk
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ado) #52
          to label %bb.qf unwind label %bb.bt

bb.qh:                                            ; preds = %bb.ld
  %.sroa.224.sroa.105.0.extract.shift2688 = and i64 %.sroa.114547.0.copyload, -256
  %.sroa.156.sroa.109.0.extract.shift3567 = lshr i64 %.sroa.64542.0.copyload, 48
  %.sroa.156.sroa.108.0.extract.shift3358 = lshr i64 %.sroa.64542.0.copyload, 40
  %.sroa.156.sroa.107.0.extract.shift3149 = lshr i64 %.sroa.64542.0.copyload, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn)
  br label %bb.bw

bb.qi:                                            ; preds = %bb.la
  %i.alx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.add, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

bb.qj:                                            ; preds = %bb.la
  %.sroa.224.sroa.105.0.extract.shift2686 = and i64 %.sroa.114558.0.copyload, -256
  %.sroa.156.sroa.109.0.extract.shift3565 = lshr i64 %.sroa.64553.0.copyload, 48
  %.sroa.156.sroa.108.0.extract.shift3356 = lshr i64 %.sroa.64553.0.copyload, 40
  %.sroa.156.sroa.107.0.extract.shift3147 = lshr i64 %.sroa.64553.0.copyload, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jo)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.add, i64 noundef 112, i64 noundef 16) #51
  br label %bb.bw

bb.qk:                                            ; preds = %bb.kx
  %.sroa.224.sroa.105.0.extract.shift2684 = and i64 %.sroa.114569.0.copyload, -256
  %.sroa.156.sroa.109.0.extract.shift3563 = lshr i64 %.sroa.64564.0.copyload, 48
  %.sroa.156.sroa.108.0.extract.shift3354 = lshr i64 %.sroa.64564.0.copyload, 40
  %.sroa.156.sroa.107.0.extract.shift3145 = lshr i64 %.sroa.64564.0.copyload, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jp)
  br label %bb.bw

bb.ql:                                            ; preds = %bb.ku
  %i.aly = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acu, i64 noundef 112, i64 noundef 16) #51
  br label %.thread6569

end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB5_10SimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_upCs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.156.sroa.107.0.extract.shift3249 = lshr i64 %.sroa.65780.0.copyload, 32
  %.sroa.156.sroa.108.0.extract.shift3458 = lshr i64 %.sroa.65780.0.copyload, 40
  %.sroa.156.sroa.109.0.extract.shift3667 = lshr i64 %.sroa.65780.0.copyload, 48
  %.sroa.224.sroa.105.0.extract.shift2790 = and i64 %.sroa.125767.0.copyload, -256
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfv, i64 noundef 112, i64 noundef 16) #51
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfu, i64 noundef 112, i64 noundef 16) #51
  br label %bb.bw

bb.aif:                                           ; preds = %bb.auv, %bb.apf, %bb.qn, %bb.bw
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2)
  br label %.critedge

bb.aig:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6313, %bb.bw
  %.sroa.04744.7 = phi i8 [ %.sroa.04744.3, %bb.bw ], [ %.sroa.04744.9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6313 ]
  %i.bge = trunc nuw i8 %.sroa.04744.7 to i1
  br i1 %i.bge, label %bb.awr, label %.critedge

.critedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.aih, %bb.awg, %bb.bz, %bb.asv, %bb.atr, %bb.awr, %bb.awk, %bb.awf, %bb.awd, %bb.awd, %bb.awd, %bb.awd, %bb.awd, %bb.awd, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.auv, %bb.ath, %bb.apf, %bb.apf, %bb.apf, %bb.apf, %bb.apf, %bb.apf, %bb.apf, %bb.apf, %bb.apf, %bb.aiq, %bb.aip, %bb.aio, %bb.ain, %bb.aim, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.aig, %bb.aif, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %bb.qn, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw
  ret void

bb.aih:                                           ; preds = %bb.apf, %bb.auv, %bb.qn, %bb.bw
  %i.bgf = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !14401)
  %i.bgg = load ptr, ptr %i.bgf, align 16, !alias.scope !14401, !align !503, !noundef !12 ; 4 uses
  %i.bgh = icmp eq ptr %i.bgg, null
  br i1 %i.bgh, label %.critedge, label %bb.aii

bb.aii:                                           ; preds = %bb.aih
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.bgg) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aij, !noalias !14404, !inline_history !14407

common.resume:                                    ; preds = %.invoke, %bb.awe, %bb.awm, %.body6311, %bb.aws, %.thread6569, %.thread6569, %.thread6569, %.thread6569, %.thread6569, %bb.awt, %bb.awv, %bb.aww, %bb.awx, %bb.awy, %bb.axe, %bb.axf, %bb.axh, %bb.awu, %bb.axb, %bb.awh, %bb.asx, %bb.asy, %bb.atu, %bb.atv, %bb.atd, %bb.ate, %bb.aua, %bb.aub, %bb.ail, %bb.aij
  %common.resume.op = phi { ptr, i32 } [ %i.bgi, %bb.aij ], [ %i.bgl, %bb.ail ], [ %.pn6099.ph, %bb.awm ], [ %.pn60976533, %bb.awu ], [ %.pn60976533, %bb.awt ], [ %.pn5858, %bb.asy ], [ %i.caw, %bb.awh ], [ %.pn5858, %bb.asx ], [ %.pn60976533, %bb.awv ], [ %i.bxd, %bb.aua ], [ %.pn60976533, %bb.aww ], [ %i.bvo, %bb.ate ], [ %.pn60976533, %bb.awx ], [ %.pn60976533, %.invoke ], [ %.pn60976533, %bb.awy ], [ %.pn60976533, %bb.axe ], [ %.pn60976533, %bb.axb ], [ %.pn60976533, %.thread6569 ], [ %.pn60976533, %.thread6569 ], [ %.pn60976533, %.thread6569 ], [ %.pn60976533, %.thread6569 ], [ %.pn60976533, %.thread6569 ], [ %.pn60976533, %bb.axh ], [ %.pn60976533, %bb.axf ], [ %i.bxd, %bb.aub ], [ %i.cat, %bb.awe ], [ %i.bth, %.body6311 ], [ %i.bth, %bb.aws ], [ %.pn5854, %bb.atv ], [ %.pn5854, %bb.atu ], [ %i.bvo, %bb.atd ]
  resume { ptr, i32 } %common.resume.op

bb.aij:                                           ; preds = %bb.aii
  %i.bgi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bgg, i64 noundef 112, i64 noundef 16) #51, !noalias !14404, !inline_history !2390
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aii
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bgg, i64 noundef 112, i64 noundef 16) #51, !noalias !14404, !inline_history !2390
  br label %.critedge

bb.aik:                                           ; preds = %bb.apf, %bb.qn, %bb.bw
  %i.bgj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !14408)
  %i.bgk = load ptr, ptr %i.bgj, align 16, !alias.scope !14408, !nonnull !12, !noundef !12 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.bgk) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ail, !noalias !14408, !inline_history !507

bb.ail:                                           ; preds = %bb.aik
  %i.bgl = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bgk, i64 noundef 112, i64 noundef 16) #51, !noalias !14408, !inline_history !507
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aik
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bgk, i64 noundef 112, i64 noundef 16) #51, !noalias !14408, !inline_history !507
  br label %.critedge

bb.aim:                                           ; preds = %bb.awd, %bb.ct, %bb.bz
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2)
  br label %.critedge

bb.ain:                                           ; preds = %bb.awd, %bb.ct, %bb.bz
  %i.bgm = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.bgm)
  br label %.critedge

bb.aio:                                           ; preds = %bb.awd, %bb.ct, %bb.bz
  %i.bgn = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.bgn)
  br label %.critedge

bb.aip:                                           ; preds = %bb.awd, %bb.ct, %bb.bz
  %i.bgo = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.bgo)
  br label %.critedge

bb.aiq:                                           ; preds = %bb.awd, %bb.ct, %bb.bz
  %i.bgp = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.bgp)
  br label %.critedge

bb.air:                                           ; preds = %bb.awd, %bb.ct, %bb.bz
  %.sroa.04774.2 = phi i1 [ true, %bb.bz ], [ true, %bb.ct ], [ %.sroa.04774.3, %bb.awd ] ; 2 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.bgr)
          to label %bb.awg unwind label %bb.awh

bb.ais:                                           ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ml)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mk)
  invoke void @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr8simplifyNtB4_15SimplifyContextNtB4_12SimplifyInfo13get_data_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.mk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mn, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %2)
          to label %bb.ait unwind label %.thread6581

bb.ait:                                           ; preds = %bb.ais
  %i.bgs = load i64, ptr %i.mk, align 8, !range !558, !noundef !12 ; 2 uses
  %.not6096 = icmp eq i64 %i.bgs, 20
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(24) %i.bgt, i64 24, i1 false)
  br i1 %.not6096, label %bb.aiv, label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait
  %.sroa.64836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %.sroa.64836.0.copyload = load i64, ptr %.sroa.64836.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mk)
  %.sroa.24838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.24838.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, i64 24, i1 false)
  %i.bgu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bgs, ptr %i.bgu, align 8
  %.sroa.34839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.64836.0.copyload, ptr %.sroa.34839.0..sroa_idx, align 8
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm)
  br label %bb.ajb

bb.aiv:                                           ; preds = %bb.ait
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, i64 24, i1 false)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue12try_new_null(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.mm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ml)
          to label %bb.aix unwind label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.bgv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ml) #52
          to label %.thread6569 unwind label %bb.bt

bb.aix:                                           ; preds = %bb.aiv
  %i.bgw = load i128, ptr %i.mm, align 16, !range !14370, !noundef !12 ; 2 uses
  %i.bgx = icmp eq i128 %i.bgw, 50
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.bgz = load <2 x ptr>, ptr %i.bgy, align 16   ; 3 uses
  %.sroa.64852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.64852.0..sroa_idx, i64 16, i1 false)
  %.sroa.74853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %.sroa.74853.0.copyload = load ptr, ptr %.sroa.74853.0..sroa_idx, align 16 ; 2 uses
  br i1 %i.bgx, label %bb.aiy, label %bb.aiz

bb.aiy:                                           ; preds = %bb.aix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm)
  %.sroa.34856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34856.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.8, i64 16, i1 false)
  %i.bha = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhb = extractelement <2 x ptr> %i.bgz, i64 0
  store ptr %i.bhb, ptr %i.bha, align 8
  %.sroa.24855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bhc = extractelement <2 x ptr> %i.bgz, i64 1
  store ptr %i.bhc, ptr %.sroa.24855.0..sroa_idx, align 16
  %.sroa.44857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.74853.0.copyload, ptr %.sroa.44857.0..sroa_idx, align 8
  store i64 37, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ml)
          to label %bb.ajb unwind label %.thread6581

bb.aiz:                                           ; preds = %bb.aix
  %.sroa.94845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  %.sroa.94845.0.copyload = load i64, ptr %.sroa.94845.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.208, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.8, i64 16, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ml)
          to label %bb.aja unwind label %.thread6581

bb.aja:                                           ; preds = %bb.aiz
  %.sroa.224.sroa.105.0.extract.shift2810 = lshr i64 %.sroa.94845.0.copyload, 8
  %.sroa.5.sroa.4.sroa.0.0.extract.trunc = trunc nuw nsw i128 %i.bgw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ml)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.8)
  br label %bb.qn

bb.ajb:                                           ; preds = %bb.aiy, %bb.aiu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ml)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.8)
  br label %bb.ct

bb.ajc:                                           ; preds = %.body6132
  br i1 %.sroa.04735.2, label %bb.aly, label %.thread6869

.thread6813:                                      ; preds = %bb.ajh, %bb.akt
  %lpad.thr_comm6811 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aly

switch.lookup:                                    ; preds = %bb.d
  %switch.cast = trunc nuw i64 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 1645080, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sroa.116454.0.ph = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i8 %switch.masked, ptr %i.cn, align 8
  %i.bhd = load i64, ptr %.sroa.116454.0.ph, align 16, !range !50, !noundef !12
  %.not5914 = icmp eq i64 %i.bhd, -9223372036854775808
  br i1 %.not5914, label %bb.ajg, label %bb.aje

_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit: ; preds = %bb.d, %bb.c
  %.sroa.04034.0.copyload = load i64, ptr %i.co, align 8
  %.sroa.54036.0.copyload = load i64, ptr %i.mx, align 8 ; 5 uses
  %.sroa.156.sroa.0.0.extract.trunc3066 = trunc i64 %.sroa.54036.0.copyload to i32
  %.sroa.156.sroa.0.sroa.0.0.extract.trunc3803 = trunc i64 %.sroa.54036.0.copyload to i8
  %.sroa.156.sroa.0.sroa.105.0.extract.shift3997 = lshr i32 %.sroa.156.sroa.0.0.extract.trunc3066, 8
  %.sroa.156.sroa.0.sroa.105.0.extract.trunc3998 = trunc nuw i32 %.sroa.156.sroa.0.sroa.105.0.extract.shift3997 to i24
  %.sroa.156.sroa.107.0.extract.shift3259 = lshr i64 %.sroa.54036.0.copyload, 32
  %.sroa.156.sroa.107.0.extract.trunc3260 = trunc i64 %.sroa.156.sroa.107.0.extract.shift3259 to i8
  %.sroa.156.sroa.108.0.extract.shift3468 = lshr i64 %.sroa.54036.0.copyload, 40
  %.sroa.156.sroa.108.0.extract.trunc3469 = trunc i64 %.sroa.156.sroa.108.0.extract.shift3468 to i8
  %.sroa.156.sroa.109.0.extract.shift3677 = lshr i64 %.sroa.54036.0.copyload, 48
  %.sroa.156.sroa.109.0.extract.trunc3678 = trunc nuw i64 %.sroa.156.sroa.109.0.extract.shift3677 to i16
  br label %bb.ajd

bb.ajd:                                           ; preds = %.thread6837, %bb.alh, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit
  %.sroa.0973.13 = phi i64 [ %.sroa.0973.166853, %.thread6837 ], [ %.sroa.0973.14, %bb.alh ], [ 9, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.105.13 = phi i64 [ %.sroa.105.166854, %.thread6837 ], [ %.sroa.105.14, %bb.alh ], [ %.sroa.04034.0.copyload, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.139.13 = phi i64 [ %.sroa.139.166855, %.thread6837 ], [ %.sroa.139.14, %bb.alh ], [ %i.ne, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.178.13 = phi ptr [ %.sroa.178.166856, %.thread6837 ], [ %.sroa.178.14, %bb.alh ], [ undef, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.2231919.13 = phi ptr [ %.sroa.2231919.166857, %.thread6837 ], [ undef, %bb.alh ], [ undef, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.238.13 = phi ptr [ %.sroa.238.166858, %.thread6837 ], [ undef, %bb.alh ], [ undef, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.263.13 = phi i8 [ 1, %.thread6837 ], [ 0, %bb.alh ], [ 0, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.224.sroa.0.13 = phi i64 [ %.sroa.224.sroa.0.166859, %.thread6837 ], [ 0, %bb.alh ], [ 0, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.224.sroa.105.sroa.0.13 = phi i64 [ %.sroa.224.sroa.105.sroa.0.166860, %.thread6837 ], [ 0, %bb.alh ], [ 0, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.201.13 = phi ptr [ %.sroa.201.166861, %.thread6837 ], [ null, %bb.alh ], [ undef, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.156.sroa.107.13 = phi i8 [ %.sroa.156.sroa.107.166862, %.thread6837 ], [ %.sroa.156.sroa.107.14, %bb.alh ], [ %.sroa.156.sroa.107.0.extract.trunc3260, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.156.sroa.108.13 = phi i8 [ %.sroa.156.sroa.108.166863, %.thread6837 ], [ %.sroa.156.sroa.108.14, %bb.alh ], [ %.sroa.156.sroa.108.0.extract.trunc3469, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.156.sroa.109.13 = phi i16 [ %.sroa.156.sroa.109.166864, %.thread6837 ], [ %.sroa.156.sroa.109.14, %bb.alh ], [ %.sroa.156.sroa.109.0.extract.trunc3678, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.156.sroa.0.sroa.0.13 = phi i8 [ %.sroa.156.sroa.0.sroa.0.166865, %.thread6837 ], [ %.sroa.156.sroa.0.sroa.0.14, %bb.alh ], [ %.sroa.156.sroa.0.sroa.0.0.extract.trunc3803, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  %.sroa.156.sroa.0.sroa.105.sroa.0.13 = phi i24 [ %.sroa.156.sroa.0.sroa.105.sroa.0.166866, %.thread6837 ], [ %.sroa.156.sroa.0.sroa.105.sroa.0.14, %bb.alh ], [ %.sroa.156.sroa.0.sroa.105.0.extract.trunc3998, %_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16as_string_scalar.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.bhe = insertelement <2 x ptr> poison, ptr %.sroa.178.13, i64 0
  %i.bhf = insertelement <2 x ptr> %i.bhe, ptr %.sroa.201.13, i64 1
  br label %bb.qn

bb.aje:                                           ; preds = %switch.lookup
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.bhh = load ptr, ptr %i.bhg, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  %i.bhj = load i64, ptr %i.bhi, align 16, !noundef !12 ; 5 uses
  %i.bhk = icmp eq i64 %i.bhj, 1
  br i1 %i.bhk, label %bb.aji, label %bb.ajj

.body6132:                                        ; preds = %bb.akk, %bb.akh, %bb.ajs, %bb.ajf, %.thread6831, %bb.akw, %bb.akr, %.thread6822, %bb.ajw
  %.sroa.04735.2 = phi i1 [ true, %bb.akh ], [ %.sroa.04735.46835, %.thread6831 ], [ false, %bb.akw ], [ true, %bb.akr ], [ true, %bb.ajw ], [ true, %.thread6822 ], [ true, %bb.ajf ], [ true, %bb.ajs ], [ true, %bb.akk ]
  %.pn5926 = phi { ptr, i32 } [ %i.bir, %bb.akh ], [ %.pn5922.pn.pn6836, %.thread6831 ], [ %.pn5922.pn, %bb.akw ], [ %i.bjj, %bb.akr ], [ %.pn5919, %bb.ajw ], [ %.pn59176825, %.thread6822 ], [ %i.bhl, %bb.ajf ], [ %i.bhz, %bb.ajs ], [ %i.bit, %bb.akk ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cn) #52
          to label %bb.ajc unwind label %bb.bt

bb.ajf:                                           ; preds = %bb.akz, %bb.akp, %bb.ajp, %bb.ajm, %bb.ajk, %bb.ajj
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %.body6132

bb.ajg:                                           ; preds = %switch.lookup
  store i64 7, ptr %0, align 16
  %.sroa.0810.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 3, ptr %.sroa.0810.sroa.5.0..sroa_idx, align 16
  %.sroa.0810.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.0810.sroa.6.0..sroa_idx, align 16
  %.sroa.0810.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %.sroa.0810.sroa.8.0..sroa_idx, align 16
  %.sroa.4811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %.sroa.4811.0..sroa_idx, align 16
  %.sroa.5812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.5812.0..sroa_idx, align 1
  br label %bb.ajh

bb.ajh:                                           ; preds = %bb.alu, %bb.ajg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cn)
          to label %bb.alv unwind label %.thread6813

bb.aji:                                           ; preds = %bb.aje
  %lhsc = load i8, ptr %i.bhh, align 1
  %i.bhm = icmp eq i8 %lhsc, 37
  br i1 %i.bhm, label %bb.ajk, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aje, %bb.aji
  %i.bhn = invoke fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @916, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bhh, i64 noundef %i.bhj)
          to label %bb.ajl unwind label %bb.ajf

bb.ajk:                                           ; preds = %bb.aji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.bho = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.bhp = load i8, ptr %i.bho, align 4, !range !208, !noundef !12
  %i.bhq = trunc nuw i8 %i.bhp to i1
  %i.bhr = xor i1 %i.bhq, true
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litbECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.cm, i1 noundef zeroext %i.bhr)
          to label %bb.akv unwind label %bb.ajf

bb.ajl:                                           ; preds = %bb.ajj
  br i1 %i.bhn, label %bb.ajm, label %bb.ajn

bb.ajm:                                           ; preds = %bb.ajl
  %i.bhs = invoke fastcc noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef %., ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bhh, i64 noundef %i.bhj)
          to label %bb.ajo unwind label %bb.ajf

bb.ajn:                                           ; preds = %bb.ajo, %bb.ajl
  %i.bht = getelementptr inbounds nuw i8, ptr %i.co, i64 21
  %i.bhu = load i8, ptr %i.bht, align 1, !range !208, !noundef !12
  %i.bhv = trunc nuw i8 %i.bhu to i1
  br i1 %i.bhv, label %bb.aku, label %bb.ako

bb.ajo:                                           ; preds = %bb.ajm
  br i1 %i.bhs, label %bb.ajn, label %bb.ajp

bb.ajp:                                           ; preds = %bb.ajo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  invoke void @_RNvMs3_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @917, i64 noundef 3)
          to label %bb.ajq unwind label %bb.ajf

bb.ajq:                                           ; preds = %bb.ajp
  call void @llvm.experimental.noalias.scope.decl(metadata !14411)
  call void @llvm.experimental.noalias.scope.decl(metadata !14414)
  %i.bhw = load ptr, ptr %i.cc, align 8, !alias.scope !14414, !noalias !14416, !noundef !12
  %i.bhx = icmp eq ptr %i.bhw, null
  br i1 %i.bhx, label %bb.ajr, label %bb.ajv, !prof !51

bb.ajr:                                           ; preds = %bb.ajq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14418
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bhy, i64 24, i1 false), !noalias !14416
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @918) #50
          to label %bb.ajt unwind label %bb.ajs, !noalias !14419

bb.ajs:                                           ; preds = %bb.ajr
  %i.bhz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsonPGffhQyS_5regex5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #52
          to label %.body6132 unwind label %bb.aju, !noalias !14419

bb.ajt:                                           ; preds = %bb.ajr
  unreachable

bb.aju:                                           ; preds = %bb.ajs
  %i.bia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !14419
  unreachable

bb.ajv:                                           ; preds = %bb.ajq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !alias.scope !14419, !noalias !14420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  invoke fastcc void @_RINvMs3_NtNtCsonPGffhQyS_5regex5regex6stringNtB6_5Regex8replacenReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bhh, i64 noundef %i.bhj)
          to label %bb.ajy unwind label %bb.ajx

bb.ajw:                                           ; preds = %bb.ajz, %bb.ajx
  %.pn5919 = phi { ptr, i32 } [ %i.big, %bb.ajz ], [ %i.bib, %bb.ajx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string5RegexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cd) #52
          to label %.body6132 unwind label %bb.bt

bb.ajx:                                           ; preds = %bb.ajv
  %i.bib = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajw

bb.ajy:                                           ; preds = %bb.ajv
  %i.bic = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.bid = load ptr, ptr %i.bic, align 8, !nonnull !12
  %i.bie = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.bif = load i64, ptr %i.bie, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.bif, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aka unwind label %bb.ajz

bb.ajz:                                           ; preds = %bb.akb, %bb.ajy
  %i.big = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ce) #52
          to label %bb.ajw unwind label %bb.bt

bb.aka:                                           ; preds = %bb.ajy
  %i.bih = load i64, ptr %i.f, align 8, !range !49, !noundef !12
  %i.bii = trunc nuw i64 %i.bih to i1
  %i.bij = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bik = load i64, ptr %i.bij, align 8, !range !50, !noundef !12 ; 3 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bii, label %bb.akb, label %bb.akc, !prof !51

bb.akb:                                           ; preds = %bb.aka
  %i.bim = load i64, ptr %i.bil, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bik, i64 %i.bim) #50
          to label %bb.mj unwind label %bb.ajz

bb.akc:                                           ; preds = %bb.aka
  %i.bin = load ptr, ptr %i.bil, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bio = icmp ule i64 %i.bif, %i.bik
  call void @llvm.assume(i1 %i.bio)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not5916 = icmp eq i64 %i.bif, 0
  br i1 %.not5916, label %bb.akd, label %bb.ake

bb.akd:                                           ; preds = %bb.ake, %bb.akc
  store i64 %i.bik, ptr %i.cf, align 8
  %.sroa.45666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.bin, ptr %.sroa.45666.0..sroa_idx, align 8
  %.sroa.65667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.bif, ptr %.sroa.65667.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ce)
          to label %bb.akg unwind label %bb.akf

bb.ake:                                           ; preds = %bb.akc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bin, ptr nonnull align 1 %i.bid, i64 %i.bif, i1 false)
  br label %bb.akd

bb.akf:                                           ; preds = %bb.akd
  %i.bip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string5RegexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cd) #52
          to label %.thread6822 unwind label %bb.bt

bb.akg:                                           ; preds = %bb.akd
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string5RegexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cd)
          to label %bb.aki unwind label %.thread6829

.thread6829:                                      ; preds = %bb.akg
  %i.biq = landingpad { ptr, i32 }
          cleanup
  br label %.thread6822

bb.akh:                                           ; preds = %bb.aki
  %i.bir = landingpad { ptr, i32 }
          cleanup
  br label %.body6132

bb.aki:                                           ; preds = %bb.akg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  invoke void @_RNvNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier16to_string_scalar(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca)
          to label %bb.akj unwind label %bb.akh

bb.akj:                                           ; preds = %bb.aki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.bis = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
end_hunk_3
begin_hunk_4_@_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.uv = tail call i8 @llvm.scmp.i8.i64(i64 %i.ut, i64 %i.uu)
  br label %_RNvXsg_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit906

bb.dk:                                            ; preds = %bb.di
  %i.uw = getelementptr inbounds nuw i8, ptr %.tr603, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !alias.scope !14701, !noalias !14704, !nonnull !12, !noundef !12
  %i.uy = getelementptr inbounds nuw i8, ptr %.tr603, i64 32
  %i.uz = load i64, ptr %i.uy, align 8, !alias.scope !14701, !noalias !14704, !noundef !12 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.tr376604, i64 24
  %i.vb = load ptr, ptr %i.va, align 8, !alias.scope !14704, !noalias !14701, !nonnull !12, !noundef !12
  %i.vc = getelementptr inbounds nuw i8, ptr %.tr376604, i64 32
  %i.vd = load i64, ptr %i.vc, align 8, !alias.scope !14704, !noalias !14701, !noundef !12 ; 2 uses
  %spec.store.select.i904 = tail call i64 @llvm.umin.i64(i64 %i.uz, i64 %i.vd)
  %i.ve = tail call i32 @memcmp(ptr nonnull %i.ux, ptr nonnull %i.vb, i64 %spec.store.select.i904), !noalias !14706 ; 2 uses
  %i.vf = sext i32 %i.ve to i64
  %i.vg = icmp eq i32 %i.ve, 0
  %i.vh = sub i64 %i.uz, %i.vd
  %spec.select.i905 = select i1 %i.vg, i64 %i.vh, i64 %i.vf
  %i.vi = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i905, i64 0)
  br label %_RNvXsg_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit906

bb.dl:                                            ; preds = %bb.di
  %i.vj = getelementptr inbounds nuw i8, ptr %.tr603, i64 24
  %i.vk = load ptr, ptr %i.vj, align 8, !alias.scope !14701, !noalias !14704, !nonnull !12, !noundef !12
  %i.vl = getelementptr inbounds nuw i8, ptr %.tr603, i64 32
  %i.vm = load i64, ptr %i.vl, align 8, !alias.scope !14701, !noalias !14704, !noundef !12 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.tr376604, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !14704, !noalias !14701, !nonnull !12, !noundef !12
  %i.vp = getelementptr inbounds nuw i8, ptr %.tr376604, i64 32
  %i.vq = load i64, ptr %i.vp, align 8, !alias.scope !14704, !noalias !14701, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14710)
  %.sroa.0.0.i.i.i897 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.vq, i64 range(i64 0, 384307168202282326) %i.vm) ; 2 uses
  %exitcond.not.i.i8991423 = icmp eq i64 %.sroa.0.0.i.i.i897, 0
  br i1 %exitcond.not.i.i8991423, label %._crit_edge1427, label %.lr.ph1426

bb.dm:                                            ; preds = %.lr.ph1426
  %i.vr = add nuw nsw i64 %.sroa.01.0.i.i8981424, 1 ; 2 uses
  %exitcond.not.i.i899 = icmp eq i64 %i.vr, %.sroa.0.0.i.i.i897
  br i1 %exitcond.not.i.i899, label %._crit_edge1427, label %.lr.ph1426

._crit_edge1427:                                  ; preds = %bb.dm, %bb.dl
  %i.vs = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 384307168202282326) %i.vm, i64 range(i64 0, 384307168202282326) %i.vq)
  br label %_RNvXsg_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit906

.lr.ph1426:                                       ; preds = %bb.dl, %bb.dm
  %.sroa.01.0.i.i8981424 = phi i64 [ %i.vr, %bb.dm ], [ 0, %bb.dl ] ; 3 uses
  %i.vt = getelementptr inbounds nuw [24 x i8], ptr %i.vk, i64 %.sroa.01.0.i.i8981424 ; 2 uses
  %i.vu = getelementptr inbounds nuw [24 x i8], ptr %i.vo, i64 %.sroa.01.0.i.i8981424 ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vt, i64 8
  %.val16.i.i900 = load ptr, ptr %i.vv, align 8, !alias.scope !14707, !noalias !14712, !nonnull !12, !noundef !12
  %i.vw = getelementptr i8, ptr %i.vt, i64 16
  %.val17.i.i901 = load i64, ptr %i.vw, align 8, !alias.scope !14707, !noalias !14712, !noundef !12
  %i.vx = getelementptr i8, ptr %i.vu, i64 8
  %.val18.i.i902 = load ptr, ptr %i.vx, align 8, !alias.scope !14710, !noalias !14713, !nonnull !12, !noundef !12
  %i.vy = getelementptr i8, ptr %i.vu, i64 16
  %.val19.i.i903 = load i64, ptr %i.vy, align 8, !alias.scope !14710, !noalias !14713, !noundef !12
  %i.vz = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i.i900, i64 noundef %.val17.i.i901, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val18.i.i902, i64 noundef %.val19.i.i903), !noalias !14714 ; 2 uses
  %i.wa = icmp eq i8 %i.vz, 0
  br i1 %i.wa, label %bb.dm, label %_RNvXsg_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit906

_RNvXsg_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit906: ; preds = %.lr.ph1426, %bb.dj, %bb.dk, %._crit_edge1427
  %.sroa.0.0.i896 = phi i8 [ %i.uv, %bb.dj ], [ %i.vi, %bb.dk ], [ %i.vs, %._crit_edge1427 ], [ %i.vz, %.lr.ph1426 ] ; 2 uses
  %i.wb = icmp eq i8 %.sroa.0.0.i896, 0
  br i1 %i.wb, label %tailrecurse.backedge.sink.split, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dn:                                            ; preds = %bb.w
  %i.wc = getelementptr inbounds nuw i8, ptr %.tr603, i64 112
  %i.wd = load ptr, ptr %i.wc, align 8, !nonnull !12, !noundef !12
  %i.we = getelementptr inbounds nuw i8, ptr %.tr376604, i64 112
  %i.wf = load ptr, ptr %i.we, align 8, !nonnull !12, !noundef !12
  %i.wg = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wf) #55 ; 2 uses
  %i.wh = icmp eq i8 %i.wg, 0
  br i1 %i.wh, label %bb.do, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.do:                                            ; preds = %bb.dn
  %i.wi = getelementptr inbounds nuw i8, ptr %.tr603, i64 56 ; 2 uses
  %i.wj = load i8, ptr %i.wi, align 8, !range !5302, !noundef !12
  %.not311 = icmp eq i8 %i.wj, 116
  %i.wk = getelementptr inbounds nuw i8, ptr %.tr376604, i64 56 ; 2 uses
  %i.wl = load i8, ptr %i.wk, align 8, !range !5302, !noundef !12
  %.not312 = icmp eq i8 %i.wl, 116                ; 2 uses
  br i1 %.not311, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  br i1 %.not312, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ds

bb.dq:                                            ; preds = %bb.do
  br i1 %.not312, label %bb.dr, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dr:                                            ; preds = %bb.ds, %bb.dq
  %i.wm = getelementptr inbounds nuw i8, ptr %.tr603, i64 32
  %i.wn = load i64, ptr %i.wm, align 8, !range !50, !noundef !12
  %.not314 = icmp eq i64 %i.wn, -9223372036854775808
  %i.wo = getelementptr inbounds nuw i8, ptr %.tr376604, i64 32
  %i.wp = load i64, ptr %i.wo, align 8, !range !50, !noundef !12
  %.not315 = icmp eq i64 %i.wp, -9223372036854775808 ; 2 uses
  br i1 %.not314, label %bb.du, label %bb.dt

bb.ds:                                            ; preds = %bb.dp
  %i.wq = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wk) #55 ; 2 uses
  %i.wr = icmp eq i8 %i.wq, 0
  br i1 %i.wr, label %bb.dr, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dt:                                            ; preds = %bb.dr
  br i1 %.not315, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dw

bb.du:                                            ; preds = %bb.dr
  br i1 %.not315, label %bb.dv, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dv:                                            ; preds = %bb.dw, %bb.du
  %i.ws = getelementptr inbounds nuw i8, ptr %.tr603, i64 121
  %i.wt = load i8, ptr %i.ws, align 1, !range !208, !noundef !12
  %i.wu = getelementptr inbounds nuw i8, ptr %.tr376604, i64 121
  %i.wv = load i8, ptr %i.wu, align 1, !range !208, !noundef !12
  %i.ww = sub nsw i8 %i.wt, %i.wv                 ; 2 uses
  %i.wx = icmp eq i8 %i.ww, 0
  br i1 %i.wx, label %bb.dx, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dw:                                            ; preds = %bb.dt
  %i.wy = getelementptr inbounds nuw i8, ptr %.tr603, i64 40
  %.val352 = load ptr, ptr %i.wy, align 8, !nonnull !12, !noundef !12
  %i.wz = getelementptr inbounds nuw i8, ptr %.tr603, i64 48
  %.val353 = load i64, ptr %i.wz, align 8, !noundef !12
  %i.xa = getelementptr inbounds nuw i8, ptr %.tr376604, i64 40
  %.val354 = load ptr, ptr %i.xa, align 8, !nonnull !12, !noundef !12
  %i.xb = getelementptr inbounds nuw i8, ptr %.tr376604, i64 48
  %.val355 = load i64, ptr %i.xb, align 8, !noundef !12
  %i.xc = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val352, i64 noundef %.val353, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val354, i64 noundef %.val355) ; 2 uses
  %i.xd = icmp eq i8 %i.xc, 0
  br i1 %i.xd, label %bb.dv, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dx:                                            ; preds = %bb.dv
  %i.xe = getelementptr inbounds nuw i8, ptr %.tr603, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !nonnull !12, !noundef !12
  %i.xg = getelementptr inbounds nuw i8, ptr %.tr603, i64 24
  %i.xh = load i64, ptr %i.xg, align 8, !noundef !12 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.tr376604, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !nonnull !12, !noundef !12
  %i.xk = getelementptr inbounds nuw i8, ptr %.tr376604, i64 24
  %i.xl = load i64, ptr %i.xk, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i907 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 28120036697727976) %i.xl, i64 range(i64 0, 28120036697727976) %i.xh) ; 2 uses
  %exitcond.not.i9091448 = icmp eq i64 %.sroa.0.0.i.i907, 0
  br i1 %exitcond.not.i9091448, label %._crit_edge1452, label %.lr.ph1451

bb.dy:                                            ; preds = %.lr.ph1451
  %i.xm = add nuw nsw i64 %.sroa.01.0.i9081449, 1 ; 2 uses
  %exitcond.not.i909 = icmp eq i64 %i.xm, %.sroa.0.0.i.i907
  br i1 %exitcond.not.i909, label %._crit_edge1452, label %.lr.ph1451

._crit_edge1452:                                  ; preds = %bb.dy, %bb.dx
  %i.xn = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 28120036697727976) %i.xh, i64 range(i64 0, 28120036697727976) %i.xl)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph1451:                                       ; preds = %bb.dx, %bb.dy
  %.sroa.01.0.i9081449 = phi i64 [ %i.xm, %bb.dy ], [ 0, %bb.dx ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [328 x i8], ptr %i.xf, i64 %.sroa.01.0.i9081449
  %i.xp = getelementptr inbounds nuw [328 x i8], ptr %i.xj, i64 %.sroa.01.0.i9081449
  %i.xq = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xp) #55, !inline_history !14124 ; 2 uses
  %i.xr = icmp eq i8 %i.xq, 0
  br i1 %i.xr, label %bb.dy, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.dz:                                            ; preds = %bb.x
  %i.xs = getelementptr inbounds nuw i8, ptr %.tr603, i64 160
  %i.xt = load ptr, ptr %i.xs, align 8, !nonnull !12, !noundef !12
  %i.xu = getelementptr inbounds nuw i8, ptr %.tr376604, i64 160
  %i.xv = load ptr, ptr %i.xu, align 8, !nonnull !12, !noundef !12
  %i.xw = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xv) #55 ; 2 uses
  %i.xx = icmp eq i8 %i.xw, 0
  br i1 %i.xx, label %bb.ea, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ea:                                            ; preds = %bb.dz
  %i.xy = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ev) #55 ; 2 uses
  %i.xz = icmp eq i8 %i.xy, 0
  br i1 %i.xz, label %bb.eb, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.eb:                                            ; preds = %bb.ea
  %i.ya = getelementptr inbounds nuw i8, ptr %.tr603, i64 8 ; 2 uses
  %i.yb = load i64, ptr %i.ya, align 8, !range !14715, !noundef !12
  %.not308 = icmp eq i64 %i.yb, -9223372036854775786
  %i.yc = getelementptr inbounds nuw i8, ptr %.tr376604, i64 8 ; 2 uses
  %i.yd = load i64, ptr %i.yc, align 8, !range !14715, !noundef !12 ; 2 uses
  br i1 %.not308, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not310 = icmp eq i64 %i.yd, -9223372036854775786
  br i1 %.not310, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %.not309 = icmp ne i64 %i.yd, -9223372036854775786
  %.339 = sext i1 %.not309 to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ee:                                            ; preds = %bb.ec
  %i.ye = tail call fastcc noundef i8 @_RNvXs5C_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CastFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ya, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.yc) #55
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ef:                                            ; preds = %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.yf = getelementptr inbounds nuw i8, ptr %.tr376604, i64 88
  %i.yg = getelementptr inbounds nuw i8, ptr %.tr603, i64 88
  %.val370 = load i8, ptr %i.yg, align 8, !range !208, !noundef !12
  %.val371 = load i8, ptr %i.yf, align 8, !range !208, !noundef !12
  %i.yh = sub nsw i8 %.val370, %.val371           ; 2 uses
  %i.yi = icmp eq i8 %i.yh, 0
  br i1 %i.yi, label %tailrecurse.backedge.sink.split, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.eg:                                            ; preds = %bb.ah
  %i.yj = getelementptr inbounds nuw i8, ptr %.tr376604, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.tr603, i64 8
  %i.yl = tail call fastcc noundef i8 @_RNvXs6q_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yj) #55
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.eh:                                            ; preds = %bb.ai
  %i.ym = getelementptr inbounds nuw i8, ptr %.tr376604, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.tr603, i64 8
  %i.yo = tail call fastcc noundef i8 @_RNvXs6q_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ym) #55
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ei:                                            ; preds = %bb.ak
  %i.yp = getelementptr inbounds nuw i8, ptr %.tr603, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !align !209, !noundef !12 ; 2 uses
  %.not302 = icmp eq ptr %i.yq, null
  %i.yr = getelementptr inbounds nuw i8, ptr %.tr376604, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !align !209, !noundef !12 ; 2 uses
  %.not303 = icmp eq ptr %i.ys, null              ; 2 uses
  br i1 %.not302, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not303, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.em

bb.ek:                                            ; preds = %bb.ei
  br i1 %.not303, label %bb.el, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.el:                                            ; preds = %bb.em, %bb.ek
  %i.yt = getelementptr inbounds nuw i8, ptr %.tr603, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !align !209, !noundef !12 ; 2 uses
  %.not305 = icmp eq ptr %i.yu, null
  %i.yv = getelementptr inbounds nuw i8, ptr %.tr376604, i64 16
  %i.yw = load ptr, ptr %i.yv, align 8, !align !209, !noundef !12 ; 2 uses
  %.not306 = icmp eq ptr %i.yw, null              ; 2 uses
  br i1 %.not305, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ej
  %i.yx = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ys) #55 ; 2 uses
  %i.yy = icmp eq i8 %i.yx, 0
  br i1 %i.yy, label %bb.el, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.en:                                            ; preds = %bb.el
  br i1 %.not306, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.eq

bb.eo:                                            ; preds = %bb.el
  br i1 %.not306, label %bb.ep, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ep:                                            ; preds = %bb.eq, %bb.eo
  %i.yz = getelementptr inbounds nuw i8, ptr %.tr603, i64 32
  %i.za = load i8, ptr %i.yz, align 8, !range !208, !noundef !12
  %i.zb = getelementptr inbounds nuw i8, ptr %.tr376604, i64 32
  %i.zc = load i8, ptr %i.zb, align 8, !range !208, !noundef !12
  %i.zd = sub nsw i8 %i.za, %i.zc                 ; 2 uses
  %i.ze = icmp eq i8 %i.zd, 0
  br i1 %i.ze, label %bb.er, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.eq:                                            ; preds = %bb.en
  %i.zf = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.yw) #55 ; 2 uses
  %i.zg = icmp eq i8 %i.zf, 0
  br i1 %i.zg, label %bb.ep, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.er:                                            ; preds = %bb.ep
  %i.zh = getelementptr inbounds nuw i8, ptr %.tr603, i64 33
  %i.zi = load i8, ptr %i.zh, align 1, !range !208, !noundef !12
  %i.zj = getelementptr inbounds nuw i8, ptr %.tr376604, i64 33
  %i.zk = load i8, ptr %i.zj, align 1, !range !208, !noundef !12
  %i.zl = sub nsw i8 %i.zi, %i.zk
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.es:                                            ; preds = %bb.al
  %i.zm = getelementptr inbounds nuw i8, ptr %.tr603, i64 48
  %i.zn = load i8, ptr %i.zm, align 8, !range !1459, !noundef !12 ; 3 uses
  %.not293 = icmp eq i8 %i.zn, 3
  %i.zo = getelementptr inbounds nuw i8, ptr %.tr376604, i64 48
  %i.zp = load i8, ptr %i.zo, align 8, !range !1459, !noundef !12 ; 3 uses
  %.not294 = icmp eq i8 %i.zp, 3                  ; 2 uses
  br i1 %.not293, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  br i1 %.not294, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ew

bb.eu:                                            ; preds = %bb.es
  br i1 %.not294, label %bb.ev, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ev:                                            ; preds = %bb.ew, %bb.eu
  %i.zq = getelementptr inbounds nuw i8, ptr %.tr603, i64 40
  %i.zr = load ptr, ptr %i.zq, align 8, !align !209, !noundef !12 ; 2 uses
  %.not296 = icmp eq ptr %i.zr, null
  %i.zs = getelementptr inbounds nuw i8, ptr %.tr376604, i64 40
  %i.zt = load ptr, ptr %i.zs, align 8, !align !209, !noundef !12 ; 2 uses
  %.not297 = icmp eq ptr %i.zt, null              ; 2 uses
  br i1 %.not296, label %bb.ey, label %bb.ex

bb.ew:                                            ; preds = %bb.et
  %i.zu = zext nneg i8 %i.zn to i64
  %i.zv = zext nneg i8 %i.zp to i64
  %i.zw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.zu, i64 %i.zv)
  %i.zx = icmp eq i8 %i.zn, %i.zp
  br i1 %i.zx, label %bb.ev, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ex:                                            ; preds = %bb.ev
  br i1 %.not297, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fa

bb.ey:                                            ; preds = %bb.ev
  br i1 %.not297, label %bb.ez, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ez:                                            ; preds = %bb.fa, %bb.ey
  %i.zy = getelementptr inbounds nuw i8, ptr %.tr603, i64 8
  %i.zz = load i64, ptr %i.zy, align 8, !range !50, !noundef !12
  %.not299 = icmp eq i64 %i.zz, -9223372036854775808
  %i.aaa = getelementptr inbounds nuw i8, ptr %.tr376604, i64 8
  %i.aab = load i64, ptr %i.aaa, align 8, !range !50, !noundef !12 ; 2 uses
  br i1 %.not299, label %bb.fc, label %bb.fb

bb.fa:                                            ; preds = %bb.ex
  %i.aac = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.zr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.zt) #55 ; 2 uses
  %i.aad = icmp eq i8 %i.aac, 0
  br i1 %i.aad, label %bb.ez, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fb:                                            ; preds = %bb.ez
  %.not301 = icmp eq i64 %i.aab, -9223372036854775808
  br i1 %.not301, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fd

bb.fc:                                            ; preds = %bb.ez
  %.not300 = icmp ne i64 %i.aab, -9223372036854775808
  %.341 = sext i1 %.not300 to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fd:                                            ; preds = %bb.fb
  %i.aae = getelementptr inbounds nuw i8, ptr %.tr603, i64 16
  %i.aaf = load ptr, ptr %i.aae, align 8, !nonnull !12, !noundef !12
  %i.aag = getelementptr inbounds nuw i8, ptr %.tr603, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !noundef !12 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.tr376604, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8, !nonnull !12, !noundef !12
  %i.aak = getelementptr inbounds nuw i8, ptr %.tr376604, i64 24
  %i.aal = load i64, ptr %i.aak, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i912 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 28120036697727976) %i.aal, i64 range(i64 0, 28120036697727976) %i.aah) ; 2 uses
  %exitcond.not.i9141443 = icmp eq i64 %.sroa.0.0.i.i912, 0
  br i1 %exitcond.not.i9141443, label %._crit_edge1447, label %.lr.ph1446

bb.fe:                                            ; preds = %.lr.ph1446
  %i.aam = add nuw nsw i64 %.sroa.01.0.i9131444, 1 ; 2 uses
  %exitcond.not.i914 = icmp eq i64 %i.aam, %.sroa.0.0.i.i912
  br i1 %exitcond.not.i914, label %._crit_edge1447, label %.lr.ph1446

._crit_edge1447:                                  ; preds = %bb.fe, %bb.fd
  %i.aan = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 28120036697727976) %i.aah, i64 range(i64 0, 28120036697727976) %i.aal)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph1446:                                       ; preds = %bb.fd, %bb.fe
  %.sroa.01.0.i9131444 = phi i64 [ %i.aam, %bb.fe ], [ 0, %bb.fd ] ; 3 uses
  %i.aao = getelementptr inbounds nuw [328 x i8], ptr %i.aaf, i64 %.sroa.01.0.i9131444
  %i.aap = getelementptr inbounds nuw [328 x i8], ptr %i.aaj, i64 %.sroa.01.0.i9131444
  %i.aaq = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aap) #55, !inline_history !14124 ; 2 uses
  %i.aar = icmp eq i8 %i.aaq, 0
  br i1 %i.aar, label %bb.fe, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ff:                                            ; preds = %bb.am
  %i.aas = getelementptr inbounds nuw i8, ptr %.tr603, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !nonnull !12, !noundef !12
  %i.aau = getelementptr inbounds nuw i8, ptr %.tr376604, i64 16
  %i.aav = load ptr, ptr %i.aau, align 8, !nonnull !12, !noundef !12
  %i.aaw = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aat, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aav) #55 ; 2 uses
  %i.aax = icmp eq i8 %i.aaw, 0
  br i1 %i.aax, label %bb.fg, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fg:                                            ; preds = %bb.ff
  %i.aay = getelementptr inbounds nuw i8, ptr %.tr603, i64 24
  %i.aaz = load ptr, ptr %i.aay, align 8, !nonnull !12, !noundef !12
  %i.aba = getelementptr inbounds nuw i8, ptr %.tr376604, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8, !nonnull !12, !noundef !12
  %i.abc = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aaz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.abb) #55 ; 2 uses
  %i.abd = icmp eq i8 %i.abc, 0
  br i1 %i.abd, label %bb.fh, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fh:                                            ; preds = %bb.fg
  %i.abe = getelementptr inbounds nuw i8, ptr %.tr603, i64 32
  %i.abf = load ptr, ptr %i.abe, align 8, !align !209, !noundef !12 ; 2 uses
  %.not290 = icmp eq ptr %i.abf, null
  %i.abg = getelementptr inbounds nuw i8, ptr %.tr376604, i64 32
  %i.abh = load ptr, ptr %i.abg, align 8, !align !209, !noundef !12 ; 3 uses
  br i1 %.not290, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.not292 = icmp eq ptr %i.abh, null
  br i1 %.not292, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %tailrecurse.backedge

bb.fj:                                            ; preds = %bb.fh
  %.not291 = icmp ne ptr %i.abh, null
  %.342 = sext i1 %.not291 to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fk:                                            ; preds = %bb.an
  %i.abi = getelementptr inbounds nuw i8, ptr %.tr603, i64 16
  %.val348 = load ptr, ptr %i.abi, align 8, !nonnull !12, !noundef !12
end_hunk_4
begin_hunk_5_@_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %or.cond = icmp eq i64 %i.q, 0
  br i1 %or.cond, label %bb.n, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.tr60, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !157, !noundef !12 ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  %i.u = add i64 %i.s, -9223372036854775807
  %i.v = select i1 %i.t, i64 %i.u, i64 0          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.tr2561, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !157, !noundef !12 ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  %i.z = add i64 %i.x, -9223372036854775807
  %i.aa = select i1 %i.y, i64 %i.z, i64 0         ; 2 uses
  %i.ab = or i64 %i.aa, %i.v
  %or.cond1 = icmp eq i64 %i.ab, 0
  br i1 %or.cond1, label %bb.p, label %bb.o

bb.d:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr60, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr60, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr2561, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr2561, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15146)
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.aj, i64 range(i64 0, 144115188075855872) %i.af) ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i138, label %._crit_edge142, label %.lr.ph141

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %exitcond.not.i = icmp eq i64 %i.al, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge142, label %.lr.ph141

._crit_edge142:                                   ; preds = %bb.e, %bb.d
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.af, i64 range(i64 0, 144115188075855872) %i.aj)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph141:                                        ; preds = %bb.d, %bb.e
  %.sroa.01.0.i139 = phi i64 [ %i.al, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.al = add nuw nsw i64 %.sroa.01.0.i139, 1     ; 2 uses
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.sroa.01.0.i139 ; 2 uses
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %.sroa.01.0.i139 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15156)
  %i.ao = load i64, ptr %i.am, align 8, !range !157, !alias.scope !15158, !noalias !15159, !noundef !12 ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  %i.aq = add i64 %i.ao, -9223372036854775807
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 0       ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !range !157, !alias.scope !15159, !noalias !15158, !noundef !12 ; 2 uses
  %i.at = icmp slt i64 %i.as, 0
  %i.au = add i64 %i.as, -9223372036854775807
  %i.av = select i1 %i.at, i64 %i.au, i64 0       ; 2 uses
  %i.aw = or i64 %i.av, %i.ar
  %or.cond.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph141
  %i.ax = tail call i8 @llvm.scmp.i8.i64(i64 %i.ar, i64 %i.av)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.g:                                             ; preds = %.lr.ph141
  %i.ay = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.an)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i = phi i8 [ %i.ay, %bb.g ], [ %i.ax, %bb.f ] ; 2 uses
  %i.az = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.az, label %bb.e, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr60, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr60, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2561, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr2561, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i19 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.bh, i64 range(i64 0, 128102389400760776) %i.bd) ; 2 uses
  %exitcond82.not133 = icmp eq i64 %.sroa.0.0.i19, 0
  br i1 %exitcond82.not133, label %._crit_edge137, label %.lr.ph136

bb.i:                                             ; preds = %.lr.ph136
  %i.bi = add nuw i64 %.sroa.01.0.i7134, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bi, %.sroa.0.0.i19
  br i1 %exitcond82.not, label %._crit_edge137, label %.lr.ph136

._crit_edge137:                                   ; preds = %bb.i, %bb.h
  %i.bj = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.bd, i64 %i.bh)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph136:                                        ; preds = %bb.h, %bb.i
  %.sroa.01.0.i7134 = phi i64 [ %i.bi, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.bb, i64 %.sroa.01.0.i7134
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %i.bf, i64 %.sroa.01.0.i7134
  %i.bm = tail call fastcc noundef i8 @_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bl) #55, !inline_history !15160 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

tailrecurse:                                      ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr60, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2561, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bs = load i32, ptr %i.bp, align 8, !range !15142, !noundef !12 ; 3 uses
  %i.bt = load i32, ptr %i.br, align 8, !range !15142, !noundef !12 ; 2 uses
  %.not = icmp eq i32 %i.bs, %i.bt
  br i1 %.not, label %.lr.ph, label %tailrecurse._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr60, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !12, !noundef !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr60, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.tr2561, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !12, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr2561, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i21 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.cb, i64 range(i64 0, 128102389400760776) %i.bx) ; 2 uses
  %exitcond.not130 = icmp eq i64 %.sroa.0.0.i21, 0
  br i1 %exitcond.not130, label %._crit_edge, label %.lr.ph132

bb.k:                                             ; preds = %.lr.ph132
  %i.cc = add nuw i64 %.sroa.01.0.i11131, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i21
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph132

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.cd = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.bx, i64 %i.cb)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph132:                                        ; preds = %bb.j, %bb.k
  %.sroa.01.0.i11131 = phi i64 [ %i.cc, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [72 x i8], ptr %i.bv, i64 %.sroa.01.0.i11131
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %.sroa.01.0.i11131
  %i.cg = tail call fastcc noundef i8 @_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cf) #55, !inline_history !15160 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr60, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !12, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr2561, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !12, !noundef !12
  %i.cm = tail call fastcc noundef i8 @_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cl) #55 ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.b
  %i.co = tail call i8 @llvm.scmp.i8.i64(i64 %i.k, i64 %i.p)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.b
  %i.cp = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph132, %.lr.ph136, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %._crit_edge, %._crit_edge137, %._crit_edge142, %bb.l, %bb.o, %bb.p, %bb.m, %bb.n, %tailrecurse._crit_edge
  %.sroa.0.0 = phi i8 [ %i.f, %tailrecurse._crit_edge ], [ %i.cp, %bb.n ], [ %i.co, %bb.m ], [ %i.cr, %bb.p ], [ %i.cq, %bb.o ], [ %i.cm, %bb.l ], [ %i.dy, %bb.x ], [ %i.ds, %bb.w ], [ %i.bm, %.lr.ph136 ], [ %.sroa.0.0.i.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ak, %._crit_edge142 ], [ %i.bj, %._crit_edge137 ], [ %i.cd, %._crit_edge ], [ %i.cy, %bb.s ], [ %i.dd, %bb.t ], [ %i.di, %bb.u ], [ %i.dn, %bb.v ], [ %i.cg, %.lr.ph132 ]
  ret i8 %.sroa.0.0

bb.o:                                             ; preds = %bb.c
  %i.cq = tail call i8 @llvm.scmp.i8.i64(i64 %i.v, i64 %i.aa)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.c
  %i.cr = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr2561, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr60, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15164)
  %i.cu = load i32, ptr %i.ct, align 4, !range !15142, !alias.scope !15161, !noalias !15164, !noundef !12 ; 3 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = load i32, ptr %i.cs, align 4, !range !15142, !alias.scope !15164, !noalias !15161, !noundef !12 ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %.not.i17 = icmp eq i32 %i.cu, %i.cw
  br i1 %.not.i17, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  switch i32 %i.cu, label %bb.s [
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cy = tail call i8 @llvm.scmp.i8.i64(i64 %i.cv, i64 %i.cx)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr60, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !alias.scope !15161, !noalias !15164, !noundef !12
  %i.db = getelementptr inbounds nuw i8, ptr %.tr2561, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !alias.scope !15164, !noalias !15161, !noundef !12
  %i.dd = tail call i8 @llvm.ucmp.i8.i32(i32 %i.da, i32 %i.dc)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.tr60, i64 8
  %i.df = load i32, ptr %i.de, align 8, !alias.scope !15161, !noalias !15164, !noundef !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr2561, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !alias.scope !15164, !noalias !15161, !noundef !12
  %i.di = tail call i8 @llvm.ucmp.i8.i32(i32 %i.df, i32 %i.dh)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr60, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !alias.scope !15161, !noalias !15164, !noundef !12
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr2561, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !alias.scope !15164, !noalias !15161, !noundef !12
  %i.dn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.dk, i32 %i.dm)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %.tr60, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !alias.scope !15161, !noalias !15164, !noundef !12 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr2561, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !alias.scope !15164, !noalias !15161, !noundef !12 ; 2 uses
  %i.ds = tail call i8 @llvm.ucmp.i8.i32(i32 %i.dp, i32 %i.dr)
  %i.dt = icmp eq i32 %i.dp, %i.dr
  br i1 %i.dt, label %bb.x, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %.tr60, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !alias.scope !15161, !noalias !15164, !noundef !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr2561, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !alias.scope !15164, !noalias !15161, !noundef !12
  %i.dy = tail call i8 @llvm.ucmp.i8.i32(i32 %i.dv, i32 %i.dx)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Y_s_0ECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !208, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !208, !noundef !12
  %i.e = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.h, align 8, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val21 = load i64, ptr %i.j, align 8, !noundef !12
  %i.k = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val18, i64 noundef %.val19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val20, i64 noundef %.val21) ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.n, -9223372036854775808
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !range !50, !noundef !12
  %.not10 = icmp eq i64 %i.p, -9223372036854775808 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not10, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %.not10, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.r = load i8, ptr %i.q, align 1, !range !1598, !noundef !12 ; 2 uses
  %.not12 = icmp eq i8 %i.r, 5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.t = load i8, ptr %i.s, align 1, !range !1598, !noundef !12 ; 3 uses
  br i1 %.not12, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val15 = load i64, ptr %i.v, align 8, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16 = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val17 = load i64, ptr %i.x, align 8, !noundef !12
  %i.y = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val16, i64 noundef %.val17) ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not14 = icmp eq i8 %i.t, 5
  br i1 %.not14, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %.not13 = icmp ne i8 %i.t, 5
  %. = sext i1 %.not13 to i8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = zext nneg i8 %i.r to i64
  %i.ab = zext nneg i8 %i.t to i64
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aa, i64 %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.a, %bb.g, %bb.j, %bb.b
  %.sroa.0.0 = phi i8 [ %i.k, %bb.b ], [ %i.ac, %bb.j ], [ %i.e, %bb.a ], [ %., %bb.i ], [ 1, %bb.d ], [ %i.y, %bb.g ], [ -1, %bb.e ], [ 1, %bb.h ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9S_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5008, !noundef !12
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !5008, !noundef !12
  %.not12 = icmp eq i64 %i.b, 69                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not12, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not12, label %bb.d, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load i8, ptr %i.c, align 8, !range !15166, !noundef !12
  %.not14 = icmp eq i8 %i.d, 103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.f = load i8, ptr %i.e, align 8, !range !15166, !noundef !12
  %.not15 = icmp eq i8 %i.f, 103                  ; 2 uses
  br i1 %.not14, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.d
  br i1 %.not15, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.h

bb.g:                                             ; preds = %bb.d
  br i1 %.not15, label %bb.h, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15170)
  %i.k = load i64, ptr %i.i, align 8, !range !50, !alias.scope !15167, !noalias !15170, !noundef !12
  %i.l = icmp ne i64 %i.k, -9223372036854775808   ; 2 uses
  %i.m = zext i1 %i.l to i8
  %i.n = load i64, ptr %i.j, align 8, !range !50, !alias.scope !15170, !noalias !15167, !noundef !12
  %i.o = icmp ne i64 %i.n, -9223372036854775808   ; 3 uses
  %.neg.i = sext i1 %i.o to i8
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.o, label %bb.n, label %bb.k

bb.j:                                             ; preds = %bb.h
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = add nsw i8 %.neg.i, %i.m
  br label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15167, !noalias !15170, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15167, !noalias !15170, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !15170, !noalias !15167, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !15170, !noalias !15167, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i18 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.x, i64 range(i64 0, 3431314001806093) %i.t) ; 2 uses
  %exitcond.not36 = icmp eq i64 %.sroa.0.0.i.i18, 0
  br i1 %exitcond.not36, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i37, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.sroa.0.0.i.i18
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.z = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.t, i64 %i.x)
  br label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.01.0.i37 = phi i64 [ %i.y, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2688 x i8], ptr %i.r, i64 %.sroa.01.0.i37
  %i.ab = getelementptr inbounds nuw [2688 x i8], ptr %i.v, i64 %.sroa.01.0.i37
  %i.ac = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ab) #55, !noalias !15172, !inline_history !15173 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %_RNvXsa2_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15177)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !15174, !noalias !15177, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !15174, !noalias !15177, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !15177, !noalias !15174, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !15177, !noalias !15174, !noundef !12 ; 2 uses
  %.sroa.0.0.i20 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.al, i64 range(i64 0, 3431314001806093) %i.ah) ; 2 uses
  %exitcond29.not38 = icmp eq i64 %.sroa.0.0.i20, 0
  br i1 %exitcond29.not38, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph41

bb.o:                                             ; preds = %.lr.ph41
  %i.am = add nuw i64 %.sroa.01.0.i.i39, 1        ; 2 uses
  %exitcond29.not = icmp eq i64 %i.am, %.sroa.0.0.i20
  br i1 %exitcond29.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2E_s_0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph41
end_hunk_5
begin_hunk_6_@_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
    i64 29, label %bb.w
    i64 30, label %bb.x
    i64 31, label %bb.y
    i64 32, label %tailrecurse.backedge
  ]

_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.ac, %bb.a, %bb.ah, %bb.s, %bb.r, %bb.aj, %bb.ai, %bb.af, %bb.ag, %bb.ad, %bb.f, %bb.aa, %bb.z, %bb.ak, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.dk, %bb.ab ], [ false, %bb.z ], [ %i.ch, %bb.u ], [ %.mux, %bb.ac ], [ %i.dt, %bb.ae ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.aa ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ false, %bb.ah ], [ false, %bb.r ], [ %i.cb, %bb.s ], [ false, %bb.af ], [ %i.dz, %bb.ai ], [ true, %bb.ad ], [ false, %bb.ag ], [ %i.ed, %bb.ak ], [ %i.cs, %bb.x ], [ %i.cp, %bb.w ], [ %i.aw, %bb.j ], [ %i.az, %bb.k ], [ %i.bc, %bb.l ], [ %i.bf, %bb.m ], [ %i.bi, %bb.n ], [ %i.bl, %bb.o ], [ %i.bq, %bb.p ], [ %i.bt, %bb.q ], [ false, %bb.aj ], [ %i.ce, %bb.t ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.q) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr83, i64 32
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr1384, i64 32
  %i.v = load ptr, ptr %i.u, align 16, !nonnull !12, !noundef !12 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.aa, label %bb.z

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.z = tail call noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.y)
  br i1 %i.z, label %bb.ac, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.tr13.be.in = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %.tr13.be = load ptr, ptr %.tr13.be.in, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.aj = load i64, ptr %.tr.be, align 16, !range !2421, !noundef !12 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 35
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -4
  %i.am = icmp samesign ugt i64 %i.aj, 3
  %i.an = select i1 %i.am, i64 %i.al, i64 31      ; 2 uses
  %i.ao = load i64, ptr %.tr13.be, align 16, !range !2421, !noundef !12 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 35
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -4
  %i.ar = icmp samesign ugt i64 %i.ao, 3
  %i.as = select i1 %i.ar, i64 %i.aq, i64 31
  %i.at = icmp eq i64 %i.an, %i.as
  br i1 %i.at, label %.lr.ph, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.az = tail call fastcc noundef zeroext i1 @_RNvXs1o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs2g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !12, !noundef !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !12, !noundef !12
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bp) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bs) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15945)
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.bv = load i8, ptr %i.bu, align 8, !range !208, !alias.scope !15942, !noalias !15945, !noundef !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !range !208, !alias.scope !15945, !noalias !15942, !noundef !12
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bz) #55, !inline_history !15947
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXs33_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10InSubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ch = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cg) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr83, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !186, !noundef !12
  %.not = icmp eq i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !186, !noundef !12
  %i.cm = icmp eq i64 %i.cl, 3                    ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cp = tail call fastcc noundef zeroext i1 @_RNvXs3h_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cs = tail call fastcc noundef zeroext i1 @_RNvXs3a_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11PlaceholderNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr83, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr1384, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.ak, label %bb.aj

bb.z:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.da = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cz)
  br i1 %i.da, label %bb.aa, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.e, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.tr83, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !noundef !12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !12
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.ab, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.dh = load ptr, ptr %i.dg, align 16, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !12, !noundef !12
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr83, i64 80
  %i.dm = load ptr, ptr %i.dl, align 16, !noundef !12 ; 3 uses
  %.not11 = icmp eq ptr %i.dm, null               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr1384, i64 80
  %i.do = load ptr, ptr %i.dn, align 16, !noundef !12 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  %brmerge = or i1 %.not11, %i.dp
  %.mux = and i1 %.not11, %i.dp
  br i1 %brmerge, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = icmp eq ptr %i.dm, %i.do
  br i1 %i.dq, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.v
  br i1 %i.cm, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.v
  br i1 %i.cm, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.af
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ck) #55
  br i1 %i.du, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.dw = load ptr, ptr %i.dv, align 16, !nonnull !12, !noundef !12
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !12, !noundef !12
  %i.dz = tail call fastcc noundef zeroext i1 @_RNvXs3o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dy) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ec = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eb)
  br i1 %i.ec, label %bb.ak, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.y, %bb.aj
  %i.ed = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr1384) #55
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !2421, !noundef !12 ; 3 uses
  %i.b = icmp ne i64 %i.a, 35
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -4
  %i.d = icmp samesign ugt i64 %i.a, 3
  %i.e = select i1 %i.d, i64 %i.c, i64 31         ; 3 uses
  %i.f = load i64, ptr %1, align 16, !range !2421, !noundef !12 ; 3 uses
  %i.g = icmp ne i64 %i.f, 35
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -4
  %i.i = icmp samesign ugt i64 %i.f, 3
  %i.j = select i1 %i.i, i64 %i.h, i64 31         ; 2 uses
  %.not117 = icmp eq i64 %i.e, %i.j
  br i1 %.not117, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.k = phi i64 [ %i.ar, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr23119 = phi ptr [ %.tr23.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 29 uses
  %.tr118 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 29 uses
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %tailrecurse.backedge
    i64 8, label %tailrecurse.backedge
    i64 9, label %tailrecurse.backedge
    i64 10, label %tailrecurse.backedge
    i64 11, label %tailrecurse.backedge
    i64 12, label %tailrecurse.backedge
    i64 13, label %tailrecurse.backedge
    i64 14, label %tailrecurse.backedge
    i64 15, label %tailrecurse.backedge
    i64 16, label %tailrecurse.backedge
    i64 17, label %bb.j
    i64 18, label %bb.k
    i64 19, label %bb.l
    i64 20, label %bb.m
    i64 21, label %bb.n
    i64 22, label %bb.o
    i64 23, label %bb.p
    i64 24, label %bb.q
    i64 25, label %bb.r
    i64 26, label %bb.s
    i64 27, label %bb.t
    i64 28, label %bb.u
    i64 29, label %bb.v
    i64 30, label %bb.w
    i64 31, label %bb.x
    i64 32, label %tailrecurse.backedge
  ]

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.lcssa47 = phi i64 [ %i.e, %bb.a ], [ %i.ar, %tailrecurse.backedge ]
  %.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.aw, %tailrecurse.backedge ]
  %i.l = tail call i8 @llvm.scmp.i8.i64(i64 %.lcssa47, i64 %.lcssa)
  br label %bb.y

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.o = tail call noundef i8 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_5AliasNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n)
  br label %bb.y

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.r = tail call fastcc noundef i8 @_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.q) #55
  br label %bb.y

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr118, i64 32
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.tr23119, i64 32
  %i.w = load ptr, ptr %i.v, align 16, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = tail call noundef i8 @_RNvXs1_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.x) ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.z, label %bb.y

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr118, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr23119, i64 16
  %i.ac = tail call noundef i8 @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.aa, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ab) ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.aa, label %bb.y

bb.g:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.ag = tail call fastcc noundef i8 @_RNvXs1i_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af) #55
  br label %bb.y

bb.h:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.aj = tail call fastcc noundef i8 @_RNvXs1w_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #55
  br label %bb.y

bb.i:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.am = tail call fastcc noundef i8 @_RNvXs1w_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al) #55
  br label %bb.y

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.tr23.be.in = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %.tr23.be = load ptr, ptr %.tr23.be.in, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.an = load i64, ptr %.tr.be, align 16, !range !2421, !noundef !12 ; 3 uses
  %i.ao = icmp ne i64 %i.an, 35
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nsw i64 %i.an, -4
  %i.aq = icmp samesign ugt i64 %i.an, 3
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 31      ; 3 uses
  %i.as = load i64, ptr %.tr23.be, align 16, !range !2421, !noundef !12 ; 3 uses
  %i.at = icmp ne i64 %i.as, 35
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nsw i64 %i.as, -4
  %i.av = icmp samesign ugt i64 %i.as, 3
  %i.aw = select i1 %i.av, i64 %i.au, i64 31      ; 2 uses
  %.not = icmp eq i64 %i.ar, %i.aw
  br i1 %.not, label %.lr.ph, label %tailrecurse._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.az = tail call fastcc noundef i8 @_RNvXs1D_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay) #55
  br label %bb.y

bb.k:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bc = tail call fastcc noundef i8 @_RNvXs1q_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bb) #55
  br label %bb.y

bb.l:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bf = tail call fastcc noundef i8 @_RNvXs1X_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #55
  br label %bb.y

bb.m:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bi = tail call fastcc noundef i8 @_RNvXs24_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #55
  br label %bb.y

bb.n:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bl = tail call fastcc noundef i8 @_RNvXs1K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk) #55
  br label %bb.y

bb.o:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bo = tail call fastcc noundef i8 @_RNvXs2i_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bn) #55
  br label %bb.y

bb.p:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !12, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !12, !noundef !12
  %i.bt = tail call fastcc noundef i8 @_RNvXs2D_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bs) #55
  br label %bb.y

bb.q:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.bw = tail call fastcc noundef i8 @_RNvXs2Y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv) #55
  br label %bb.y

bb.r:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15951)
  %i.bz = tail call fastcc noundef i8 @_RNvXs2T_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.by) #55, !inline_history !15953 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr118, i64 64
  %i.cc = load i8, ptr %i.cb, align 8, !range !208, !alias.scope !15948, !noalias !15951
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr23119, i64 64
  %i.ce = load i8, ptr %i.cd, align 8, !range !208, !alias.scope !15951, !noalias !15948
  %i.cf = sub nsw i8 %i.cc, %i.ce
  %.sroa.0.0.i = select i1 %i.ca, i8 %i.cf, i8 %i.bz
  br label %bb.y

bb.s:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.ci = tail call fastcc noundef i8 @_RNvXs35_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10InSubqueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ch) #55
  br label %bb.y

bb.t:                                             ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.cl = tail call fastcc noundef i8 @_RNvXs2T_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ck) #55
  br label %bb.y

bb.u:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr118, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !186, !noundef !12
  %.not17 = icmp eq i64 %i.cn, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !186, !noundef !12
  %.not18 = icmp eq i64 %i.cp, 3                  ; 2 uses
  br i1 %.not17, label %bb.af, label %bb.ae

bb.v:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.cs = tail call fastcc noundef i8 @_RNvXs3j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr) #55
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr118, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr23119, i64 8
  %i.cv = tail call fastcc noundef i8 @_RNvXs3c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11PlaceholderNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cu) #55
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr118, i64 104
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !12, !noundef !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr23119, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !12, !noundef !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = tail call noundef i8 @_RNvXs1_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.db) ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.x, %bb.ag, %bb.ah, %bb.ad, %bb.f, %bb.e, %bb.ai, %bb.z, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %tailrecurse._crit_edge
  %.sroa.0.0 = phi i8 [ %i.l, %tailrecurse._crit_edge ], [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.dm, %bb.z ], [ %i.y, %bb.e ], [ %i.dt, %bb.ad ], [ %i.dc, %bb.x ], [ %., %bb.ac ], [ %.sroa.0.0.i, %bb.r ], [ %i.ac, %bb.f ], [ %i.ag, %bb.g ], [ %i.aj, %bb.h ], [ %i.am, %bb.i ], [ 1, %bb.ae ], [ %i.eb, %bb.ai ], [ %i.cv, %bb.w ], [ %i.cs, %bb.v ], [ 1, %bb.ab ], [ -1, %bb.af ], [ %i.dz, %bb.ah ], [ %i.dy, %bb.ag ], [ %i.cl, %bb.t ], [ %i.ci, %bb.s ], [ %i.az, %bb.j ], [ %i.bc, %bb.k ], [ %i.bf, %bb.l ], [ %i.bi, %bb.m ], [ %i.bl, %bb.n ], [ %i.bo, %bb.o ], [ %i.bt, %bb.p ], [ %i.bw, %bb.q ]
  ret i8 %.sroa.0.0

bb.z:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %.tr118, i64 16
  %i.df = load ptr, ptr %i.de, align 16, !nonnull !12, !noundef !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr118, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %.tr23119, i64 16
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !12, !noundef !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr23119, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !12
  %i.dm = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.df, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dj, i64 noundef %i.dl) #55
  br label %bb.y

bb.aa:                                            ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr118, i64 80
  %i.do = load ptr, ptr %i.dn, align 16, !noundef !12 ; 2 uses
  %.not20 = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr23119, i64 80
  %i.dq = load ptr, ptr %i.dp, align 16, !noundef !12 ; 3 uses
  br i1 %.not20, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not22 = icmp eq ptr %i.dq, null
  br i1 %.not22, label %bb.y, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %.not21 = icmp ne ptr %i.dq, null
  %. = sext i1 %.not21 to i8
  br label %bb.y

bb.ad:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = tail call fastcc noundef i8 @_RNvXs1v_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds) #55
  br label %bb.y

bb.ae:                                            ; preds = %bb.u
  br i1 %.not18, label %bb.y, label %bb.ah

bb.af:                                            ; preds = %bb.u
  br i1 %.not18, label %bb.ag, label %bb.y

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %.tr118, i64 64
  %i.dv = load ptr, ptr %i.du, align 16, !nonnull !12, !noundef !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr23119, i64 64
  %i.dx = load ptr, ptr %i.dw, align 16, !nonnull !12, !noundef !12
  %i.dy = tail call fastcc noundef i8 @_RNvXs3q_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dx) #55
  br label %bb.y

bb.ah:                                            ; preds = %bb.ae
  %i.dz = tail call fastcc noundef i8 @_RNvXsj_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.co) #55 ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.ag, label %bb.y

bb.ai:                                            ; preds = %bb.x
  %i.eb = tail call fastcc noundef i8 @_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr23119) #55
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !15954, !noundef !12 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !15954, !nonnull !12, !noundef !12
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !15954, !noundef !12 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !15954
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !15957
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !15960, !noalias !15957, !noundef !12 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15960, !noalias !15957, !nonnull !12, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !15960, !noalias !15957
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !15960, !noalias !15957
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_6
begin_hunk_7_@_RNvXshM_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %.val17 = load i8, ptr %i.s, align 8, !range !358, !noundef !12
  %i.bt = zext nneg i8 %.val to i64
  %i.bu = zext nneg i8 %.val17 to i64
  %i.bv = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bt, i64 %i.bu)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXshW_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !50, !noundef !12
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !50, !noundef !12
  %i.d = icmp ne i64 %i.c, -9223372036854775808   ; 2 uses
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.neg = sext i1 %i.d to i8
  %i.e = zext i1 %i.b to i8
  %i.f = add nsw i8 %.neg, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsi6_NtCs4lawaffTVVK_9sqlparser3astNtB6_10DropDomainNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !208, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !208, !noundef !12
  %i.e = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.h, align 8, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.j, align 8, !noundef !12
  %i.k = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val9, i64 noundef %.val10) ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.n = load i8, ptr %i.m, align 1, !range !470, !noundef !12 ; 2 uses
  %.not = icmp eq i8 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.p = load i8, ptr %i.o, align 1, !range !470, !noundef !12 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7 = icmp eq i8 %i.p, 2
  %i.q = sub nsw i8 %i.n, %i.p
  %spec.select = select i1 %.not7, i8 1, i8 %i.q
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not6 = icmp ne i8 %i.p, 2
  %. = sext i1 %.not6 to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.k, %bb.b ], [ %spec.select, %bb.d ], [ %i.e, %bb.a ], [ %., %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsiK_NtCs4lawaffTVVK_9sqlparser3astNtB6_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !470, !noundef !12 ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !470, !noundef !12 ; 2 uses
  %.not8 = icmp eq i8 %i.d, 2                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !12 ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 13890620537431892) %i.l, i64 range(i64 0, 13890620537431892) %i.h) ; 2 uses
  %exitcond.not67 = icmp eq i64 %.sroa.0.0.i18, 0
  br i1 %exitcond.not67, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.sroa.01.0.i68, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %.sroa.0.0.i18
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.01.0.i68 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [664 x i8], ptr %i.f, i64 %.sroa.01.0.i68
  %i.o = getelementptr inbounds nuw [664 x i8], ptr %i.j, i64 %.sroa.01.0.i68
  %i.p = tail call fastcc noundef i8 @_RNvXshM_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %i.o) #55, !inline_history !14718 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.h, i64 %i.l)
  %i.s = icmp eq i64 %i.h, %i.l
  br i1 %i.s, label %bb.g, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.b
  %i.t = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !noundef !12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i20 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 27450512014448738) %i.ac, i64 range(i64 0, 27450512014448738) %i.y) ; 2 uses
  %exitcond48.not72 = icmp eq i64 %.sroa.0.0.i20, 0
  br i1 %exitcond48.not72, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, label %.lr.ph75

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond48.not = icmp eq i64 %i.ae, %.sroa.0.0.i20
  br i1 %exitcond48.not, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, label %.lr.ph75

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.g
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.y, i64 %i.ac)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph75:                                         ; preds = %bb.g, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.01.0.i1373 = phi i64 [ %i.ae, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %bb.g ] ; 3 uses
  %i.ae = add nuw i64 %.sroa.01.0.i1373, 1        ; 2 uses
  %i.af = getelementptr inbounds nuw [336 x i8], ptr %i.w, i64 %.sroa.01.0.i1373 ; 13 uses
  %i.ag = getelementptr inbounds nuw [336 x i8], ptr %i.aa, i64 %.sroa.01.0.i1373 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17101)
  %i.ah = load i64, ptr %i.af, align 8, !range !15358, !alias.scope !17103, !noalias !17104, !noundef !12 ; 3 uses
  %i.ai = icmp ne i64 %i.ah, 73
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i64 %i.ah, -69
  %i.ak = icmp samesign ugt i64 %i.ah, 68
  %i.al = select i1 %i.ak, i64 %i.aj, i64 4       ; 3 uses
  %i.am = load i64, ptr %i.ag, align 8, !range !15358, !alias.scope !17104, !noalias !17103, !noundef !12 ; 3 uses
  %i.an = icmp ne i64 %i.am, 73
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, -69
  %i.ap = icmp samesign ugt i64 %i.am, 68
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 4       ; 2 uses
  %.not.i.i = icmp eq i64 %i.al, %i.aq
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph75
  switch i64 %i.al, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.x
    i64 6, label %bb.y
    i64 7, label %bb.z
  ]

bb.i:                                             ; preds = %.lr.ph75
  %i.ar = tail call i8 @llvm.scmp.i8.i64(i64 %i.al, i64 %i.aq)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i = load i8, ptr %i.as, align 8, !range !208, !alias.scope !17103, !noalias !17104, !noundef !12
  %.val2.i.i = load i8, ptr %i.at, align 8, !range !208, !alias.scope !17104, !noalias !17103, !noundef !12
  %i.au = sub nsw i8 %.val.i.i, %.val2.i.i
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !17103, !noalias !17104, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !17103, !noalias !17104, !noundef !12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !17104, !noalias !17103, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !17104, !noalias !17103, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i25 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 6987403058223316) %i.bc, i64 range(i64 0, 6987403058223316) %i.ay) ; 2 uses
  %exitcond47.not69 = icmp eq i64 %.sroa.0.0.i.i25, 0
  br i1 %exitcond47.not69, label %._crit_edge, label %.lr.ph71

bb.m:                                             ; preds = %.lr.ph71
  %i.bd = add nuw i64 %.sroa.01.0.i2870, 1        ; 2 uses
  %exitcond47.not = icmp eq i64 %i.bd, %.sroa.0.0.i.i25
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph71

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.be = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.ay, i64 %i.bc)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

.lr.ph71:                                         ; preds = %bb.l, %bb.m
  %.sroa.01.0.i2870 = phi i64 [ %i.bd, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [1320 x i8], ptr %i.aw, i64 %.sroa.01.0.i2870
  %i.bg = getelementptr inbounds nuw [1320 x i8], ptr %i.ba, i64 %.sroa.01.0.i2870
  %i.bh = tail call fastcc noundef i8 @_RNvXsbq_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %i.bg) #55, !noalias !17105, !inline_history !17106 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bl = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bk) #55, !inline_history !17107
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17111)
  %i.bo = load i8, ptr %i.bm, align 8, !range !208, !alias.scope !17108, !noalias !17111, !noundef !12 ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 8, !range !208, !alias.scope !17111, !noalias !17108, !noundef !12 ; 2 uses
  %i.bq = and i8 %i.bp, %i.bo
  %or.cond.not.i = icmp eq i8 %i.bq, 0
  br i1 %or.cond.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = sub nsw i8 %i.bo, %i.bp
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !17108, !noalias !17111, !align !209, !noundef !12 ; 2 uses
  %.not.i23 = icmp eq ptr %i.bt, null
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !17111, !noalias !17108, !align !209, !noundef !12 ; 2 uses
  %.not6.i = icmp eq ptr %i.bv, null              ; 2 uses
  br i1 %.not.i23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not6.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.s:                                             ; preds = %bb.q
  br i1 %.not6.i, label %bb.t, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.bx = load i8, ptr %i.bw, align 1, !range !208, !alias.scope !17108, !noalias !17111, !noundef !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !range !208, !alias.scope !17111, !noalias !17108, !noundef !12
  %i.ca = sub nsw i8 %i.bx, %i.bz
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.r
  %i.cb = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bv) #55, !noalias !17113, !inline_history !17114 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17118)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 328
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  %.val.i21 = load i8, ptr %i.cd, align 8, !range !208, !alias.scope !17115, !noalias !17118, !noundef !12
  %.val4.i = load i8, ptr %i.ce, align 8, !range !208, !alias.scope !17118, !noalias !17115, !noundef !12
  %i.cf = sub nsw i8 %.val.i21, %.val4.i          ; 2 uses
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %bb.v
  %i.ch = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ag) #55, !inline_history !17120
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ck = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj) #55, !inline_history !17107
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val3.i.i = load i8, ptr %i.cl, align 8, !range !208, !alias.scope !17103, !noalias !17104, !noundef !12
  %.val4.i.i = load i8, ptr %i.cm, align 8, !range !208, !alias.scope !17104, !noalias !17103, !noundef !12
  %i.cn = sub nsw i8 %.val3.i.i, %.val4.i.i
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cq = tail call fastcc noundef range(i8 -1, 3) i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cp) #55, !inline_history !17121
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.p, %._crit_edge, %bb.i, %bb.k, %bb.n, %bb.x, %bb.y, %bb.z
  %.sroa.0.0.i.i = phi i8 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %i.cq, %bb.z ], [ %i.bl, %bb.n ], [ %i.br, %bb.p ], [ %i.ch, %bb.w ], [ %i.ck, %bb.x ], [ %i.cn, %bb.y ], [ %i.be, %._crit_edge ], [ %i.ca, %bb.t ], [ %i.cb, %bb.u ], [ %i.cf, %bb.v ]
  %.sroa.0.0.i.i.fr = freeze i8 %.sroa.0.0.i.i    ; 2 uses
  %i.cr = icmp eq i8 %.sroa.0.0.i.i.fr, 0
  br i1 %i.cr, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %bb.r, %bb.s, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph71, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, %bb.b, %bb.c, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.f
  %.sroa.0.0 = phi i8 [ %i.bh, %.lr.ph71 ], [ %i.r, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.t, %bb.f ], [ -1, %bb.c ], [ 1, %bb.b ], [ %i.ad, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge ], [ %.sroa.0.0.i.i.fr, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ], [ -1, %bb.s ], [ 1, %bb.r ], [ %i.p, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !50, !noundef !12
  %.not1 = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not1, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.m, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.m ], [ %i.q, %bb.f ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #52
          to label %bb.aa unwind label %bb.z

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.n

bb.i:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17122
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17122
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
          to label %bb.q unwind label %bb.k, !noalias !17126

bb.k:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #52
          to label %.body unwind label %bb.l, !noalias !17126

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17126
  unreachable

bb.m:                                             ; preds = %.body, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.v, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.j) #52
          to label %bb.e unwind label %bb.z

bb.n:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

.body:                                            ; preds = %bb.p, %bb.k, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.w, %bb.p ], [ %i.t, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %bb.m unwind label %bb.z

bb.p:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !17127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.z, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions6FormatECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.h) #52
          to label %.body unwind label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.x ], [ %i.ab, %bb.v ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #52
          to label %bb.r unwind label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  %i.ac = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #52
          to label %bb.u unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store <2 x i64> %i.ac, ptr %0, align 8
end_hunk_7
begin_hunk_8_@_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.ws = load i64, ptr %i.wq, align 8, !noundef !12 ; 2 uses
  %i.wt = tail call i8 @llvm.ucmp.i8.i64(i64 %i.wr, i64 %i.ws)
  %i.wu = icmp eq i64 %i.wr, %i.ws
  br i1 %i.wu, label %bb.gi, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gk:                                            ; preds = %bb.au
  br i1 %i.iy, label %bb.gm, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gl:                                            ; preds = %bb.au
  %.98 = sext i1 %i.iy to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gm:                                            ; preds = %bb.gk
  %i.wv = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.ww = load i64, ptr %i.iu, align 8, !noundef !12
  %i.wx = load i64, ptr %i.wv, align 8, !noundef !12
  %i.wy = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ww, i64 %i.wx)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gn:                                            ; preds = %bb.av
  %i.wz = getelementptr inbounds nuw i8, ptr %.tr261, i64 16
  %i.xa = load i64, ptr %i.wz, align 8, !range !50, !noundef !12
  %.not40 = icmp eq i64 %i.xa, -9223372036854775808
  %i.xb = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.xc = load i64, ptr %i.xb, align 8, !range !50, !noundef !12 ; 2 uses
  br i1 %.not40, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.not42 = icmp eq i64 %i.xc, -9223372036854775808
  br i1 %.not42, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %.not41 = icmp ne i64 %i.xc, -9223372036854775808
  %.99 = sext i1 %.not41 to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gq:                                            ; preds = %bb.go
  %i.xd = getelementptr inbounds nuw i8, ptr %.tr261, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !nonnull !12, !noundef !12
  %i.xf = getelementptr inbounds nuw i8, ptr %.tr261, i64 32
  %i.xg = load i64, ptr %i.xf, align 8, !noundef !12 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.tr127262, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !nonnull !12, !noundef !12
  %i.xj = getelementptr inbounds nuw i8, ptr %.tr127262, i64 32
  %i.xk = load i64, ptr %i.xj, align 8, !noundef !12 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.xg, i64 %i.xk)
  %i.xl = tail call i32 @memcmp(ptr nonnull %i.xe, ptr nonnull %i.xi, i64 %spec.store.select) ; 2 uses
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp eq i32 %i.xl, 0
  %i.xo = sub i64 %i.xg, %i.xk
  %spec.select = select i1 %i.xn, i64 %i.xo, i64 %i.xm
  %i.xp = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gr:                                            ; preds = %bb.aw
  br i1 %i.jn, label %bb.gu, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gs:                                            ; preds = %bb.aw
  br i1 %i.jn, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gu
  %.val119 = load i8, ptr %i.jf, align 1, !range !1459, !noundef !12
  %.val120 = load i8, ptr %i.jg, align 1, !range !1459, !noundef !12
  %i.xq = zext nneg i8 %.val119 to i64
  %i.xr = zext nneg i8 %.val120 to i64
  %i.xs = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.xq, i64 %i.xr)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gu:                                            ; preds = %bb.gr
  %i.xt = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.xu = load i64, ptr %i.jj, align 8, !noundef !12 ; 2 uses
  %i.xv = load i64, ptr %i.xt, align 8, !noundef !12 ; 2 uses
  %i.xw = tail call i8 @llvm.ucmp.i8.i64(i64 %i.xu, i64 %i.xv)
  %i.xx = icmp eq i64 %i.xu, %i.xv
  br i1 %i.xx, label %bb.gt, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gv:                                            ; preds = %bb.ax
  br i1 %.not38, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.gy

bb.gw:                                            ; preds = %bb.ax
  br i1 %.not38, label %bb.gx, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gx:                                            ; preds = %bb.gy, %bb.gw
  %i.xy = getelementptr inbounds nuw i8, ptr %.tr261, i64 8
  %i.xz = load i64, ptr %i.xy, align 8, !range !49, !noundef !12
  %i.ya = getelementptr inbounds nuw i8, ptr %.tr261, i64 16
  %i.yb = trunc nuw i64 %i.xz to i1
  %i.yc = getelementptr inbounds nuw i8, ptr %.tr127262, i64 8
  %i.yd = load i64, ptr %i.yc, align 8, !range !49, !noundef !12
  %i.ye = trunc nuw i64 %i.yd to i1               ; 2 uses
  br i1 %i.yb, label %bb.gz, label %bb.ha

bb.gy:                                            ; preds = %bb.gv
  %i.yf = zext nneg i8 %i.jp to i64
  %i.yg = zext nneg i8 %i.jr to i64
  %i.yh = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.yf, i64 %i.yg)
  %i.yi = icmp eq i8 %i.jp, %i.jr
  br i1 %i.yi, label %bb.gx, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.gz:                                            ; preds = %bb.gx
  br i1 %i.ye, label %bb.hb, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ha:                                            ; preds = %bb.gx
  %.100 = sext i1 %i.ye to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hb:                                            ; preds = %bb.gz
  %i.yj = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.yk = load i64, ptr %i.ya, align 8, !noundef !12
  %i.yl = load i64, ptr %i.yj, align 8, !noundef !12
  %i.ym = tail call i8 @llvm.ucmp.i8.i64(i64 %i.yk, i64 %i.yl)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hc:                                            ; preds = %bb.ay
  br i1 %i.jy, label %bb.he, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hd:                                            ; preds = %bb.ay
  %.101 = sext i1 %i.jy to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.he:                                            ; preds = %bb.hc
  %i.yn = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.yo = load i64, ptr %i.ju, align 8, !noundef !12
  %i.yp = load i64, ptr %i.yn, align 8, !noundef !12
  %i.yq = tail call i8 @llvm.ucmp.i8.i64(i64 %i.yo, i64 %i.yp)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hf:                                            ; preds = %bb.ba
  br i1 %i.kk, label %bb.hh, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hg:                                            ; preds = %bb.ba
  %.102 = sext i1 %i.kk to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hh:                                            ; preds = %bb.hf
  %i.yr = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.ys = load i64, ptr %i.kg, align 8, !noundef !12
  %i.yt = load i64, ptr %i.yr, align 8, !noundef !12
  %i.yu = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ys, i64 %i.yt)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hi:                                            ; preds = %bb.bb
  br i1 %i.kr, label %bb.hk, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hj:                                            ; preds = %bb.bb
  %.103 = sext i1 %i.kr to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hk:                                            ; preds = %bb.hi
  %i.yv = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.yw = load i64, ptr %i.kn, align 8, !noundef !12
  %i.yx = load i64, ptr %i.yv, align 8, !noundef !12
  %i.yy = tail call i8 @llvm.ucmp.i8.i64(i64 %i.yw, i64 %i.yx)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hl:                                            ; preds = %bb.bc
  br i1 %i.ky, label %bb.hn, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hm:                                            ; preds = %bb.bc
  %.104 = sext i1 %i.ky to i8
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hn:                                            ; preds = %bb.hl
  %i.yz = getelementptr inbounds nuw i8, ptr %.tr127262, i64 16
  %i.za = load i64, ptr %i.ku, align 8, !noundef !12
  %i.zb = load i64, ptr %i.yz, align 8, !noundef !12
  %i.zc = tail call i8 @llvm.ucmp.i8.i64(i64 %i.za, i64 %i.zb)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ho:                                            ; preds = %bb.bd
  %i.zd = getelementptr inbounds nuw i8, ptr %.tr261, i64 40
  %i.ze = load ptr, ptr %i.zd, align 8, !nonnull !12, !noundef !12
  %i.zf = getelementptr inbounds nuw i8, ptr %.tr261, i64 48
  %i.zg = load i64, ptr %i.zf, align 8, !noundef !12
  %i.zh = getelementptr inbounds nuw i8, ptr %.tr127262, i64 40
  %i.zi = load ptr, ptr %i.zh, align 8, !nonnull !12, !noundef !12
  %i.zj = getelementptr inbounds nuw i8, ptr %.tr127262, i64 48
  %i.zk = load i64, ptr %i.zj, align 8, !noundef !12
  %i.zl = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ze, i64 noundef %i.zg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.zi, i64 noundef %i.zk) #55
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hp:                                            ; preds = %bb.bq
  %i.zm = getelementptr inbounds nuw i8, ptr %.tr261, i64 1
  %i.zn = load i8, ptr %i.zm, align 1, !range !208, !noundef !12
  %i.zo = trunc nuw i8 %i.zn to i1
  %i.zp = getelementptr inbounds nuw i8, ptr %.tr261, i64 2
  %i.zq = getelementptr inbounds nuw i8, ptr %.tr127262, i64 1
  %i.zr = load i8, ptr %i.zq, align 1, !range !208, !noundef !12 ; 2 uses
  br i1 %i.zo, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.hs, label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hr:                                            ; preds = %bb.hp
  %.105 = sub nsw i8 0, %i.zr
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.hs:                                            ; preds = %bb.hq
  %i.zt = getelementptr inbounds nuw i8, ptr %.tr127262, i64 2
  %i.zu = load i8, ptr %i.zp, align 2, !noundef !12
  %i.zv = load i8, ptr %i.zt, align 2, !noundef !12
  %i.zw = tail call i8 @llvm.ucmp.i8.i8(i8 %i.zu, i8 %i.zv)
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ht:                                            ; preds = %bb.bs
  %i.zx = getelementptr inbounds nuw i8, ptr %.tr127262, i64 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.tr261, i64 1
  %.val125 = load i8, ptr %i.zy, align 1, !range !208, !noundef !12
  %.val126 = load i8, ptr %i.zx, align 1, !range !208, !noundef !12
  %i.zz = sub nsw i8 %.val125, %.val126
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsle_NtCs4lawaffTVVK_9sqlparser3astNtB6_18HiveLoadDataFormatNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55 ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.e = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.d) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsmX_NtCs4lawaffTVVK_9sqlparser3astNtB6_9SqlOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15050, !noundef !12 ; 3 uses
  %i.b = icmp ne i64 %i.a, 71
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -69
  %i.d = icmp samesign ugt i64 %i.a, 68
  %i.e = select i1 %i.d, i64 %i.c, i64 2          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !15050, !noundef !12 ; 3 uses
  %i.g = icmp ne i64 %i.f, 71
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -69
  %i.i = icmp samesign ugt i64 %i.f, 68
  %i.j = select i1 %i.i, i64 %i.h, i64 2          ; 2 uses
  %.not = icmp eq i64 %i.e, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 4, label %bb.r
    i64 5, label %bb.x
    i64 6, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17287)
  %i.n = load i64, ptr %i.l, align 8, !range !242, !alias.scope !17284, !noalias !17287, !noundef !12 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !242, !alias.scope !17287, !noalias !17284, !noundef !12 ; 3 uses
  switch i64 %i.n, label %default.unreachable74 [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 0, label %bb.h
  ]

default.unreachable74:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.o, 2
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.r = tail call i8 @llvm.scmp.i8.i64(i64 %i.n, i64 %i.o)
  br label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !17284, !noalias !17287, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !17284, !noalias !17287, !noundef !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !17287, !noalias !17284, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !17287, !noalias !17284, !noundef !12 ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.z, i64 range(i64 0, 144115188075855872) %i.v) ; 2 uses
  %exitcond.not.i.i92 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %exitcond.not.i.i92, label %._crit_edge96, label %.lr.ph95

bb.j:                                             ; preds = %.lr.ph95
  %i.aa = add nuw nsw i64 %.sroa.01.0.i.i93, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge96, label %.lr.ph95

._crit_edge96:                                    ; preds = %bb.j, %bb.i
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.v, i64 range(i64 0, 144115188075855872) %i.z)
  br label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph95:                                         ; preds = %bb.i, %bb.j
  %.sroa.01.0.i.i93 = phi i64 [ %i.aa, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %.sroa.01.0.i.i93
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %.sroa.01.0.i.i93
  %i.ae = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ad), !noalias !17289 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !17284, !noalias !17287, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !17284, !noalias !17287, !noundef !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !17287, !noalias !17284, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !17287, !noalias !17284, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17293)
  %.sroa.0.0.i.i1.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.an, i64 range(i64 0, 128102389400760776) %i.aj) ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i1.i, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.k
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 128102389400760776) %i.aj, i64 range(i64 0, 128102389400760776) %i.an)
  br label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph.i.i:                                       ; preds = %bb.k, %.backedge.i.i
  %.sroa.01.018.i.i = phi i64 [ %i.ap, %.backedge.i.i ], [ 0, %bb.k ] ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.01.018.i.i, 1    ; 2 uses
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %.sroa.01.018.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.al, i64 %.sroa.01.018.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17303)
  %i.as = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ar), !noalias !17289 ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.av = load i8, ptr %i.au, align 8, !range !470, !alias.scope !17305, !noalias !17306, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ax = load i8, ptr %i.aw, align 8, !range !470, !alias.scope !17307, !noalias !17308, !noundef !12 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not6.i.i.i.i = icmp eq i8 %i.ax, 2
  %i.ay = sub nsw i8 %i.av, %i.ax
  br i1 %.not6.i.i.i.i, label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.n:                                             ; preds = %bb.l
  %.not5.i.i.i.i = icmp ne i8 %i.ax, 2
  %..i.i.i.i = sext i1 %.not5.i.i.i.i to i8
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ay, %bb.m ], [ %i.as, %.lr.ph.i.i ], [ %..i.i.i.i, %bb.n ] ; 2 uses
  %cond.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %cond.i.i, label %.backedge.i.i, label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.backedge.i.i:                                    ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ClusteredIndexNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %exitcond.not.i3.i = icmp eq i64 %i.ap, %.sroa.0.0.i.i1.i
  br i1 %exitcond.not.i3.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ba)
  br label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.p:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.be = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bd) ; 2 uses
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ai, label %_RNvXsmD_NtCs4lawaffTVVK_9sqlparser3astNtB6_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.q:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bh) ; 2 uses
end_hunk_8
