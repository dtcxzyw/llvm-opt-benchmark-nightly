Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.00?download=true
inline.NumInlined: 3755
inline.NumDeleted: 2219
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5array4iter8IntoIterTReRINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEEKj2_ENCNvMB2L_NtB2L_11DebgBuilder5build0ENCB3X_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2R_:bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %common.resume.i unwind label %bb.p, !noalias !4366

.loopexit.i.i:                                    ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !4365
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !4349
  %.phi.trans.insert15.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre16.i = load i64, ptr %.phi.trans.insert15.i, align 8, !noalias !4349
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_9enumerate9EnumerateINtNtNtB20_5slice4iter4IterINtNtB20_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEENCNCNvMB4c_NtB4c_11DebgBuilder5builds_00EE9from_iterB4i_.exit.i

bb.p:                                             ; preds = %.body.i.i, %bb.f
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4366
  unreachable

common.resume.i:                                  ; preds = %.body.i15.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i, %.body.i.i, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.dl, %.body.i15.i ], [ %i.bc, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_9enumerate9EnumerateINtNtNtB20_5slice4iter4IterINtNtB20_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEENCNCNvMB4c_NtB4c_11DebgBuilder5builds_00EE9from_iterB4i_.exit.i: ; preds = %.loopexit.i.i, %.loopexit13.i.i
  %i.cw = phi i64 [ 0, %.loopexit13.i.i ], [ %.pre16.i, %.loopexit.i.i ]
  %i.cx = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit13.i.i ], [ %.pre.i, %.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4349
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4349
  invoke void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehNtNtB4_6string6StringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.r unwind label %bb.q, !noalias !4349

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.s, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.da, %bb.q ], [ %i.dc, %bb.s ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %common.resume.i unwind label %bb.w, !noalias !4349

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscScJTt9VrQp_6fea_rs.exit.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_9enumerate9EnumerateINtNtNtB20_5slice4iter4IterINtNtB20_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEENCNCNvMB4c_NtB4c_11DebgBuilder5builds_00EE9from_iterB4i_.exit.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i

bb.r:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_9enumerate9EnumerateINtNtNtB20_5slice4iter4IterINtNtB20_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEENCNCNvMB4c_NtB4c_11DebgBuilder5builds_00EE9from_iterB4i_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !4349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4349
  store ptr %i.o, ptr %i.k, align 8, !noalias !4349
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCscScJTt9VrQp_6fea_rs, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !4349
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.db, align 8, !noalias !4349
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !4349
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @7, ptr noundef nonnull %i.k)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.s, !noalias !4402

bb.s:                                             ; preds = %bb.r
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.w, !noalias !4349

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4349
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit14.i unwind label %bb.q, !noalias !4349

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit14.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscScJTt9VrQp_6fea_rs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4349
  call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  call void @llvm.experimental.noalias.scope.decl(metadata !4404)
  %i.dd = load ptr, ptr %i.cy, align 8, !alias.scope !4405, !noalias !4349, !nonnull !8, !noundef !8 ; 2 uses
  %i.de = load i64, ptr %i.cz, align 8, !alias.scope !4405, !noalias !4349, !noundef !8 ; 4 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debgNtB4_11DebgBuilder5builds_0Ba_.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i.i.i.i: ; preds = %.lr.ph
  %i.dg = icmp eq i64 %i.di, %i.de
  br i1 %i.dg, label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debgNtB4_11DebgBuilder5builds_0Ba_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit14.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i49 = phi i64 [ %i.di, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit14.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.0.0.i.i.i.i49
  %i.di = add nuw nsw i64 %.sroa.0.0.i.i.i.i49, 1 ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i.i.i.i unwind label %bb.t, !noalias !4406

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit7.i.i.i.i: ; preds = %.lr.ph51
  %i.dj = add i64 %.sroa.0.1.i.i.i.i50, 1         ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.de
  br i1 %i.dk, label %.body.i15.i, label %.lr.ph51

bb.t:                                             ; preds = %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = icmp eq i64 %i.di, %i.de
  br i1 %i.dm, label %.body.i15.i, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i50 = phi i64 [ %i.dj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit7.i.i.i.i ], [ %i.di, %bb.t ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.0.1.i.i.i.i50
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit7.i.i.i.i unwind label %bb.u, !noalias !4406

bb.u:                                             ; preds = %.lr.ph51
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4406
  unreachable

.body.i15.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit7.i.i.i.i, %bb.t
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.v, !noalias !4349

bb.v:                                             ; preds = %.body.i15.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4349
  unreachable

bb.w:                                             ; preds = %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4349
  unreachable

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debgNtB4_11DebgBuilder5builds_0Ba_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit14.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !4349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4335
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debgNtB4_11DebgBuilder5builds_0Ba_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtBZ_7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB3P_13PosSubBuilderNtB3P_14PositionLookupE9build_raws0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  call void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.t = load i64, ptr %i.s, align 8, !range !18, !noundef !8
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.53.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.u = icmp ult i64 %.sroa.42.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.u)
  %.not.i = icmp eq i64 %.sroa.42.0.copyload, 0
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx1.i, align 8, !noalias !4429
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBR_6tables6layout9ConditionKj4_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i unwind label %2, !noalias !4429

bb.c:                                             ; preds = %bb.b
  %.sroa.08.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !4429
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i, i64 16, i1 false), !noalias !4429
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i

2:                                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i
  %3 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.x, !noalias !4429

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i
  %.sroa.03.0.i = phi i64 [ %.sroa.08.0.copyload.i, %bb.c ], [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4429
  store i64 %.sroa.03.0.i, ptr %i.p, align 8, !noalias !4429
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !4429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.53.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4429
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.d unwind label %.body13.thread18.i, !noalias !4429

.body13.thread18.i:                               ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body13.thread.i

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !4429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4429
  call void @llvm.experimental.noalias.scope.decl(metadata !4430)
  call void @llvm.experimental.noalias.scope.decl(metadata !4431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4432
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !4433

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !18, !noalias !4434, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.w, -1
  br i1 %.not.i.i.i.i, label %.thread22.i.i.i, label %bb.e

.thread22.i.i.i:                                  ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4432
  br label %bb.h

bb.e:                                             ; preds = %.noexc.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load i16, ptr %i.i, align 8, !noalias !4434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !4434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4435
  store i64 -1, ptr %i.f, align 8, !noalias !4435
  invoke void @_RNvMs12_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_7Feature3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc9.i.i.i unwind label %bb.f, !noalias !4433

.noexc9.i.i.i:                                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4435
  %i.x = invoke { ptr, i16 } @_RNvMs5M_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_30FeatureTableSubstitutionRecord3new(i16 noundef %.sroa.01.0.copyload.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.g unwind label %bb.f, !noalias !4433 ; 2 uses

bb.f:                                             ; preds = %.noexc9.i.i.i, %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.g:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4435
  %i.z = extractvalue { ptr, i16 } %i.x, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i16 } %i.x, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4432
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %.thread22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4432
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_14PositionLookupE9build_raws0_0Bb_.exit unwind label %.body13.thread18.i, !noalias !4429

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout7FeatureEECscScJTt9VrQp_6fea_rs(ptr nonnull %i.z)
          to label %bb.w unwind label %bb.v, !noalias !4433

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.val.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !4436, !noalias !4433, !noundef !8
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  %i.ae = call i64 @llvm.umax.i64(i64 %i.ad, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4432
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i.i.i unwind label %bb.i, !noalias !4433

.noexc12.i.i.i:                                   ; preds = %bb.j
  %i.af = load i64, ptr %i.e, align 8, !range !14, !noalias !4432, !noundef !8
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !32, !noalias !4432, !noundef !8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %.noexc12.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !4432
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #23
          to label %.noexc13.i.i.i unwind label %bb.i, !noalias !4433

.noexc13.i.i.i:                                   ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc12.i.i.i
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !4432, !nonnull !8, !noundef !8 ; 3 uses
  %i.am = icmp ule i64 %i.ae, %i.ai
  call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4432
  store ptr %i.z, ptr %i.al, align 8, !noalias !4433
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i16 %i.aa, ptr %i.an, align 8, !noalias !4433
  store i64 %i.ai, ptr %i.k, align 8, !noalias !4432
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4432
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !4432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !4433
  call void @llvm.experimental.noalias.scope.decl(metadata !4437)
  call void @llvm.experimental.noalias.scope.decl(metadata !4438)
  call void @llvm.experimental.noalias.scope.decl(metadata !4439)
  call void @llvm.experimental.noalias.scope.decl(metadata !4440)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4441
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !4433

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  %i.aq = load i64, ptr %i.ao, align 8, !range !18, !noalias !4442, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aq, -1
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.n

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4441
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_14PositionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i

bb.n:                                             ; preds = %.noexc.i.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.d, align 8, !noalias !4442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !4442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4443
  store i64 -1, ptr %i.a, align 8, !noalias !4443
  invoke void @_RNvMs12_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_7Feature3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc9.i.i.i.i.i unwind label %bb.o, !noalias !4433

.noexc9.i.i.i.i.i:                                ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4443
  %i.ar = invoke { ptr, i16 } @_RNvMs5M_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_30FeatureTableSubstitutionRecord3new(i16 noundef %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !4433 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i: ; preds = %bb.r, %bb.o
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.bd, %bb.r ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.body.i.i12.i unwind label %bb.t, !noalias !4433

bb.o:                                             ; preds = %.noexc9.i.i.i.i.i, %bb.n, %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i

bb.p:                                             ; preds = %.noexc9.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4443
  %i.at = extractvalue { ptr, i16 } %i.ar, 0      ; 3 uses
  %i.au = extractvalue { ptr, i16 } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4441
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_14PositionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !4444, !noalias !4445, !noundef !8 ; 5 uses
  %i.aw = icmp ult i64 %i.av, 576460752303423488
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.k, align 8, !range !13, !alias.scope !4444, !noalias !4445, !noundef !8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.s, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i: ; preds = %bb.s, %bb.q
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4444, !noalias !4445, !nonnull !8, !noundef !8
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.av ; 2 uses
  store ptr %i.at, ptr %i.ba, align 8, !noalias !4433
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i16 %i.au, ptr %i.bb, align 8, !noalias !4433
  %i.bc = add nuw nsw i64 %i.av, 1
  store i64 %i.bc, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !4444, !noalias !4445
  br label %bb.m

bb.r:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout7FeatureEECscScJTt9VrQp_6fea_rs(ptr nonnull %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i unwind label %bb.t, !noalias !4433

bb.s:                                             ; preds = %bb.q
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !4446, !noalias !4447, !noundef !8
  %i.be = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.av, i64 noundef range(i64 1, 0) %i.be, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i unwind label %bb.r, !noalias !4433

bb.t:                                             ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4433
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_14PositionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i: ; preds = %bb.p, %.thread.i.i.i.i.i
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_14PositionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i unwind label %bb.u, !noalias !4433

bb.u:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_14PositionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i12.i

.body.i.i12.i:                                    ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %.pn.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %.body13.thread.i unwind label %bb.v, !noalias !4433

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_14PositionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_14PositionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4432
  %.sroa.0.0.copyload1.i = load i64, ptr %i.k, align 8, !noalias !4448
  %.sroa.52.0.copyload4.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4448
  %.sroa.6.0.copyload6.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !4448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4432
  br label %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_14PositionLookupE9build_raws0_0Bb_.exit

bb.v:                                             ; preds = %bb.w, %.body.i.i12.i, %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4433
  unreachable

bb.w:                                             ; preds = %bb.i, %bb.f
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.ab, %bb.i ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.body13.thread.i unwind label %bb.v, !noalias !4433

.body13.thread.i:                                 ; preds = %bb.w, %.body.i.i12.i, %.body13.thread18.i
  %eh.lpad-body1417.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body13.thread18.i ], [ %eh.lpad-body.i.i.i, %.body.i.i12.i ], [ %.pn.ph.i.i.i, %bb.w ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.x, !noalias !4429

bb.x:                                             ; preds = %.body13.thread.i, %2
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4429
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %.body13.thread.i, %2
  %.pn13.i = phi { ptr, i32 } [ %3, %2 ], [ %eh.lpad-body1417.i, %.body13.thread.i ]
  resume { ptr, i32 } %.pn13.i

_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_14PositionLookupE9build_raws0_0Bb_.exit: ; preds = %bb.h, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_14PositionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload6.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_14PositionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i ], [ 0, %bb.h ]
  %.sroa.52.0.i = phi ptr [ %.sroa.52.0.copyload4.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_14PositionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_14PositionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4429
  store i64 %.sroa.0.0.i, ptr %i.o, align 8, !noalias !4429
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.4.0..sroa_idx8.i, align 8, !noalias !4429
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !4429
  %i.bj = call { ptr, ptr } @_RNvMs4I_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_22FeatureVariationRecord3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !4429 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4429
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bl, ptr %i.bn, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_14PositionLookupE9build_raws0_0Bb_.exit
  %storemerge = phi i64 [ 1, %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_14PositionLookupE9build_raws0_0Bb_.exit ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtBZ_7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB3P_13PosSubBuilderNtB3P_18SubstitutionLookupE9build_raws0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  call void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.t = load i64, ptr %i.s, align 8, !range !18, !noundef !8
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.53.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.u = icmp ult i64 %.sroa.42.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.u)
  %.not.i = icmp eq i64 %.sroa.42.0.copyload, 0
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx1.i, align 8, !noalias !4471
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBR_6tables6layout9ConditionKj4_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i unwind label %2, !noalias !4471

bb.c:                                             ; preds = %bb.b
  %.sroa.08.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !4471
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i, i64 16, i1 false), !noalias !4471
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i

2:                                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i
  %3 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.x, !noalias !4471

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i
  %.sroa.03.0.i = phi i64 [ %.sroa.08.0.copyload.i, %bb.c ], [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj4_EEECscScJTt9VrQp_6fea_rs.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4471
  store i64 %.sroa.03.0.i, ptr %i.p, align 8, !noalias !4471
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !4471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.53.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4471
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.d unwind label %.body13.thread18.i, !noalias !4471

.body13.thread18.i:                               ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body13.thread.i

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetECscScJTt9VrQp_6fea_rs.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !4471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4471
  call void @llvm.experimental.noalias.scope.decl(metadata !4472)
  call void @llvm.experimental.noalias.scope.decl(metadata !4473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4474
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !4475

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !18, !noalias !4476, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.w, -1
  br i1 %.not.i.i.i.i, label %.thread22.i.i.i, label %bb.e

.thread22.i.i.i:                                  ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4474
  br label %bb.h

bb.e:                                             ; preds = %.noexc.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load i16, ptr %i.i, align 8, !noalias !4476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !4476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4477
  store i64 -1, ptr %i.f, align 8, !noalias !4477
  invoke void @_RNvMs12_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_7Feature3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc9.i.i.i unwind label %bb.f, !noalias !4475

.noexc9.i.i.i:                                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4477
  %i.x = invoke { ptr, i16 } @_RNvMs5M_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_30FeatureTableSubstitutionRecord3new(i16 noundef %.sroa.01.0.copyload.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.g unwind label %bb.f, !noalias !4475 ; 2 uses

bb.f:                                             ; preds = %.noexc9.i.i.i, %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.g:                                             ; preds = %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4477
  %i.z = extractvalue { ptr, i16 } %i.x, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i16 } %i.x, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4474
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %.thread22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4474
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_18SubstitutionLookupE9build_raws0_0Bb_.exit unwind label %.body13.thread18.i, !noalias !4471

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout7FeatureEECscScJTt9VrQp_6fea_rs(ptr nonnull %i.z)
          to label %bb.w unwind label %bb.v, !noalias !4475

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.val8.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !4478, !noalias !4475, !noundef !8
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %.val8.i.i.i, i64 1)
  %i.ae = call i64 @llvm.umax.i64(i64 %i.ad, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4474
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i.i.i unwind label %bb.i, !noalias !4475

.noexc12.i.i.i:                                   ; preds = %bb.j
  %i.af = load i64, ptr %i.e, align 8, !range !14, !noalias !4474, !noundef !8
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !32, !noalias !4474, !noundef !8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %.noexc12.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !4474
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #23
          to label %.noexc13.i.i.i unwind label %bb.i, !noalias !4475

.noexc13.i.i.i:                                   ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc12.i.i.i
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !4474, !nonnull !8, !noundef !8 ; 3 uses
  %i.am = icmp ule i64 %i.ae, %i.ai
  call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4474
  store ptr %i.z, ptr %i.al, align 8, !noalias !4475
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i16 %i.aa, ptr %i.an, align 8, !noalias !4475
  store i64 %i.ai, ptr %i.k, align 8, !noalias !4474
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4474
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !4474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !4475
  call void @llvm.experimental.noalias.scope.decl(metadata !4479)
  call void @llvm.experimental.noalias.scope.decl(metadata !4480)
  call void @llvm.experimental.noalias.scope.decl(metadata !4481)
  call void @llvm.experimental.noalias.scope.decl(metadata !4482)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4483
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !4475

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  %i.aq = load i64, ptr %i.ao, align 8, !range !18, !noalias !4484, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aq, -1
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.n

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4483
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_18SubstitutionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i

bb.n:                                             ; preds = %.noexc.i.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.d, align 8, !noalias !4484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !4484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4485
  store i64 -1, ptr %i.a, align 8, !noalias !4485
  invoke void @_RNvMs12_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_7Feature3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc9.i.i.i.i.i unwind label %bb.o, !noalias !4475

.noexc9.i.i.i.i.i:                                ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4485
  %i.ar = invoke { ptr, i16 } @_RNvMs5M_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_30FeatureTableSubstitutionRecord3new(i16 noundef %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !4475 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i: ; preds = %bb.r, %bb.o
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.bd, %bb.r ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.body.i.i12.i unwind label %bb.t, !noalias !4475

bb.o:                                             ; preds = %.noexc9.i.i.i.i.i, %bb.n, %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i

bb.p:                                             ; preds = %.noexc9.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4485
  %i.at = extractvalue { ptr, i16 } %i.ar, 0      ; 3 uses
  %i.au = extractvalue { ptr, i16 } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4483
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_18SubstitutionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !4486, !noalias !4487, !noundef !8 ; 5 uses
  %i.aw = icmp ult i64 %i.av, 576460752303423488
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.k, align 8, !range !13, !alias.scope !4486, !noalias !4487, !noundef !8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.s, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i: ; preds = %bb.s, %bb.q
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4486, !noalias !4487, !nonnull !8, !noundef !8
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.av ; 2 uses
  store ptr %i.at, ptr %i.ba, align 8, !noalias !4475
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i16 %i.au, ptr %i.bb, align 8, !noalias !4475
  %i.bc = add nuw nsw i64 %i.av, 1
  store i64 %i.bc, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !4486, !noalias !4487
  br label %bb.m

bb.r:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout7FeatureEECscScJTt9VrQp_6fea_rs(ptr nonnull %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i unwind label %bb.t, !noalias !4475

bb.s:                                             ; preds = %bb.q
  %.val8.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !4488, !noalias !4489, !noundef !8
  %i.be = call i64 @llvm.uadd.sat.i64(i64 %.val8.i.i.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.av, i64 noundef range(i64 1, 0) %i.be, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE7reserveCscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i unwind label %bb.r, !noalias !4475

bb.t:                                             ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4475
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_18SubstitutionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i: ; preds = %bb.p, %.thread.i.i.i.i.i
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_18SubstitutionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i unwind label %bb.u, !noalias !4475

bb.u:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_18SubstitutionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i12.i

.body.i.i12.i:                                    ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %.pn.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %.body13.thread.i unwind label %bb.v, !noalias !4475

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_18SubstitutionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBx_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4i_13PosSubBuilderNtB4i_18SubstitutionLookupE9build_raws0_00EEB4m_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4474
  %.sroa.0.0.copyload1.i = load i64, ptr %i.k, align 8, !noalias !4490
  %.sroa.52.0.copyload4.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4490
  %.sroa.6.0.copyload6.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !4490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4474
  br label %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_18SubstitutionLookupE9build_raws0_0Bb_.exit

bb.v:                                             ; preds = %bb.w, %.body.i.i12.i, %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4475
  unreachable

bb.w:                                             ; preds = %bb.i, %bb.f
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.ab, %bb.i ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTtINtNtCsgCecv3eZDcN_5alloc3vec3VectEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.body13.thread.i unwind label %bb.v, !noalias !4475

.body13.thread.i:                                 ; preds = %bb.w, %.body.i.i12.i, %.body13.thread18.i
  %eh.lpad-body1417.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body13.thread18.i ], [ %eh.lpad-body.i.i.i, %.body.i.i12.i ], [ %.pn.ph.i.i.i, %bb.w ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit.i unwind label %bb.x, !noalias !4471

bb.x:                                             ; preds = %.body13.thread.i, %2
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !4471
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMaptINtNtCsgCecv3eZDcN_5alloc3vec3VectEEECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %.body13.thread.i, %2
  %.pn13.i = phi { ptr, i32 } [ %3, %2 ], [ %eh.lpad-body1417.i, %.body13.thread.i ]
  resume { ptr, i32 } %.pn13.i

_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_18SubstitutionLookupE9build_raws0_0Bb_.exit: ; preds = %bb.h, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_18SubstitutionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload6.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_18SubstitutionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i ], [ 0, %bb.h ]
  %.sroa.52.0.i = phi ptr [ %.sroa.52.0.copyload4.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_18SubstitutionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout30FeatureTableSubstitutionRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItertIBI_tEENCNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB4w_13PosSubBuilderNtB4w_18SubstitutionLookupE9build_raws0_00EE11spec_extendB4A_.exit.i.i.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4471
  store i64 %.sroa.0.0.i, ptr %i.o, align 8, !noalias !4471
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.4.0..sroa_idx8.i, align 8, !noalias !4471
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !4471
  %i.bj = call { ptr, ptr } @_RNvMs4I_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_22FeatureVariationRecord3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !4471 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4471
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4471
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bl, ptr %i.bn, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_18SubstitutionLookupE9build_raws0_0Bb_.exit
  %storemerge = phi i64 [ 1, %_RNCNvMsd_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsINtB7_13PosSubBuilderNtB7_18SubstitutionLookupE9build_raws0_0Bb_.exit ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEEINtB5_10SpecExtendRBU_INtNtNtCsf3Ta7LF998c_4core5slice4iter4IterBU_EE11spec_extendCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4499
  store ptr %1, ptr %i.c, align 8, !noalias !4501
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !4501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4501
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEEENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !4501
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noalias !4501, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !4501 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4501
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4502, !noundef !8 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !13, !alias.scope !4502, !noundef !8
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtB3b_5slice4iter4IterBT_EEE11spec_extendCscScJTt9VrQp_6fea_rs.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 40)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !4501
  br label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtB3b_5slice4iter4IterBT_EEE11spec_extendCscScJTt9VrQp_6fea_rs.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !4501
  unreachable

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtB3b_5slice4iter4IterBT_EEE11spec_extendCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !4501, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4503
  store ptr %i.j, ptr %i.a, align 8, !noalias !4501
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4501
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4501
  call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3h_8for_each4callB1s_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4x_3VecB1s_E14extend_trustedBP_E0E0ECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4499
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { i16, i16 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB1R_7compile7lookups8LookupIdEEEEINtNtNtB9_7sources7from_fn6FromFnNCNvMs4_B1P_B1N_4iter0ENCNvMsc_NtB36_10contextualNtB4J_19ChainContextBuilder14build_format_1s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  %.pr.i = load ptr, ptr %0, align 8, !alias.scope !4534 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4533, !nonnull !8 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.phi.trans.insert.i.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !4533 ; 4 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !4533 ; 5 uses
  %.promoted42.i = load i64, ptr %i.b, align 8, !alias.scope !4533 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4535)
  %.not.i.peel.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.peel.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4538)
  %i.f = load i64, ptr %.pr.i, align 8, !range !24, !noalias !4539, !noundef !8 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %.loopexit.i [
    i64 0, label %bb.d
    i64 1, label %bb.c
    i64 2, label %._crit_edge.i.i.i.i.peel.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pr.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !4539, !noundef !8
  %i.m = icmp ult i64 %.phi.trans.insert.i.i.i.i.promoted.i, %i.l
  br i1 %i.m, label %.loopexit52.i, label %._crit_edge.i.i.i.i.peel.i

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %.phi.trans.insert.i.i.i.i.promoted.i, 0
  br i1 %i.n, label %.loopexit53.i, label %._crit_edge.i.i.i.i.peel.i

._crit_edge.i.i.i.i.peel.i:                       ; preds = %bb.d, %bb.c, %bb.b
  %i.o = add i64 %.phi.trans.insert.i.i.i.i.promoted.i, 1
  store i64 %i.o, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !4539
  store ptr null, ptr %0, align 8, !alias.scope !4540
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.peel.i, %bb.a
  %.not.i4.peel.i = icmp eq ptr %.promoted.i, null
  br i1 %.not.i4.peel.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.peel.i = icmp eq i64 %.promoted42.i, 0
  br i1 %.not.i.i.i.peel.i, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.b, align 8, !alias.scope !4541
  %i.p = ptrtoint ptr %.promoted.i to i64
  %i.q = sub nuw i64 %i.e, %i.p
  %i.r = udiv exact i64 %i.q, 48
  %.not.i.i.i.i.peel.i = icmp ult i64 %.promoted42.i, %i.r
  br i1 %.not.i.i.i.i.peel.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.peel.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread21.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.peel.i: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.promoted.i, i64 %.promoted42.i
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.t, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i.preheader

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i.preheader: ; preds = %bb.h, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.peel.i
  %storemerge56.i.ph = phi ptr [ %.promoted.i, %bb.h ], [ %i.s, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.peel.i ]
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i.preheader, %bb.j
  %storemerge56.i = phi ptr [ %storemerge57.i, %bb.j ], [ %storemerge56.i.ph, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i.preheader ] ; 7 uses
  %storemerge57.i = getelementptr inbounds nuw i8, ptr %storemerge56.i, i64 48 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4545)
  %i.u = load i64, ptr %storemerge56.i, align 8, !range !24, !noalias !4546, !noundef !8 ; 3 uses
  %i.v = icmp ne i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %i.u, -9223372036854775808
  %i.x = icmp slt i64 %i.u, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 1
  switch i64 %i.y, label %.loopexit.loopexit.i [
    i64 0, label %.loopexit53.loopexit.i
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

.loopexit.loopexit.i:                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i
  unreachable

.loopexit.i:                                      ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge56.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !4546, !noundef !8
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.j, label %.loopexit52.loopexit.i

.loopexit53.loopexit.i:                           ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterTNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB21_7compile7lookups8LookupIdEEEENCNvMsc_NtB3g_10contextualNtB3Z_19ChainContextBuilder14build_format_1s_0EEINtB5_8FuseImplBY_E4nextB21_.exit.thread25.i
  store ptr %storemerge57.i, ptr %i.a, align 8, !alias.scope !4541
  store ptr %storemerge56.i, ptr %0, align 8, !alias.scope !4533
  br label %.loopexit53.i

.loopexit53.i:                                    ; preds = %.loopexit53.loopexit.i, %bb.d
  %.lcssa44.i = phi ptr [ %.pr.i, %bb.d ], [ %storemerge56.i, %.loopexit53.loopexit.i ]
end_hunk_0
