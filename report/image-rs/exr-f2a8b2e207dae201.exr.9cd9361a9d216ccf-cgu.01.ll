Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.01?download=true
inline.NumInlined: 354
inline.NumDeleted: 149
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5image11FlatSamplesEBF_:bb.a
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !36, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ], [ %i.g, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs51eXCul1Ifq_4half8binary163f16EECsdsTQD3x2eOp_3exr.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs51eXCul1Ifq_4half8binary163f16EECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsdsTQD3x2eOp_3exr.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsdsTQD3x2eOp_3exr.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs51eXCul1Ifq_4half8binary163f16EECsdsTQD3x2eOp_3exr.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !46, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 24
  br i1 %i.d, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !46, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.e, align 8, !alias.scope !46, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  store i64 %i.c, ptr %i.a, align 8, !noalias !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8, !noalias !46
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %bb.c, !noalias !46

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i.i.i unwind label %bb.d, !noalias !46

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !46
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.b
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !53, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 24
  br i1 %i.d, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !53, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.e, align 8, !alias.scope !53, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53
  store i64 %i.c, ptr %i.a, align 8, !noalias !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8, !noalias !53
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i.i unwind label %bb.c, !noalias !53

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %bb.d, !noalias !53

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !53
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i.i: ; preds = %bb.b
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXsB_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_ENtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !61, !noalias !62, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 24                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i = select i1 %i.d, ptr %i.f, ptr %i.i
  %.sink12.i = select i1 %i.d, i64 %i.h, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  store i64 %.sink12.i, ptr %i.a, align 8, !noalias !63
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  tail call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink13.i, i64 noundef range(i64 0, -9223372036854775808) %.sink12.i) #22
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBM_11FlatSamplesEj4_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1S_8adapters3map3MapINtB6_8IntoIterBI_ENCNvXs5_NtBM_4cropINtBM_5LayerINtB3I_15CroppedChannelsINtBM_11AnyChannelsB1o_EEENtB3I_16ApplyCroppedView18reallocate_cropped0EEBO_(ptr noalias nofree noundef align 8 dereferenceable(400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(448) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [448 x i8], align 8               ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 3 uses
  %i.e = alloca [448 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(448) %1, i64 448, i1 false), !alias.scope !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %.val = load i64, ptr %i.f, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  %.val4 = load i64, ptr %i.g, align 8, !noundef !4
  %i.h = sub i64 %.val4, %.val                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 4 uses
  %i.k = icmp ugt i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 4)
  %.val.i = load i64, ptr %i.l, align 8, !alias.scope !84
  %i.m = select i1 %i.k, i64 %.val.i, i64 %i.j    ; 3 uses
  %i.n = sub i64 %.sink.i.i, %i.m
  %.not.i = icmp ult i64 %i.n, %i.h
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

.thread30:                                        ; preds = %.thread33, %bb.d, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.m, %i.h                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %.thread33, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.o, 2
  %i.r = add i64 %i.o, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = lshr i64 -1, %i.s
  %.sroa.010.0.i = select i1 %i.q, i64 0, i64 %i.t ; 2 uses
  %i.u = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.u, label %.thread33, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i64 %.sroa.010.0.i, 1
  %i.w = invoke fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E8try_growBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %i.v)
          to label %bb.e unwind label %.thread30  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  switch i64 %i.x, label %bb.f [
    i64 -1, label %._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %.thread33
  ], !prof !6

._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %bb.e
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !85, !noalias !86
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.f:                                             ; preds = %bb.e
  %i.y = extractvalue { i64, i64 } %i.w, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.x, i64 noundef %i.y) #23
          to label %.noexc11 unwind label %.thread30

.noexc11:                                         ; preds = %bb.f
  unreachable

.thread33:                                        ; preds = %bb.b, %bb.c, %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %.noexc12 unwind label %.thread30

.noexc12:                                         ; preds = %.thread33
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %bb.a
  %i.z = phi i64 [ %.pre, %._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.j, %bb.a ] ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 4
  br i1 %i.aa, label %bb.g, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !85, !noalias !86, !nonnull !4, !noundef !4
  %.pre45 = load i64, ptr %i.l, align 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit: ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit, %bb.g
  %i.ad = phi i64 [ %.pre45, %bb.g ], [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %.sink12.i = phi ptr [ %i.ac, %bb.g ], [ %i.l, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ]
  %.sink11.i = phi ptr [ %i.l, %bb.g ], [ %i.i, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %.sink.i13 = phi i64 [ %i.z, %bb.g ], [ 4, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %.sink.i13
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit, %bb.v
  %.sroa.7.041 = phi i64 [ %i.ay, %bb.v ], [ %i.ad, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit ] ; 4 uses
  invoke fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1z_11FlatSamplesEj4_ENCNvXs5_NtB1z_4cropINtB1z_5LayerINtB2H_15CroppedChannelsINtB1z_11AnyChannelsB2b_EEENtB2H_16ApplyCroppedView18reallocate_cropped0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef align 8 dereferenceable(448) %i.e)
          to label %bb.u unwind label %.thread

._crit_edge:                                      ; preds = %bb.v, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.ad, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit ], [ %.sink.i13, %bb.v ]
  store i64 %.sroa.7.0.lcssa, ptr %.sink11.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.c, ptr noundef nonnull align 8 dereferenceable(448) %i.e, i64 448, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1z_11FlatSamplesEj4_ENCNvXs5_NtB1z_4cropINtB1z_5LayerINtB2H_15CroppedChannelsINtB1z_11AnyChannelsB2b_EEENtB2H_16ApplyCroppedView18reallocate_cropped0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef align 8 dereferenceable(448) %i.c)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.al, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.c) #21
          to label %.thread27 unwind label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.b, align 8, !range !87, !noundef !4
  %.not = icmp eq i64 %i.ah, -1
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  %i.ai = load i64, ptr %i.i, align 8, !alias.scope !88, !noalias !89, !noundef !4 ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 4
  br i1 %i.aj, label %bb.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !88, !noalias !89, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !90, !noalias !91
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i

bb.m:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #21
          to label %.body unwind label %bb.p

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i: ; preds = %bb.k, %bb.l
  %i.am = phi i64 [ %.pre.i, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ak, %bb.l ], [ %i.l, %bb.k ]
  %.sink11.i.i = phi ptr [ %i.l, %bb.l ], [ %i.i, %bb.k ]
  %.sink.i.i14 = phi i64 [ %i.ai, %bb.l ], [ 4, %bb.k ]
  %i.an = icmp eq i64 %i.am, %.sink.i.i14
  br i1 %i.an, label %bb.n, label %bb.s, !prof !5

bb.n:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i
  invoke fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.o unwind label %bb.m, !noalias !91

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.af, align 8, !alias.scope !90, !noalias !91, !nonnull !4, !noundef !4
  %.pre6.i = load i64, ptr %i.l, align 8, !alias.scope !90, !noalias !91
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.o, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i
  %i.aq = phi i64 [ %.pre6.i, %bb.o ], [ %i.am, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.ao, %bb.o ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i ]
  %.sroa.0.0.i15 = phi ptr [ %i.l, %bb.o ], [ %.sink11.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [96 x i8], ptr %.sroa.04.0.i, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  %i.as = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !90, !noalias !91, !noundef !4
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %.sroa.0.0.i15, align 8, !alias.scope !90, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.t:                                             ; preds = %bb.x, %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

.thread:                                          ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.041, ptr %.sink11.i, align 8
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.aw = load i64, ptr %i.d, align 8, !range !87, !noundef !4
  %.not2 = icmp eq i64 %i.aw, -1
  br i1 %.not2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %.sink12.i, i64 %.sroa.7.041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.ay = add i64 %.sroa.7.041, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %.sink.i13
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %bb.u
  store i64 %.sroa.7.041, ptr %.sink11.i, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.e)
  br label %bb.r

.thread27:                                        ; preds = %.body, %bb.x
  %.pn25 = phi { ptr, i32 } [ %.pn26, %bb.x ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn25

bb.x:                                             ; preds = %.thread30, %.thread
  %.pn26 = phi { ptr, i32 } [ %i.av, %.thread ], [ %lpad.thr_comm, %.thread30 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.e) #21
          to label %.thread27 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1M_8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtBP_4meta9attribute18ChannelDescriptionENCNvBL_10decompress0EEBP_(ptr noalias nofree noundef align 8 dereferenceable(304) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload23 = load ptr, ptr %1, align 8, !alias.scope !121, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload25 = load ptr, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !121, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload27 = load ptr, ptr %.sroa.10.0..sroa_idx26, align 8, !alias.scope !121 ; 8 uses
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload29 = load ptr, ptr %.sroa.11.0..sroa_idx28, align 8, !alias.scope !121 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload25 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload23 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !122, !noalias !123, !noundef !4 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 6)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !124
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit, !prof !5

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread
  ], !prof !6

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !125, !noalias !126
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.t, i64 noundef %i.u) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %bb.a
  %i.v = phi i64 [ %.pre, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.w = icmp ugt i64 %i.v, 6                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 4 uses
  %.sink.i9 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 6) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i9
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload29, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.j, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i9, %bb.j ]
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.0.copyload23, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %i.bo, %bb.j ] ; 2 uses
  store i64 %.sroa.7.0.lcssa, ptr %.sink11.i, align 8
  %i.ac = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.8.0.copyload25
  br i1 %i.ac, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload29, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.0109 = phi ptr [ %.sroa.0.0.copyload23, %.lr.ph ], [ %i.bo, %bb.j ] ; 5 uses
  %.sroa.7.0108 = phi i64 [ %i.z, %.lr.ph ], [ %i.ca, %bb.j ] ; 4 uses
  %i.af = icmp eq ptr %.sroa.0.0109, %.sroa.8.0.copyload25
  br i1 %i.af, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ag = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !128, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !127, !noalias !129, !noundef !4
  %i.aj = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !128, !noundef !4
  %i.ak = load i64, ptr %i.ab, align 8, !noalias !128, !noundef !4
  %i.al = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0109, i64 noundef %i.aj, i64 noundef %i.ak)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %.lr.ph113, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit
  %.sroa.052.0111 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %i.am, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.an = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !131, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !130, !noalias !132, !noundef !4
  %i.aq = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !131, !noundef !4
  %i.ar = load i64, ptr %i.ad, align 8, !noalias !131, !noundef !4
  %i.as = tail call { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.052.0111, i64 noundef %i.aq, i64 noundef %i.ar), !noalias !132 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 57
  %i.au = load i8, ptr %i.at, align 1, !range !7, !alias.scope !130, !noalias !132, !noundef !4
  %i.av = icmp ne i8 %i.au, 1                     ; 2 uses
  %..i.i13 = select i1 %i.av, i64 2, i64 1
  %i.aw = extractvalue { i64, i64 } %i.as, 1      ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.ay = mul i64 %i.ax, %i.aw
  %i.az = zext i1 %i.av to i64
  %i.ba = shl i64 %i.ay, %i.az
  %i.bb = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !131, !noundef !4
  %i.bc = add i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %.sroa.10.0.copyload27, align 8, !noalias !131
  %i.bd = load i64, ptr %i.e, align 8, !alias.scope !133, !noalias !134, !noundef !4 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 6
  br i1 %i.be, label %bb.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.ae, align 8, !alias.scope !133, !noalias !134, !nonnull !4, !noundef !4
  %.pre118 = load i64, ptr %i.h, align 8, !alias.scope !135, !noalias !136
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i: ; preds = %bb.g, %bb.h
  %i.bg = phi i64 [ %.pre118, %bb.h ], [ %i.bd, %bb.g ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.h, %bb.g ]
  %.sink11.i.i = phi ptr [ %i.h, %bb.h ], [ %i.e, %bb.g ]
  %.sink.i.i21 = phi i64 [ %i.bd, %bb.h ], [ 6, %bb.g ]
  %i.bh = icmp eq i64 %i.bg, %.sink.i.i21
  br i1 %i.bh, label %bb.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, !prof !5

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0), !noalias !136
  %i.bi = load ptr, ptr %i.ae, align 8, !alias.scope !135, !noalias !136, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !135, !noalias !136
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit

end_hunk_0
begin_hunk_1_@_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr:bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecmEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecmEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdsTQD3x2eOp_3exr.exit, %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCsdsTQD3x2eOp_3exr.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBI_11FlatSamplesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBP_11FlatSamplesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hint(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapNtNtNtB6_3str4iter5CharsNCINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB1H_4Text11new_or_noneReE0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator9size_hintB1L_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapNtNtNtB6_3str4iter5CharsNCINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB1H_4Text11new_or_noneReE0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB1L_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtBc_5LayerINtBa_15CroppedChannelsINtBc_11AnyChannelsNtBc_11FlatSamplesEEENtBa_16ApplyCroppedView18reallocate_cropped012crop_samplesNtNtCs51eXCul1Ifq_4half8binary163f16EBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtBc_5LayerINtBa_15CroppedChannelsINtBc_11AnyChannelsNtBc_11FlatSamplesEEENtBa_16ApplyCroppedView18reallocate_cropped012crop_samplesfEBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtBc_5LayerINtBa_15CroppedChannelsINtBc_11AnyChannelsNtBc_11FlatSamplesEEENtBa_16ApplyCroppedView18reallocate_cropped012crop_samplesmEBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { inlinehint }
attributes #23 = { noreturn }
attributes #24 = { noinline noreturn }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 1074011, i32 2146409637, i32 0}
!7 = !{i8 0, i8 3}
!8 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!9 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!10 = !{!"branch_weights", i32 2002, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 2002}
!12 = !{i64 0, i64 -9223372036854775807}
!13 = !{i64 8}
!14 = distinct !{!14, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_"}
!15 = distinct !{!15, !14, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_: argument 0"}
!16 = distinct !{!16, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr"}
!17 = distinct !{!17, !16, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr: argument 0"}
!18 = distinct !{!18, i1 false, !"_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr"}
!19 = distinct !{!19, !18, !"_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr: argument 0"}
!20 = !{!15}
!21 = !{!17}
!22 = !{!19}
!23 = !{!19, !17, !15}
!24 = distinct !{!24, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1e_11FlatSamplesEj4_EEB1g_"}
!25 = distinct !{!25, !24, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1e_11FlatSamplesEj4_EEB1g_: argument 0"}
!26 = distinct !{!26, i1 false, !"_RNvXsF_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!27 = distinct !{!27, !26, !"_RNvXsF_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!28 = distinct !{!28, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_"}
!29 = distinct !{!29, !28, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_: argument 1"}
!30 = distinct !{!30, !28, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_: argument 0"}
!31 = !{!25}
!32 = !{!27}
!33 = !{!27, !25}
!34 = !{!29, !27, !25}
!35 = !{!30}
!36 = !{i64 0, i64 3}
!37 = distinct !{!37, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_"}
!38 = distinct !{!38, !37, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_: argument 0"}
!39 = distinct !{!39, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr"}
!40 = distinct !{!40, !39, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr: argument 0"}
!41 = distinct !{!41, i1 false, !"_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr"}
!42 = distinct !{!42, !41, !"_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr: argument 0"}
!43 = !{!38}
!44 = !{!40}
!45 = !{!42}
!46 = !{!42, !40, !38}
!47 = distinct !{!47, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr"}
!48 = distinct !{!48, !47, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsdsTQD3x2eOp_3exr: argument 0"}
!49 = distinct !{!49, i1 false, !"_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr"}
!50 = distinct !{!50, !49, !"_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr: argument 0"}
!51 = !{!48}
!52 = !{!50}
!53 = !{!50, !48}
!54 = distinct !{!54, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr"}
!55 = distinct !{!55, !54, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr: argument 1"}
!56 = distinct !{!56, !54, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr: argument 0"}
!57 = distinct !{!57, i1 false, !"_RNvYNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher19write_length_prefixCsdsTQD3x2eOp_3exr"}
!58 = distinct !{!58, !57, !"_RNvYNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher19write_length_prefixCsdsTQD3x2eOp_3exr: argument 0"}
!59 = distinct !{!59, i1 false, !"_RNvYNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher11write_usizeCsdsTQD3x2eOp_3exr"}
!60 = distinct !{!60, !59, !"_RNvYNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher11write_usizeCsdsTQD3x2eOp_3exr: argument 0"}
!61 = !{!55}
!62 = !{!56}
!63 = !{!60, !58}
!64 = distinct !{!64, i1 false, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1P_11FlatSamplesEj4_ENCNvXs5_NtB1P_4cropINtB1P_5LayerINtB2X_15CroppedChannelsINtB1P_11AnyChannelsB2r_EEENtB2X_16ApplyCroppedView18reallocate_cropped0ENtB2_12IntoIterator9into_iterB1R_"}
!65 = distinct !{!65, !64, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1P_11FlatSamplesEj4_ENCNvXs5_NtB1P_4cropINtB1P_5LayerINtB2X_15CroppedChannelsINtB1P_11AnyChannelsB2r_EEENtB2X_16ApplyCroppedView18reallocate_cropped0ENtB2_12IntoIterator9into_iterB1R_: argument 1"}
!66 = distinct !{!66, !64, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1P_11FlatSamplesEj4_ENCNvXs5_NtB1P_4cropINtB1P_5LayerINtB2X_15CroppedChannelsINtB1P_11AnyChannelsB2r_EEENtB2X_16ApplyCroppedView18reallocate_cropped0ENtB2_12IntoIterator9into_iterB1R_: argument 0"}
!67 = distinct !{!67, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E11try_reserveBN_"}
!68 = distinct !{!68, !67, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E11try_reserveBN_: argument 0"}
!69 = distinct !{!69, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_"}
!70 = distinct !{!70, !69, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_: argument 1"}
!71 = distinct !{!71, !69, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_: argument 0"}
!72 = distinct !{!72, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_"}
!73 = distinct !{!73, !72, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_: argument 1"}
!74 = distinct !{!74, !72, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_: argument 0"}
!75 = distinct !{!75, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E4pushBN_"}
!76 = distinct !{!76, !75, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E4pushBN_: argument 0"}
!77 = distinct !{!77, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_"}
!78 = distinct !{!78, !77, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_: argument 1"}
!79 = distinct !{!79, !75, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E4pushBN_: argument 1"}
!80 = distinct !{!80, !77, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_: argument 0"}
!81 = !{!66, !65}
!82 = !{!70, !68}
!83 = !{!71}
!84 = !{!68}
!85 = !{!73}
!86 = !{!74}
!87 = !{i64 -1, i64 3}
!88 = !{!78, !76}
!89 = !{!80, !79}
!90 = !{!76}
!91 = !{!79}
!92 = distinct !{!92, i1 false, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1I_11compression3piz10decompress0ENtB2_12IntoIterator9into_iterB1I_"}
!93 = distinct !{!93, !92, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1I_11compression3piz10decompress0ENtB2_12IntoIterator9into_iterB1I_: argument 1"}
!94 = distinct !{!94, !92, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1I_11compression3piz10decompress0ENtB2_12IntoIterator9into_iterB1I_: argument 0"}
!95 = distinct !{!95, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_"}
!96 = distinct !{!96, !95, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_: argument 0"}
!97 = distinct !{!97, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_"}
!98 = distinct !{!98, !97, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 1"}
!99 = distinct !{!99, !97, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 0"}
!100 = distinct !{!100, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_"}
!101 = distinct !{!101, !100, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 1"}
!102 = distinct !{!102, !100, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 0"}
!103 = distinct !{!103, i1 false, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress0B7_"}
!104 = distinct !{!104, !103, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress0B7_: argument 1"}
!105 = distinct !{!105, i1 false, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!106 = distinct !{!106, !105, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1"}
!107 = distinct !{!107, !105, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!108 = distinct !{!108, !103, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress0B7_: argument 0"}
!109 = distinct !{!109, i1 false, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress0B7_"}
!110 = distinct !{!110, !109, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress0B7_: argument 1"}
!111 = distinct !{!111, i1 false, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!112 = distinct !{!112, !111, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1"}
!113 = distinct !{!113, !111, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!114 = distinct !{!114, !109, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress0B7_: argument 0"}
!115 = distinct !{!115, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_"}
!116 = distinct !{!116, !115, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_: argument 0"}
!117 = distinct !{!117, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_"}
!118 = distinct !{!118, !117, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 1"}
!119 = distinct !{!119, !115, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_: argument 1"}
!120 = distinct !{!120, !117, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 0"}
!121 = !{!94, !93}
!122 = !{!98, !96}
!123 = !{!99}
!124 = !{!96}
!125 = !{!101}
!126 = !{!102}
!127 = !{!104}
!128 = !{!108, !104, !107, !106}
!129 = !{!108, !107, !106}
!130 = !{!110}
!131 = !{!114, !110, !113, !112}
!132 = !{!114, !113, !112}
!133 = !{!118, !116}
!134 = !{!120, !119}
!135 = !{!116}
!136 = !{!119}
!137 = distinct !{!137, i1 false, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1I_11compression3piz8compress0ENtB2_12IntoIterator9into_iterB1I_"}
!138 = distinct !{!138, !137, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1I_11compression3piz8compress0ENtB2_12IntoIterator9into_iterB1I_: argument 1"}
!139 = distinct !{!139, !137, !"_RNvXNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1I_11compression3piz8compress0ENtB2_12IntoIterator9into_iterB1I_: argument 0"}
!140 = distinct !{!140, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_"}
!141 = distinct !{!141, !140, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_: argument 0"}
!142 = distinct !{!142, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_"}
!143 = distinct !{!143, !142, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 1"}
!144 = distinct !{!144, !142, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 0"}
!145 = distinct !{!145, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_"}
!146 = distinct !{!146, !145, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 1"}
!147 = distinct !{!147, !145, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 0"}
!148 = distinct !{!148, i1 false, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz8compress0B7_"}
!149 = distinct !{!149, !148, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz8compress0B7_: argument 1"}
!150 = distinct !{!150, i1 false, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!151 = distinct !{!151, !150, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1"}
!152 = distinct !{!152, !150, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!153 = distinct !{!153, !148, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz8compress0B7_: argument 0"}
!154 = distinct !{!154, i1 false, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz8compress0B7_"}
!155 = distinct !{!155, !154, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz8compress0B7_: argument 1"}
!156 = distinct !{!156, i1 false, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!157 = distinct !{!157, !156, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1"}
!158 = distinct !{!158, !156, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!159 = distinct !{!159, !154, !"_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3piz8compress0B7_: argument 0"}
!160 = distinct !{!160, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_"}
!161 = distinct !{!161, !160, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_: argument 0"}
!162 = distinct !{!162, i1 false, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_"}
!163 = distinct !{!163, !162, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 1"}
!164 = distinct !{!164, !160, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_: argument 1"}
!165 = distinct !{!165, !162, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_: argument 0"}
!166 = !{!139, !138}
end_hunk_1
