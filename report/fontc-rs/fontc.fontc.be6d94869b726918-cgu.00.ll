Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.00?download=true
inline.NumInlined: 762
inline.NumDeleted: 371
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs7SuSGX4jtHW_12clap_builder7builder6os_str5OsStrEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2k_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3K_3Arg25default_missing_values_osBU_ABU_B3y_E0EE9from_iterCsglDVE6xSTcO_5fontc:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1993
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2y_6filter6FilterINtNtNtB2C_3str4iter5SplitcENCINvMNtBY_7builderNtB4q_7Builder11parse_lossyReE0ENCB4m_s_0EE9from_iterCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2013
  call fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #23, !noalias !2012
  %i.h = load i64, ptr %i.f, align 8, !range !24, !noalias !2013, !noundef !5
  %.not.i = icmp eq i64 %i.h, -2
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !2012
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !2012
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !alias.scope !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2013
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2M_6filter6FilterINtNtNtB2Q_3str4iter5SplitcENCINvMNtB15_7builderNtB4E_7Builder11parse_lossyReE0ENCB4A_s_0EE9from_iterCsglDVE6xSTcO_5fontc.exit

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e) #18
          to label %bb.k unwind label %bb.j, !noalias !2012

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !2013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2013
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc.i unwind label %bb.c, !noalias !2012

.noexc.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %i.c, align 8, !range !16, !noalias !2013, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !23, !noalias !2013, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %.noexc.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !2013
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #21
          to label %.noexc5.i unwind label %bb.c, !noalias !2012

.noexc5.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.p, align 8, !noalias !2013, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = icmp ugt i64 %i.o, 3
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !2012
  store i64 %i.o, ptr %i.g, align 8, !noalias !2013
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2013
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2016
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d) #23
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2012

.noexc6.i:                                        ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !range !24, !noalias !2016, !noundef !5
  %.not2.i.i.i = icmp eq i64 %i.t, -2
  br i1 %.not2.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6.i, %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !2016
  %i.u = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2013, !noundef !5 ; 5 uses
  %i.v = icmp ult i64 %i.u, 115292150460684698
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.g, align 8, !range !9, !alias.scope !2017, !noalias !2013, !noundef !5
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsglDVE6xSTcO_5fontc.exit.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsglDVE6xSTcO_5fontc.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2013, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.y, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !2012
  %i.aa = add nuw nsw i64 %i.u, 1
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2016
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d) #23
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2012

.noexc7.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsglDVE6xSTcO_5fontc.exit.i.i.i
  %i.ab = load i64, ptr %i.b, align 8, !range !24, !noalias !2016, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.ab, -2
  br i1 %.not.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #18
          to label %.body.i unwind label %bb.i, !noalias !2012

bb.h:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 80)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsglDVE6xSTcO_5fontc.exit.i.i.i unwind label %bb.g, !noalias !2012

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2012
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsglDVE6xSTcO_5fontc.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %lpad.loopexit.split-lp2, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %bb.k unwind label %bb.j, !noalias !2012

.loopexit8.i:                                     ; preds = %.noexc7.i, %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2018
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2M_6filter6FilterINtNtNtB2Q_3str4iter5SplitcENCINvMNtB15_7builderNtB4E_7Builder11parse_lossyReE0ENCB4A_s_0EE9from_iterCsglDVE6xSTcO_5fontc.exit

bb.j:                                             ; preds = %.body.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2012
  unreachable

bb.k:                                             ; preds = %.body.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB2M_6filter6FilterINtNtNtB2Q_3str4iter5SplitcENCINvMNtB15_7builderNtB4E_7Builder11parse_lossyReE0ENCB4A_s_0EE9from_iterCsglDVE6xSTcO_5fontc.exit: ; preds = %bb.b, %.loopexit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2013
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2052
  store ptr %i.d, ptr %i.b, align 8, !noalias !2053
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !noalias !2053
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !2054
  %.promoted26.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !2055 ; 4 uses
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2054, !nonnull !5, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !2054, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2056, !noundef !5 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !2055 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !25, !alias.scope !2055
  %i.v = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !2055 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted30.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !2056
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !2057
  %.not.i3.i.i.us.not.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i, %.promoted26.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  br i1 %.not.i3.i.i.us.not.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted26.i.i.i
  %2 = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2061
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %2), !noalias !2062
  %i.w = load i64, ptr %i.a, align 8, !range !24, !noalias !2061, !noundef !5 ; 2 uses
  %.not.i.i.us.us.i.i.i = icmp eq i64 %i.w, -2
  br i1 %.not.i.i.us.us.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit.sink.split, label %.loopexit.i

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.x = phi i64 [ %i.at, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i ], [ %.promoted30.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa232829.i.i.i = phi i64 [ %.lcssa2327.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i ], [ %.promoted26.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %i.y = icmp ult i64 %i.l, %i.x
  br i1 %i.y, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !2056 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.z = phi i64 [ %i.an, %bb.d ], [ %i.x, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.aa = sub nuw i64 %i.l, %i.z                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.z ; 2 uses
  %i.ac = icmp samesign ult i64 %i.aa, 16
  br i1 %i.ac, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ad = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !2063 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !2064, !noalias !2063, !noundef !5
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i.i.i
  br i1 %i.aj, label %.loopexit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.b ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.aa
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %i.z, 1
  %i.an = add i64 %i.am, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.an, ptr %i.j, align 8, !alias.scope !2056
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.an, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.an, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.b, %.preheader.i.i.i.i.i.i.i, %bb.c
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !2056
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i.i.i
  %i.ao = icmp ult i64 %i.l, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.ap = sub nuw i64 %i.an, %i.p                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ap
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.m, i64 %i.p), !noalias !2065
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.d

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.e
  store i64 %i.an, ptr %i.c, align 8, !alias.scope !2054
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i: ; preds = %bb.d, %.loopexit15.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.as = phi i64 [ %i.x, %.lr.ph.split.i.i.i ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.an, %bb.d ]
  store i8 1, ptr %i.f, align 1, !alias.scope !2057
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa232829.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.at = phi i64 [ %i.an, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i ]
  %.lcssa2327.i.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa232829.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i ]
  %i.au = phi i1 [ false, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn.i.i.i, %.lcssa232829.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa232829.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa232829.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2061
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !2062
  %i.av = load i64, ptr %i.a, align 8, !range !24, !noalias !2061, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.av, -2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread16.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread16.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2061
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread16.i.i.i, %select.unfold.i.i.i
  br i1 %i.au, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit, label %.lr.ph.split.i.i.i

.loopexit.i:                                      ; preds = %bb.f, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.w, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.us.us.i.i.i ], [ %i.av, %bb.f ]
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !2066
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit.sink.split

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit.sink.split: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.us.us.i.i.i, %.loopexit.i
  %storemerge.i.ph = phi i64 [ %.us-phi.i.i.i, %.loopexit.i ], [ -2, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.us.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2061
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit.sink.split, %bb.a, %.lr.ph.split.us.i.i.i
  %storemerge.i = phi i64 [ -2, %.lr.ph.split.us.i.i.i ], [ -2, %bb.a ], [ %storemerge.i.ph, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsglDVE6xSTcO_5fontc.exit.sink.split ], [ -2, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0CsglDVE6xSTcO_5fontc.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2052
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2048
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecINtNtNtCs1c7GmC1ft6u_12sharded_slab4page4slot4SlotNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB3J_3ops5range5RangejENvMs2_BW_BT_3newEE11spec_extendCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2072, !noundef !5 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !9, !alias.scope !2072, !noundef !5
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %spec.select.i.i.i, %i.e
  br i1 %i.f, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtNtCs1c7GmC1ft6u_12sharded_slab4page4slot4SlotNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB3q_3ops5range5RangejENvMs2_BJ_BG_3newEECsglDVE6xSTcO_5fontc.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %spec.select.i.i.i, i64 noundef 8, i64 noundef 96)
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !2071
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtNtCs1c7GmC1ft6u_12sharded_slab4page4slot4SlotNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB3q_3ops5range5RangejENvMs2_BJ_BG_3newEECsglDVE6xSTcO_5fontc.exit

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtNtCs1c7GmC1ft6u_12sharded_slab4page4slot4SlotNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB3q_3ops5range5RangejENvMs2_BJ_BG_3newEECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2071, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2071
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8, !noalias !2071
  store ptr %i.b, ptr %i.a, align 8, !noalias !2071
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.k, align 8, !noalias !2071
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENvMs2_NtNtCs1c7GmC1ft6u_12sharded_slab4page4slotINtB1v_4SlotNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerNtNtB1z_3cfg13DefaultConfigE3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB2b_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5f_3VecB2b_E14extend_trustedBN_E0E0ECsglDVE6xSTcO_5fontc(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2071
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !2082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2082
  call void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtB9_8adapters3map3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1L_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtB5_8Iterator9size_hintCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !2081
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !noalias !2082, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noalias !2082 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2082
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %bb.d, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2083, !noundef !5 ; 3 uses
  %i.k = load i64, ptr %0, align 8, !range !9, !alias.scope !2083, !noundef !5
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECsglDVE6xSTcO_5fontc.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.g, i64 noundef 8, i64 noundef 24)
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !2081
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECsglDVE6xSTcO_5fontc.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !2081
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2081, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2084
  store ptr %i.i, ptr %i.a, align 8, !noalias !2085
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2085
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2085
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtB6_8Iterator4folduNCINvNvB3L_8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB4H_3VecB2W_E14extend_trustedBQ_E0E0ECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs2xcxdQoJA8F_10serde_json5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.105 = alloca [30 x i8], align 2          ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2095
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 288230376151711744) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !2095
  %i.j = load i64, ptr %i.a, align 8, !range !16, !noalias !2095, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !23, !noalias !2095, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !2095
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #21, !noalias !2095
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !2095, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q), !noalias !2095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2095
  store i64 %i.m, ptr %i.e, align 8, !noalias !2095
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !2095
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtCs2xcxdQoJA8F_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit
  %.sroa.105.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.105, i64 6 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  %.sroa.03.026 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ] ; 8 uses
  %.sroa.7.025 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.024 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %i.v = add i64 %.sroa.10.024, -1                ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.026, %i.t
  br i1 %i.w, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtCs2xcxdQoJA8F_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.026, i64 32
  %i.y = add nuw nsw i64 %.sroa.7.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.105)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.z = load i8, ptr %.sroa.03.026, align 8, !range !14, !alias.scope !2096, !noalias !2097, !noundef !5 ; 2 uses
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.026, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !25, !alias.scope !2096, !noalias !2097, !noundef !5
  br label %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.026, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.105.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  br label %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.026, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2098
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %.noexc unwind label %bb.k, !inline_history !2093

.noexc:                                           ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.105.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2098
  br label %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.026, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2098
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs2xcxdQoJA8F_10serde_json5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %.noexc1 unwind label %bb.k, !inline_history !2093

.noexc1:                                          ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.105.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2098
  br label %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.026, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2098
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs2xcxdQoJA8F_10serde_json5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %.noexc2 unwind label %bb.k, !inline_history !2093

.noexc2:                                          ; preds = %bb.i
end_hunk_0
