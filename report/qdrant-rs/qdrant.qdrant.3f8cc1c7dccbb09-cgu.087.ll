Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.087?download=true
inline.NumInlined: 928
inline.NumDeleted: 665
begin_hunk_0_@_RNvMs1_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCs607s0NAIaWN_7segment5types16StrictModeConfigE6clonedCsl8OoimOLbh_6qdrant:bb.a
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.ao, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.522.0.i, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.as, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.524.0.i, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.aw, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.526.0.i, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ba, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.528.0.i, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.029.0.i, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.530.i, i64 24, i1 false)
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.ce, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.532.0.i, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.cj, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %.sroa.534.0.i, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 290
  store <4 x i8> %i.o, ptr %.sroa.36.0..sroa_idx, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs7V_NtCs607s0NAIaWN_7segment5typesNtB6_16StrictModeConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCs607s0NAIaWN_7segment5types6FilterE6clonedCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2264
  %i.g = load i64, ptr %1, align 8, !range !5, !alias.scope !2261, !noalias !2266, !noundef !6
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1), !noalias !2266
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.f, align 8, !noalias !2264
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2264
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !2261, !noalias !2266, !noundef !6
  %.not4.i = icmp eq i64 %i.i, -1
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2264
  call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.k unwind label %bb.j, !noalias !2266

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %i.e, align 8, !noalias !2264
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2264
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !5, !alias.scope !2261, !noalias !2266, !noundef !6
  %.not5.i = icmp eq i64 %i.k, -1
  br i1 %.not5.i, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.o ], [ %i.l, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #22
          to label %bb.v unwind label %bb.u, !noalias !2266

bb.j:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2272, !noalias !2273, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !2267, !noalias !2274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2264
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2264
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.q unwind label %bb.p, !noalias !2266

bb.m:                                             ; preds = %bb.h
  store i64 -1, ptr %i.d, align 8, !noalias !2264
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !5, !alias.scope !2261, !noalias !2266, !noundef !6
  %.not6.i = icmp eq i64 %i.q, -1
  br i1 %.not6.i, label %_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.r

bb.o:                                             ; preds = %bb.s, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.s ], [ %i.r, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types9MinShouldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #22
          to label %bb.i unwind label %bb.u, !noalias !2266

bb.p:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2264
  br label %bb.n

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2264
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.t unwind label %bb.s, !noalias !2266

bb.s:                                             ; preds = %bb.r
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %bb.o unwind label %bb.u, !noalias !2266

bb.t:                                             ; preds = %bb.r
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !2264
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2264
  br label %_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !2266
  unreachable

bb.v:                                             ; preds = %bb.i
  resume { ptr, i32 } %.pn.pn.i

_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.n, %bb.t
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.t ], [ -1, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2261
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !2261
  %.sroa.0.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6clonedCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #1 {
bb.a:
  %.sroa.4 = alloca [8 x i8], align 8             ; 5 uses
  %.sroa.6 = alloca [8 x i8], align 8             ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %i.a = load i64, ptr %1, align 8, !range !22, !alias.scope !2278, !noalias !2275, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2278, !noalias !2275, !noundef !6
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !2278, !noalias !2275, !noundef !6
  %.not.i = icmp sgt i8 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !2278, !noalias !2275 ; 5 uses
  %.val21.i = load i64, ptr %i.g, align 8, !alias.scope !2278, !noalias !2275 ; 2 uses
  br i1 %.not.i, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2280
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, !prof !2281

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #25, !noalias !2280
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d, %bb.f, %bb.e
  %.sroa.06.0.i = phi ptr [ %.val.i, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.e ], [ %.val.i, %bb.d ]
  store ptr %.sroa.06.0.i, ptr %.sroa.4, align 8, !alias.scope !2275, !noalias !2278
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %.sink.i.sroa.phi = phi ptr [ %.sroa.6, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.4, %bb.c ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %i.d, %bb.c ]
  %storemerge.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.c ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !2275, !noalias !2278
  store i64 %storemerge.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i64, ptr %.sroa.4, align 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload = load i64, ptr %.sroa.6, align 8
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE6clonedCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.518.i = alloca [64 x i8], align 8        ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 12 uses
  %.sroa.5.i = alloca [64 x i8], align 8          ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %i.n = load i64, ptr %1, align 8, !range !284, !alias.scope !2282, !noalias !2285, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.n, -2
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %.not.i.i = icmp eq i64 %i.n, -1
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2293
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p), !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2293
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1)
          to label %_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.h, !noalias !2294

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2293
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r), !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2293
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1F_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f, !noalias !2294

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %common.resume.i unwind label %bb.g, !noalias !2294

_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1F_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !2295
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2295
  store i64 -1, ptr %i.m, align 8, !alias.scope !2288, !noalias !2295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2293
  br label %_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !2294
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.s, %bb.q, %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %bb.s ], [ %i.w, %bb.h ], [ %i.s, %bb.f ], [ %i.ar, %bb.q ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %common.resume.i unwind label %bb.g, !noalias !2294

_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !2296, !noalias !2294, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !2295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 %i.y, ptr %i.aa, align 8, !alias.scope !2288, !noalias !2295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2293
  br label %_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1F_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  %i.ab = load i64, ptr %i.o, align 8, !range !5, !alias.scope !2300, !noalias !2301, !noundef !6
  %.not.i1.i = icmp eq i64 %i.ab, -1
  br i1 %.not.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2303
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac)
          to label %.noexc.i unwind label %bb.t, !noalias !2285

.noexc.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2303
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.o)
          to label %_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i unwind label %bb.m, !noalias !2301

bb.j:                                             ; preds = %_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2303
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %.noexc6.i unwind label %bb.t, !noalias !2285

.noexc6.i:                                        ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2303
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1F_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i5.i unwind label %bb.k, !noalias !2301

bb.k:                                             ; preds = %.noexc6.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.body.i unwind label %bb.l, !noalias !2301

_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1F_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i5.i: ; preds = %.noexc6.i
  %.sroa.518.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.518.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %.sroa.820.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ag = load <2 x i32>, ptr %.sroa.820.32..sroa_idx.i, align 8, !noalias !2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2303
  br label %_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit7.i

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !2301
  unreachable

bb.m:                                             ; preds = %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body.i unwind label %bb.l, !noalias !2301

_RNvXsg_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %.noexc.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ak = load i32, ptr %i.aj, align 8, !alias.scope !2300, !noalias !2301, !noundef !6
  %.sroa.518.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.518.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.518.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %.sroa.016.0.copyload17.i = load i64, ptr %i.e, align 8, !noalias !2304
  %.sroa.518.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx19.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2303
  %i.al = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.ak, i64 0
  br label %_RNvXs8_NtCsPYQCUnoTxQ_10collection9hash_ringINtB5_8HashRingmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit7.i

bb.n:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  %i.an = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2308, !noalias !2309, !noundef !6
  %.not.i8.i = icmp eq i64 %i.an, -1
  br i1 %.not.i8.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
