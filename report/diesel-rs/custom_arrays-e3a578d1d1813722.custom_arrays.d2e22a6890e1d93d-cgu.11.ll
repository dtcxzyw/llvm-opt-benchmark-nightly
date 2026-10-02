Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/custom_arrays-e3a578d1d1813722.custom_arrays.d2e22a6890e1d93d-cgu.11?download=true
inline.NumInlined: 148
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays:bb.a
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -40
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBE_9MigrationNtNtNtBG_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(40) %i.w), !noalias !173
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1c_9MigrationNtNtNtB1e_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays.exit.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1c_9MigrationNtNtNtB1e_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 40
  %i.z = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1f_9MigrationNtNtNtB1h_2pg7backend2PgEEL_EENtNtB29_5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1c_9MigrationNtNtNtB1e_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !171, !nonnull !3, !noundef !3
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !171
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1f_9MigrationNtNtNtB1h_2pg7backend2PgEEL_EENtNtB29_5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1f_9MigrationNtNtNtB1h_2pg7backend2PgEEL_EENtNtB29_5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1c_9MigrationNtNtNtB1e_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBT_7backend19InnerPgTypeMetadataEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !192, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1h_7backend19InnerPgTypeMetadataENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !194, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !194, !nonnull !3, !noundef !3 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !195
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i, %bb.c
  %.sroa.05.022.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i ] ; 2 uses
  %.sroa.6.021.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i ] ; 2 uses
  %.sroa.86.020.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBZ_7backend19InnerPgTypeMetadataEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.021.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.022.i.i, %bb.d ]
  %.val810.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !196
  %i.m = icmp sgt <16 x i8> %.val810.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -896 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBZ_7backend19InnerPgTypeMetadataEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBZ_7backend19InnerPgTypeMetadataEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.021.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.022.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.020.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -56 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -32 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !197, !alias.scope !198, !noalias !194, !noundef !3
  %switch.i.i.i.i.i = icmp ugt i64 %i.y, -3
  br i1 %switch.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBZ_7backend19InnerPgTypeMetadataEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !194

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i.i unwind label %bb.g, !noalias !194

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !194
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i unwind label %bb.h, !noalias !194

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.z, %bb.f ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w) #18
          to label %common.resume.i.i.i.i unwind label %bb.l, !noalias !194

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i.i, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBZ_7backend19InnerPgTypeMetadataEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays.exit.i.i
  %i.ac = load i64, ptr %i.w, align 8, !range !10, !alias.scope !199, !noalias !194, !noundef !3
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i unwind label %bb.j, !noalias !194

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %common.resume.i.i.i.i unwind label %bb.k, !noalias !194

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !194
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.j, %.body.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w), !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i

bb.l:                                             ; preds = %.body.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !194
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i.i
  %i.ah = icmp eq i64 %i.v, 0
  br i1 %i.ah, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBG_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 56
  %i.aj = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 64                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1h_7backend19InnerPgTypeMetadataENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !192, !nonnull !3, !noundef !3
  %i.as = sub i64 -64, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !192
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1h_7backend19InnerPgTypeMetadataENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1h_7backend19InnerPgTypeMetadataENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !202
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE15into_allocationCsi6wIvn64oUH_13custom_arrays.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 40
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 65
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -48, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE15into_allocationCsi6wIvn64oUH_13custom_arrays.exit

_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE15into_allocationCsi6wIvn64oUH_13custom_arrays.exit: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 4 ptr @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtB1n_5bound5BoundNtNtB7_9sql_types7IntegerRlEEEINtB5_17ColumnInsertValueB2g_B3x_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 4 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtBJ_5bound5BoundNtNtB7_9sql_types7IntegerRlEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtB1n_5bound5BoundNtNtB7_9sql_types7IntegerlEEEINtB5_17ColumnInsertValueB2g_B3x_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(i32 noundef range(i32 0, 2) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtBJ_5bound5BoundNtNtB7_9sql_types7IntegerlEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(i32 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i32 [ %i.b, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.c = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.d = insertvalue { i32, i32 } %i.c, i32 %.sroa.5.0, 1
  ret { i32, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3y_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.09.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3y_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesINtNtB1n_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtB4y_7IntegerEEINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEEEINtB5_17ColumnInsertValueB2g_B3z_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtB3S_7IntegerEEINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.09.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesINtNtB1n_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtB4y_7IntegerEERINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEEEINtB5_17ColumnInsertValueB2g_B3z_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtB3S_7IntegerEERINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3D_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.09.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3D_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3q_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3u_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_
define hidden noundef align 8 ptr @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriINtNtB1n_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_17ColumnInsertValueB2g_B3u_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsINtNtB1n_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtNtB2m_9sql_types15ServiceEndpointEEINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB2q_5model13endpoint_type8EndpointEEEEEINtB5_17ColumnInsertValueB2g_B3v_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtNtB1H_9sql_types15ServiceEndpointEEINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB1L_5model13endpoint_type8EndpointEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.09.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsh_NtCsjRvGck33osM_6diesel10insertableINtNtB5_7private22InsertableOptionHelperINtNtNtB7_10expression7grouped7GroupedINtNtB1n_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsINtNtB1n_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtNtB2m_9sql_types15ServiceEndpointEERINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB2q_5model13endpoint_type8EndpointEEEEEINtB5_17ColumnInsertValueB2g_B3v_EEINtB5_10InsertableNtB2k_5tableE6valuesB2q_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtNtB1H_9sql_types15ServiceEndpointEERINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB1L_5model13endpoint_type8EndpointEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1M_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceCsi6wIvn64oUH_13custom_arrays(ptr noundef nonnull %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBE_9MigrationNtNtNtBG_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBU_7backend19InnerPgTypeMetadataEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1V_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBW_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrownNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtB2_10EquivalentBq_E10equivalentCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 4 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtBJ_5bound5BoundNtNtB7_9sql_types7IntegerRlEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtBJ_5bound5BoundNtNtB7_9sql_types7IntegerlEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtB3S_7IntegerEEINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtB3S_7IntegerEERINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns6onlineINtNtBJ_5bound5BoundNtNtB7_9sql_types4BoolRbEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns6onlineINtNtBJ_5bound5BoundNtNtB7_9sql_types4BoolbEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 4 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns7versionINtNtBJ_5bound5BoundNtNtB7_9sql_types7IntegerRlEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns7versionINtNtBJ_5bound5BoundNtNtB7_9sql_types7IntegerlEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriINtNtBJ_5bound5BoundNtNtB7_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtNtB1H_9sql_types15ServiceEndpointEEINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB1L_5model13endpoint_type8EndpointEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsj_NtCsjRvGck33osM_6diesel10insertableINtNtNtB7_10expression7grouped7GroupedINtNtBJ_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsINtNtBJ_5bound5BoundINtNtNtNtB7_2pg5types9sql_types5ArrayINtNtB7_9sql_types8NullableNtNtB1H_9sql_types15ServiceEndpointEERINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB1L_5model13endpoint_type8EndpointEEEEEINtB5_10InsertableNtB1F_5tableE6valuesB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 1, i32 1999}
!7 = !{!"branch_weights", i32 0, i32 1}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 1, i64 536870913}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{i64 8}
!12 = distinct !{!12, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBS_9MigrationNtNtNtBU_2pg7backend2PgEEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsi6wIvn64oUH_13custom_arrays"}
!13 = distinct !{!13, !12, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBS_9MigrationNtNtNtBU_2pg7backend2PgEEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!14 = distinct !{!14, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!15 = distinct !{!15, !14, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!16 = distinct !{!16, !12, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBS_9MigrationNtNtNtBU_2pg7backend2PgEEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!17 = distinct !{!17, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!18 = distinct !{!18, !17, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!19 = distinct !{!19, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBU_9MigrationNtNtNtBW_2pg7backend2PgEEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csi6wIvn64oUH_13custom_arrays"}
!20 = distinct !{!20, !19, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBU_9MigrationNtNtNtBW_2pg7backend2PgEEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csi6wIvn64oUH_13custom_arrays: argument 0"}
!21 = distinct !{!21, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE6removeCsi6wIvn64oUH_13custom_arrays"}
!22 = distinct !{!22, !21, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE6removeCsi6wIvn64oUH_13custom_arrays: argument 1"}
!23 = distinct !{!23, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE13erase_no_dropCsi6wIvn64oUH_13custom_arrays"}
!24 = distinct !{!24, !23, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE13erase_no_dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!25 = distinct !{!25, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner5erase"}
!26 = distinct !{!26, !25, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!27 = distinct !{!27, !21, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBR_9MigrationNtNtNtBT_2pg7backend2PgEEL_EEE6removeCsi6wIvn64oUH_13custom_arrays: argument 0"}
!28 = distinct !{!28, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!29 = distinct !{!29, !28, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!30 = distinct !{!30, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!31 = distinct !{!31, !30, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!32 = !{!13}
!33 = !{!15}
!34 = !{!15, !13}
!35 = !{!16}
!36 = !{!18, !15, !13}
!37 = !{!20, !15, !13}
!38 = !{!22}
!39 = !{!24}
!40 = !{!26}
!41 = !{!29, !26, !24, !27, !22}
!42 = !{!31, !26, !24, !27, !22}
!43 = !{!26, !24, !22}
!44 = !{!27}
!45 = !{!26, !24, !27, !22}
!46 = distinct !{!46, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays"}
!47 = distinct !{!47, !46, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 0"}
!48 = distinct !{!48, !46, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 1"}
!49 = distinct !{!49, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays"}
!50 = distinct !{!50, !49, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 0"}
!51 = distinct !{!51, !49, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 1"}
!52 = distinct !{!52, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays"}
!53 = distinct !{!53, !52, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 0"}
!54 = distinct !{!54, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays"}
!55 = distinct !{!55, !54, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 0"}
!56 = distinct !{!56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays"}
!57 = distinct !{!57, !56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!58 = distinct !{!58, !56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!59 = distinct !{!59, !56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It1"}
!60 = distinct !{!60, !56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It1"}
!61 = distinct !{!61, !56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It2"}
!62 = distinct !{!62, !56, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It2"}
!63 = distinct !{!63, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0EECsi6wIvn64oUH_13custom_arrays"}
!64 = distinct !{!64, !63, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0EECsi6wIvn64oUH_13custom_arrays: argument 0"}
!65 = distinct !{!65, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!66 = distinct !{!66, !65, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!67 = distinct !{!67, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!68 = distinct !{!68, !67, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!69 = distinct !{!69, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!70 = distinct !{!70, !69, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!71 = distinct !{!71, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!72 = distinct !{!72, !71, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!73 = distinct !{!73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays"}
!74 = distinct !{!74, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!75 = distinct !{!75, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!76 = distinct !{!76, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It1"}
!77 = distinct !{!77, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It1"}
!78 = distinct !{!78, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It2"}
!79 = distinct !{!79, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It2"}
!80 = distinct !{!80, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It3"}
!81 = distinct !{!81, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It3"}
!82 = distinct !{!82, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It4"}
!83 = distinct !{!83, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It4"}
!84 = distinct !{!84, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBU_9MigrationNtNtNtBW_2pg7backend2PgEEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1J_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csi6wIvn64oUH_13custom_arrays"}
!85 = distinct !{!85, !84, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBU_9MigrationNtNtNtBW_2pg7backend2PgEEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1J_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csi6wIvn64oUH_13custom_arrays: argument 1"}
!86 = distinct !{!86, !84, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBU_9MigrationNtNtNtBW_2pg7backend2PgEEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1J_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csi6wIvn64oUH_13custom_arrays: argument 0"}
!87 = !{!47}
!88 = !{!48}
!89 = !{!47, !48}
!90 = !{!50}
!91 = !{!50, !51, !47, !48}
!92 = !{!"branch_weights", i32 2002, i32 2000}
!93 = !{!55, !53}
!94 = !{!53}
!95 = !{!50, !47}
!96 = !{!51, !48}
!97 = !{!57}
!98 = !{!58}
!99 = !{!59}
!100 = !{!60}
!101 = !{!61}
!102 = !{!62}
!103 = !{!66, !64}
!104 = !{!68}
!105 = !{!70}
!106 = !{!72}
!107 = !{!74}
!108 = !{!75}
!109 = !{!76}
!110 = !{!77}
!111 = !{!78}
!112 = !{!79}
!113 = !{!80}
!114 = !{!81}
!115 = !{!82}
!116 = !{!83}
!117 = !{!85, !70}
!118 = !{!86}
!119 = distinct !{!119, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!120 = distinct !{!120, !119, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs40k4W9msRzi_5alloc5alloc6GlobalE0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!121 = !{!120}
!122 = distinct !{!122, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!123 = distinct !{!123, !122, !"_RNvXs1_NtCsfKiFC1ztrmh_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!124 = distinct !{null, null}
!125 = !{!123}
!126 = distinct !{!126, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays"}
!127 = distinct !{!127, !126, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays: argument 0"}
!128 = distinct !{!128, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays"}
!129 = distinct !{!129, !128, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!130 = !{!129, !127}
!131 = distinct !{!131, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays"}
!132 = distinct !{!132, !131, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!133 = distinct !{!133, !131, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!134 = distinct !{!134, !"LVerDomain"}
!135 = distinct !{!135, !134}
!136 = distinct !{!136, !134}
!137 = distinct !{!137, !145, !146}
!138 = distinct !{!138, !131, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 0:It1"}
!139 = distinct !{!139, !131, !"_RINvNtCscI6d9CVNmLh_4core3ptr10swap_chunkKj8_ECsi6wIvn64oUH_13custom_arrays: argument 1:It1"}
!140 = distinct !{!140, !145}
!141 = !{!132}
!142 = !{!133}
!143 = !{!132, !135}
!144 = !{!133, !136}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!"llvm.loop.unroll.runtime.disable"}
!147 = !{!138}
!148 = !{!139}
!149 = distinct !{!149, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!150 = distinct !{!150, !149, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!151 = !{!150}
!152 = distinct !{!152, !"_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBQ_9MigrationNtNtNtBS_2pg7backend2PgEEL_EEE13drop_elementsCsi6wIvn64oUH_13custom_arrays"}
!153 = distinct !{!153, !152, !"_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBQ_9MigrationNtNtNtBS_2pg7backend2PgEEL_EEE13drop_elementsCsi6wIvn64oUH_13custom_arrays: argument 0"}
!154 = distinct !{!154, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays"}
!155 = distinct !{!155, !154, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!156 = !{!153}
!157 = !{!155, !153}
!158 = !{!155}
!159 = !{i64 0, i64 -9223372036854775807}
!160 = distinct !{!160, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays"}
!161 = distinct !{!161, !160, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!162 = !{!161}
!163 = distinct !{!163, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1f_9MigrationNtNtNtB1h_2pg7backend2PgEEL_EENtNtB29_5alloc6GlobalECsi6wIvn64oUH_13custom_arrays"}
!164 = distinct !{!164, !163, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1f_9MigrationNtNtNtB1h_2pg7backend2PgEEL_EENtNtB29_5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 0"}
!165 = distinct !{!165, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1c_9MigrationNtNtNtB1e_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays"}
!166 = distinct !{!166, !165, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB1c_9MigrationNtNtNtB1e_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!167 = distinct !{!167, !"_RNvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBW_9MigrationNtNtNtBY_2pg7backend2PgEEL_EEE3newCsi6wIvn64oUH_13custom_arrays"}
!168 = distinct !{!168, !167, !"_RNvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBW_9MigrationNtNtNtBY_2pg7backend2PgEEL_EEE3newCsi6wIvn64oUH_13custom_arrays: argument 0"}
!169 = distinct !{!169, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays"}
!170 = distinct !{!170, !169, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtBX_9MigrationNtNtNtBZ_2pg7backend2PgEEL_EEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!171 = !{!164}
!172 = !{!166}
!173 = !{!166, !164}
!174 = !{!168, !166, !164}
!175 = !{!170, !166, !164}
!176 = distinct !{!176, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1h_7backend19InnerPgTypeMetadataENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays"}
!177 = distinct !{!177, !176, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1h_7backend19InnerPgTypeMetadataENtNtCs40k4W9msRzi_5alloc5alloc6GlobalECsi6wIvn64oUH_13custom_arrays: argument 0"}
!178 = distinct !{!178, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays"}
!179 = distinct !{!179, !178, !"_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtB1e_7backend19InnerPgTypeMetadataEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!180 = distinct !{!180, !"_RNvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBY_7backend19InnerPgTypeMetadataEE3newCsi6wIvn64oUH_13custom_arrays"}
!181 = distinct !{!181, !180, !"_RNvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBY_7backend19InnerPgTypeMetadataEE3newCsi6wIvn64oUH_13custom_arrays: argument 0"}
!182 = distinct !{!182, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBZ_7backend19InnerPgTypeMetadataEE9next_implKb0_ECsi6wIvn64oUH_13custom_arrays"}
end_hunk_1
