Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.08?download=true
inline.NumInlined: 1824
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMsO_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette:bb.a
bb.q:                                             ; preds = %.split48.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  call void @llvm.experimental.noalias.scope.decl(metadata !4057)
  call void @llvm.experimental.noalias.scope.decl(metadata !4060)
  call void @llvm.experimental.noalias.scope.decl(metadata !4063)
  call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  call void @llvm.experimental.noalias.scope.decl(metadata !4069)
  %i.bc = load i8, ptr %.sroa.945.0..sroa_idx, align 8, !alias.scope !4071, !noalias !4076, !noundef !4 ; 3 uses
  %i.bd = load i8, ptr %i.af, align 1, !alias.scope !4080, !noalias !4081, !noundef !4
  %i.be = icmp ult i8 %i.bc, %i.bd
  br i1 %i.be, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i, label %bb.s

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i: ; preds = %bb.q
  %i.bf = add nuw i8 %i.bc, 1
  store i8 %i.bf, ptr %.sroa.945.0..sroa_idx, align 8, !alias.scope !4082, !noalias !4083
  %i.bg = load i8, ptr %i.bb, align 1, !noalias !4084, !noundef !4
  %i.bh = mul i8 %i.bg, %i.bc
  %.val.i.i.i.i9.i.i = load i64, ptr %i.ag, align 8, !alias.scope !4085, !noalias !4083, !noundef !4
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i
  %storemerge.i.i.i13.i3.i.i = phi i64 [ 0, %bb.s ], [ 1, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i ] ; 2 uses
  %.sroa.6.011.i4.i.i = phi i8 [ undef, %bb.s ], [ %i.bh, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i ]
  %.sroa.74.09.i5.i.i = phi i64 [ undef, %bb.s ], [ %.val.i.i.i.i9.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i ]
  store i64 %storemerge.i.i.i13.i3.i.i, ptr %i.a, align 8, !alias.scope !4053, !noalias !4052
  store i8 %.sroa.6.011.i4.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !4053, !noalias !4052
  store i64 %.sroa.74.09.i5.i.i, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !alias.scope !4053, !noalias !4052
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i

bb.s:                                             ; preds = %bb.q
  store ptr null, ptr %.sroa.844.0..sroa_idx, align 8, !alias.scope !4052, !noalias !4053
  br label %bb.r

bb.t:                                             ; preds = %bb.h
  store i64 0, ptr %.sroa.1046.0..sroa_idx, align 8, !alias.scope !4088, !noalias !4091
  invoke fastcc void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB7_3rev3RevINtNtNtBb_3ops5range5RangejEEINtNtB7_3zip3ZipINtNtB7_3map3MapIB1f_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2t_6images6bufferINtB3g_11ImageBufferINtNtB2t_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB9_7sources6repeat6RepeatjEENCB2o_0ENtNtNtB9_6traits8iterator8Iterator3nthB2t_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, i64 noundef %i.ah) #24
          to label %._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge unwind label %.loopexit

._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge: ; preds = %bb.t
  %.pre90 = load i64, ptr %i.a, align 8, !range !2316, !noalias !3966
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i: ; preds = %._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge, %bb.r
  %i.bi = phi i64 [ %.pre90, %._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge ], [ %storemerge.i.i.i13.i3.i.i, %bb.r ]
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.u, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread106

bb.u:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i
  %i.bk = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3966, !noundef !4
  %i.bl = load i64, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !3966, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3966
  %i.bm = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !4093, !noalias !4098, !noundef !4 ; 2 uses
  %i.bn = icmp ne i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !4093, !noalias !4098, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %.loopexit70, label %bb.v

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread106: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i, %.split48.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3966
  br label %.loopexit70

bb.v:                                             ; preds = %bb.u
  %i.bp = add nuw i64 %i.bm, 1
  %i.bq = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !4093, !noalias !4098, !noundef !4 ; 2 uses
  %i.br = add i64 %i.bp, %i.bq
  store i64 %i.br, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !4093, !noalias !4098
  %i.bs = add i64 %i.bo, -1
  store i64 %i.bs, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !4093, !noalias !4098
  %i.bt = sub i64 %i.ab, %i.bq                    ; 4 uses
  %i.bu = icmp ult i64 %i.bl, %i.ab
  br i1 %i.bu, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bl
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !3958, !noalias !4099, !noundef !4
  %i.bx = and i8 %i.bk, 7                         ; 2 uses
  %i.by = shl nsw i8 -1, %i.bx
  %i.bz = and i8 %i.bw, %i.by
  %i.ca = lshr i8 %i.bz, %i.bx                    ; 2 uses
  %i.cb = add i64 %i.bt, 4                        ; 2 uses
  %i.cc = icmp ugt i64 %i.bt, -5
  %.not.i = icmp ugt i64 %i.cb, %i.ab
  %or.cond.i = or i1 %i.cc, %.not.i
  br i1 %or.cond.i, label %bb.x, label %bb.y, !prof !15

.invoke:                                          ; preds = %bb.y, %bb.v
  %i.cd = phi i64 [ %i.bl, %bb.v ], [ %i.cg, %bb.y ]
  %i.ce = phi i64 [ %i.ab, %bb.v ], [ %3, %bb.y ]
  %i.cf = phi ptr [ @130, %bb.v ], [ @133, %bb.y ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.cb, i64 noundef range(i64 0, -9223372036854775808) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #20
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !4100)
  %i.cg = zext i8 %i.ca to i64                    ; 3 uses
  %i.ch = icmp samesign ugt i64 %3, %i.cg
  br i1 %i.ch, label %.noexc8, label %.invoke

.noexc8:                                          ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bt ; 4 uses
  %i.cj = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.cg ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !4103, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !4103, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !noalias !4103, !noundef !4
  %i.cp = icmp ne i8 %5, %i.ca
  %narrow = select i1 %not., i1 true, i1 %i.cp
  %.sroa.0.0.i = sext i1 %narrow to i8
  store i8 %i.ck, ptr %i.ci, align 1, !alias.scope !4100, !noalias !4105
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.cm, ptr %i.cq, align 1, !alias.scope !4100, !noalias !4105
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.co, ptr %i.cr, align 1, !alias.scope !4100, !noalias !4105
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  store i8 %.sroa.0.0.i, ptr %i.cs, align 1, !alias.scope !4100, !noalias !4105
  %.pre = load i64, ptr %.sroa.1046.0..sroa_idx, align 8, !alias.scope !4088, !noalias !4091
  br label %bb.h

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_rawB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #26
  unreachable

bb.aa:                                            ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %.invoke, %bb.x, %.loopexit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body17 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.thread56 unwind label %bb.ae

.loopexit70:                                      ; preds = %bb.u, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16, %bb.af
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body17

.body17:                                          ; preds = %bb.ac, %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread56:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16, %bb.f, %bb.af
  %.pn55 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.thr_comm, %bb.af ], [ %lpad.phi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16 ]
  resume { ptr, i32 } %.pn55

bb.af:                                            ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #22
          to label %.thread56 unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(792) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [792 x i8], align 8               ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %5 = load i8, ptr %4, align 8, !range !2715, !noundef !4 ; 3 uses
  %.not = icmp eq i8 %5, 2
  %.sroa.0.sroa.3.0.extract.trunc = trunc i32 %2 to i8 ; 2 uses
  %.sroa.0.sroa.4.0.extract.shift = lshr i32 %2, 16
  %.sroa.0.sroa.4.0.extract.trunc = trunc i32 %.sroa.0.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.0.sroa.5.0.extract.shift = lshr i32 %2, 24
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.0.sroa.5.0.extract.shift to i8 ; 2 uses
  %6 = lshr i32 %2, 8
  %7 = trunc i32 %6 to i8                         ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 780
  %.sroa.026.0.copyload.i = load i8, ptr %i.b, align 4, !alias.scope !4106, !noalias !4109 ; 2 uses
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 781
  %.sroa.628.0.copyload.i = load i8, ptr %.sroa.628.0..sroa_idx.i, align 1, !alias.scope !4106, !noalias !4109 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 782
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 2, !alias.scope !4106, !noalias !4109 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 783
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !4106, !noalias !4109 ; 2 uses
  %i.c = icmp eq i8 %.sroa.8.0.copyload.i, %.sroa.0.sroa.5.0.extract.trunc
  %i.d = icmp eq i8 %.sroa.628.0.copyload.i, %7
  %or.cond.i = select i1 %i.c, i1 %i.d, i1 false
  %i.e = icmp eq i8 %.sroa.7.0.copyload.i, %.sroa.0.sroa.4.0.extract.trunc
  %or.cond302.i = select i1 %or.cond.i, i1 %i.e, i1 false
  %i.f = icmp eq i8 %.sroa.026.0.copyload.i, %.sroa.0.sroa.3.0.extract.trunc
  %or.cond303.i = select i1 %or.cond302.i, i1 %i.f, i1 false
  br i1 %or.cond303.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.625.0.extract.shift.i = lshr i32 %3, 24
  %.sroa.625.0.extract.trunc.i = trunc nuw i32 %.sroa.625.0.extract.shift.i to i8
  %.sroa.524.0.extract.shift.i = lshr i32 %3, 16
  %.sroa.524.0.extract.trunc.i = trunc i32 %.sroa.524.0.extract.shift.i to i8
  %.sroa.423.0.extract.shift.i = lshr i32 %3, 8
  %.sroa.423.0.extract.trunc.i = trunc i32 %.sroa.423.0.extract.shift.i to i8
  %.sroa.022.0.extract.trunc.i = trunc i32 %3 to i8
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 785
  %.sroa.637.0.copyload.i = load i8, ptr %.sroa.637.0..sroa_idx.i, align 1, !alias.scope !4106, !noalias !4109 ; 2 uses
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 786
  %.sroa.740.0.copyload.i = load i8, ptr %.sroa.740.0..sroa_idx.i, align 2, !alias.scope !4106, !noalias !4109 ; 2 uses
  %.sroa.843.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 787
  %.sroa.843.0.copyload.i = load i8, ptr %.sroa.843.0..sroa_idx.i, align 1, !alias.scope !4106, !noalias !4109 ; 2 uses
  %i.g = icmp eq i8 %.sroa.843.0.copyload.i, %.sroa.625.0.extract.trunc.i
  %i.h = icmp eq i8 %.sroa.637.0.copyload.i, %.sroa.423.0.extract.trunc.i
  %or.cond304.i = select i1 %i.g, i1 %i.h, i1 false
  %i.i = icmp eq i8 %.sroa.740.0.copyload.i, %.sroa.524.0.extract.trunc.i
  %or.cond305.i = select i1 %or.cond304.i, i1 %i.i, i1 false
  %i.j = icmp eq i8 %5, %.sroa.022.0.extract.trunc.i
  %or.cond306.i = and i1 %i.j, %or.cond305.i
  br i1 %or.cond306.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.18.0.ph = phi i32 [ %3, %bb.c ], [ %2, %bb.b ]
  %.sroa.16.0.ph = phi i8 [ %.sroa.843.0.copyload.i, %bb.c ], [ %.sroa.8.0.copyload.i, %bb.b ]
  %.sroa.14.0.ph = phi i8 [ %.sroa.740.0.copyload.i, %bb.c ], [ %.sroa.7.0.copyload.i, %bb.b ]
  %.sroa.12.0.ph = phi i8 [ %.sroa.637.0.copyload.i, %bb.c ], [ %.sroa.628.0.copyload.i, %bb.b ]
  %.sroa.10.0.ph = phi i8 [ %5, %bb.c ], [ %.sroa.026.0.copyload.i, %bb.b ]
  store i8 6, ptr %0, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.10.0.ph, ptr %.sroa.659.0..sroa_idx, align 8
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.12.0.ph, ptr %.sroa.760.0..sroa_idx, align 1
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.14.0.ph, ptr %.sroa.861.0..sroa_idx, align 2
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.16.0.ph, ptr %.sroa.962.0..sroa_idx, align 1
  %.sroa.1063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.18.0.ph, ptr %.sroa.1063.0..sroa_idx, align 4
  %.sroa.1265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.1265.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %.thread, %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %1, ptr noundef nonnull align 8 dereferenceable(792) %i.a, i64 792, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i8, ptr %4, align 8, !range !2715
  %i.k = icmp eq i8 %.pre, 2
  br i1 %i.k, label %bb.i, label %.thread

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform3new(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(none) dereferenceable(792) %i.a, i32 noundef %2, i32 noundef %3)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef align 8 dereferenceable(792) %1)
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %1, ptr noundef nonnull align 8 dereferenceable(792) %i.a, i64 792, i1 false)
  resume { ptr, i32 } %i.l

.thread:                                          ; preds = %bb.c, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.m, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %.not.i = icmp eq i8 %.sroa.0.sroa.3.0.extract.trunc, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %.sroa.0.sroa.4.0.extract.trunc, label %bb.m [
    i8 0, label %bb.k
    i8 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  switch i8 %.sroa.0.sroa.5.0.extract.trunc, label %bb.m [
    i8 1, label %bb.l
    i8 6, label %bb.l
    i8 7, label %bb.l
    i8 11, label %bb.l
    i8 12, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  switch i8 %7, label %bb.m [
    i8 1, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
    i8 6, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
    i8 8, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
    i8 13, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
  ]

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  br label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit

_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.m
  %.sroa.06.0.in.i.sroa.speculated = phi i32 [ %2, %bb.m ], [ %3, %bb.l ], [ %3, %bb.l ], [ %3, %bb.l ], [ %3, %bb.l ]
  store i8 3, ptr %0, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 6, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i32 %.sroa.06.0.in.i.sroa.speculated, ptr %.sroa.570.0..sroa_idx, align 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE11require_tagCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 28)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef range(i16 -32104, 532) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.7 = alloca [31 x i8], align 1     ; 4 uses
  %.sroa.11 = alloca [31 x i8], align 1           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4111, !noalias !4116, !nonnull !4, !align !237, !noundef !4
  %i.e = tail call noundef align 8 ptr @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i16 noundef range(i16 -32104, 532) %2, i16 %3), !noalias !4114 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4114
  br label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4114
  %i.f = load ptr, ptr %1, align 8, !alias.scope !4111, !noalias !4116, !nonnull !4, !align !237, !noundef !4
  call void @_RNvXNtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_12EntryDecoder9entry_valCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !4114
  %i.g = load i64, ptr %i.a, align 8, !range !2316, !noalias !4114, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.8.copyload22 = load i8, ptr %i.i, align 8, !noalias !4111 ; 2 uses
  %.sroa.11.8..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11.8..sroa_idx23, i64 31, i1 false), !noalias !4111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4114
  br i1 %i.h, label %bb.c, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.8.copyload22, ptr %i.j, align 8
  br label %bb.f

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.6.126 = phi i8 [ -1, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.6.8.copyload22, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.not = icmp eq i8 %.sroa.6.126, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.126, ptr %i.k, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775792, ptr %i.l, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775801, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %2, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %3, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef range(i16 -32104, 532) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !237, !noundef !4
  %i.e = tail call noundef align 8 ptr @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i16 noundef %2, i16 %3) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !align !237, !noundef !4
  call void @_RNvXNtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_12EntryDecoder9entry_valCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  %i.g = load i64, ptr %i.a, align 8, !range !2316, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  store i64 %i.g, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.j, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !237, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !2723, !invariant.load !4 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit unwind label %bb.c, !inline_history !4117

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr nonnull %i.a, ptr nonnull %i.c) #22
  resume { ptr, i32 } %i.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !2722, !invariant.load !4
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 15
  %i.s = add nuw i64 %i.r, %i.p
  %i.t = sub nsw i64 0, %i.q
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.u, i64 noundef range(i64 1, 536870913) %i.q) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !237, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !2723, !invariant.load !4 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
end_hunk_0
