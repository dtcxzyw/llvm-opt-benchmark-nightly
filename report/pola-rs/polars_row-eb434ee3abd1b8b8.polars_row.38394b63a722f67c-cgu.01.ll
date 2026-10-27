Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.01?download=true
inline.NumInlined: 1293
inline.NumDeleted: 810
begin_hunk_0_@_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecnE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB15_10take_while9TakeWhileINtNtNtB19_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7decimal6decodess_0ENCB2T_st_0EEB2Z_:bb.a
  br label %bb.d, !dbg !4043

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecnE7reserveCs4PheDXcg4wa_10polars_row.exit
  %i.as = load ptr, ptr %i.o, align 8, !dbg !4044, !nonnull !361, !noundef !361
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao, !dbg !4045
  store i128 %i.an, ptr %i.at, align 16, !dbg !4046
  %i.au = add nuw nsw i64 %i.ao, 1, !dbg !4047
  store i64 %i.au, ptr %i.n, align 8, !dbg !4048
  %i.av = icmp eq ptr %i.r, %i.g, !dbg !4006
  br i1 %i.av, label %.loopexit, label %.lr.ph18, !dbg !4007
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEEB1F_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !43 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !4064, !align !364, !noundef !361 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !4064
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !4064

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit, %bb.a
  ret void, !dbg !4064

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit unwind label %bb.d, !dbg !4065, !noalias !4062, !inline_history !4063

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #17, !dbg !4066, !noalias !4062
  resume { ptr, i32 } %i.c, !dbg !4065

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit: ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #17, !dbg !4067, !noalias !4062
  br label %bb.b, !dbg !4064
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !52 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !4073, !range !452, !noundef !361 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !4073
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs4PheDXcg4wa_10polars_row.exit, label %bb.b, !dbg !4073

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void, !dbg !4073

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0, !dbg !4074
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4074 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d, !dbg !4074

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !4075
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs4PheDXcg4wa_10polars_row.exit, !dbg !4074

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !4076
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs4PheDXcg4wa_10polars_row.exit, !dbg !4074
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4077 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !4081

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.d, !dbg !4082

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !4083
  ret void, !dbg !4081

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4081
  unreachable, !dbg !4081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4081
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !58 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4095
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4095, !alias.scope !4093, !nonnull !361, !noundef !361
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4096
  %i.d = load i64, ptr %i.c, align 8, !dbg !4096, !alias.scope !4093, !noundef !361
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBL_(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_.exit unwind label %bb.b, !dbg !4097, !inline_history !4094

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEEB1o_.exit unwind label %bb.c, !dbg !4098

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !4099
  ret void, !dbg !4100

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4100
  unreachable, !dbg !4100

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEEB1o_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e, !dbg !4100
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !65 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4112), !dbg !4113
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4114
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4114, !alias.scope !4112, !nonnull !361, !noundef !361 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4115
  %i.d = load i64, ptr %i.c, align 8, !dbg !4115, !alias.scope !4112, !noundef !361 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !4116
  br i1 %i.e, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !4116

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !4116
  br i1 %i.f, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !4116

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1, !dbg !4116
  %i.h = add i64 %.sroa.0.0.i.i1, 1, !dbg !4116   ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !4116, !noalias !4112, !inline_history !4109

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1, !dbg !4116   ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !4116
  br i1 %i.j, label %.body, label %.lr.ph3, !dbg !4116

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !4116
  br i1 %i.l, label %.body, label %.lr.ph3, !dbg !4116

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2, !dbg !4116
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(72) %i.m) #19
          to label %bb.c unwind label %bb.e, !dbg !4116, !noalias !4112, !inline_history !4109

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4116, !noalias !4112, !inline_history !4109
  unreachable, !dbg !4116

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.f, !dbg !4117

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !4118
  ret void, !dbg !4113

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4113
  unreachable, !dbg !4113

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row.exit: ; preds = %.body
  resume { ptr, i32 } %i.k, !dbg !4113
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !73 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !4137, !invariant.load !361 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !4137
  br i1 %.not, label %bb.c, label %bb.b, !dbg !4137

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !4137

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !4138
  %i.c = load i64, ptr %i.b, align 8, !dbg !4138, !range !375, !invariant.load !361 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !4139
  br i1 %i.d, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit, label %bb.d, !dbg !4139

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !4138
  %i.f = load i64, ptr %i.e, align 8, !dbg !4140, !range !460, !invariant.load !361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #17, !dbg !4141
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit, !dbg !4142

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !4137

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !4143
  %i.i = load i64, ptr %i.h, align 8, !dbg !4143, !range !375, !invariant.load !361 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !4144
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit4, label %bb.f, !dbg !4144

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !4143
  %i.l = load i64, ptr %i.k, align 8, !dbg !4145, !range !460, !invariant.load !361
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #17, !dbg !4146
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit4, !dbg !4147

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !4137
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !4158, !nonnull !361, !noundef !361 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !4158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #17, !dbg !4159
  ret void, !dbg !4158

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #17, !dbg !4160
  resume { ptr, i32 } %i.b, !dbg !4158
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4161 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !4237, !range !4226, !noundef !361 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806, !dbg !4237
  tail call void @llvm.assume(i1 %i.b), !dbg !4237
  %i.c = add nsw i64 %i.a, 9223372036854775807, !dbg !4237
  %i.d = icmp ugt i64 %i.a, -9223372036854775808, !dbg !4237
  %i.e = select i1 %i.d, i64 %i.c, i64 1, !dbg !4237
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !dbg !4237

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4237 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4227), !dbg !4237
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4238
  %i.h = load ptr, ptr %i.g, align 8, !dbg !4238, !alias.scope !4228, !nonnull !361, !noundef !361
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4239
  %i.j = load i64, ptr %i.i, align 8, !dbg !4239, !alias.scope !4228, !noundef !361
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBL_(ptr noalias noundef nonnull align 8 %i.h, i64 noundef %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEEB1h_.exit unwind label %bb.c, !dbg !4240, !noalias !4227, !inline_history !4229

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d, !dbg !4241, !inline_history !4230

common.resume:                                    ; preds = %bb.g, %.body, %bb.k, %.body4, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.o, %.body ], [ %i.o, %bb.g ], [ %i.u, %bb.k ], [ %i.u, %.body4 ]
  resume { ptr, i32 } %common.resume.op, !dbg !4237

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4242, !inline_history !4230
  unreachable, !dbg !4242

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEEB1h_.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !4243, !inline_history !4230
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit7, !dbg !4237

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !4237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4231), !dbg !4237
  %i.n = load ptr, ptr %i.m, align 8, !dbg !4244, !alias.scope !4231, !nonnull !361, !noundef !361 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %bb.h unwind label %.body, !dbg !4244, !noalias !4231, !inline_history !4178

.body:                                            ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 24, i64 noundef 8) #17, !dbg !4245, !noalias !4231
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4237 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !4246, !range !464, !alias.scope !4232, !noundef !361
  %i.r = icmp eq i64 %i.q, -9223372036854775808, !dbg !4246
  br i1 %i.r, label %common.resume, label %bb.g, !dbg !4246

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4233), !dbg !4237
  %i.t = load ptr, ptr %i.s, align 8, !dbg !4247, !alias.scope !4233, !nonnull !361, !noundef !361 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_(ptr noalias noundef align 8 dereferenceable(24) %i.t)
          to label %bb.l unwind label %.body4, !dbg !4247, !noalias !4233, !inline_history !4178

.body4:                                           ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 24, i64 noundef 8) #17, !dbg !4248, !noalias !4233
  %i.v = load i64, ptr %0, align 8, !dbg !4249, !range !464, !alias.scope !4234, !noundef !361
  %i.w = icmp eq i64 %i.v, -9223372036854775808, !dbg !4249
  br i1 %i.w, label %common.resume, label %bb.k, !dbg !4249

bb.g:                                             ; preds = %.body
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %common.resume unwind label %bb.j, !dbg !4250

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 24, i64 noundef 8) #17, !dbg !4251, !noalias !4231
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4237 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !dbg !4252, !range !464, !alias.scope !4235, !noundef !361
  %i.z = icmp eq i64 %i.y, -9223372036854775808, !dbg !4252
  br i1 %i.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit7, label %bb.i, !dbg !4252

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x), !dbg !4253
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit7, !dbg !4252

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit7: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEEB1h_.exit
  ret void, !dbg !4237

bb.j:                                             ; preds = %bb.k, %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4237
  unreachable, !dbg !4237

bb.k:                                             ; preds = %.body4
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.j, !dbg !4254

bb.l:                                             ; preds = %bb.f
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 24, i64 noundef 8) #17, !dbg !4255, !noalias !4233
  %i.ab = load i64, ptr %0, align 8, !dbg !4256, !range !464, !alias.scope !4236, !noundef !361
  %i.ac = icmp eq i64 %i.ab, -9223372036854775808, !dbg !4256
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit7, label %bb.m, !dbg !4256

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !dbg !4257
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6widths9RowWidthsEBK_.exit7, !dbg !4256
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !83 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !4301   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4301
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !4301, !nonnull !361, !align !364, !noundef !361 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !dbg !4302, !invariant.load !361 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !4302
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !4302

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e, !dbg !4302

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !4303
  %i.d = load i64, ptr %i.c, align 8, !dbg !4303, !range !375, !invariant.load !361 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !4304
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, label %bb.d, !dbg !4304

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !4303
  %i.g = load i64, ptr %i.f, align 8, !dbg !4305, !range !460, !invariant.load !361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #17, !dbg !4306
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, !dbg !4307

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !4308
  %i.j = load i64, ptr %i.i, align 8, !dbg !4308, !range !375, !invariant.load !361 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !4309
  br i1 %i.k, label %.body, label %bb.f, !dbg !4309

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !4308
  %i.m = load i64, ptr %i.l, align 8, !dbg !4310, !range !460, !invariant.load !361
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #17, !dbg !4311
  br label %.body, !dbg !4312

.body:                                            ; preds = %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4301 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !dbg !4313, !alias.scope !4296, !align !364, !noundef !361
  %i.p = icmp eq ptr %i.o, null, !dbg !4313
  br i1 %i.p, label %common.resume, label %bb.g, !dbg !4313

bb.g:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %common.resume unwind label %bb.j, !dbg !4313, !inline_history !4297

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4301
  %i.r = load ptr, ptr %i.q, align 8, !dbg !4314, !alias.scope !4298, !align !364, !noundef !361 ; 4 uses
  %i.s = icmp eq ptr %i.r, null, !dbg !4314
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEEB1F_.exit2, label %bb.h, !dbg !4314

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit unwind label %bb.i, !dbg !4315, !noalias !4299, !inline_history !4300

common.resume:                                    ; preds = %bb.g, %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.h, %.body ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !4301

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 48, i64 noundef 8) #17, !dbg !4316, !noalias !4299, !inline_history !4300
  br label %common.resume, !dbg !4315

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit: ; preds = %bb.h
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 48, i64 noundef 8) #17, !dbg !4317, !noalias !4299, !inline_history !4300
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEEB1F_.exit2, !dbg !4314

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEEB1F_.exit2: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit
  ret void, !dbg !4301

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4301
  unreachable, !dbg !4301
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4318 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !4528, !range !465, !noundef !361
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 3, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 4, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 5, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 7, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 8, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 10, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 11, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 12, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 13, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 14, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 15, label %bb.n
    i8 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 18, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 19, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 20, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 21, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 22, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 23, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 24, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 25, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 26, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 27, label %bb.p
    i8 28, label %bb.r
    i8 29, label %bb.t
    i8 30, label %bb.v
    i8 31, label %bb.ab
    i8 32, label %bb.ad
    i8 33, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 34, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 35, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 36, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 37, label %bb.af
    i8 38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 39, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
    i8 40, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs4PheDXcg4wa_10polars_row.exit
  ], !dbg !4528

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4528 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4510), !dbg !4528
  %i.c = load ptr, ptr %i.b, align 8, !dbg !4529, !alias.scope !4510, !nonnull !361, !noundef !361 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4511), !dbg !4530
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4531
  %i.e = load ptr, ptr %i.d, align 8, !dbg !4531, !alias.scope !4511, !noalias !4510, !nonnull !361, !noundef !361 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4532
  %i.g = load i64, ptr %i.f, align 8, !dbg !4532, !alias.scope !4511, !noalias !4510, !noundef !361 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !4533
  br i1 %i.h, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit31, label %.lr.ph43, !dbg !4533

bb.c:                                             ; preds = %.lr.ph43
  %i.i = icmp eq i64 %i.k, %i.g, !dbg !4533
  br i1 %i.i, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit31, label %.lr.ph43, !dbg !4533

.lr.ph43:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i2742 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %.sroa.0.0.i.i2742, !dbg !4533
  %i.k = add i64 %.sroa.0.0.i.i2742, 1, !dbg !4533 ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(72) %i.j)
          to label %bb.c unwind label %bb.e, !dbg !4533, !noalias !4512, !inline_history !4334

bb.d:                                             ; preds = %.lr.ph45
  %i.l = add i64 %.sroa.0.1.i.i2844, 1, !dbg !4533 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g, !dbg !4533
  br i1 %i.m, label %.body29, label %.lr.ph45, !dbg !4533

bb.e:                                             ; preds = %.lr.ph43
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g, !dbg !4533
  br i1 %i.o, label %.body29, label %.lr.ph45, !dbg !4533

.lr.ph45:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2844 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %.sroa.0.1.i.i2844, !dbg !4533
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(72) %i.p) #19
          to label %bb.d unwind label %bb.f, !dbg !4533, !noalias !4512, !inline_history !4334

bb.f:                                             ; preds = %.lr.ph45
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4533, !noalias !4512, !inline_history !4334
  unreachable, !dbg !4533

.body29:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.body.i unwind label %bb.g, !dbg !4534

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit31: ; preds = %bb.c, %bb.b
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.h, !dbg !4535

bb.g:                                             ; preds = %.body29
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4530, !noalias !4510, !inline_history !4337
  unreachable, !dbg !4530

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit31
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4536 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !4537, !range !464, !alias.scope !4513, !noalias !4510, !noundef !361
  %i.u = icmp eq i64 %i.t, -9223372036854775808, !dbg !4537
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeEECs4PheDXcg4wa_10polars_row.exit, label %bb.j, !dbg !4537

bb.h:                                             ; preds = %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row.exit31
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !4536

.body.i:                                          ; preds = %.body29, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.n, %.body29 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4536 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !4538, !range !464, !alias.scope !4514, !noalias !4510, !noundef !361
  %i.y = icmp eq i64 %i.x, -9223372036854775808, !dbg !4538
  br i1 %i.y, label %bb.m, label %bb.i, !dbg !4538

bb.i:                                             ; preds = %.body.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.m unwind label %bb.k, !dbg !4539, !noalias !4510, !inline_history !4347

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.l, !dbg !4540, !inline_history !4347

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4536, !noalias !4510, !inline_history !4347
  unreachable, !dbg !4536
end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs4PheDXcg4wa_10polars_row:bb.a
bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i.i.i22, 1, !dbg !4612 ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val1.i, !dbg !4612
  br i1 %i.r, label %.body.i, label %.lr.ph, !dbg !4612

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  %i.t = icmp eq i64 %i.f, %.val1.i, !dbg !4612
  br i1 %i.t, label %.body.i, label %.lr.ph, !dbg !4612

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.q, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22, !dbg !4612
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(72) %i.u) #19
          to label %bb.h unwind label %bb.j, !dbg !4612, !noalias !4607

bb.j:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4612, !noalias !4607
  unreachable, !dbg !4612

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.k, !dbg !4620

bb.k:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4611
  unreachable, !dbg !4611

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !4611

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolEECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECs4PheDXcg4wa_10polars_row.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !4621
  ret void, !dbg !4610
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace15BacktraceSymbolECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4637 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !4638, !range !464, !alias.scope !4635, !noundef !361
  %i.c = icmp eq i64 %i.b, -9223372036854775808, !dbg !4638
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs4PheDXcg4wa_10polars_row.exit, label %bb.b, !dbg !4638

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.c, !dbg !4639

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %0) #19
          to label %bb.h unwind label %bb.g, !dbg !4637

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr %0, align 8, !dbg !4640, !range !452, !alias.scope !4636, !noundef !361 ; 2 uses
  %i.f = icmp eq i64 %i.e, 2, !dbg !4640
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs4PheDXcg4wa_10polars_row.exit, label %bb.d, !dbg !4640

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs4PheDXcg4wa_10polars_row.exit
  %i.g = icmp eq i64 %i.e, 0, !dbg !4641
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4641 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f, !dbg !4641

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !4642
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs4PheDXcg4wa_10polars_row.exit, !dbg !4641

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !4643
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs4PheDXcg4wa_10polars_row.exit, !dbg !4641

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs4PheDXcg4wa_10polars_row.exit, %bb.e, %bb.f
  ret void, !dbg !4637

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4637
  unreachable, !dbg !4637

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !4637
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4644 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55, !dbg !4695
  %i.b = load i8, ptr %i.a, align 1, !dbg !4695, !range !472, !alias.scope !4689, !noundef !361
  %i.c = icmp eq i8 %i.b, -40, !dbg !4696
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit, !dbg !4696, !prof !418

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4697
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit unwind label %bb.c, !dbg !4698

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %0) #19
          to label %bb.d unwind label %bb.k, !dbg !4697

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g, !dbg !4697

bb.d:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !4697 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4690), !dbg !4697
  %i.g = load ptr, ptr %i.f, align 8, !dbg !4699, !alias.scope !4690, !noundef !361 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !4699
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit, label %bb.e, !dbg !4699

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !4700, !noalias !4691
  %i.j = icmp eq i64 %i.i, 1, !dbg !4701
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit, !dbg !4701

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !4702
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #20
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.k, !dbg !4703

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !4697 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4693), !dbg !4697
  %i.m = load ptr, ptr %i.l, align 8, !dbg !4704, !alias.scope !4693, !noundef !361 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !4704
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3, label %bb.i, !dbg !4704

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !4705, !noalias !4694
  %i.p = icmp eq i64 %i.o, 1, !dbg !4706
  br i1 %i.p, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3, !dbg !4706

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !4707
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #20, !dbg !4708
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3, !dbg !4708

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3: ; preds = %bb.h, %bb.i, %bb.j
  ret void, !dbg !4697

bb.k:                                             ; preds = %bb.f, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4697
  unreachable, !dbg !4697

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %.pn, !dbg !4697
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBL_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4709 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !4753
  br i1 %i.a, label %._crit_edge, label %.lr.ph, !dbg !4753

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_.exit
  %.sroa.0.017 = phi i64 [ %i.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.017, !dbg !4753 ; 4 uses
  %i.c = add nuw i64 %.sroa.0.017, 1, !dbg !4753  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4748), !dbg !4753
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !4754, !alias.scope !4748 ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8, !dbg !4754
  %.val1.i = load ptr, ptr %i.d, align 8, !dbg !4754, !alias.scope !4748, !nonnull !361, !align !364, !noundef !361 ; 5 uses
  %i.e = load ptr, ptr %.val1.i, align 8, !dbg !4755, !invariant.load !361, !noalias !4748 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null, !dbg !4755
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !4755

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !4748
  invoke void %i.e(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.e, !dbg !4755, !noalias !4748

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8, !dbg !4756
  %i.g = load i64, ptr %i.f, align 8, !dbg !4756, !range !375, !invariant.load !361, !noalias !4748 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !4757
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, label %bb.d, !dbg !4757

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16, !dbg !4756
  %i.j = load i64, ptr %i.i, align 8, !dbg !4758, !range !460, !invariant.load !361, !noalias !4748
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !4748
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #17, !dbg !4759, !noalias !4748
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, !dbg !4760

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8, !dbg !4761
  %i.m = load i64, ptr %i.l, align 8, !dbg !4761, !range !375, !invariant.load !361, !noalias !4748 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !4762
  br i1 %i.n, label %.body9, label %bb.f, !dbg !4762

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16, !dbg !4761
  %i.p = load i64, ptr %i.o, align 8, !dbg !4763, !range !460, !invariant.load !361, !noalias !4748
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #17, !dbg !4764, !noalias !4748
  br label %.body9, !dbg !4765

.body9:                                           ; preds = %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4754
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEEB1F_(ptr noalias noundef align 8 dereferenceable(8) %i.q) #19
          to label %.body unwind label %bb.i, !dbg !4754, !inline_history !4749

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4750), !dbg !4754
  %i.s = load ptr, ptr %i.r, align 8, !dbg !4766, !alias.scope !4750, !align !364, !noundef !361 ; 4 uses
  %i.t = icmp eq ptr %i.s, null, !dbg !4766
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_.exit, label %bb.g, !dbg !4766

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit.i unwind label %bb.h, !dbg !4767, !noalias !4751, !inline_history !4752

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 48, i64 noundef 8) #17, !dbg !4768, !noalias !4751
  br label %.body, !dbg !4767

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit.i: ; preds = %bb.g
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 48, i64 noundef 8) #17, !dbg !4769, !noalias !4751
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_.exit, !dbg !4766

bb.i:                                             ; preds = %.body9
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4754, !inline_history !4749
  unreachable, !dbg !4754

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs4PheDXcg4wa_10polars_row6encode12EncoderStateEEB1j_.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit
  %i.w = icmp eq i64 %i.c, %1, !dbg !4753
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !4753

._crit_edge:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_.exit, %bb.a
  ret void, !dbg !4753

bb.j:                                             ; preds = %.lr.ph57
  %i.x = add i64 %.sroa.0.156, 1, !dbg !4753      ; 2 uses
  %i.y = icmp eq i64 %i.x, %1, !dbg !4753
  br i1 %i.y, label %._crit_edge58, label %.lr.ph57, !dbg !4753

.body:                                            ; preds = %bb.h, %.body9
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %.body9 ], [ %i.u, %bb.h ]
  %i.z = icmp eq i64 %i.c, %1, !dbg !4753
  br i1 %i.z, label %._crit_edge58, label %.lr.ph57, !dbg !4753

.lr.ph57:                                         ; preds = %.body, %bb.j
  %.sroa.0.156 = phi i64 [ %i.x, %bb.j ], [ %i.c, %.body ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.156, !dbg !4753
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBK_(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #19
          to label %bb.j unwind label %bb.k, !dbg !4753

._crit_edge58:                                    ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !4753

bb.k:                                             ; preds = %.lr.ph57
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !4753
  unreachable, !dbg !4753
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE6resizeCs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4770 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4825 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !4825, !noundef !361 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976, !dbg !4826
  tail call void @llvm.assume(i1 %i.c), !dbg !4827
  %i.d = icmp ugt i64 %1, %i.b, !dbg !4828
  br i1 %i.d, label %bb.b, label %_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE11extend_withCs4PheDXcg4wa_10polars_row.exit, !dbg !4828

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b, !dbg !4829         ; 5 uses
  %i.f = load i64, ptr %0, align 8, !dbg !4830, !range !375, !alias.scope !4822, !noundef !361
  %i.g = sub nsw i64 %i.f, %i.b, !dbg !4831
  %i.h = icmp ugt i64 %i.e, %i.g, !dbg !4832
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i, !dbg !4833, !prof !418

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8), !dbg !4834
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !4835, !alias.scope !4823
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i, !dbg !4834

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ], !dbg !4835 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4836
  %i.k = load ptr, ptr %i.j, align 8, !dbg !4836, !alias.scope !4823, !nonnull !361, !noundef !361
  %i.l = icmp ult i64 %i.i, 1152921504606846976, !dbg !4837
  tail call void @llvm.assume(i1 %i.l), !dbg !4838
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i, !dbg !4839 ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1, !dbg !4840
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i, !dbg !4841

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i
  %i.o = xor i64 %i.b, -1, !dbg !4841
  %i.p = add i64 %1, %i.o, !dbg !4841             ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4, !dbg !4841
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph, !dbg !4841

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -4                       ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !4841

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16, !dbg !4842
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !dbg !4842
  store <2 x i64> %broadcast.splat, ptr %i.u, align 8, !dbg !4842
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !4841
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !4841, !llvm.loop !4810

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec, !dbg !4841
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7, !dbg !4841

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i, !dbg !4841

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ], !dbg !4843
  %i.w = add i64 %i.e, -1, !dbg !4841
  %i.x = add i64 %i.w, %i.i, !dbg !4841
  br label %._crit_edge.i, !dbg !4844

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs4PheDXcg4wa_10polars_row.exit.i ]
  store i64 %2, ptr %.sroa.0.0.lcssa28.i, align 8, !dbg !4845
  %i.y = add i64 %storemerge.lcssa27.i, 1, !dbg !4846
  br label %_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE11extend_withCs4PheDXcg4wa_10polars_row.exit, !dbg !4847

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1, !dbg !4848 ; 2 uses
  store i64 %2, ptr %.sroa.0.021.i, align 8, !dbg !4842
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8, !dbg !4843 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e, !dbg !4840
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !dbg !4841, !llvm.loop !4820

_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE11extend_withCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.a, %._crit_edge.i
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ], !dbg !4849
  store i64 %storemerge, ptr %i.a, align 8, !dbg !4849
  ret void, !dbg !4850
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRShE7reserveCs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4859
  %i.b = load i64, ptr %i.a, align 8, !dbg !4859, !noundef !361 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !4860, !range !375, !noundef !361
  %i.d = sub i64 %i.c, %i.b, !dbg !4861
  %i.e = icmp ugt i64 %1, %i.d, !dbg !4862
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !4863, !prof !418

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !4864

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 16), !dbg !4865
  br label %bb.b, !dbg !4865
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4874
  %i.b = load i64, ptr %i.a, align 8, !dbg !4874, !noundef !361 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB15_11get_encoder0EE9from_iterB17_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExactjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB32_9RowWidths15collapse_chunks0EE9from_iterB34_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12807 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12848
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !12849
  %.val3 = load i64, ptr %i.d, align 8, !dbg !12849, !noundef !361 ; 2 uses
  %i.e = icmp eq i64 %.val3, 0, !dbg !12850
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !12850

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !dbg !12850, !noalias !12843
  unreachable, !dbg !12850

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12849
  %.val = load i64, ptr %i.f, align 8, !dbg !12849
  %i.g = udiv i64 %.val, %.val3, !dbg !12850      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12851
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !12851
  %i.h = load i64, ptr %i.b, align 8, !dbg !12851, !range !575, !noundef !361
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12852
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12853
  %i.k = load i64, ptr %i.j, align 8, !dbg !12853, !range !464, !noundef !361 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12853 ; 2 uses
  br i1 %i.i, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter11ChunksExactjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2u_9RowWidths15collapse_chunks0EEB2w_.exit.i, !dbg !12852, !prof !418

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !dbg !12854
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !dbg !12855
  unreachable, !dbg !12855

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter11ChunksExactjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2u_9RowWidths15collapse_chunks0EEB2w_.exit.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12856, !nonnull !361, !noundef !361 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12857
  tail call void @llvm.assume(i1 %i.o), !dbg !12858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12859
  store i64 %i.k, ptr %i.c, align 8, !dbg !12860
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12860
  store ptr %i.n, ptr %i.p, align 8, !dbg !12860
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12860 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12861, !noalias !12847
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12861
  store ptr %i.n, ptr %i.r, align 8, !dbg !12861, !noalias !12847
  store ptr %i.q, ptr %i.a, align 8, !dbg !12861, !noalias !12847
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12861
  store i64 0, ptr %i.s, align 8, !dbg !12861, !noalias !12847
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExactjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB1E_9RowWidths15collapse_chunks0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3Z_3VecjE14extend_trustedBN_E0E0EB1G_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e, !dbg !12862

bb.e:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter11ChunksExactjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2u_9RowWidths15collapse_chunks0EEB2w_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.g, !dbg !12863

bb.f:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter11ChunksExactjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2u_9RowWidths15collapse_chunks0EEB2w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12864, !noalias !12847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12866
  ret void, !dbg !12867

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !12868
  unreachable, !dbg !12868

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.t, !dbg !12868
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2U_9RowWidths4push0EE9from_iterB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12869 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12906
  %.val = load ptr, ptr %1, align 8, !dbg !12907, !nonnull !361, !noundef !361
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12907
  %.val3 = load ptr, ptr %i.d, align 8, !dbg !12907, !nonnull !361, !noundef !361
  %i.e = ptrtoint ptr %.val3 to i64, !dbg !12908
  %i.f = ptrtoint ptr %.val to i64, !dbg !12908
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !12908
  %i.h = lshr exact i64 %i.g, 3, !dbg !12908      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12909
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !12909
  %i.i = load i64, ptr %i.b, align 8, !dbg !12909, !range !575, !noundef !361
  %i.j = trunc nuw i64 %i.i to i1, !dbg !12910
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12911
  %i.l = load i64, ptr %i.k, align 8, !dbg !12911, !range !464, !noundef !361 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12911 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0EEB2o_.exit.i, !dbg !12910, !prof !418

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !12912
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !dbg !12913
  unreachable, !dbg !12913

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0EEB2o_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !dbg !12914, !nonnull !361, !noundef !361 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !12915
  tail call void @llvm.assume(i1 %i.p), !dbg !12916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12917
  store i64 %i.l, ptr %i.c, align 8, !dbg !12918
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12918
  store ptr %i.o, ptr %i.q, align 8, !dbg !12918
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12918 ; 2 uses
  store i64 0, ptr %i.r, align 8, !dbg !12918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12919, !noalias !12905
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12919
  store ptr %i.o, ptr %i.s, align 8, !dbg !12919, !noalias !12905
  store ptr %i.r, ptr %i.a, align 8, !dbg !12919, !noalias !12905
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12919
  store i64 0, ptr %i.t, align 8, !dbg !12919, !noalias !12905
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB1w_9RowWidths4push0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2s_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3F_3VecjE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !12920

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0EEB2o_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.e, !dbg !12921

bb.d:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0EEB2o_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12922, !noalias !12905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12924
  ret void, !dbg !12925

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !12926
  unreachable, !dbg !12926

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.u, !dbg !12926
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12927 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13004
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13005
  %i.e = load ptr, ptr %i.d, align 8, !dbg !13005, !nonnull !361, !noundef !361 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !dbg !13006, !noundef !361 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13007, !noalias !12999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13008, !noalias !12999
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !13008, !noalias !12999
  %i.g = load i64, ptr %i.a, align 8, !dbg !13008, !range !575, !noalias !12999, !noundef !361
  %i.h = trunc nuw i64 %i.g to i1, !dbg !13009
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13010
  %i.j = load i64, ptr %i.i, align 8, !dbg !13010, !range !464, !noalias !12999, !noundef !361 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13010 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, !dbg !13009, !prof !418

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !13011, !noalias !12999
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21, !dbg !13012, !noalias !12999
  unreachable, !dbg !13012

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !13013, !noalias !12999, !nonnull !361, !noundef !361 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !13014
  tail call void @llvm.assume(i1 %i.n), !dbg !13015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13016, !noalias !12999
  store i64 %i.j, ptr %i.b, align 8, !dbg !13017, !noalias !12999
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13017
  store ptr %i.m, ptr %i.o, align 8, !dbg !13017, !noalias !12999
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13017 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f, !dbg !13018
  %i.r = icmp eq i64 %i.j, 0, !dbg !13019
  br i1 %i.r, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !13019

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.e, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.s, %bb.d ], [ %i.j, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i ]
  %i.s = add i64 %.sroa.10.021.i, -1, !dbg !13020 ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.023.i, %i.q, !dbg !13021
  br i1 %i.t, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.c, !dbg !13022

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !dbg !13023, !noalias !13002 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !13024
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16, !dbg !13025
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.022.i, !dbg !13026 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.u, 0, !dbg !13027 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.u, 1, !dbg !13027 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y), "nonnull"(ptr %i.z) ], !dbg !13028
  store ptr %i.y, ptr %i.x, align 8, !dbg !13029, !noalias !13002
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !13029
  store ptr %i.z, ptr %i.aa, align 8, !dbg !13029, !noalias !13002
  %i.ab = icmp eq i64 %i.s, 0, !dbg !13019
  br i1 %i.ab, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !13019

bb.e:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13030, !noalias !13002
  unreachable, !dbg !13030

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.p, align 8, !dbg !13031, !noalias !12999
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.g unwind label %bb.e, !dbg !13032, !noalias !13002

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !13030

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i
  store i64 %i.f, ptr %i.p, align 8, !dbg !13033, !noalias !12999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !13034, !noalias !13003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13032, !noalias !12999
  ret void, !dbg !13035
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13036 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.04 = alloca [56 x i8], align 8           ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13159
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13160
  %i.h = load ptr, ptr %i.g, align 8, !dbg !13160, !nonnull !361, !noundef !361 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !dbg !13161, !noundef !361 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13162, !noalias !13142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13163, !noalias !13142
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 128102389400760776) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !13163, !noalias !13142
  %i.j = load i64, ptr %i.a, align 8, !dbg !13163, !range !575, !noalias !13142, !noundef !361
  %i.k = trunc nuw i64 %i.j to i1, !dbg !13164
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13165
  %i.m = load i64, ptr %i.l, align 8, !dbg !13165, !range !464, !noalias !13142, !noundef !361 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13165 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit, !dbg !13164, !prof !418

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !dbg !13166, !noalias !13142
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #21, !dbg !13167, !noalias !13142
  unreachable, !dbg !13167

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !dbg !13168, !noalias !13142, !nonnull !361, !noundef !361 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m, !dbg !13169
  tail call void @llvm.assume(i1 %i.q), !dbg !13170, !noalias !13142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13171, !noalias !13142
  store i64 %i.m, ptr %i.e, align 8, !dbg !13172, !noalias !13142
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13172
  store ptr %i.p, ptr %i.r, align 8, !dbg !13172, !noalias !13142
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !13172 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.i, !dbg !13173
  %i.u = icmp eq i64 %i.m, 0, !dbg !13174
  br i1 %i.u, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13174

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit
  %.sroa.04.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 32
  br label %bb.c, !dbg !13174

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.03.032 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %bb.m ] ; 7 uses
  %.sroa.7.031 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.m ] ; 3 uses
  %.sroa.10.030 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %bb.m ]
  %i.v = add i64 %.sroa.10.030, -1, !dbg !13175   ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.032, %i.t, !dbg !13176
  br i1 %i.w, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.d, !dbg !13177

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 72, !dbg !13178
  %i.y = add nuw nsw i64 %.sroa.7.031, 1, !dbg !13179
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04), !dbg !13180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13145), !dbg !13181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13182, !noalias !13146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13183, !noalias !13146
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 32, !dbg !13183 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 55, !dbg !13184
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !13184, !range !472, !alias.scope !13145, !noalias !13147, !noundef !361
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !13185
  br i1 %i.ac, label %bb.e, label %bb.f, !dbg !13185

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #20
          to label %.noexc unwind label %.loopexit, !dbg !13186, !inline_history !13096

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !13187, !noalias !13148
  br label %.noexc, !dbg !13188

.noexc:                                           ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !13189, !noalias !13146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13190, !noalias !13146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13191, !noalias !13146
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.03.032)
          to label %bb.i unwind label %bb.g, !dbg !13191, !noalias !13148, !inline_history !13096

bb.g:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !13192
  %i.af = load i8, ptr %i.ae, align 1, !dbg !13192, !range !472, !alias.scope !13149, !noalias !13146, !noundef !361
  %i.ag = icmp eq i8 %i.af, -40, !dbg !13193
  br i1 %i.ag, label %bb.h, label %bb.o, !dbg !13193, !prof !418

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !dbg !13194, !noalias !13148, !inline_history !13096

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 64, !dbg !13195
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !13195, !range !389, !alias.scope !13145, !noalias !13147, !noundef !361
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 56, !dbg !13196
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !13196, !alias.scope !13145, !noalias !13147, !noundef !361 ; 3 uses
  %.not.i1 = icmp eq ptr %i.ak, null, !dbg !13196
  br i1 %.not.i1, label %bb.m, label %bb.j, !dbg !13197

bb.j:                                             ; preds = %bb.i
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !dbg !13198, !noalias !13148
  %i.am = icmp slt i64 %i.al, 0, !dbg !13199
  br i1 %i.am, label %bb.k, label %bb.m, !dbg !13199

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !13200, !noalias !13147
  unreachable, !dbg !13200

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13201, !noalias !13148, !inline_history !13096
  unreachable, !dbg !13201

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !13201, !noalias !13150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !13201, !noalias !13150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13202, !noalias !13146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13202, !noalias !13146
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.7.031, !dbg !13203 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04, i64 56, i1 false), !dbg !13204, !noalias !13147
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56, !dbg !13205
  store ptr %i.ak, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !13205, !noalias !13147
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64, !dbg !13205
  store i8 %i.ai, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !13205, !noalias !13147
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !13206
  %i.ap = icmp eq i64 %i.v, 0, !dbg !13174
  br i1 %i.ap, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.c, !dbg !13174

bb.n:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13207, !noalias !13147, !inline_history !13124
  unreachable, !dbg !13207

bb.o:                                             ; preds = %.loopexit, %bb.h, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.031, ptr %i.s, align 8, !dbg !13208, !noalias !13147
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.e) #19
          to label %bb.p unwind label %bb.n, !dbg !13209, !noalias !13147, !inline_history !13124

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body, !dbg !13207

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.m, %bb.c, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit
  store i64 %i.i, ptr %i.s, align 8, !dbg !13210, !noalias !13142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !13211, !noalias !13158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13209, !noalias !13142
  ret void, !dbg !13212
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !13213 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13258
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13259
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13259, !nonnull !361, !noundef !361
  %i.e = load i64, ptr %i.b, align 8, !dbg !13260, !noundef !361 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13254), !dbg !13261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13262, !noalias !13256
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !13262, !noalias !13256
  %i.f = load i64, ptr %i.a, align 8, !dbg !13262, !range !575, !noalias !13256, !noundef !361
  %i.g = trunc nuw i64 %i.f to i1, !dbg !13263
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13264
  %i.i = load i64, ptr %i.h, align 8, !dbg !13264, !range !464, !noalias !13256, !noundef !361 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13264 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, !dbg !13263, !prof !418

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !13265, !noalias !13256
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !13266, !noalias !13256
  unreachable, !dbg !13266

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !13267, !noalias !13256, !nonnull !361, !noundef !361 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !13268
  tail call void @llvm.assume(i1 %i.m), !dbg !13269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13270, !noalias !13256
  store i64 %i.i, ptr %0, align 8, !dbg !13271, !alias.scope !13254
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13271
  store ptr %i.l, ptr %i.n, align 8, !dbg !13271, !alias.scope !13254
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13271 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !13271, !alias.scope !13254
  %.not.i = icmp eq i64 %i.e, 0, !dbg !13272
  br i1 %.not.i, label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, label %bb.c, !dbg !13272

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i
  %i.p = shl nuw nsw i64 %i.e, 2, !dbg !13273
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %i.d, i64 %i.p, i1 false), !dbg !13273, !noalias !13254
  store i64 %i.e, ptr %i.o, align 8, !dbg !13274, !alias.scope !13254
  br label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit, !dbg !13275

_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4PheDXcg4wa_10polars_row.exit.i, %bb.c
  ret void, !dbg !13276
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13277 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13310
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13310, !nonnull !361, !noundef !361 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13311
  %i.d = load i64, ptr %i.c, align 8, !dbg !13311, !noundef !361 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13309), !dbg !13312
  %i.e = icmp eq i64 %i.d, 0, !dbg !13313
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !13313

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i, !dbg !13313 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1, !dbg !13313 ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !dbg !13313, !alias.scope !13309 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8, !dbg !13313
  %.val9.i = load ptr, ptr %i.h, align 8, !dbg !13313, !alias.scope !13309, !nonnull !361, !align !364, !noundef !361 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !dbg !13314, !invariant.load !361, !noalias !13309 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !13314
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !13314

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !dbg !13314, !noalias !13309

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !13315
  %i.k = load i64, ptr %i.j, align 8, !dbg !13315, !range !375, !invariant.load !361, !noalias !13309 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !13316
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i, label %bb.d, !dbg !13316

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !13315
  %i.n = load i64, ptr %i.m, align 8, !dbg !13317, !range !460, !invariant.load !361, !noalias !13309
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #17, !dbg !13318, !noalias !13309
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i, !dbg !13319

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !13320
  %i.q = load i64, ptr %i.p, align 8, !dbg !13320, !range !375, !invariant.load !361, !noalias !13309 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !13321
  br i1 %i.r, label %.body.i, label %bb.f, !dbg !13321

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !13320
  %i.t = load i64, ptr %i.s, align 8, !dbg !13322, !range !460, !invariant.load !361, !noalias !13309
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #17, !dbg !13323, !noalias !13309
  br label %.body.i, !dbg !13324

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d, !dbg !13313
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph.i, !dbg !13313

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1, !dbg !13313   ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !13313
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !13313

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d, !dbg !13313
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !13313

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17, !dbg !13313 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !dbg !13313, !alias.scope !13309
  %i.z = getelementptr i8, ptr %i.y, i64 8, !dbg !13313
  %.val7.i = load ptr, ptr %i.z, align 8, !dbg !13313, !alias.scope !13309, !nonnull !361, !align !364, !noundef !361
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row(ptr %.val.i, ptr nonnull %.val7.i) #19
          to label %bb.g unwind label %bb.h, !dbg !13313, !noalias !13309

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o, !dbg !13313

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13313, !noalias !13309
  unreachable, !dbg !13313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit.i, %bb.a
  ret void, !dbg !13325
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13326 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13343
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13343, !nonnull !361, !noundef !361 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13344
  %i.d = load i64, ptr %i.c, align 8, !dbg !13344, !noundef !361 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !13345
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13345

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !13345
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13345

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !13345
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !13345    ; 4 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i unwind label %bb.b, !dbg !13346

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !13345    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !13345
  br i1 %i.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i._crit_edge, label %.lr.ph3, !dbg !13345

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !13345
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i._crit_edge, label %.lr.ph3, !dbg !13345

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !13345
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i unwind label %bb.c, !dbg !13347

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i._crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit7.i, %bb.b
  resume { ptr, i32 } %i.k, !dbg !13345

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13345
  unreachable, !dbg !13345

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs4PheDXcg4wa_10polars_row.exit.i, %bb.a
  ret void, !dbg !13348
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtNtCscgRAwXFJnXP_4core3mem13manually_drop12ManuallyDropINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtNtNtBM_3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 !dbg !13349 {
bb.a:
  ret void, !dbg !13350
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 !dbg !13351 {
bb.a:
  ret void, !dbg !13352
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !63 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13357
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13357, !nonnull !361, !noundef !361
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13358
  %i.d = load i64, ptr %i.c, align 8, !dbg !13358, !noundef !361
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEBL_(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d), !dbg !13359
  ret void, !dbg !13360
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13361 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13372
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13372, !nonnull !361, !noundef !361 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13373
  %i.d = load i64, ptr %i.c, align 8, !dbg !13373, !noundef !361 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !13374
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13374

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !13374
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13374

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !13374
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !13374    ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !13374

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !13374    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !13374
  br i1 %i.j, label %._crit_edge, label %.lr.ph3, !dbg !13374

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !13374
  br i1 %i.l, label %._crit_edge, label %.lr.ph3, !dbg !13374

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !13374
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.m) #19
          to label %bb.c unwind label %bb.e, !dbg !13374

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k, !dbg !13374

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !13374
  unreachable, !dbg !13374

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.b, %bb.a
  ret void, !dbg !13375
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13382
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13382, !nonnull !361, !noundef !361 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13383
  %i.d = load i64, ptr %i.c, align 8, !dbg !13383, !noundef !361 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !13384
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13384

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !13384
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row.exit, label %.lr.ph, !dbg !13384

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !13384
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !13384    ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !13384, !inline_history !13377

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !13384    ; 2 uses
end_hunk_2
