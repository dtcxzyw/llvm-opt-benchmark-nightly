Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.08?download=true
inline.NumInlined: 1824
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMsO_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette:bb.a
  %i.ak = icmp ult i8 %.promoted41.i.i, %.promoted42.i.i
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %.sroa.642.0..sroa_idx, align 8, !alias.scope !4063, !noalias !4060
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.preheader.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4064), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4065), !noalias !4060
  %i.al = icmp ult i64 %i.aj, %.promoted43.i.i
  br i1 %i.al, label %bb.m, label %.split48.i.i

bb.m:                                             ; preds = %bb.l
  %i.am = add i64 %.promoted43.i.i, -1            ; 4 uses
  store i64 %i.am, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !4066, !noalias !4060
  %i.an = load i8, ptr %.fr.i.i, align 1, !noalias !4067, !noundef !5 ; 3 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.loopexit.i.i, label %.split.peel.next.i.i

.split.peel.next.i.i:                             ; preds = %bb.m
  %i.ap = udiv i8 8, %i.an
  store ptr %.fr.i.i, ptr %.sroa.642.0..sroa_idx, align 8, !alias.scope !4062, !noalias !4060
  store i8 0, ptr %.sroa.743.0..sroa_idx, align 8, !alias.scope !4062, !noalias !4060
  store i8 %i.ap, ptr %i.ae, align 1, !alias.scope !4062, !noalias !4060
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx.i.i, align 8, !alias.scope !4062, !noalias !4060
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.829.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !4062, !noalias !4060
  %.not.i1.i = icmp ugt i8 %i.an, 8
  br i1 %.not.i1.i, label %.lr.ph.i.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread

.lr.ph.i.preheader:                               ; preds = %.split.peel.next.i.i
  store ptr null, ptr %.sroa.642.0..sroa_idx, align 8, !alias.scope !4068, !noalias !4060
  %i.aq = icmp ult i64 %i.aj, %i.am
  br i1 %i.aq, label %.lr.ph, label %.split48.i.i

.split.us.i.i:                                    ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4069), !noalias !4060
  %.not.i.us.i.i = icmp eq ptr %.promoted.i.i, null
  br i1 %.not.i.us.i.i, label %.split48.us.i.i, label %bb.n

bb.n:                                             ; preds = %.split.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4070), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4071), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4072), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4073), !noalias !4060
  %i.ar = icmp ult i8 %.promoted41.i.i, %.promoted42.i.i
  br i1 %i.ar, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %.sroa.642.0..sroa_idx, align 8, !alias.scope !4074, !noalias !4060
  br label %.split48.us.i.i

.split48.us.i.i:                                  ; preds = %bb.o, %.split.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4075), !noalias !4060
  br label %.split48.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread.loopexit: ; preds = %bb.p
  store i64 %i.ax, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !4076, !noalias !4060
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread.loopexit, %bb.j, %.split.peel.next.i.i, %bb.n
  %.us-phi.i.i = phi ptr [ %.promoted.i.i, %bb.n ], [ %.promoted.i.i, %bb.j ], [ %.fr.i.i, %.split.peel.next.i.i ], [ %.fr.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread.loopexit ]
  %.us-phi46.i.i = phi i8 [ %.promoted41.i.i, %bb.n ], [ %.promoted41.i.i, %bb.j ], [ 0, %.split.peel.next.i.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread.loopexit ] ; 2 uses
  %i.as = add nuw i8 %.us-phi46.i.i, 1
  store i8 %i.as, ptr %.sroa.743.0..sroa_idx, align 8, !alias.scope !4077, !noalias !4060
  %i.at = load i8, ptr %.us-phi.i.i, align 1, !noalias !4078, !noundef !5
  %i.au = mul i8 %i.at, %.us-phi46.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.728.0..sroa_idx.i.i, align 8, !alias.scope !4079, !noalias !4060, !noundef !5
  store i64 1, ptr %i.a, align 8, !alias.scope !4080, !noalias !4060
  store i8 %i.au, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !4080, !noalias !4060
  store i64 %.val.i.i.i.i.i.i, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !alias.scope !4080, !noalias !4060
  br label %bb.u

.lr.ph.i:                                         ; preds = %bb.p
  store ptr null, ptr %.sroa.642.0..sroa_idx, align 8, !alias.scope !4081, !noalias !4060
  %i.av = icmp ult i64 %i.aj, %i.ax
  br i1 %i.av, label %.lr.ph, label %.split48.i.i.loopexit, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aw = phi i64 [ %i.ax, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4069), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4070), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4071), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4072), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4073), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4075), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4082), !noalias !4060
  %i.ax = add i64 %i.aw, -1                       ; 6 uses
  %i.ay = load i8, ptr %.fr.i.i, align 1, !noalias !4083, !noundef !5 ; 3 uses
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.loopexit.i.i.loopexit, label %bb.p

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph
  store i64 %i.ax, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !4076, !noalias !4060
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.m, %.loopexit.i.i.loopexit
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #20
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4084

.noexc21:                                         ; preds = %.loopexit.i.i
  unreachable

bb.p:                                             ; preds = %.lr.ph
  %i.ba = udiv i8 8, %i.ay
  store ptr %.fr.i.i, ptr %.sroa.642.0..sroa_idx, align 8, !alias.scope !4062, !noalias !4060
  store i8 0, ptr %.sroa.743.0..sroa_idx, align 8, !alias.scope !4062, !noalias !4060
  store i8 %i.ba, ptr %i.ae, align 1, !alias.scope !4062, !noalias !4060
  store i64 %i.ax, ptr %.sroa.728.0..sroa_idx.i.i, align 8, !alias.scope !4062, !noalias !4060
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.829.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !4062, !noalias !4060
  %.not.i.i20 = icmp ugt i8 %i.ay, 8
  br i1 %.not.i.i20, label %.lr.ph.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread.loopexit, !llvm.loop !0

.split48.i.i.loopexit:                            ; preds = %.lr.ph.i
  store i64 %i.ax, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !4076, !noalias !4060
  br label %.split48.i.i

.split48.i.i:                                     ; preds = %.split48.i.i.loopexit, %.lr.ph.i.preheader, %.split48.us.i.i, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !4085), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4086), !noalias !4060
  %i.bb = load ptr, ptr %.sroa.844.0..sroa_idx, align 8, !alias.scope !4087, !noalias !4060, !noundef !5 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i2.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread107, label %bb.q

bb.q:                                             ; preds = %.split48.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4088), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4089), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4090), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4091), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4092), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4093), !noalias !4060
  %i.bc = load i8, ptr %.sroa.945.0..sroa_idx, align 8, !alias.scope !4094, !noalias !4060, !noundef !5 ; 3 uses
  %i.bd = load i8, ptr %i.af, align 1, !alias.scope !4095, !noalias !4060, !noundef !5
  %i.be = icmp ult i8 %i.bc, %i.bd
  br i1 %i.be, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i, label %bb.s

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i: ; preds = %bb.q
  %i.bf = add nuw i8 %i.bc, 1
  store i8 %i.bf, ptr %.sroa.945.0..sroa_idx, align 8, !alias.scope !4096, !noalias !4060
  %i.bg = load i8, ptr %i.bb, align 1, !noalias !4097, !noundef !5
  %i.bh = mul i8 %i.bg, %i.bc
  %.val.i.i.i.i9.i.i = load i64, ptr %i.ag, align 8, !alias.scope !4098, !noalias !4060, !noundef !5
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i
  %storemerge.i.i.i13.i3.i.i = phi i64 [ 0, %bb.s ], [ 1, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i ] ; 2 uses
  %.sroa.6.011.i4.i.i = phi i8 [ undef, %bb.s ], [ %i.bh, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i ]
  %.sroa.74.09.i5.i.i = phi i64 [ undef, %bb.s ], [ %.val.i.i.i.i9.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtBa_3map3MapINtNtNtBe_3ops5range5RangehENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1K_6images6bufferINtB2x_11ImageBufferINtNtB1K_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBc_7sources6repeat6RepeatjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1e_8function6FnOnceTQB5_EE9call_onceB1K_.exit.i8.i.i ]
  store i64 %storemerge.i.i.i13.i3.i.i, ptr %i.a, align 8, !alias.scope !4099, !noalias !4060
  store i8 %.sroa.6.011.i4.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !4099, !noalias !4060
  store i64 %.sroa.74.09.i5.i.i, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !alias.scope !4099, !noalias !4060
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i

bb.s:                                             ; preds = %bb.q
  store ptr null, ptr %.sroa.844.0..sroa_idx, align 8, !alias.scope !4087, !noalias !4060
  br label %bb.r

bb.t:                                             ; preds = %bb.h
  store i64 0, ptr %.sroa.1046.0..sroa_idx, align 8, !alias.scope !4100
  invoke fastcc void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB7_3rev3RevINtNtNtBb_3ops5range5RangejEEINtNtB7_3zip3ZipINtNtB7_3map3MapIB1f_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2t_6images6bufferINtB3g_11ImageBufferINtNtB2t_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB9_7sources6repeat6RepeatjEENCB2o_0ENtNtNtB9_6traits8iterator8Iterator3nthB2t_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, i64 noundef %i.ah) #24
          to label %._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4060

._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge: ; preds = %bb.t
  %.pre91 = load i64, ptr %i.a, align 8, !range !13, !noalias !4056
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i: ; preds = %._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge, %bb.r
  %i.bi = phi i64 [ %.pre91, %._RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i_crit_edge ], [ %storemerge.i.i.i13.i3.i.i, %bb.r ]
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.u, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread107

bb.u:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i
  %i.bk = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4056, !noundef !5
  %i.bl = load i64, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !4056, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4056
  %i.bm = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !4101, !noundef !5 ; 2 uses
  %i.bn = icmp ne i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !4101, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %.loopexit70, label %bb.v

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread107: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i, %.split48.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4056
  br label %.loopexit70

bb.v:                                             ; preds = %bb.u
  %i.bp = add nuw i64 %i.bm, 1
  %i.bq = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !4101, !noundef !5 ; 2 uses
  %i.br = add i64 %i.bp, %i.bq
  store i64 %i.br, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !4101
  %i.bs = add i64 %i.bo, -1
  store i64 %i.bs, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !4101
  %i.bt = sub i64 %i.ab, %i.bq                    ; 4 uses
  %i.bu = icmp ult i64 %i.bl, %i.ab
  br i1 %i.bu, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bl
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !4053, !noundef !5
  %i.bx = and i8 %i.bk, 7                         ; 2 uses
  %6 = shl nsw i8 -1, %i.bx
  %7 = and i8 %i.bw, %6
  %i.by = lshr i8 %7, %i.bx                       ; 2 uses
  %i.bz = add i64 %i.bt, 4                        ; 2 uses
  %i.ca = icmp ugt i64 %i.bt, -5
  %.not.i = icmp ugt i64 %i.bz, %i.ab
  %or.cond.i = or i1 %i.ca, %.not.i
  br i1 %or.cond.i, label %bb.x, label %bb.y, !prof !7

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.bz, i64 noundef range(i64 0, -9223372036854775808) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #20
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !4102)
  %i.cb = zext i8 %i.by to i64                    ; 3 uses
  %i.cc = icmp samesign ugt i64 %3, %i.cb
  br i1 %i.cc, label %.noexc8, label %.invoke

.noexc8:                                          ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bt ; 4 uses
  %i.ce = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.cb ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !4103, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !4103, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !4103, !noundef !5
  %i.ck = icmp ne i8 %5, %i.by
  %narrow = select i1 %not., i1 true, i1 %i.ck
  %.sroa.0.0.i = sext i1 %narrow to i8
  store i8 %i.cf, ptr %i.cd, align 1, !alias.scope !4102
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.ch, ptr %i.cl, align 1, !alias.scope !4102
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.cj, ptr %i.cm, align 1, !alias.scope !4102
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %.sroa.0.0.i, ptr %i.cn, align 1, !alias.scope !4102
  %.pre = load i64, ptr %.sroa.1046.0..sroa_idx, align 8, !alias.scope !4100
  br label %bb.h

.invoke:                                          ; preds = %bb.y, %bb.v
  %i.co = phi i64 [ %i.bl, %bb.v ], [ %i.cb, %bb.y ]
  %i.cp = phi i64 [ %i.ab, %bb.v ], [ %3, %bb.y ]
  %i.cq = phi ptr [ @130, %bb.v ], [ @133, %bb.y ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4103

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_rawB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #26
  unreachable

bb.aa:                                            ; preds = %bb.c
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.invoke, %.loopexit.i.i, %bb.x
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16 unwind label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body17 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.thread56 unwind label %bb.ad

.loopexit70:                                      ; preds = %bb.u, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlatMapINtNtB6_3rev3RevINtNtNtBa_3ops5range5RangejEEINtNtB6_3zip3ZipINtNtB6_3map3MapIB1C_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB2Q_6images6bufferINtB3D_11ImageBufferINtNtB2Q_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB8_7sources6repeat6RepeatjEENCB2L_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_.exit.i.thread107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16, %bb.ae
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body17

.body17:                                          ; preds = %bb.ab, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread56:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16, %bb.f, %bb.ae
  %.pn55 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.thr_comm, %bb.ae ], [ %lpad.loopexit.split-lp121, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i16 ]
  resume { ptr, i32 } %.pn55

bb.ae:                                            ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #22
          to label %.thread56 unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(792) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [792 x i8], align 8               ; 5 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i32 %2 to i8 ; 2 uses
  %.sroa.0.sroa.3.0.extract.shift = lshr i32 %2, 8
  %.sroa.0.sroa.3.0.extract.trunc = trunc i32 %.sroa.0.sroa.3.0.extract.shift to i8 ; 2 uses
  %.sroa.0.sroa.4.0.extract.shift = lshr i32 %2, 16
  %.sroa.0.sroa.4.0.extract.trunc = trunc i32 %.sroa.0.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.0.sroa.5.0.extract.shift = lshr i32 %2, 24
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.0.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !15, !noundef !5 ; 3 uses
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 780
  %.sroa.026.0.copyload.i = load i8, ptr %i.d, align 4, !alias.scope !4106 ; 2 uses
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 781
  %.sroa.628.0.copyload.i = load i8, ptr %.sroa.628.0..sroa_idx.i, align 1, !alias.scope !4106 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 782
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 2, !alias.scope !4106 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 783
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !4106 ; 2 uses
  %i.e = icmp eq i8 %.sroa.8.0.copyload.i, %.sroa.0.sroa.5.0.extract.trunc
  %i.f = icmp eq i8 %.sroa.628.0.copyload.i, %.sroa.0.sroa.3.0.extract.trunc
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false
  %i.g = icmp eq i8 %.sroa.7.0.copyload.i, %.sroa.0.sroa.4.0.extract.trunc
  %or.cond302.i = select i1 %or.cond.i, i1 %i.g, i1 false
  %i.h = icmp eq i8 %.sroa.026.0.copyload.i, %.sroa.0.sroa.0.0.extract.trunc
  %or.cond303.i = select i1 %or.cond302.i, i1 %i.h, i1 false
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
  %.sroa.637.0.copyload.i = load i8, ptr %.sroa.637.0..sroa_idx.i, align 1, !alias.scope !4106 ; 2 uses
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 786
  %.sroa.740.0.copyload.i = load i8, ptr %.sroa.740.0..sroa_idx.i, align 2, !alias.scope !4106 ; 2 uses
  %.sroa.843.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 787
  %.sroa.843.0.copyload.i = load i8, ptr %.sroa.843.0..sroa_idx.i, align 1, !alias.scope !4106 ; 2 uses
  %i.i = icmp eq i8 %.sroa.843.0.copyload.i, %.sroa.625.0.extract.trunc.i
  %i.j = icmp eq i8 %.sroa.637.0.copyload.i, %.sroa.423.0.extract.trunc.i
  %or.cond304.i = select i1 %i.i, i1 %i.j, i1 false
  %i.k = icmp eq i8 %.sroa.740.0.copyload.i, %.sroa.524.0.extract.trunc.i
  %or.cond305.i = select i1 %or.cond304.i, i1 %i.k, i1 false
  %i.l = icmp eq i8 %i.c, %.sroa.022.0.extract.trunc.i
  %or.cond306.i = and i1 %i.l, %or.cond305.i
  br i1 %or.cond306.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.18.0.ph = phi i32 [ %3, %bb.c ], [ %2, %bb.b ]
  %.sroa.16.0.ph = phi i8 [ %.sroa.843.0.copyload.i, %bb.c ], [ %.sroa.8.0.copyload.i, %bb.b ]
  %.sroa.14.0.ph = phi i8 [ %.sroa.740.0.copyload.i, %bb.c ], [ %.sroa.7.0.copyload.i, %bb.b ]
  %.sroa.12.0.ph = phi i8 [ %.sroa.637.0.copyload.i, %bb.c ], [ %.sroa.628.0.copyload.i, %bb.b ]
  %.sroa.10.0.ph = phi i8 [ %i.c, %bb.c ], [ %.sroa.026.0.copyload.i, %bb.b ]
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
  %.pre = load i8, ptr %i.b, align 8, !range !15
  %i.m = icmp eq i8 %.pre, 2
  br i1 %i.m, label %bb.i, label %.thread

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform3new(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(none) dereferenceable(792) %i.a, i32 noundef %2, i32 noundef %3)
end_hunk_0
