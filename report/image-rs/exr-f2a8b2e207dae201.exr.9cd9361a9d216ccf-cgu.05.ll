Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.05?download=true
inline.NumInlined: 233
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le:bb.a
  %switch.gep.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.cs
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i64
  %i.ct = add i64 %i.cp, %switch.ext.1
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 185
  %.val.i.i.2 = load i8, ptr %i.cv, align 1, !range !9, !noalias !154, !noundef !5
  %i.cw = zext nneg i8 %.val.i.i.2 to i64
  %switch.gep.2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.cw
  %switch.load.2 = load i8, ptr %switch.gep.2, align 1
  %switch.ext.2 = zext i8 %switch.load.2 to i64
  %i.cx = add i64 %i.ct, %switch.ext.2
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 249
  %.val.i.i.3 = load i8, ptr %i.cz, align 1, !range !9, !noalias !154, !noundef !5
  %i.da = zext nneg i8 %.val.i.i.3 to i64
  %switch.gep.3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.da
  %switch.load.3 = load i8, ptr %switch.gep.3, align 1
  %switch.ext.3 = zext i8 %switch.load.3 to i64
  %i.db = add i64 %i.cx, %switch.ext.3            ; 3 uses
  %i.dc = add nuw i64 %.sroa.04.0.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa, label %.preheader.i

default.unreachable:                              ; preds = %bb.ba, %bb.cm, %bb.bz, %bb.bn
  unreachable

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.dc, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.db, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod535 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod535)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.dh, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.dg, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i.epil
  %i.de = getelementptr i8, ptr %i.dd, i64 57
  %.val.i.i.epil = load i8, ptr %i.de, align 1, !range !9, !noalias !154, !noundef !5
  %i.df = zext nneg i8 %.val.i.i.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.df
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i64
  %i.dg = add i64 %.sroa.02.0.i.i.epil, %switch.ext.epil ; 2 uses
  %i.dh = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit, label %.preheader.i.epil, !llvm.loop !95

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit: ; preds = %.preheader.i.epil, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa
  %.lcssa533 = phi i64 [ %i.db, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa ], [ %i.dg, %.preheader.i.epil ]
  %i.di = mul i64 %.lcssa533, %.pre.i
  %i.dj = mul i64 %i.di, %i.bb
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit.i
  %.sroa.0.0.i.i = phi i64 [ 0, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit.i ], [ %i.dj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !156
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !158
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.ah, !noalias !154

.noexc.i:                                         ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i
  %i.dk = load i64, ptr %i.o, align 8, !range !11, !noalias !158, !noundef !5
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !12, !noalias !158, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.dl, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %.noexc.i
  %i.dp = load i64, ptr %i.do, align 8, !noalias !158
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.dp) #18
          to label %.noexc80.i unwind label %bb.ah, !noalias !154

.noexc80.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %.noexc.i
  %i.dq = load ptr, ptr %i.do, align 8, !noalias !158, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !158
  store i64 %i.dn, ptr %i.w, align 8, !alias.scope !157, !noalias !156
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !alias.scope !157, !noalias !156
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.ds, align 8, !alias.scope !157, !noalias !156
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !151, !noundef !5 ; 2 uses
  %i.dv = invoke { i32, i32 } @_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds3end(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split419.us.i, %bb.bf, %bb.bg, %bb.bi, %bb.bv, %bb.ch, %bb.ci, %bb.ck, %bb.bk, %bb.bx, %bb.al, %.invoke.i, %.split417.us.invoke.i, %._crit_edge.i26, %bb.aj
  %lpad.loopexit.split-lp455 = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.body130.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cr, %bb.ce, %bb.bs
  %eh.lpad-body131.i = phi { ptr, i32 } [ %i.gb, %bb.bs ], [ %i.gx, %bb.ce ], [ %i.ia, %bb.cr ], [ %lpad.loopexit.split-lp455, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #16
          to label %.body.i unwind label %bb.da, !noalias !154

bb.ak:                                            ; preds = %bb.aj
  %i.dw = extractvalue { i32, i32 } %i.dv, 1      ; 2 uses
  %i.dx = icmp slt i32 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph444.i, label %._crit_edge.i26

.lr.ph444.i:                                      ; preds = %bb.ak
  %.sroa.4255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.6259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.7261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.9262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %.sroa.4199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.4224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.6228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.7230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.8232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.9233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  br label %bb.al

.loopexit308.i:                                   ; preds = %.outer.split.i, %.outer.split.us.i
  %exitcond570.not.i = icmp eq i32 %i.ea, %i.dw
  br i1 %exitcond570.not.i, label %._crit_edge.i26, label %bb.al

._crit_edge.i26:                                  ; preds = %.loopexit308.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !156
  %i.dy = load ptr, ptr %i.dr, align 8, !noalias !156, !nonnull !5, !noundef !5
  %i.dz = load i64, ptr %i.ds, align 8, !noalias !156, !noundef !5
  invoke void @_RNvNtCs8E2QkBjsxCe_11miniz_oxide7deflate20compress_to_vec_zlib(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.dz, i8 noundef 4)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

bb.al:                                            ; preds = %.loopexit308.i, %.lr.ph444.i
  %.sroa.052.0443.i = phi i32 [ %i.du, %.lr.ph444.i ], [ %i.ea, %.loopexit308.i ] ; 5 uses
  %.sroa.19.0442.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph444.i ], [ %.sroa.19.1.ph.i, %.loopexit308.i ]
  %.sroa.030.0441.i = phi ptr [ %i.dq, %.lr.ph444.i ], [ %.sroa.030.1.ph.i, %.loopexit308.i ]
  %.sroa.0.0440.i = phi ptr [ %i.bz, %.lr.ph444.i ], [ %.sroa.0.1.ph.i, %.loopexit308.i ]
  %.sroa.10.0439.i = phi i64 [ %i.bv, %.lr.ph444.i ], [ %.sroa.10.1.ph.i, %.loopexit308.i ]
  %i.ea = add nsw i32 %.sroa.052.0443.i, 1        ; 2 uses
  %i.eb = invoke { ptr, ptr } @_RNvXsM_Cs8zlGlznUR0G_8smallvecRINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iterBP_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154 ; 2 uses

bb.am:                                            ; preds = %._crit_edge.i26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !160
  store i64 -1, ptr %i.ao, align 8, !alias.scope !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !156
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ao unwind label %bb.an, !noalias !154

bb.an:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i unwind label %bb.ap, !noalias !154

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.ah, !noalias !154

bb.ap:                                            ; preds = %bb.an
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !154
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !156
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit176.i unwind label %bb.aq, !noalias !153

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.thread49 unwind label %bb.ar, !noalias !153

bb.ar:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !153
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit176.i: ; preds = %bb.cx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr248compress.exit unwind label %.thread59

bb.as:                                            ; preds = %bb.al
  %i.eh = extractvalue { ptr, ptr } %i.eb, 0
  %i.ei = extractvalue { ptr, ptr } %i.eb, 1      ; 4 uses
  %i.ej = icmp sgt i32 %.sroa.052.0443.i, -1
  %i.ek = xor i32 %.sroa.052.0443.i, -1
  br label %.outer.i

.outer.i:                                         ; preds = %bb.bl, %bb.as
  %.sroa.10.1.ph.i = phi i64 [ %.sroa.10.3.i, %bb.bl ], [ %.sroa.10.0439.i, %bb.as ] ; 7 uses
  %.sroa.0.1.ph.i = phi ptr [ %.sroa.0.3.i, %bb.bl ], [ %.sroa.0.0440.i, %bb.as ] ; 7 uses
  %.sroa.030.1.ph.i = phi ptr [ %.sroa.030.2.i, %bb.bl ], [ %.sroa.030.0441.i, %bb.as ] ; 10 uses
  %.sroa.19.1.ph.i = phi i64 [ %.sroa.19.2.i, %bb.bl ], [ %.sroa.19.0442.i, %bb.as ] ; 7 uses
  %.sroa.03.0.ph.i = phi ptr [ %.us-phi420.i, %bb.bl ], [ %i.eh, %bb.as ] ; 2 uses
  br i1 %i.ej, label %.outer.split.us.i, label %.outer.split.i

.outer.split.us.i:                                ; preds = %.outer.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i
  %.sroa.03.0.us.i = phi ptr [ %i.em, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %.sroa.03.0.ph.i, %.outer.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.us.i), "nonnull"(ptr %i.ei) ]
  %i.el = icmp eq ptr %.sroa.03.0.us.i, %i.ei
  br i1 %i.el, label %.loopexit308.i, label %bb.at

bb.at:                                            ; preds = %.outer.split.us.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !noalias !154, !noundef !5 ; 3 uses
  %i.ep = icmp ugt i64 %i.eo, 2147483647
  br i1 %i.ep, label %.split.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = icmp eq i64 %i.eo, 0
  br i1 %i.eq, label %.split417.us.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i: ; preds = %bb.au
  %i.er = trunc nuw nsw i64 %i.eo to i32
  %i.es = urem i32 %.sroa.052.0443.i, %i.er
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.split419.us.i, label %.outer.split.us.i

.outer.split.i:                                   ; preds = %.outer.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i
  %.sroa.03.0.i = phi ptr [ %i.ev, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ], [ %.sroa.03.0.ph.i, %.outer.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i), "nonnull"(ptr %i.ei) ]
  %i.eu = icmp eq ptr %.sroa.03.0.i, %i.ei
  br i1 %i.eu, label %.loopexit308.i, label %bb.av

bb.av:                                            ; preds = %.outer.split.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 64 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !154, !noundef !5 ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, 2147483647
  br i1 %i.ey, label %.split.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %.split417.us.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i: ; preds = %bb.aw
  %i.fa = trunc nuw nsw i64 %i.ex to i32          ; 2 uses
  %i.fb = add nuw i32 %i.fa, %i.ek
  %.fr.i = freeze i32 %i.fb                       ; 2 uses
  %i.fc = srem i32 %.fr.i, %i.fa
  %.neg.i = sub i32 %i.fc, %.fr.i
  %i.fd = icmp eq i32 %.sroa.052.0443.i, %.neg.i
  br i1 %i.fd, label %.split419.us.i, label %.outer.split.i

.split417.us.invoke.i:                            ; preds = %bb.aw, %bb.au
  %i.fe = phi ptr [ @18, %bb.au ], [ @17, %bb.aw ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe) #19
          to label %.split417.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

.split417.us.cont.i:                              ; preds = %.split417.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %bb.av, %bb.at
  store i64 2, ptr %i.ao, align 8, !alias.scope !148
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -1, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !148
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 -1, ptr %.sroa.571.0..sroa_idx.i, align 4, !alias.scope !148
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr @37, ptr %.sroa.672.0..sroa_idx.i, align 8, !alias.scope !148
  %.sroa.773.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 15, ptr %.sroa.773.0..sroa_idx.i, align 8, !alias.scope !148
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ay unwind label %bb.ax, !noalias !154

bb.ax:                                            ; preds = %.split.us.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i unwind label %bb.az, !noalias !154

bb.ay:                                            ; preds = %.split.us.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit91.i unwind label %bb.ah, !noalias !154

bb.az:                                            ; preds = %bb.ax
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !154
  unreachable

.split419.us.i:                                   ; preds = %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i
  %.us-phi420.i = phi ptr [ %i.em, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %i.ev, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ]
  %.us-phi421.i = phi ptr [ %.sroa.03.0.us.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %.sroa.03.0.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ] ; 2 uses
  %i.fh = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.us-phi421.i, i64 noundef %.pre.i, i64 noundef %i.bb)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

bb.ba:                                            ; preds = %.split419.us.i
  %i.fi = extractvalue { i64, i64 } %i.fh, 0      ; 25 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.us-phi421.i, i64 57
  %i.fk = load i8, ptr %i.fj, align 1, !range !9, !noalias !154, !noundef !5
  switch i8 %i.fk, label %default.unreachable [
    i8 0, label %bb.bb
    i8 1, label %bb.bc
    i8 2, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !156
  %.not.i.i = icmp ugt i64 %i.fi, %.sroa.19.1.ph.i
  br i1 %.not.i.i, label %.invoke.i, label %bb.be, !prof !13

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !156
  %.not.i93.i = icmp ugt i64 %i.fi, %.sroa.19.1.ph.i
  br i1 %.not.i93.i, label %.invoke.i, label %bb.bu, !prof !13

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !156
  %.not.i99.i = icmp ugt i64 %i.fi, %.sroa.19.1.ph.i
  br i1 %.not.i99.i, label %.invoke.i, label %bb.cg, !prof !13

bb.be:                                            ; preds = %bb.bb
  %i.fl = sub nuw nsw i64 %.sroa.19.1.ph.i, %i.fi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.1.ph.i) ]
  %.not.i105.i = icmp ugt i64 %i.fi, %i.fl
  br i1 %.not.i105.i, label %.invoke.i, label %bb.bf, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.030.1.ph.i, i64 %i.fi ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fi ; 3 uses
  %i.fo = sub nuw nsw i64 %i.fl, %i.fi            ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull %.sroa.030.1.ph.i, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.fn)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.bf
  %.not.i112.i = icmp ugt i64 %i.fi, %i.fo
  br i1 %.not.i112.i, label %.invoke.i, label %bb.bg, !prof !13

bb.bg:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fi ; 3 uses
  %i.fq = sub nuw nsw i64 %i.fo, %i.fi            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !162
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.fp)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !156
  %.not.i119.i = icmp ugt i64 %i.fi, %i.fq
  br i1 %.not.i119.i, label %.invoke.i, label %bb.bi, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.t, i64 80, i1 false), !noalias !164
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.m, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fr)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !156
  %.sroa.0222.0.copyload.i = load ptr, ptr %i.u, align 8, !noalias !156 ; 2 uses
  %.sroa.4224.0.copyload.i = load ptr, ptr %.sroa.4224.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.5226.0.copyload.i = load i64, ptr %.sroa.5226.0..sroa_idx.i, align 8, !noalias !156
  %.sroa.6228.0.copyload.i = load ptr, ptr %.sroa.6228.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.7230.0.copyload.i = load i64, ptr %.sroa.7230.0..sroa_idx.i, align 8, !noalias !156
  %.sroa.8232.0.copyload.i = load ptr, ptr %.sroa.8232.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.9233.0.copyload.i = load i64, ptr %.sroa.9233.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %i.fs = icmp ult i64 %.sroa.9233.0.copyload.i, %.sroa.11.0.copyload.i
  br i1 %i.fs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i: ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0222.0.copyload.i), "nonnull"(ptr %.sroa.4224.0.copyload.i), "nonnull"(ptr %.sroa.6228.0.copyload.i), "nonnull"(ptr %.sroa.8232.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.bt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i
  %.sroa.025.0436.i = phi i32 [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.gm, %bb.bt ]
  %.sroa.0.2435.i = phi ptr [ %.sroa.0.1.ph.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.gl, %bb.bt ] ; 3 uses
  %.sroa.10.2434.i = phi i64 [ %.sroa.10.1.ph.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.gk, %bb.bt ] ; 2 uses
  %.sroa.9233.0433.i = phi i64 [ %.sroa.9233.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.ft, %bb.bt ] ; 3 uses
  %i.ft = add i64 %.sroa.9233.0433.i, 1           ; 2 uses
  %i.fu = add i64 %.sroa.9233.0433.i, %.sroa.7230.0.copyload.i ; 2 uses
  %i.fv = add i64 %i.fu, %.sroa.5226.0.copyload.i ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0222.0.copyload.i, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.4224.0.copyload.i, i64 %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.6228.0.copyload.i, i64 %i.fu
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.8232.0.copyload.i, i64 %.sroa.9233.0433.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !165
  store i32 0, ptr %i.l, align 4, !noalias !165
  %i.ga = icmp ult i64 %.sroa.10.2434.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2435.i) ]
  br i1 %i.ga, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.2435.i, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i: ; preds = %bb.bt, %bb.bj
  %.sroa.10.2.lcssa.i = phi i64 [ %.sroa.10.1.ph.i, %bb.bj ], [ %i.gk, %bb.bt ]
  %.sroa.0.2.lcssa.i = phi ptr [ %.sroa.0.1.ph.i, %bb.bj ], [ %i.gl, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !156
  br label %bb.bl

bb.bl:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i, %.thread282.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i
  %.sroa.10.3.i = phi i64 [ %.sroa.10.2.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ], [ %.sroa.10.4.lcssa.i, %.thread282.i ], [ %.sroa.10.5.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ]
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ], [ %.sroa.0.4.lcssa.i, %.thread282.i ], [ %.sroa.0.5.lcssa.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ]
  %.sroa.030.2.i = phi ptr [ %i.fr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.gr, %.thread282.i ], [ %i.hq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ]
  %.pn302.i = phi i64 [ %i.fq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.gp, %.thread282.i ], [ %i.ho, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ]
  %.sroa.19.2.i = sub nuw nsw i64 %.pn302.i, %i.fi
  br label %.outer.i

bb.bm:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !166
  store ptr @71, ptr %i.k, align 8, !noalias !166
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #18
          to label %bb.bq unwind label %bb.bn, !noalias !167

bb.bn:                                            ; preds = %bb.bm
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.val.i177.i = load ptr, ptr %i.k, align 8, !alias.scope !168, !noalias !166, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !169
  %i.gc = ptrtoint ptr %.val.i177.i to i64        ; 2 uses
  %i.gd = and i64 %i.gc, 3
  switch i64 %i.gd, label %default.unreachable [
    i64 2, label %bb.bs
    i64 3, label %bb.bo
    i64 0, label %bb.bs
    i64 1, label %bb.bp
  ], !prof !6

bb.bo:                                            ; preds = %bb.bn
  %i.ge = icmp ult ptr %.val.i177.i, inttoptr (i64 188978561024 to ptr)
  %i.gf = and i64 %i.gc, 1095216660480
  %i.gg = icmp ne i64 %i.gf, 1095216660480
  call void @llvm.assume(i1 %i.ge), !noalias !170
  call void @llvm.assume(i1 %i.gg), !noalias !170
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  %i.gh = getelementptr i8, ptr %.val.i177.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ], !noalias !170
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.gh, ptr %i.gi, align 8, !alias.scope !171, !noalias !169
  store i8 3, ptr %i.e, align 8, !alias.scope !171, !noalias !169
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gi)
          to label %bb.bs unwind label %bb.br, !noalias !154

bb.bq:                                            ; preds = %bb.bm
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !167
  unreachable

bb.bs:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !169
  br label %.body130.i

bb.bt:                                            ; preds = %bb.bk
  %i.gk = add nsw i64 %.sroa.10.2434.i, -4        ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.2435.i, i64 4 ; 2 uses
  %i.gm = load i32, ptr %i.l, align 4, !noalias !165, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !165
  %i.gn = sub i32 %i.gm, %.sroa.025.0436.i
  %i.go = call i32 @llvm.bswap.i32(i32 %i.gn)     ; 4 uses
  %.sroa.026.0.extract.trunc.i = trunc i32 %i.go to i8
  %.sroa.427.0.extract.shift.i = lshr i32 %i.go, 8
  %.sroa.427.0.extract.trunc.i = trunc i32 %.sroa.427.0.extract.shift.i to i8
  %.sroa.528.0.extract.shift.i = lshr i32 %i.go, 16
  %.sroa.528.0.extract.trunc.i = trunc i32 %.sroa.528.0.extract.shift.i to i8
  %.sroa.629.0.extract.shift.i = lshr i32 %i.go, 24
  %.sroa.629.0.extract.trunc.i = trunc nuw i32 %.sroa.629.0.extract.shift.i to i8
  store i8 %.sroa.026.0.extract.trunc.i, ptr %i.fw, align 1, !noalias !154
  store i8 %.sroa.427.0.extract.trunc.i, ptr %i.fx, align 1, !noalias !154
  store i8 %.sroa.528.0.extract.trunc.i, ptr %i.fy, align 1, !noalias !154
  store i8 %.sroa.629.0.extract.trunc.i, ptr %i.fz, align 1, !noalias !154
  %exitcond569.not.i = icmp eq i64 %i.ft, %.sroa.11.0.copyload.i
  br i1 %exitcond569.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i

bb.bu:                                            ; preds = %bb.bc
  %i.gp = sub nuw nsw i64 %.sroa.19.1.ph.i, %i.fi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.1.ph.i) ]
  %.not.i132.i = icmp ugt i64 %i.fi, %i.gp
  br i1 %.not.i132.i, label %.invoke.i, label %bb.bv, !prof !13

bb.bv:                                            ; preds = %bb.bu
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.030.1.ph.i, i64 %i.fi ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.fi ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noundef nonnull %.sroa.030.1.ph.i, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gr)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit139.i: ; preds = %bb.bv
  %.sroa.0197.0.copyload.i = load ptr, ptr %i.v, align 8, !noalias !156 ; 2 uses
  %.sroa.4199.0.copyload.i = load ptr, ptr %.sroa.4199.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.5201.0.copyload.i = load i64, ptr %.sroa.5201.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %i.gs = icmp ult i64 %.sroa.5201.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.gs, label %.lr.ph.i, label %.thread282.i

.lr.ph.i:                                         ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit139.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0197.0.copyload.i), "nonnull"(ptr %.sroa.4199.0.copyload.i) ]
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cf, %.lr.ph.i
  %.sroa.018.0430.i = phi i16 [ 0, %.lr.ph.i ], [ %i.hi, %bb.cf ]
  %.sroa.0.4429.i = phi ptr [ %.sroa.0.1.ph.i, %.lr.ph.i ], [ %i.hh, %bb.cf ] ; 3 uses
  %.sroa.10.4428.i = phi i64 [ %.sroa.10.1.ph.i, %.lr.ph.i ], [ %i.hg, %bb.cf ] ; 2 uses
  %.sroa.5201.0427.i = phi i64 [ %.sroa.5201.0.copyload.i, %.lr.ph.i ], [ %i.gt, %bb.cf ] ; 3 uses
  %i.gt = add i64 %.sroa.5201.0427.i, 1           ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0197.0.copyload.i, i64 %.sroa.5201.0427.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.4199.0.copyload.i, i64 %.sroa.5201.0427.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !172
  store i16 0, ptr %i.j, align 2, !noalias !172
  %i.gw = icmp ult i64 %.sroa.10.4428.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.4429.i) ]
  br i1 %i.gw, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 2 dereferenceable(2) %i.j, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.4429.i, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

.thread282.i:                                     ; preds = %bb.cf, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit139.i
  %.sroa.10.4.lcssa.i = phi i64 [ %.sroa.10.1.ph.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit139.i ], [ %i.hg, %bb.cf ]
  %.sroa.0.4.lcssa.i = phi ptr [ %.sroa.0.1.ph.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit139.i ], [ %i.hh, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !156
  br label %bb.bl

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !173
  store ptr @71, ptr %i.i, align 8, !noalias !173
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #18
          to label %bb.cc unwind label %bb.bz, !noalias !174

bb.bz:                                            ; preds = %bb.by
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %.val.i180.i = load ptr, ptr %i.i, align 8, !alias.scope !175, !noalias !173, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !176
  %i.gy = ptrtoint ptr %.val.i180.i to i64        ; 2 uses
  %i.gz = and i64 %i.gy, 3
  switch i64 %i.gz, label %default.unreachable [
    i64 2, label %bb.ce
    i64 3, label %bb.ca
    i64 0, label %bb.ce
    i64 1, label %bb.cb
  ], !prof !6

bb.ca:                                            ; preds = %bb.bz
  %i.ha = icmp ult ptr %.val.i180.i, inttoptr (i64 188978561024 to ptr)
  %i.hb = and i64 %i.gy, 1095216660480
  %i.hc = icmp ne i64 %i.hb, 1095216660480
  call void @llvm.assume(i1 %i.ha), !noalias !177
  call void @llvm.assume(i1 %i.hc), !noalias !177
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  %i.hd = getelementptr i8, ptr %.val.i180.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hd) ], !noalias !177
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.hd, ptr %i.he, align 8, !alias.scope !178, !noalias !176
  store i8 3, ptr %i.d, align 8, !alias.scope !178, !noalias !176
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.he)
          to label %bb.ce unwind label %bb.cd, !noalias !154

bb.cc:                                            ; preds = %bb.by
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !174
  unreachable

bb.ce:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !176
  br label %.body130.i

bb.cf:                                            ; preds = %bb.bx
  %i.hg = add nsw i64 %.sroa.10.4428.i, -2        ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.4429.i, i64 2 ; 2 uses
  %i.hi = load i16, ptr %i.j, align 2, !noalias !172, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !172
  %i.hj = sub i16 %i.hi, %.sroa.018.0430.i
  %i.hk = call i16 @llvm.bswap.i16(i16 %i.hj)     ; 2 uses
  %.sroa.023.0.extract.trunc.i = trunc i16 %i.hk to i8
  %.sroa.424.0.extract.shift.i = lshr i16 %i.hk, 8
  %.sroa.424.0.extract.trunc.i = trunc nuw i16 %.sroa.424.0.extract.shift.i to i8
  store i8 %.sroa.023.0.extract.trunc.i, ptr %i.gu, align 1, !noalias !154
  store i8 %.sroa.424.0.extract.trunc.i, ptr %i.gv, align 1, !noalias !154
  %exitcond568.not.i = icmp eq i64 %i.gt, %.sroa.7.0.copyload.i
  br i1 %exitcond568.not.i, label %.thread282.i, label %bb.bw

bb.cg:                                            ; preds = %bb.bd
  %i.hl = sub nuw nsw i64 %.sroa.19.1.ph.i, %i.fi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.1.ph.i) ]
  %.not.i148.i = icmp ugt i64 %i.fi, %i.hl
  br i1 %.not.i148.i, label %.invoke.i, label %bb.ch, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.030.1.ph.i, i64 %i.fi ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.fi ; 3 uses
  %i.ho = sub nuw nsw i64 %i.hl, %i.fi            ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noundef nonnull %.sroa.030.1.ph.i, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i: ; preds = %bb.ch
  %.not.i156.i = icmp ugt i64 %i.fi, %i.ho
  br i1 %.not.i156.i, label %.invoke.i, label %bb.ci, !prof !13

.invoke.i:                                        ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i, %bb.cg, %bb.bu, %bb.bh, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.hp = phi ptr [ @34, %bb.cg ], [ @31, %bb.bu ], [ @27, %bb.bh ], [ @26, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i ], [ @25, %bb.be ], [ @33, %bb.bd ], [ @30, %bb.bc ], [ @24, %bb.bb ], [ @35, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hp) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ci:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.fi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !180
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.hq)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !156
  %.sroa.0253.0.copyload.i = load ptr, ptr %i.r, align 8, !noalias !156 ; 2 uses
  %.sroa.4255.0.copyload.i = load ptr, ptr %.sroa.4255.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.5257.0.copyload.i = load i64, ptr %.sroa.5257.0..sroa_idx.i, align 8, !noalias !156
  %.sroa.6259.0.copyload.i = load ptr, ptr %.sroa.6259.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.7261.0.copyload.i = load i64, ptr %.sroa.7261.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %.sroa.9262.0.copyload.i = load i64, ptr %.sroa.9262.0..sroa_idx.i, align 8, !noalias !156 ; 2 uses
  %i.hr = icmp ult i64 %.sroa.7261.0.copyload.i, %.sroa.9262.0.copyload.i
  br i1 %i.hr, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i: ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0253.0.copyload.i), "nonnull"(ptr %.sroa.4255.0.copyload.i), "nonnull"(ptr %.sroa.6259.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.cw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i
  %.sroa.047.0425.i = phi i32 [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.iz, %bb.cw ]
  %.sroa.0.5424.i = phi ptr [ %.sroa.0.1.ph.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.hy, %bb.cw ] ; 3 uses
  %.sroa.10.5423.i = phi i64 [ %.sroa.10.1.ph.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.hz, %bb.cw ] ; 2 uses
  %.sroa.7261.0422.i = phi i64 [ %.sroa.7261.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.hs, %bb.cw ] ; 3 uses
  %i.hs = add i64 %.sroa.7261.0422.i, 1           ; 2 uses
  %i.ht = add i64 %.sroa.7261.0422.i, %.sroa.5257.0.copyload.i ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.copyload.i, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.4255.0.copyload.i, i64 %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.6259.0.copyload.i, i64 %.sroa.7261.0422.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !181
  store float 0.000000e+00, ptr %i.g, align 4, !noalias !181
  %i.hx = icmp ult i64 %.sroa.10.5423.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.5424.i) ]
  br i1 %i.hx, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.5424.i, i64 4 ; 2 uses
  %i.hz = add nsw i64 %.sroa.10.5423.i, -4        ; 2 uses
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.5424.i, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i: ; preds = %bb.cw, %bb.cj
  %.sroa.10.5.lcssa.i = phi i64 [ %.sroa.10.1.ph.i, %bb.cj ], [ %i.hz, %bb.cw ]
  %.sroa.0.5.lcssa.i = phi ptr [ %.sroa.0.1.ph.i, %bb.cj ], [ %i.hy, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !156
  br label %bb.bl

bb.cl:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !182
  store ptr @71, ptr %i.f, align 8, !noalias !182
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #18
          to label %bb.cp unwind label %bb.cm, !noalias !183

bb.cm:                                            ; preds = %bb.cl
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %.val.i184.i = load ptr, ptr %i.f, align 8, !alias.scope !184, !noalias !182, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !185
  %i.ib = ptrtoint ptr %.val.i184.i to i64        ; 2 uses
  %i.ic = and i64 %i.ib, 3
  switch i64 %i.ic, label %default.unreachable [
    i64 2, label %bb.cr
    i64 3, label %bb.cn
    i64 0, label %bb.cr
    i64 1, label %bb.co
  ], !prof !6

bb.cn:                                            ; preds = %bb.cm
  %i.id = icmp ult ptr %.val.i184.i, inttoptr (i64 188978561024 to ptr)
  %i.ie = and i64 %i.ib, 1095216660480
  %i.if = icmp ne i64 %i.ie, 1095216660480
  call void @llvm.assume(i1 %i.id), !noalias !186
  call void @llvm.assume(i1 %i.if), !noalias !186
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %i.ig = getelementptr i8, ptr %.val.i184.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ig) ], !noalias !186
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ig, ptr %i.ih, align 8, !alias.scope !187, !noalias !185
  store i8 3, ptr %i.c, align 8, !alias.scope !187, !noalias !185
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ih)
          to label %bb.cr unwind label %bb.cq, !noalias !154

bb.cp:                                            ; preds = %bb.cl
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !183
  unreachable

bb.cr:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !185
  br label %.body130.i

bb.cs:                                            ; preds = %bb.ck
  %i.ij = load float, ptr %i.g, align 4, !noalias !181, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !181
  %i.ik = bitcast float %i.ij to i32              ; 4 uses
  %i.il = and i32 %i.ik, 2139095040
  %i.im = and i32 %i.ik, 8388607                  ; 2 uses
  %i.in = icmp eq i32 %i.il, 2139095040
  br i1 %i.in, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.io = icmp eq i32 %i.im, 0
  br i1 %i.io, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ip = call float @llvm.fabs.f32(float %i.ij)
  %i.iq = bitcast float %i.ip to i32              ; 2 uses
  %i.ir = and i32 %i.ik, 128
  %i.is = add nuw i32 %i.ir, %i.iq                ; 2 uses
  %i.it = icmp ugt i32 %i.is, 2139095039
  %spec.select.v.i.i = select i1 %i.it, i32 %i.iq, i32 %i.is
  %spec.select.i.i = lshr i32 %spec.select.v.i.i, 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.iu = lshr i32 %i.im, 8                       ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 0
  %i.iw = or disjoint i32 %i.iu, 8355840
  %.sroa.0.0.i174.i = select i1 %i.iv, i32 8355841, i32 %i.iw
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %.sroa.01.0.i.i = phi i32 [ %spec.select.i.i, %bb.cu ], [ %.sroa.0.0.i174.i, %bb.cv ], [ 8355840, %bb.ct ]
  %i.ix = lshr i32 %i.ik, 8
  %i.iy = and i32 %i.ix, 8388608
  %i.iz = or i32 %.sroa.01.0.i.i, %i.iy           ; 2 uses
  %i.ja = sub nsw i32 %i.iz, %.sroa.047.0425.i
  %i.jb = call i32 @llvm.bswap.i32(i32 %i.ja)     ; 3 uses
  %.sroa.349.0.extract.shift.i = lshr i32 %i.jb, 8
  %.sroa.349.0.extract.trunc.i = trunc i32 %.sroa.349.0.extract.shift.i to i8
  %.sroa.450.0.extract.shift.i = lshr i32 %i.jb, 16
  %.sroa.450.0.extract.trunc.i = trunc i32 %.sroa.450.0.extract.shift.i to i8
  %.sroa.551.0.extract.shift.i = lshr i32 %i.jb, 24
  %.sroa.551.0.extract.trunc.i = trunc nuw i32 %.sroa.551.0.extract.shift.i to i8
  store i8 %.sroa.349.0.extract.trunc.i, ptr %i.hu, align 1, !noalias !154
  store i8 %.sroa.450.0.extract.trunc.i, ptr %i.hv, align 1, !noalias !154
  store i8 %.sroa.551.0.extract.trunc.i, ptr %i.hw, align 1, !noalias !154
  %exitcond.not.i = icmp eq i64 %i.hs, %.sroa.9262.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit91.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !156
  br label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit91.i, %bb.ag
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit176.i unwind label %bb.cy, !noalias !153

bb.cy:                                            ; preds = %bb.cx
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.thread49 unwind label %bb.cz, !noalias !153

bb.cz:                                            ; preds = %bb.cy
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !153
  unreachable

bb.da:                                            ; preds = %.body130.i, %.body.i
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !153
  unreachable

_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr248compress.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.y

bb.db:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  invoke void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3b448compress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, i1 noundef zeroext false)
          to label %bb.dc unwind label %.thread59

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.y

bb.dd:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  invoke void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3b448compress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y, i1 noundef zeroext true)
          to label %bb.de unwind label %.thread59

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.y

bb.df:                                            ; preds = %thread-pre-split, %thread-pre-split
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 4, !range !188, !noundef !5
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0 = load float, ptr %.sroa.3.0.in, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.dg unwind label %.thread59

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  invoke void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa8compress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x, i32 noundef %.sroa.0.0, float %.sroa.3.0)
          to label %bb.dh unwind label %.thread59

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression32decompress_image_section_from_le:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !233, !noundef !5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.bx, ptr %i.ca, align 8, !noalias !235
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !235
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 0, ptr %i.cc, align 8, !noalias !235
  store ptr %i.bx, ptr %i.u, align 8, !noalias !235
  %.sroa.4322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.bz, ptr %.sroa.4322.0..sroa_idx.i, align 8, !noalias !235
  %.sroa.5323.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 11512
  store i8 0, ptr %i.cd, align 8, !noalias !235
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 11513
  store i8 0, ptr %i.ce, align 1, !noalias !235
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.5323.0..sroa_idx.i, i8 0, i64 25, i1 false), !noalias !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11416) %i.cf, i8 0, i64 11416, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 11488
  store i64 %i.br, ptr %i.cg, align 8, !noalias !235
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 11496
  store i64 %i.br, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !235
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 11504
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !235
  invoke void @_RNvMs1_NtCsf2zzadyWNGH_12zune_inflate7decoderNtB5_14DeflateDecoder11decode_zlib(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(11520) %i.u)
          to label %bb.v unwind label %bb.u, !noalias !235

.body653.i:                                       ; preds = %bb.bs, %.body.i, %bb.u
  %.pn578.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ch, %bb.u ], [ %i.he, %bb.bs ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #16
          to label %common.resume unwind label %bb.bx, !noalias !236

bb.u:                                             ; preds = %bb.bt, %bb.ae, %bb.w, %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body653.i

bb.v:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.s, align 8, !range !7, !noalias !235, !noundef !5
  %.not.i24 = icmp eq i64 %i.ci, -1
  br i1 %.not.i24, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !235
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsf2zzadyWNGH_12zune_inflate6errors19InflateDecodeErrorsECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %bb.bz unwind label %bb.u, !noalias !237

.body.i:                                          ; preds = %bb.ah, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp326, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cj, %bb.x ], [ %i.dd, %bb.ah ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #16
          to label %.body653.i unwind label %bb.bx, !noalias !237

bb.x:                                             ; preds = %bb.ai, %bb.aa, %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0341.0.copyload.i = load i64, ptr %i.ck, align 8, !noalias !235
  %.sroa.4342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4342.0.copyload.i = load ptr, ptr %.sroa.4342.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.5343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5343.0.copyload.i = load i64, ptr %.sroa.5343.0..sroa_idx.i, align 8, !noalias !235 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !235
  store i64 %.sroa.0341.0.copyload.i, ptr %i.t, align 8, !noalias !235
  %.sroa.4.0..sroa_idx354.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.4342.0.copyload.i, ptr %.sroa.4.0..sroa_idx354.i, align 8, !noalias !235
  %.sroa.5355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.5343.0.copyload.i, ptr %.sroa.5355.0..sroa_idx.i, align 8, !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !235
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 8192) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !235
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.z unwind label %bb.x, !noalias !237

bb.z:                                             ; preds = %bb.y
  %i.cl = load i64, ptr %i.j, align 8, !range !11, !noalias !235, !noundef !5
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !12, !noalias !235, !noundef !5 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !235
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #18
          to label %bb.by unwind label %bb.x, !noalias !237

bb.ab:                                            ; preds = %bb.z
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !235, !nonnull !5, !noundef !5
  %i.cs = icmp samesign ule i64 %..i.i, %i.co
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !235
  store i64 %i.co, ptr %i.r, align 8, !noalias !235
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !235
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 10 uses
  store i64 0, ptr %i.cu, align 8, !noalias !235
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !alias.scope !234, !noundef !5 ; 2 uses
  %i.cx = invoke { i32, i32 } @_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds3end(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !238

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bn, %bb.bi, %bb.bc, %bb.az, %bb.ax, %.split818.us.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i, %bb.bj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i, %bb.ad, %.split816.us.invoke.i, %bb.ab
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #16
          to label %.body.i unwind label %bb.bx, !noalias !237

bb.ac:                                            ; preds = %bb.ab
  %i.cy = extractvalue { i32, i32 } %i.cx, 1      ; 2 uses
  %i.cz = icmp slt i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph830.i, label %._crit_edge.i25

.lr.ph830.i:                                      ; preds = %bb.ac
  %.sroa.4679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6683.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.7685.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.9686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.4658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.4664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.6667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.7669.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.8670.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.9671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  br label %bb.ad

.loopexit749.i:                                   ; preds = %.outer.split.i, %.outer.split.us.i
  %exitcond897.not.i = icmp eq i32 %i.db, %i.cy
  br i1 %exitcond897.not.i, label %._crit_edge.i25, label %bb.ad

._crit_edge.i25:                                  ; preds = %.loopexit749.i, %bb.ac
  %.sroa.32.0.lcssa.i = phi i64 [ %.sroa.5343.0.copyload.i, %bb.ac ], [ %.sroa.32.1.ph.i, %.loopexit749.i ]
  %i.da = icmp ne i64 %.sroa.32.0.lcssa.i, 0
  %or.cond.not.i = select i1 %5, i1 %i.da, i1 false
  %.sroa.4320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %or.cond.not.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %.loopexit749.i, %.lr.ph830.i
  %.sroa.010.0829.i = phi ptr [ %.sroa.4342.0.copyload.i, %.lr.ph830.i ], [ %.sroa.010.1.ph.i, %.loopexit749.i ]
  %.sroa.32.0828.i = phi i64 [ %.sroa.5343.0.copyload.i, %.lr.ph830.i ], [ %.sroa.32.1.ph.i, %.loopexit749.i ]
  %.sroa.0368.0827.i = phi i32 [ %i.cw, %.lr.ph830.i ], [ %i.db, %.loopexit749.i ] ; 5 uses
  %i.db = add nsw i32 %.sroa.0368.0827.i, 1       ; 2 uses
  %i.dc = invoke { ptr, ptr } @_RNvXsM_Cs8zlGlznUR0G_8smallvecRINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iterBP_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237 ; 2 uses

bb.ae:                                            ; preds = %._crit_edge.i25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4320.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store i64 -1, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !235
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.ak unwind label %bb.u, !noalias !237

bb.af:                                            ; preds = %._crit_edge.i25
  store i64 2, ptr %i.y, align 8
  store i64 -1, ptr %.sroa.4320.0..sroa_idx.i, align 8
  %.sroa.4320.sroa.4.0..sroa.4320.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @20, ptr %.sroa.4320.sroa.4.0..sroa.4320.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4320.sroa.5.0..sroa.4320.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 13, ptr %.sroa.4320.sroa.5.0..sroa.4320.0..sroa_idx.sroa_idx.i, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.br, %bb.bl, %bb.bg, %.split.us.i, %bb.af
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.ai unwind label %bb.ah, !noalias !237

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i unwind label %bb.aj, !noalias !237

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.x, !noalias !237

bb.aj:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !237
  unreachable

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !235
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr2410decompress.exit

bb.al:                                            ; preds = %bb.ad
  %i.df = extractvalue { ptr, ptr } %i.dc, 0
  %i.dg = extractvalue { ptr, ptr } %i.dc, 1      ; 4 uses
  %i.dh = icmp sgt i32 %.sroa.0368.0827.i, -1
  %i.di = xor i32 %.sroa.0368.0827.i, -1
  br label %.outer.i

.outer.i:                                         ; preds = %bb.be, %bb.al
  %.sroa.049.0.ph.i = phi ptr [ %.us-phi819.i, %bb.be ], [ %i.df, %bb.al ] ; 2 uses
  %.sroa.32.1.ph.i = phi i64 [ %.sroa.32.2.i, %bb.be ], [ %.sroa.32.0828.i, %bb.al ] ; 8 uses
  %.sroa.010.1.ph.i = phi ptr [ %.sroa.010.2.i, %bb.be ], [ %.sroa.010.0829.i, %bb.al ] ; 10 uses
  br i1 %i.dh, label %.outer.split.us.i, label %.outer.split.i

.outer.split.us.i:                                ; preds = %.outer.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i
  %.sroa.049.0.us.i = phi ptr [ %i.dk, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %.sroa.049.0.ph.i, %.outer.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.us.i), "nonnull"(ptr %i.dg) ]
  %i.dj = icmp eq ptr %.sroa.049.0.us.i, %i.dg
  br i1 %i.dj, label %.loopexit749.i, label %bb.am

bb.am:                                            ; preds = %.outer.split.us.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.049.0.us.i, i64 64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.049.0.us.i, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !237, !noundef !5 ; 3 uses
  %i.dn = icmp ugt i64 %i.dm, 2147483647
  br i1 %i.dn, label %.split.us.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %.split816.us.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i: ; preds = %bb.an
  %i.dp = trunc nuw nsw i64 %i.dm to i32
  %i.dq = urem i32 %.sroa.0368.0827.i, %i.dp
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.split818.us.i, label %.outer.split.us.i

.outer.split.i:                                   ; preds = %.outer.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i
  %.sroa.049.0.i = phi ptr [ %i.dt, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ], [ %.sroa.049.0.ph.i, %.outer.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.i), "nonnull"(ptr %i.dg) ]
  %i.ds = icmp eq ptr %.sroa.049.0.i, %i.dg
  br i1 %i.ds, label %.loopexit749.i, label %bb.ao

bb.ao:                                            ; preds = %.outer.split.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i, i64 48
  %i.dv = load i64, ptr %i.du, align 8, !noalias !237, !noundef !5 ; 3 uses
  %i.dw = icmp ugt i64 %i.dv, 2147483647
  br i1 %i.dw, label %.split.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %.split816.us.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i: ; preds = %bb.ap
  %i.dy = trunc nuw nsw i64 %i.dv to i32          ; 2 uses
  %i.dz = add nuw i32 %i.dy, %i.di
  %.fr.i = freeze i32 %i.dz                       ; 2 uses
  %i.ea = srem i32 %.fr.i, %i.dy
  %.neg.i = sub i32 %i.ea, %.fr.i
  %i.eb = icmp eq i32 %.sroa.0368.0827.i, %.neg.i
  br i1 %i.eb, label %.split818.us.i, label %.outer.split.i

.split816.us.invoke.i:                            ; preds = %bb.ap, %bb.an
  %i.ec = phi ptr [ @18, %bb.an ], [ @17, %bb.ap ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #19
          to label %.split816.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

.split816.us.cont.i:                              ; preds = %.split816.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %bb.ao, %bb.am
  store i64 2, ptr %i.y, align 8
  %.sroa.4386.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 -1, ptr %.sroa.4386.0..sroa_idx.i, align 8
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 -1, ptr %.sroa.5387.0..sroa_idx.i, align 4
  %.sroa.6388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @23, ptr %.sroa.6388.0..sroa_idx.i, align 8
  %.sroa.7389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 8, ptr %.sroa.7389.0..sroa_idx.i, align 8
  br label %bb.ag

.split818.us.i:                                   ; preds = %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i
  %.us-phi819.i = phi ptr [ %i.dk, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %i.dt, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ]
  %.us-phi820.i = phi ptr [ %.sroa.049.0.us.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %.sroa.049.0.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ] ; 2 uses
  %i.ed = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.us-phi820.i, i64 noundef %.pre.i, i64 noundef %i.ax)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

bb.aq:                                            ; preds = %.split818.us.i
  %i.ee = extractvalue { i64, i64 } %i.ed, 0      ; 25 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.us-phi820.i, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !9, !noalias !237, !noundef !5
  switch i8 %i.eg, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
  ]

default.unreachable:                              ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !235
  %i.eh = icmp ugt i64 %i.ee, %.sroa.32.1.ph.i
  br i1 %i.eh, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !235
  %i.ei = icmp ugt i64 %i.ee, %.sroa.32.1.ph.i
  br i1 %i.ei, label %bb.bl, label %bb.bh

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !235
  %i.ej = icmp ugt i64 %i.ee, %.sroa.32.1.ph.i
  br i1 %i.ej, label %bb.br, label %bb.bm

bb.au:                                            ; preds = %bb.ar
  store i64 2, ptr %i.y, align 8
  %.sroa.4451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4451.0..sroa_idx.i, align 8
  %.sroa.5452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 ptrtoint (ptr @22 to i64), ptr %.sroa.5452.0..sroa_idx.i, align 8
  %.sroa.6453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 15, ptr %.sroa.6453.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !235
  br label %bb.bg

bb.av:                                            ; preds = %bb.ar
  %i.ek = sub nuw nsw i64 %.sroa.32.1.ph.i, %i.ee ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.ph.i) ]
  %i.el = icmp ugt i64 %i.ee, %i.ek
  br i1 %i.el, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i64 2, ptr %i.y, align 8
  %.sroa.4470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4470.0..sroa_idx.i, align 8
  %.sroa.5471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 ptrtoint (ptr @22 to i64), ptr %.sroa.5471.0..sroa_idx.i, align 8
  %.sroa.6472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 15, ptr %.sroa.6472.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !235
  br label %bb.bg

bb.ax:                                            ; preds = %bb.av
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.1.ph.i, i64 %i.ee ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee ; 3 uses
  %i.eo = sub nuw nsw i64 %i.ek, %i.ee            ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %.sroa.010.1.ph.i, ptr noundef nonnull %i.em, ptr noundef nonnull readonly %i.em, ptr noundef nonnull readonly %i.en)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.ax
  %i.ep = icmp ugt i64 %i.ee, %i.eo
  br i1 %i.ep, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit.i
  store i64 2, ptr %i.y, align 8
  %.sroa.4489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4489.0..sroa_idx.i, align 8
  %.sroa.5490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 ptrtoint (ptr @22 to i64), ptr %.sroa.5490.0..sroa_idx.i, align 8
  %.sroa.6491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 15, ptr %.sroa.6491.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !235
  br label %bb.bg

bb.az:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ee ; 3 uses
  %i.er = sub nuw nsw i64 %i.eo, %i.ee            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !240
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull readonly %i.en, ptr noundef nonnull readonly %i.eq)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !235
  %i.es = icmp ugt i64 %i.ee, %i.er
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 2, ptr %i.y, align 8
  %.sroa.4508.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4508.0..sroa_idx.i, align 8
  %.sroa.5509.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 ptrtoint (ptr @22 to i64), ptr %.sroa.5509.0..sroa_idx.i, align 8
  %.sroa.6510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 15, ptr %.sroa.6510.0..sroa_idx.i, align 8
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ee ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.o, i64 80, i1 false), !noalias !242
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.h, ptr noundef nonnull readonly %i.eq, ptr noundef nonnull readonly %i.et)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !235
  %.sroa.0662.0.copyload.i = load ptr, ptr %i.p, align 8, !noalias !235 ; 2 uses
  %.sroa.4664.0.copyload.i = load ptr, ptr %.sroa.4664.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.5666.0.copyload.i = load i64, ptr %.sroa.5666.0..sroa_idx.i, align 8, !noalias !235
  %.sroa.6667.0.copyload.i = load ptr, ptr %.sroa.6667.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.7669.0.copyload.i = load i64, ptr %.sroa.7669.0..sroa_idx.i, align 8, !noalias !235
  %.sroa.8670.0.copyload.i = load ptr, ptr %.sroa.8670.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.9671.0.copyload.i = load i64, ptr %.sroa.9671.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %i.eu = icmp ult i64 %.sroa.9671.0.copyload.i, %.sroa.11.0.copyload.i
  br i1 %i.eu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i: ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0662.0.copyload.i), "nonnull"(ptr %.sroa.4664.0.copyload.i), "nonnull"(ptr %.sroa.6667.0.copyload.i), "nonnull"(ptr %.sroa.8670.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.bf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i
  %.sroa.0233.0826.i = phi i32 [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.fh, %bb.bf ]
  %.sroa.9671.0825.i = phi i64 [ %.sroa.9671.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.ff, %bb.bf ] ; 3 uses
  %i.ev = add i64 %.sroa.9671.0825.i, %.sroa.7669.0.copyload.i ; 2 uses
  %i.ew = add i64 %i.ev, %.sroa.5666.0.copyload.i ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0662.0.copyload.i, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.8670.0.copyload.i, i64 %.sroa.9671.0825.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.6667.0.copyload.i, i64 %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.4664.0.copyload.i, i64 %i.ew
  %i.fb = load i8, ptr %i.ex, align 1, !noalias !237, !noundef !5
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !237, !noundef !5
  %i.fd = load i8, ptr %i.ez, align 1, !noalias !237, !noundef !5
  %i.fe = load i8, ptr %i.ey, align 1, !noalias !237, !noundef !5
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef 4)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i: ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !235
  br label %bb.be

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i, %.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i
  %.pn743.i = phi i64 [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.fo, %.thread.i ], [ %i.gk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ]
  %.sroa.010.2.i = phi ptr [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.fr, %.thread.i ], [ %i.gm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i ]
  %.sroa.32.2.i = sub nuw nsw i64 %.pn743.i, %i.ee
  br label %.outer.i

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i
  %i.ff = add i64 %.sroa.9671.0825.i, 1           ; 2 uses
  %.sroa.6232.0.insert.ext.i = zext i8 %i.fe to i32
  %.sroa.6232.0.insert.shift.i = shl nuw i32 %.sroa.6232.0.insert.ext.i, 24
  %.sroa.5231.0.insert.ext.i = zext i8 %i.fd to i32
  %.sroa.5231.0.insert.shift.i = shl nuw nsw i32 %.sroa.5231.0.insert.ext.i, 16
  %.sroa.4230.0.insert.ext.i = zext i8 %i.fc to i32
  %.sroa.4230.0.insert.shift.i = shl nuw nsw i32 %.sroa.4230.0.insert.ext.i, 8
  %.sroa.0229.0.insert.ext.i = zext i8 %i.fb to i32
  %.sroa.5231.0.insert.insert.i = or disjoint i32 %.sroa.4230.0.insert.shift.i, %.sroa.0229.0.insert.ext.i
  %.sroa.4230.0.insert.insert.i = or disjoint i32 %.sroa.5231.0.insert.insert.i, %.sroa.5231.0.insert.shift.i
  %.sroa.0229.0.insert.insert.i = or disjoint i32 %.sroa.4230.0.insert.insert.i, %.sroa.6232.0.insert.shift.i
  %i.fg = call i32 @llvm.bswap.i32(i32 %.sroa.0229.0.insert.insert.i)
  %i.fh = add i32 %i.fg, %.sroa.0233.0826.i       ; 2 uses
  %i.fi = load i64, ptr %i.cu, align 8, !alias.scope !243, !noalias !235, !noundef !5 ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = load ptr, ptr %i.ct, align 8, !alias.scope !243, !noalias !235, !nonnull !5, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  store i32 %i.fh, ptr %i.fl, align 1, !noalias !237
  %i.fm = load i64, ptr %i.cu, align 8, !alias.scope !243, !noalias !235, !noundef !5
  %i.fn = add i64 %i.fm, 4
  store i64 %i.fn, ptr %i.cu, align 8, !alias.scope !243, !noalias !235
  %exitcond896.not.i = icmp eq i64 %i.ff, %.sroa.11.0.copyload.i
  br i1 %exitcond896.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i

bb.bg:                                            ; preds = %bb.bb, %bb.ay, %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !235
  br label %bb.ag

bb.bh:                                            ; preds = %bb.as
  %i.fo = sub nuw nsw i64 %.sroa.32.1.ph.i, %i.ee ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.ph.i) ]
  %i.fp = icmp ugt i64 %i.ee, %i.fo
  br i1 %i.fp, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.ph.i, i64 %i.ee ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ee ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noundef nonnull %.sroa.010.1.ph.i, ptr noundef nonnull %i.fq, ptr noundef nonnull readonly %i.fq, ptr noundef nonnull readonly %i.fr)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit618.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit618.i: ; preds = %bb.bi
  %.sroa.0.0.copyload.i = load ptr, ptr %i.q, align 8, !noalias !235 ; 2 uses
  %.sroa.4658.0.copyload.i = load ptr, ptr %.sroa.4658.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.5660.0.copyload.i = load i64, ptr %.sroa.5660.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %i.fs = icmp ult i64 %.sroa.5660.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.fs, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit618.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.4658.0.copyload.i) ]
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %.lr.ph.i
  %.sroa.0123.0824.i = phi i16 [ 0, %.lr.ph.i ], [ %i.fz, %bb.bk ]
  %.sroa.5660.0823.i = phi i64 [ %.sroa.5660.0.copyload.i, %.lr.ph.i ], [ %i.fx, %bb.bk ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.5660.0823.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.4658.0.copyload.i, i64 %.sroa.5660.0823.i
  %i.fv = load i8, ptr %i.ft, align 1, !noalias !237, !noundef !5
  %i.fw = load i8, ptr %i.fu, align 1, !noalias !237, !noundef !5
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef 2)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

.thread.i:                                        ; preds = %bb.bk, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit618.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !235
  br label %bb.be

bb.bk:                                            ; preds = %bb.bj
  %i.fx = add i64 %.sroa.5660.0823.i, 1           ; 2 uses
  %.sroa.4122.0.insert.ext.i = zext i8 %i.fw to i16
  %.sroa.4122.0.insert.shift.i = shl nuw i16 %.sroa.4122.0.insert.ext.i, 8
  %.sroa.0121.0.insert.ext.i = zext i8 %i.fv to i16
  %.sroa.0121.0.insert.insert.i = or disjoint i16 %.sroa.4122.0.insert.shift.i, %.sroa.0121.0.insert.ext.i
  %i.fy = call i16 @llvm.bswap.i16(i16 %.sroa.0121.0.insert.insert.i)
  %i.fz = add i16 %i.fy, %.sroa.0123.0824.i       ; 2 uses
  %i.ga = load i64, ptr %i.cu, align 8, !alias.scope !244, !noalias !235, !noundef !5 ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  call void @llvm.assume(i1 %i.gb)
  %i.gc = load ptr, ptr %i.ct, align 8, !alias.scope !244, !noalias !235, !nonnull !5, !noundef !5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  store i16 %i.fz, ptr %i.gd, align 1, !noalias !237
  %i.ge = load i64, ptr %i.cu, align 8, !alias.scope !244, !noalias !235, !noundef !5
  %i.gf = add i64 %i.ge, 2
  store i64 %i.gf, ptr %i.cu, align 8, !alias.scope !244, !noalias !235
  %exitcond895.not.i = icmp eq i64 %i.fx, %.sroa.7.0.copyload.i
  br i1 %exitcond895.not.i, label %.thread.i, label %bb.bj

bb.bl:                                            ; preds = %bb.bh, %bb.as
  store i64 2, ptr %i.y, align 8
  %.sroa.4439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4439.0..sroa_idx.i, align 8
  %.sroa.5440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 ptrtoint (ptr @22 to i64), ptr %.sroa.5440.0..sroa_idx.i, align 8
  %.sroa.6441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 15, ptr %.sroa.6441.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !235
  br label %bb.ag

bb.bm:                                            ; preds = %bb.at
  %i.gg = sub nuw nsw i64 %.sroa.32.1.ph.i, %i.ee ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.ph.i) ]
  %i.gh = icmp ugt i64 %i.ee, %i.gg
  br i1 %i.gh, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.010.1.ph.i, i64 %i.ee ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ee ; 3 uses
  %i.gk = sub nuw nsw i64 %i.gg, %i.ee            ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull %.sroa.010.1.ph.i, ptr noundef nonnull %i.gi, ptr noundef nonnull readonly %i.gi, ptr noundef nonnull readonly %i.gj)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit636.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit636.i: ; preds = %bb.bn
  %i.gl = icmp ugt i64 %i.ee, %i.gk
  br i1 %i.gl, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit636.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.ee ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !246
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noundef nonnull readonly %i.gj, ptr noundef nonnull readonly %i.gm)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !235
  %.sroa.0677.0.copyload.i = load ptr, ptr %i.m, align 8, !noalias !235 ; 2 uses
  %.sroa.4679.0.copyload.i = load ptr, ptr %.sroa.4679.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.5681.0.copyload.i = load i64, ptr %.sroa.5681.0..sroa_idx.i, align 8, !noalias !235
  %.sroa.6683.0.copyload.i = load ptr, ptr %.sroa.6683.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.7685.0.copyload.i = load i64, ptr %.sroa.7685.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %.sroa.9686.0.copyload.i = load i64, ptr %.sroa.9686.0..sroa_idx.i, align 8, !noalias !235 ; 2 uses
  %i.gn = icmp ult i64 %.sroa.7685.0.copyload.i, %.sroa.9686.0.copyload.i
  br i1 %i.gn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i: ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0677.0.copyload.i), "nonnull"(ptr %.sroa.4679.0.copyload.i), "nonnull"(ptr %.sroa.6683.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.bq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i
  %.sroa.0317.0822.i = phi i32 [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.gx, %bb.bq ]
  %.sroa.7685.0821.i = phi i64 [ %.sroa.7685.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.lr.ph.i ], [ %i.gv, %bb.bq ] ; 3 uses
  %i.go = add i64 %.sroa.7685.0821.i, %.sroa.5681.0.copyload.i ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0677.0.copyload.i, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.6683.0.copyload.i, i64 %.sroa.7685.0821.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.4679.0.copyload.i, i64 %i.go
  %i.gs = load i8, ptr %i.gp, align 1, !noalias !237, !noundef !5
  %i.gt = load i8, ptr %i.gr, align 1, !noalias !237, !noundef !5
  %i.gu = load i8, ptr %i.gq, align 1, !noalias !237, !noundef !5
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef 4)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !237

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i: ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !235
  br label %bb.be

bb.bq:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i
  %i.gv = add i64 %.sroa.7685.0821.i, 1           ; 2 uses
  %.sroa.5315.0.insert.ext.i = zext i8 %i.gu to i32
  %.sroa.5315.0.insert.shift.i = shl nuw nsw i32 %.sroa.5315.0.insert.ext.i, 16
  %.sroa.4314.0.insert.ext.i = zext i8 %i.gt to i32
  %.sroa.4314.0.insert.shift.i = shl nuw nsw i32 %.sroa.4314.0.insert.ext.i, 8
  %.sroa.0313.0.insert.ext.i = zext i8 %i.gs to i32
  %.sroa.4314.0.insert.insert.i = or disjoint i32 %.sroa.4314.0.insert.shift.i, %.sroa.0313.0.insert.ext.i
  %.sroa.0313.0.insert.insert.i = or disjoint i32 %.sroa.4314.0.insert.insert.i, %.sroa.5315.0.insert.shift.i
  %i.gw = call i32 @llvm.bswap.i32(i32 %.sroa.0313.0.insert.insert.i)
  %i.gx = add i32 %i.gw, %.sroa.0317.0822.i       ; 2 uses
  %i.gy = load i64, ptr %i.cu, align 8, !alias.scope !247, !noalias !235, !noundef !5 ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, -1
  call void @llvm.assume(i1 %i.gz)
  %i.ha = load ptr, ptr %i.ct, align 8, !alias.scope !247, !noalias !235, !nonnull !5, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  store i32 %i.gx, ptr %i.hb, align 1, !noalias !237
  %i.hc = load i64, ptr %i.cu, align 8, !alias.scope !247, !noalias !235, !noundef !5
  %i.hd = add i64 %i.hc, 4
  store i64 %i.hd, ptr %i.cu, align 8, !alias.scope !247, !noalias !235
  %exitcond.not.i = icmp eq i64 %i.gv, %.sroa.9686.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i

bb.br:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit636.i, %bb.bm, %bb.at
  store i64 2, ptr %i.y, align 8
  %.sroa.4539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4539.0..sroa_idx.i, align 8
  %.sroa.5540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 ptrtoint (ptr @22 to i64), ptr %.sroa.5540.0..sroa_idx.i, align 8
  %.sroa.6541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 15, ptr %.sroa.6541.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !235
  br label %bb.ag

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !235
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.bt unwind label %bb.bs, !noalias !237

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body653.i unwind label %bb.bu, !noalias !237

bb.bt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit655.i unwind label %bb.u, !noalias !237

bb.bu:                                            ; preds = %bb.bs
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !237
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit655.i: ; preds = %bb.bz, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !235
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit657.i unwind label %bb.bv, !noalias !236

bb.bv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit655.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.bw, !noalias !236

bb.bw:                                            ; preds = %bb.bv
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !236
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit657.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit655.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr2410decompress.exit

bb.bx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i, %.body653.i
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !236
  unreachable

bb.by:                                            ; preds = %bb.aa
  unreachable

bb.bz:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !235
  store i64 2, ptr %i.y, align 8
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 -1, ptr %.sroa.4365.0..sroa_idx.i, align 8
  %.sroa.5366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @19, ptr %.sroa.5366.0..sroa_idx.i, align 8
  %.sroa.6367.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 30, ptr %.sroa.6367.0..sroa_idx.i, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit655.i

bb.ca:                                            ; preds = %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3b4410decompress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, i64 noundef %i.br, i1 noundef zeroext %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cc

bb.cb:                                            ; preds = %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa10decompress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, i64 noundef %i.br, i1 noundef zeroext %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cc

.thread62:                                        ; preds = %bb.n
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  br label %bb.cm

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr2410decompress.exit, %bb.s, %bb.r, %bb.q, %bb.p
  %.pr61 = load i64, ptr %i.y, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.not = icmp eq i64 %.pr61, -1
  br i1 %.not, label %bb.cm, label %bb.cd

_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr2410decompress.exit: ; preds = %bb.ak, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit657.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cc

bb.cd:                                            ; preds = %bb.cc
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not65 = icmp eq i64 %.pr61, 1
  br i1 %.not65, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4187.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !248
  store ptr %i.f, ptr %i.d, align 8, !noalias !248
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsb_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtCsdsTQD3x2eOp_3exr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !248
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.cg, !noalias !248

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !248
  store i64 %.pr61, ptr %i.c, align 8, !noalias !249
  %.sroa.5184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5184.0..sroa_idx185, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4187.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248
  store ptr %1, ptr %i.a, align 8, !noalias !248
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtCsdsTQD3x2eOp_3exr11compressionNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !248
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.hk, align 8, !noalias !248
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_NtCsdsTQD3x2eOp_3exr5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !248
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdsTQD3x2eOp_3exr.exit21.i unwind label %bb.cl, !noalias !250

bb.cg:                                            ; preds = %bb.ce
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #16
          to label %common.resume unwind label %bb.ck, !noalias !248

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !251
  %i.hm = load i64, ptr %i.f, align 8, !range !7, !alias.scope !252, !noalias !248, !noundef !5
  %i.hn = icmp eq i64 %i.hm, -1
  br i1 %i.hn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsdsTQD3x2eOp_3exr.exit.i, label %bb.ch
end_hunk_1
