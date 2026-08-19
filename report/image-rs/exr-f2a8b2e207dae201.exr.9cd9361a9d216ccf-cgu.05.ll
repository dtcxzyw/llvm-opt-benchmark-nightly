inline.NumInlined: 233
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le:bb.a
.body.i:                                          ; preds = %bb.ax, %bb.an, %.body130.i, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body131.i, %.body130.i ], [ %i.ed, %bb.an ], [ %i.cl, %bb.ah ], [ %i.ff, %bb.ax ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #16
          to label %.thread49 unwind label %bb.da, !noalias !113

bb.ah:                                            ; preds = %bb.ay, %bb.ao, %bb.ai, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.dc, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.db, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 57
  %.val.i.i = load i8, ptr %i.cn, align 1, !range !57, !noalias !114, !noundef !5
  %i.co = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.co
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cp = add i64 %.sroa.02.0.i.i, %switch.ext
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 121
  %.val.i.i.1 = load i8, ptr %i.cr, align 1, !range !57, !noalias !114, !noundef !5
  %i.cs = zext nneg i8 %.val.i.i.1 to i64
  %switch.gep.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.cs
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i64
  %i.ct = add i64 %i.cp, %switch.ext.1
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 185
  %.val.i.i.2 = load i8, ptr %i.cv, align 1, !range !57, !noalias !114, !noundef !5
  %i.cw = zext nneg i8 %.val.i.i.2 to i64
  %switch.gep.2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.cw
  %switch.load.2 = load i8, ptr %switch.gep.2, align 1
  %switch.ext.2 = zext i8 %switch.load.2 to i64
  %i.cx = add i64 %i.ct, %switch.ext.2
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 249
  %.val.i.i.3 = load i8, ptr %i.cz, align 1, !range !57, !noalias !114, !noundef !5
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
  %lcmp.mod493 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod493)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.dh, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.dg, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %.sink13.i.i, i64 %.sroa.04.0.i.i.epil
  %i.de = getelementptr i8, ptr %i.dd, i64 57
  %.val.i.i.epil = load i8, ptr %i.de, align 1, !range !57, !noalias !114, !noundef !5
  %i.df = zext nneg i8 %.val.i.i.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression28compress_image_section_to_le, i64 %i.df
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i64
  %i.dg = add i64 %.sroa.02.0.i.i.epil, %switch.ext.epil ; 2 uses
  %i.dh = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit, label %.preheader.i.epil, !llvm.loop !115

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit: ; preds = %.preheader.i.epil, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa
  %.lcssa491 = phi i64 [ %i.db, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit.unr-lcssa ], [ %i.dg, %.preheader.i.epil ]
  %i.di = mul i64 %.lcssa491, %.pre.i
  %i.dj = mul i64 %i.di, %i.bb
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit.i
  %.sroa.0.0.i.i = phi i64 [ 0, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit.i ], [ %i.dj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !121
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.ah, !noalias !114

.noexc.i:                                         ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1U_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_11compression5pxr248compress0NCINvXsK_NtB1S_5accumjNtB41_3Sum3sumINtB2E_3MapBF_B3e_EE0E0EBW_.exit.i
  %i.dk = load i64, ptr %i.o, align 8, !range !122, !noalias !121, !noundef !5
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !123, !noalias !121, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.dl, label %bb.ai, label %bb.aj, !prof !124

bb.ai:                                            ; preds = %.noexc.i
  %i.dp = load i64, ptr %i.do, align 8, !noalias !121
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.dp) #18
          to label %.noexc80.i unwind label %bb.ah, !noalias !114

.noexc80.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %.noexc.i
  %i.dq = load ptr, ptr %i.do, align 8, !noalias !121, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !121
  store i64 %i.dn, ptr %i.w, align 8, !alias.scope !118, !noalias !117
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !alias.scope !118, !noalias !117
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.ds, align 8, !alias.scope !118, !noalias !117
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !104, !noalias !125, !noundef !5 ; 2 uses
  %i.dv = invoke { i32, i32 } @_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds3end(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !126

.loopexit.i:                                      ; preds = %bb.bk
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.bx
  %lpad.loopexit303.i = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ck
  %lpad.loopexit306.i = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.ci, %bb.ch, %bb.bv, %bb.bi, %bb.bg, %bb.bf, %.split419.us.i
  %lpad.loopexit309.i = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.al
  %lpad.loopexit312.i = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke694.i, %.invoke.i, %._crit_edge.i26, %bb.aj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.body130.i:                                       ; preds = %bb.cr, %bb.ce, %bb.bs, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body131.i = phi { ptr, i32 } [ %i.gc, %bb.bs ], [ %i.gy, %bb.ce ], [ %i.ia, %bb.cr ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit303.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit306.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit309.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit312.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #16
          to label %.body.i unwind label %bb.da, !noalias !114

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
  %exitcond559.not.i = icmp eq i32 %i.ea, %i.dw
  br i1 %exitcond559.not.i, label %._crit_edge.i26, label %bb.al

._crit_edge.i26:                                  ; preds = %.loopexit308.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !117
  %i.dy = load ptr, ptr %i.dr, align 8, !noalias !117, !nonnull !5, !noundef !5
  %i.dz = load i64, ptr %i.ds, align 8, !noalias !117, !noundef !5
  invoke void @_RNvNtCs8E2QkBjsxCe_11miniz_oxide7deflate20compress_to_vec_zlib(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.dz, i8 noundef 4)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !114

bb.al:                                            ; preds = %.loopexit308.i, %.lr.ph444.i
  %.sroa.052.0443.i = phi i32 [ %i.du, %.lr.ph444.i ], [ %i.ea, %.loopexit308.i ] ; 5 uses
  %.sroa.19.0442.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph444.i ], [ %.sroa.19.1.ph.i, %.loopexit308.i ]
  %.sroa.030.0441.i = phi ptr [ %i.dq, %.lr.ph444.i ], [ %.sroa.030.1.ph.i, %.loopexit308.i ]
  %.sroa.0.0440.i = phi ptr [ %i.bz, %.lr.ph444.i ], [ %.sroa.0.1.ph.i, %.loopexit308.i ]
  %.sroa.10.0439.i = phi i64 [ %i.bv, %.lr.ph444.i ], [ %.sroa.10.1.ph.i, %.loopexit308.i ]
  %i.ea = add nsw i32 %.sroa.052.0443.i, 1        ; 2 uses
  %i.eb = invoke { ptr, ptr } @_RNvXsM_Cs8zlGlznUR0G_8smallvecRINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iterBP_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !114 ; 2 uses

bb.am:                                            ; preds = %._crit_edge.i26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !112
  store i64 -1, ptr %i.ao, align 8, !alias.scope !97, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !117
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ao unwind label %bb.an, !noalias !114

bb.an:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i unwind label %bb.ap, !noalias !114

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.ah, !noalias !114

bb.ap:                                            ; preds = %bb.an
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !114
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !117
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit176.i unwind label %bb.aq, !noalias !113

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.thread49 unwind label %bb.ar, !noalias !113

bb.ar:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !113
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit176.i: ; preds = %bb.cx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr248compress.exit unwind label %.thread59

bb.as:                                            ; preds = %bb.al
  %i.eh = extractvalue { ptr, ptr } %i.eb, 0
  %i.ei = extractvalue { ptr, ptr } %i.eb, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.us.i) ]
  %i.el = icmp eq ptr %.sroa.03.0.us.i, %i.ei
  br i1 %i.el, label %.loopexit308.i, label %bb.at

bb.at:                                            ; preds = %.outer.split.us.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !noalias !114, !noundef !5 ; 3 uses
  %i.ep = icmp ugt i64 %i.eo, 2147483647
  br i1 %i.ep, label %.split.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = icmp eq i64 %i.eo, 0
  br i1 %i.eq, label %.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i: ; preds = %bb.au
  %i.er = trunc nuw nsw i64 %i.eo to i32
  %i.es = urem i32 %.sroa.052.0443.i, %i.er
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.split419.us.i, label %.outer.split.us.i

.outer.split.i:                                   ; preds = %.outer.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i
  %.sroa.03.0.i = phi ptr [ %i.ev, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ], [ %.sroa.03.0.ph.i, %.outer.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ]
  %i.eu = icmp eq ptr %.sroa.03.0.i, %i.ei
  br i1 %i.eu, label %.loopexit308.i, label %bb.av

bb.av:                                            ; preds = %.outer.split.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 64 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !114, !noundef !5 ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, 2147483647
  br i1 %i.ey, label %.split.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i

.invoke.i:                                        ; preds = %bb.aw, %bb.au
  %i.fa = phi ptr [ @18, %bb.au ], [ @17, %bb.aw ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !114

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i: ; preds = %bb.aw
  %i.fb = trunc nuw nsw i64 %i.ex to i32          ; 2 uses
  %i.fc = add nuw i32 %i.fb, %i.ek
  %.fr.i = freeze i32 %i.fc                       ; 2 uses
  %i.fd = srem i32 %.fr.i, %i.fb
  %.neg.i = sub i32 %i.fd, %.fr.i
  %i.fe = icmp eq i32 %.sroa.052.0443.i, %.neg.i
  br i1 %i.fe, label %.split419.us.i, label %.outer.split.i

.split.us.i:                                      ; preds = %bb.av, %bb.at
  store i64 2, ptr %i.ao, align 8, !alias.scope !97, !noalias !112
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -1, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !97, !noalias !112
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 -1, ptr %.sroa.571.0..sroa_idx.i, align 4, !alias.scope !97, !noalias !112
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr @37, ptr %.sroa.672.0..sroa_idx.i, align 8, !alias.scope !97, !noalias !112
  %.sroa.773.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 15, ptr %.sroa.773.0..sroa_idx.i, align 8, !alias.scope !97, !noalias !112
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ay unwind label %bb.ax, !noalias !114

bb.ax:                                            ; preds = %.split.us.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i unwind label %bb.az, !noalias !114

bb.ay:                                            ; preds = %.split.us.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit91.i unwind label %bb.ah, !noalias !114

bb.az:                                            ; preds = %bb.ax
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !114
  unreachable

.split419.us.i:                                   ; preds = %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i
  %.us-phi420.i = phi ptr [ %i.em, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %i.ev, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ]
  %.us-phi421.i = phi ptr [ %.sroa.03.0.us.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i ], [ %.sroa.03.0.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ] ; 2 uses
  %i.fh = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.us-phi421.i, i64 noundef %.pre.i, i64 noundef %i.bb)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !114

bb.ba:                                            ; preds = %.split419.us.i
  %i.fi = extractvalue { i64, i64 } %i.fh, 0      ; 25 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.us-phi421.i, i64 57
  %i.fk = load i8, ptr %i.fj, align 1, !range !57, !noalias !114, !noundef !5
  switch i8 %i.fk, label %default.unreachable [
    i8 0, label %bb.bb
    i8 1, label %bb.bc
    i8 2, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !117
  %.not.i.i = icmp ugt i64 %i.fi, %.sroa.19.1.ph.i
  br i1 %.not.i.i, label %.invoke694.i, label %bb.be, !prof !124

.invoke694.i:                                     ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i, %bb.cg, %bb.bu, %bb.bh, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.fl = phi ptr [ @34, %bb.cg ], [ @24, %bb.bb ], [ @30, %bb.bc ], [ @33, %bb.bd ], [ @25, %bb.be ], [ @26, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit.i ], [ @27, %bb.bh ], [ @31, %bb.bu ], [ @35, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQShECsdsTQD3x2eOp_3exr.exit155.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl) #19
          to label %.cont695.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !114

.cont695.i:                                       ; preds = %.invoke694.i
  unreachable

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !117
  %.not.i93.i = icmp ugt i64 %i.fi, %.sroa.19.1.ph.i
  br i1 %.not.i93.i, label %.invoke694.i, label %bb.bu, !prof !124

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !117
  %.not.i99.i = icmp ugt i64 %i.fi, %.sroa.19.1.ph.i
  br i1 %.not.i99.i, label %.invoke694.i, label %bb.cg, !prof !124

bb.be:                                            ; preds = %bb.bb
  %i.fm = sub nuw nsw i64 %.sroa.19.1.ph.i, %i.fi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.1.ph.i) ]
  %.not.i105.i = icmp ugt i64 %i.fi, %i.fm
  br i1 %.not.i105.i, label %.invoke694.i, label %bb.bf, !prof !124

bb.bf:                                            ; preds = %bb.be
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.030.1.ph.i, i64 %i.fi ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression32decompress_image_section_from_le:bb.a

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3piz10decompress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x, i64 noundef %i.br, i1 noundef zeroext %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.cc

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !224
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !219, !noalias !227, !nonnull !5, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !219, !noalias !227, !noundef !5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.bx, ptr %i.ca, align 8, !noalias !224
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !224
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 0, ptr %i.cc, align 8, !noalias !224
  store ptr %i.bx, ptr %i.u, align 8, !noalias !224
  %.sroa.4322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.bz, ptr %.sroa.4322.0..sroa_idx.i, align 8, !noalias !224
  %.sroa.5323.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 11512
  store i8 0, ptr %i.cd, align 8, !noalias !224
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 11513
  store i8 0, ptr %i.ce, align 1, !noalias !224
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.5323.0..sroa_idx.i, i8 0, i64 25, i1 false), !noalias !224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11416) %i.cf, i8 0, i64 11416, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 11488
  store i64 %i.br, ptr %i.cg, align 8, !noalias !224
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 11496
  store i64 %i.br, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !224
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 11504
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !224
  invoke void @_RNvMs1_NtCsf2zzadyWNGH_12zune_inflate7decoderNtB5_14DeflateDecoder11decode_zlib(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(11520) %i.u)
          to label %bb.v unwind label %bb.u, !noalias !224

.body653.i:                                       ; preds = %bb.bs, %.body.i, %bb.u
  %.pn578.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ch, %bb.u ], [ %i.he, %bb.bs ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #16
          to label %common.resume unwind label %bb.bx, !noalias !228

bb.u:                                             ; preds = %bb.bt, %bb.ae, %bb.w, %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body653.i

bb.v:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.s, align 8, !range !13, !noalias !224, !noundef !5
  %.not.i24 = icmp eq i64 %i.ci, -1
  br i1 %.not.i24, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !224
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsf2zzadyWNGH_12zune_inflate6errors19InflateDecodeErrorsECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %bb.bz unwind label %bb.u, !noalias !229

.body.i:                                          ; preds = %bb.ah, %.loopexit.split-lp.i, %bb.x
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.cj, %bb.x ], [ %i.dd, %bb.ah ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #16
          to label %.body653.i unwind label %bb.bx, !noalias !229

bb.x:                                             ; preds = %bb.ai, %bb.aa, %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0341.0.copyload.i = load i64, ptr %i.ck, align 8, !noalias !224
  %.sroa.4342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4342.0.copyload.i = load ptr, ptr %.sroa.4342.0..sroa_idx.i, align 8, !noalias !224 ; 2 uses
  %.sroa.5343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5343.0.copyload.i = load i64, ptr %.sroa.5343.0..sroa_idx.i, align 8, !noalias !224 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !224
  store i64 %.sroa.0341.0.copyload.i, ptr %i.t, align 8, !noalias !224
  %.sroa.4.0..sroa_idx354.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.4342.0.copyload.i, ptr %.sroa.4.0..sroa_idx354.i, align 8, !noalias !224
  %.sroa.5355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.5343.0.copyload.i, ptr %.sroa.5355.0..sroa_idx.i, align 8, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !224
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 8192) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !224
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.z unwind label %bb.x, !noalias !229

bb.z:                                             ; preds = %bb.y
  %i.cl = load i64, ptr %i.j, align 8, !range !122, !noalias !224, !noundef !5
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !123, !noalias !224, !noundef !5 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.aa, label %bb.ab, !prof !124

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !224
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #18
          to label %bb.by unwind label %bb.x, !noalias !229

bb.ab:                                            ; preds = %bb.z
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !224, !nonnull !5, !noundef !5
  %i.cs = icmp samesign ule i64 %..i.i, %i.co
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !224
  store i64 %i.co, ptr %i.r, align 8, !noalias !224
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !224
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 10 uses
  store i64 0, ptr %i.cu, align 8, !noalias !224
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !alias.scope !222, !noalias !230, !noundef !5 ; 2 uses
  %i.cx = invoke { i32, i32 } @_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds3end(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !231

.loopexit.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterhEB14_EB14_EB14_EINtB5_7ZipImplBW_B14_E4nextCsdsTQD3x2eOp_3exr.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.bj
  %lpad.loopexit744.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EB10_EINtB5_7ZipImplBW_B10_E4nextCsdsTQD3x2eOp_3exr.exit.i
  %lpad.loopexit747.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bo, %bb.bn, %bb.bi, %bb.bc, %bb.az, %bb.ax, %.split818.us.i
  %lpad.loopexit750.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.ad
  %lpad.loopexit753.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i, %bb.ab
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit744.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit747.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit750.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit753.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #16
          to label %.body.i unwind label %bb.bx, !noalias !229

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
  %exitcond886.not.i = icmp eq i32 %i.db, %i.cy
  br i1 %exitcond886.not.i, label %._crit_edge.i25, label %bb.ad

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
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !229 ; 2 uses

bb.ae:                                            ; preds = %._crit_edge.i25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4320.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store i64 -1, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !224
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.ak unwind label %bb.u, !noalias !229

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
          to label %bb.ai unwind label %bb.ah, !noalias !229

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i unwind label %bb.aj, !noalias !229

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.x, !noalias !229

bb.aj:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !229
  unreachable

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !224
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression5pxr2410decompress.exit

bb.al:                                            ; preds = %bb.ad
  %i.df = extractvalue { ptr, ptr } %i.dc, 0
  %i.dg = extractvalue { ptr, ptr } %i.dc, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.us.i) ]
  %i.dj = icmp eq ptr %.sroa.049.0.us.i, %i.dg
  br i1 %i.dj, label %.loopexit749.i, label %bb.am

bb.am:                                            ; preds = %.outer.split.us.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.049.0.us.i, i64 64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.049.0.us.i, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !229, !noundef !5 ; 3 uses
  %i.dn = icmp ugt i64 %i.dm, 2147483647
  br i1 %i.dn, label %.split.us.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.us.i: ; preds = %bb.an
  %i.dp = trunc nuw nsw i64 %i.dm to i32
  %i.dq = urem i32 %.sroa.0368.0827.i, %i.dp
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.split818.us.i, label %.outer.split.us.i

.outer.split.i:                                   ; preds = %.outer.i, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i
  %.sroa.049.0.i = phi ptr [ %i.dt, %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i ], [ %.sroa.049.0.ph.i, %.outer.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.i) ]
  %i.ds = icmp eq ptr %.sroa.049.0.i, %i.dg
  br i1 %i.ds, label %.loopexit749.i, label %bb.ao

bb.ao:                                            ; preds = %.outer.split.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i, i64 48
  %i.dv = load i64, ptr %i.du, align 8, !noalias !229, !noundef !5 ; 3 uses
  %i.dw = icmp ugt i64 %i.dv, 2147483647
  br i1 %i.dw, label %.split.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %.invoke.i, label %_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i

.invoke.i:                                        ; preds = %bb.ap, %bb.an
  %i.dy = phi ptr [ @18, %bb.an ], [ @17, %bb.ap ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !229

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtCsdsTQD3x2eOp_3exr11compression5div_p.exit.i: ; preds = %bb.ap
  %i.dz = trunc nuw nsw i64 %i.dv to i32          ; 2 uses
  %i.ea = add nuw i32 %i.dz, %i.di
  %.fr.i = freeze i32 %i.ea                       ; 2 uses
  %i.eb = srem i32 %.fr.i, %i.dz
  %.neg.i = sub i32 %i.eb, %.fr.i
  %i.ec = icmp eq i32 %.sroa.0368.0827.i, %.neg.i
  br i1 %i.ec, label %.split818.us.i, label %.outer.split.i

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
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !229

bb.aq:                                            ; preds = %.split818.us.i
  %i.ee = extractvalue { i64, i64 } %i.ed, 0      ; 25 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.us-phi820.i, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !57, !noalias !229, !noundef !5
  switch i8 %i.eg, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
  ]

default.unreachable:                              ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !224
  %i.eh = icmp ugt i64 %i.ee, %.sroa.32.1.ph.i
  br i1 %i.eh, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !224
  %i.ei = icmp ugt i64 %i.ee, %.sroa.32.1.ph.i
  br i1 %i.ei, label %bb.bl, label %bb.bh

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !224
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !224
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !224
  br label %bb.bg

bb.ax:                                            ; preds = %bb.av
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.1.ph.i, i64 %i.ee ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee ; 3 uses
  %i.eo = sub nuw nsw i64 %i.ek, %i.ee            ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %.sroa.010.1.ph.i, ptr noundef nonnull %i.em, ptr noundef nonnull readonly %i.em, ptr noundef nonnull readonly %i.en)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRShECsdsTQD3x2eOp_3exr.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !229

end_hunk_1
