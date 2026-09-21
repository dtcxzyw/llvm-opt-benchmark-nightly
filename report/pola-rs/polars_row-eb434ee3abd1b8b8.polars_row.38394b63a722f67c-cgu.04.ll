Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.04?download=true
inline.NumInlined: 891
inline.NumDeleted: 233
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayyE15slice_uncheckedCs4PheDXcg4wa_10polars_row:bb.a
  br i1 %or.cond.i.i, label %bb.j, label %bb.c, !dbg !4101

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4102 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !4103, !alias.scope !4083, !noalias !4084, !noundef !902 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !4103          ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.f
  %or.cond5.i.i = select i1 %i.j, i1 true, i1 %i.k, !dbg !4103
  br i1 %or.cond5.i.i, label %bb.d, label %bb.e, !dbg !4103

.sink.split.sink.split.i.i:                       ; preds = %.noexc1.i, %bb.f, %bb.d
  %.sink.sink.i.i = phi i64 [ %..i.i, %bb.d ], [ %i.ad, %.noexc1.i ], [ -1, %bb.f ]
  store i64 %.sink.sink.i.i, ptr %i.h, align 8, !dbg !4104, !alias.scope !4083, !noalias !4084
  br label %.sink.split.i.i, !dbg !4104

.sink.split.i.i:                                  ; preds = %bb.e, %.sink.split.sink.split.i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !4104, !alias.scope !4083, !noalias !4084, !noundef !902
  %i.m = add i64 %i.l, %1, !dbg !4104
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !4104, !alias.scope !4083, !noalias !4084
  store i64 %2, ptr %i.e, align 8, !dbg !4104, !alias.scope !4083, !noalias !4084
  br label %bb.j, !dbg !4105

bb.d:                                             ; preds = %bb.c
  %..i.i = select i1 %i.j, i64 0, i64 %2, !dbg !4106
  br label %.sink.split.sink.split.i.i, !dbg !4107

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i64 %i.i, -1, !dbg !4108
  br i1 %i.n, label %bb.f, label %.sink.split.i.i, !dbg !4108

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i64 %i.f, 5, !dbg !4109
  %.sroa.0.0.i.i.i = tail call noundef range(i64 32, 3689348814741910324) i64 @llvm.umax.i64(i64 range(i64 0, 3689348814741910324) %i.o, i64 32), !dbg !4110
  %i.p = add i64 %.sroa.0.0.i.i.i, %2, !dbg !4111
  %.not.i.i = icmp ult i64 %i.p, %i.f, !dbg !4111
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.g, !dbg !4111

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !4112, !alias.scope !4083, !noalias !4084, !noundef !902 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40, !dbg !4113 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !4113, !noalias !4085, !noundef !902
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32, !dbg !4114 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !dbg !4114, !noalias !4085, !noundef !902
  %i.v = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.s, i64 noundef %i.q, i64 noundef %1)
          to label %.noexc.i unwind label %bb.h, !dbg !4115, !noalias !4086

.noexc.i:                                         ; preds = %bb.g
  %i.w = add i64 %2, %1, !dbg !4112               ; 2 uses
  %i.x = add i64 %i.q, %i.w, !dbg !4112
  %i.y = load i64, ptr %i.r, align 8, !dbg !4116, !noalias !4085, !noundef !902
  %i.z = load ptr, ptr %i.t, align 8, !dbg !4117, !noalias !4085, !noundef !902
  %i.aa = sub i64 %i.f, %i.w, !dbg !4118
  %i.ab = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.y, i64 noundef %i.x, i64 noundef %i.aa)
          to label %.noexc1.i unwind label %bb.h, !dbg !4119, !noalias !4086

.noexc1.i:                                        ; preds = %.noexc.i
  %i.ac = add i64 %i.v, %i.ab, !dbg !4120
  %i.ad = sub i64 %i.i, %i.ac, !dbg !4120
  br label %.sink.split.sink.split.i.i, !dbg !4121

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i, !dbg !4122, !noalias !4084

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4123, !noalias !4084
  unreachable, !dbg !4123

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !4124

bb.j:                                             ; preds = %bb.b, %.sink.split.i.i
  %.sroa.513.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4125 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4125, !noalias !4087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, i64 24, i1 false), !dbg !4126
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !4125, !noalias !4088
  %i.ag = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k, !dbg !4127, !noalias !4087

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.o, !dbg !4128, !noalias !4087

bb.l:                                             ; preds = %bb.j
  %.not1.i = icmp eq i64 %i.ag, 0, !dbg !4129
  br i1 %.not1.i, label %bb.m, label %bb.n, !dbg !4130

bb.m:                                             ; preds = %bb.l
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !4131, !noalias !4087
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit.sink.split, !dbg !4132

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload7 = load ptr, ptr %i.a, align 8, !dbg !4133, !noalias !4089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, i64 24, i1 false), !dbg !4133, !noalias !4089
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit.sink.split, !dbg !4132

bb.o:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4134, !noalias !4087
  unreachable, !dbg !4134

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4135, !noalias !4087
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit.sink.split ], !dbg !4136
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !4137
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !4138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !4138
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !4139
  %i.aj = add i64 %2, %1, !dbg !4140
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4137
  %i.al = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECs4PheDXcg4wa_10polars_row(i64 noundef %1, i64 noundef %i.aj, i64 noundef %.pre), !dbg !4141 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !4141 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1, !dbg !4141
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !4142 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !4142, !noundef !902
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am, !dbg !4143
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !4144
  %i.ar = sub i64 %i.an, %i.am, !dbg !4145
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !4145
  ret void, !dbg !4146
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs4PheDXcg4wa_10polars_row6decode11decode_rows(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 384307168202282326) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %7, i64 noundef range(i64 0, 288230376151711744) %8) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4147 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %4, ptr %i.f, align 8, !dbg !4208
  store i64 %8, ptr %i.e, align 8, !dbg !4209
  %i.g = icmp eq i64 %4, %8, !dbg !4210
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !4210, !prof !1022

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #32, !dbg !4211
  unreachable, !dbg !4211

bb.c:                                             ; preds = %bb.a
  store i64 %6, ptr %i.d, align 8, !dbg !4212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4213
  store i64 %4, ptr %i.c, align 8, !dbg !4213
  %i.h = icmp eq i64 %6, %4, !dbg !4214
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !4214, !prof !1022

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !dbg !4215
  unreachable, !dbg !4215

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4216
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %4, !dbg !4217
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %4, !dbg !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4219, !noalias !4202
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEIBX_NtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEEINtB5_7ZipImplBW_B2i_E3newB2q_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %7, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.j), !dbg !4220
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %4, !dbg !4221
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEIB11_NtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEEIB11_INtNtBb_6option6OptionNtB2t_18RowEncodingContextEEEINtB5_7ZipImplBW_B3l_E3newB2v_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %5, ptr noundef nonnull readonly %i.k), !dbg !4222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4223, !noalias !4202
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !4224
  store ptr %1, ptr %i.l, align 8, !dbg !4224
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !4224
  store i64 %2, ptr %i.m, align 8, !dbg !4224
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2I_3zip3ZipIB3s_INtNtNtB2M_5slice4iter4IterNtNtB1q_9datatypes13ArrowDataTypeEIB3O_NtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEEIB3O_INtNtB2M_6option6OptionNtB4T_18RowEncodingContextEEENCNvNtB4V_6decode11decode_rows0EE9from_iterB4V_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.b), !dbg !4225
  ret void, !dbg !4226
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validity(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4227 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 15 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4332
  %i.e = shl i8 %3, 6, !dbg !4333
  %sext = ashr i8 %i.e, 7, !dbg !4333             ; 2 uses
  store i8 %sext, ptr %i.d, align 1, !dbg !4334
  %exitcond.not.i36 = icmp eq i64 %2, 0, !dbg !4335
  br i1 %exitcond.not.i36, label %._crit_edge37, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4find5checkjNCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validity0E0B1j_.exit.i, !dbg !4336

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4find5checkjNCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validity0E0B1j_.exit.i
  %exitcond.not.i = icmp eq i64 %i.g, %2, !dbg !4335
  br i1 %exitcond.not.i, label %._crit_edge37, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4find5checkjNCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validity0E0B1j_.exit.i, !dbg !4336

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4find5checkjNCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validity0E0B1j_.exit.i: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 6 uses
  %i.g = add i64 %i.f, 1, !dbg !4337              ; 5 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.f, !dbg !4338 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !4338 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !4338, !noalias !4312, !noundef !902
  %i.k = add i64 %i.j, -1, !dbg !4339
  %i.l = load ptr, ptr %i.h, align 8, !dbg !4338, !noalias !4312, !nonnull !902, !noundef !902 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1, !dbg !4340
  store ptr %i.m, ptr %i.h, align 8, !dbg !4341, !noalias !4312
  store i64 %i.k, ptr %i.i, align 8, !dbg !4341, !noalias !4312
  %i.n = load i8, ptr %i.l, align 1, !dbg !4342, !noalias !4312, !noundef !902
  %i.o = icmp eq i8 %i.n, %sext, !dbg !4342
  br i1 %i.o, label %bb.c, label %bb.b, !dbg !4343

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4find5checkjNCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validity0E0B1j_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4344
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4345 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !4345 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4345
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !4345 ; 2 uses
  store i64 0, ptr %i.c, align 8, !dbg !4345
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4345 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false), !dbg !4345
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4345
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4345 ; 3 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !4345
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %2)
          to label %bb.e unwind label %bb.q, !dbg !4346

._crit_edge37:                                    ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !dbg !4347
  br label %bb.d, !dbg !4348

bb.d:                                             ; preds = %bb.n, %._crit_edge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4349
  ret void, !dbg !4348

bb.e:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.q, align 8, !dbg !4350, !noundef !902 ; 2 uses
  %i.u = and i64 %i.t, 63, !dbg !4350             ; 2 uses
  %i.v = add i64 %i.u, %i.f, !dbg !4351
  %i.w = icmp ult i64 %i.v, 64, !dbg !4351
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !4351, !prof !1022

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.f, i1 noundef zeroext true)
          to label %._crit_edge unwind label %bb.q, !dbg !4352

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.q, align 8, !dbg !4353
  br label %bb.h, !dbg !4352

bb.g:                                             ; preds = %bb.e
  %4 = and i64 %i.f, 63, !dbg !4354
  %notmask = shl nsw i64 -1, %4, !dbg !4354
  %i.x = xor i64 %notmask, -1, !dbg !4354
  %i.y = shl i64 %i.x, %i.u, !dbg !4355
  %i.z = load i64, ptr %i.p, align 8, !dbg !4356, !noundef !902
  %i.aa = or i64 %i.z, %i.y, !dbg !4356
  store i64 %i.aa, ptr %i.p, align 8, !dbg !4356
  %i.ab = add i64 %i.t, %i.f, !dbg !4357          ; 2 uses
  store i64 %i.ab, ptr %i.q, align 8, !dbg !4357
  br label %bb.h, !dbg !4358

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ac = phi i64 [ %.pre, %._crit_edge ], [ %i.ab, %bb.g ], !dbg !4353
  %i.ad = add i64 %i.ac, 1, !dbg !4353            ; 2 uses
  %i.ae = load i64, ptr %i.r, align 8, !dbg !4359, !noundef !902
  %i.af = icmp ugt i64 %i.ad, %i.ae, !dbg !4353
  br i1 %i.af, label %bb.i, label %bb.j, !dbg !4353, !prof !976

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef 1)
          to label %._crit_edge26 unwind label %bb.q, !dbg !4360

._crit_edge26:                                    ; preds = %bb.i
  %.pre27 = load i64, ptr %i.q, align 8, !dbg !4361, !alias.scope !4322
  %.pre28 = add i64 %.pre27, 1, !dbg !4361
  br label %bb.j, !dbg !4360

bb.j:                                             ; preds = %._crit_edge26, %bb.h
  %.pre-phi = phi i64 [ %.pre28, %._crit_edge26 ], [ %i.ad, %bb.h ], !dbg !4361 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4322), !dbg !4362
  store i64 %.pre-phi, ptr %i.q, align 8, !dbg !4361, !alias.scope !4322
  %i.ag = and i64 %.pre-phi, 63, !dbg !4363
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !4363
  br i1 %i.ah, label %bb.k, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !4364

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr %i.p, align 8, !dbg !4365, !alias.scope !4322, !noundef !902 ; 2 uses
  %i.aj = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !4366, !alias.scope !4322, !noundef !902 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !4367
  call void @llvm.assume(i1 %i.ak), !dbg !4368
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4369, !alias.scope !4322, !nonnull !902, !noundef !902
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj, !dbg !4370
  store i64 %i.ai, ptr %i.am, align 1, !dbg !4371, !noalias !4322
  %i.an = add nuw i64 %i.aj, 8, !dbg !4372
  store i64 %i.an, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !4373, !alias.scope !4322
  %i.ao = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai), !dbg !4374
  %i.ap = load i64, ptr %i.s, align 8, !dbg !4375, !alias.scope !4322, !noundef !902
  %i.aq = add i64 %i.ap, %i.ao, !dbg !4375
  store i64 %i.aq, ptr %i.s, align 8, !dbg !4375, !alias.scope !4322
  store i64 0, ptr %i.p, align 8, !dbg !4376, !alias.scope !4322
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !4377

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4378
  %5 = icmp ugt i64 %i.g, %2, !dbg !4379
  br i1 %5, label %bb.m, label %bb.l, !dbg !4379, !prof !976

bb.l:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g, !dbg !4380
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2, !dbg !4381
  store ptr %i.ar, ptr %i.b, align 8, !dbg !4382
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4382
  store ptr %i.as, ptr %i.at, align 8, !dbg !4382
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4382
  store ptr %i.d, ptr %i.au, align 8, !dbg !4382
  invoke void @_RINvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB3_13BitmapBuilder23extend_trusted_len_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0EEB2Z_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.n unwind label %bb.q, !dbg !4383

bb.m:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #33
          to label %bb.o unwind label %bb.q, !dbg !4384

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !4386
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !4387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4389
  br label %bb.d, !dbg !4348

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm, !dbg !4390

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.c, %bb.i, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.c) #31
          to label %bb.p unwind label %bb.r, !dbg !4389

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !4390
  unreachable, !dbg !4390
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs4PheDXcg4wa_10polars_row6decode23decode_rows_from_binary(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 384307168202282326) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %6, i64 noundef range(i64 0, 288230376151711744) %7, ptr noalias noundef align 8 dereferenceable(24) %8) unnamed_addr #0 !dbg !4391 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %.val.i = load i8, ptr %1, align 8, !dbg !4470, !range !968, !noundef !902
  %i.c = icmp eq i8 %.val.i, 0, !dbg !4471
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !4472

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !4473 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !4473, !noundef !902
  %.not.i.i = icmp eq ptr %i.e, null, !dbg !4473
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit.thread, label %bb.d, !dbg !4474

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 48, !dbg !4475
  %.val4.i = load i64, ptr %i.f, align 8, !dbg !4475, !noundef !902
  %i.g = add i64 %.val4.i, -1, !dbg !4476
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit, !dbg !4477

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.d), !dbg !4478
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit, !dbg !4479

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.g, %bb.c ], [ %i.h, %bb.d ], !dbg !4480 ; 2 uses
  store i64 %.sroa.0.1.i, ptr %i.b, align 8, !dbg !4481
  %i.i = icmp eq i64 %.sroa.0.1.i, 0, !dbg !4482
  br i1 %i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit.thread, label %bb.e, !dbg !4482, !prof !4439

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16, !dbg !4483 ; 2 uses
  store i64 0, ptr %i.j, align 8, !dbg !4483
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !4484
  %i.l = load i64, ptr %i.k, align 8, !dbg !4484, !noundef !902
  %i.m = add i64 %i.l, -1, !dbg !4485
  store ptr %1, ptr %i.a, align 8, !dbg !4486
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4486
  store i64 0, ptr %i.n, align 8, !dbg !4486
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4486
  store i64 %i.m, ptr %i.o, align 8, !dbg !4486
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRShE16extend_desugaredINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator15ArrayValuesIterINtNtB17_6binary11BinaryArrayxEEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !4487
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8, !dbg !4488
  %i.q = load ptr, ptr %i.p, align 8, !dbg !4488, !nonnull !902, !noundef !902
  %i.r = load i64, ptr %i.j, align 8, !dbg !4489, !noundef !902
  call void @_RNvNtCs4PheDXcg4wa_10polars_row6decode11decode_rows(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %i.q, i64 noundef %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %6, i64 noundef %7), !dbg !4490
  ret void, !dbg !4491

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB7_5Array10null_countCs4PheDXcg4wa_10polars_row.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @25, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #32, !dbg !4492
  unreachable, !dbg !4492
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCs4PheDXcg4wa_10polars_row6decode34dtype_and_data_to_encoded_item_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !4493 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCs4PheDXcg4wa_10polars_row6encode10fixed_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i8 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4), !dbg !4671 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0, !dbg !4671
  %i.c = trunc nuw i64 %i.b to i1, !dbg !4672
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !4672

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.a, 1, !dbg !4671
  br label %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary16encoded_item_len.exit, !dbg !4673

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !dbg !4674, !range !968, !noundef !902
  switch i8 %i.e, label %bb.d [
    i8 22, label %bb.e
    i8 23, label %bb.f
    i8 24, label %bb.g
    i8 25, label %bb.h
    i8 26, label %bb.i
    i8 27, label %bb.x
    i8 28, label %bb.j
    i8 29, label %bb.x
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 34, label %bb.m
    i8 35, label %bb.n
    i8 36, label %bb.o
    i8 37, label %bb.p
    i8 38, label %bb.q
    i8 39, label %bb.r
    i8 40, label %bb.s
    i8 41, label %bb.t
  ], !dbg !4675, !prof !4588

_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary16encoded_item_len.exit: ; preds = %bb.an, %bb.aj, %bb.ab, %.preheader.i, %bb.ai, %bb.y, %bb.v, %bb.ae, %bb.w, %bb.u, %bb.b
  %.sroa.027.0 = phi i64 [ %i.d, %bb.b ], [ %i.n, %bb.u ], [ %i.w, %.preheader.i ], [ %i.x, %bb.w ], [ %i.ar, %bb.ae ], [ %i.bq, %bb.aj ], [ 1, %bb.v ], [ 1, %bb.y ], [ 1, %bb.ai ], [ %i.ao, %bb.ab ], [ %i.cg, %bb.an ], !dbg !4676
  ret i64 %.sroa.027.0, !dbg !4673

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #32, !dbg !4677
  unreachable, !dbg !4677

bb.e:                                             ; preds = %bb.c
  %i.f = and i8 %3, 4, !dbg !4678
  %.not79 = icmp eq i8 %i.f, 0, !dbg !4679
  br i1 %.not79, label %bb.v, label %bb.u, !dbg !4679

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #32, !dbg !4680
  unreachable, !dbg !4680

bb.g:                                             ; preds = %bb.c
  %i.g = and i8 %3, 4, !dbg !4681
  %.not78 = icmp eq i8 %i.g, 0, !dbg !4679
  br i1 %.not78, label %bb.v, label %bb.u, !dbg !4679

bb.h:                                             ; preds = %bb.c
  %i.h = and i8 %3, 4, !dbg !4682
  %.not77 = icmp eq i8 %i.h, 0, !dbg !4679
  br i1 %.not77, label %bb.w, label %bb.u, !dbg !4679

bb.i:                                             ; preds = %bb.c
  %i.i = and i8 %3, 4, !dbg !4683
  %.not76 = icmp eq i8 %i.i, 0, !dbg !4679
  br i1 %.not76, label %bb.w, label %bb.u, !dbg !4679

bb.j:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, 0, !dbg !4684
  br i1 %i.j, label %bb.z, label %bb.y, !dbg !4684, !prof !976

bb.k:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %2, 0, !dbg !4685
  br i1 %i.k, label %bb.ak, label %bb.ai, !dbg !4685, !prof !976

bb.l:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #32, !dbg !4686
  unreachable, !dbg !4686

bb.m:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #32, !dbg !4687
  unreachable, !dbg !4687

bb.n:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #32, !dbg !4688
  unreachable, !dbg !4688

bb.o:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32, !dbg !4689
  unreachable, !dbg !4689

bb.p:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #32, !dbg !4690
  unreachable, !dbg !4690

bb.q:                                             ; preds = %bb.c
  %i.l = and i8 %3, 4, !dbg !4691
  %.not70 = icmp eq i8 %i.l, 0, !dbg !4679
  br i1 %.not70, label %bb.v, label %bb.u, !dbg !4679

bb.r:                                             ; preds = %bb.c
  %i.m = and i8 %3, 4, !dbg !4692
end_hunk_0
