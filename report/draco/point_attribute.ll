Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/point_attribute?download=true
inline.NumInlined: 3495
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block195, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ax = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit
  %n.vec203 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.ba = shl i64 %n.vec203, 2
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next209, %vector.body206 ] ; 2 uses
  %i.bc = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %broadcast.splat205, ptr %next.gep208, align 4, !tbaa !68
  store <4 x i32> %broadcast.splat205, ptr %i.bd, align 4, !tbaa !68
  %index.next209 = add nuw i64 %index207, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.be, label %middle.block210, label %vector.body206, !llvm.loop !213

middle.block210:                                  ; preds = %vector.body206
  %cmp.n211 = icmp eq i64 %i.az, %n.vec203
  br i1 %cmp.n211, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, %middle.block210
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit ], [ %i.bb, %middle.block210 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.aw
  br i1 %.not.i.i.i, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !214

bb.e:                                             ; preds = %bb.c
  %i.bg = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader271, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.bh   ; 2 uses
  %i.bj = and i64 %i.bg, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !68
  store <4 x i32> %broadcast.splat, ptr %i.bl, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader271

.lr.ph.i.i.i.i.preheader271:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.014.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader271, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader271 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader271 ]
  store i32 %i.i, ptr %.014.i.i.i.i, align 4, !tbaa !68
  %i.bn = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !216

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.e ], [ %i.bi, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 6 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %.0.lcssa.i.i.i.i139 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.bp = add i64 %i.f, -4
  %i.bq = sub i64 %i.bp, %i.j                     ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bq, 44
  %i.bt = sub i64 %i.j, %.0.lcssa.i.i.i.i139
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond262 = select i1 %min.iters.check141, i1 true, i1 %diff.check
  br i1 %or.cond262, label %.lr.ph.i.i.i.i.i71.preheader270, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i.i.i.i.i71.preheader
  %n.vec143 = and i64 %i.bs, 9223372036854775800  ; 3 uses
  %i.bu = shl i64 %n.vec143, 2                    ; 2 uses
  %i.bv = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next149, %vector.body144 ] ; 2 uses
  %i.bx = shl i64 %index145, 2                    ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bx ; 2 uses
  %next.gep147 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !68
  %wide.load148 = load <4 x i32>, ptr %i.by, align 4, !tbaa !68
  %i.bz = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %wide.load, ptr %next.gep146, align 4, !tbaa !68
  store <4 x i32> %wide.load148, ptr %i.bz, align 4, !tbaa !68
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.ca, label %middle.block150, label %vector.body144, !llvm.loop !217

middle.block150:                                  ; preds = %vector.body144
  %cmp.n151 = icmp eq i64 %i.bs, %n.vec143
  br i1 %cmp.n151, label %.lr.ph.preheader.i.i.i78, label %.lr.ph.i.i.i.i.i71.preheader270

.lr.ph.i.i.i.i.i71.preheader270:                  ; preds = %.lr.ph.i.i.i.i.i71.preheader, %middle.block150
  %.013.i.i.i.i.i72.ph = phi ptr [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bv, %middle.block150 ]
  %.sroa.08.012.i.i.i.i.i73.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bw, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !59
  br label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader270, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i71 ], [ %.013.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader270 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i71 ], [ %.sroa.08.012.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i71.preheader270 ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.08.012.i.i.i.i.i73, align 4, !tbaa !68
  store i32 %i.cc, ptr %.013.i.i.i.i.i72, align 4, !tbaa !68
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 4
  %.not.i.i.i.i.i74 = icmp eq ptr %i.cd, %i.d
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.preheader.i.i.i78, label %.lr.ph.i.i.i.i.i71, !llvm.loop !218

.lr.ph.preheader.i.i.i78:                         ; preds = %.lr.ph.i.i.i.i.i71, %middle.block150
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !59
  %i.cg = add i64 %i.f, -4
  %i.ch = sub i64 %i.cg, %i.j                     ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check155 = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check155, label %.lr.ph.i.i.i80.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.preheader.i.i.i78
  %n.vec157 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec157, 2
  %i.cl = getelementptr i8, ptr %1, i64 %i.ck
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph156
  %index161 = phi i64 [ 0, %vector.ph156 ], [ %index.next163, %vector.body160 ] ; 2 uses
  %i.cm = shl i64 %index161, 2
  %next.gep162 = getelementptr i8, ptr %1, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep162, i64 16
  store <4 x i32> %broadcast.splat159, ptr %next.gep162, align 4, !tbaa !68
  store <4 x i32> %broadcast.splat159, ptr %i.cn, align 4, !tbaa !68
  %index.next163 = add nuw i64 %index161, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next163, %n.vec157
  br i1 %i.co, label %middle.block164, label %vector.body160, !llvm.loop !219

middle.block164:                                  ; preds = %vector.body160
  %cmp.n165 = icmp eq i64 %i.cj, %n.vec157
  br i1 %cmp.n165, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i80.preheader

.lr.ph.i.i.i80.preheader:                         ; preds = %.lr.ph.preheader.i.i.i78, %middle.block164
  %.06.i.i.i81.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i78 ], [ %i.cl, %middle.block164 ]
  br label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %.lr.ph.i.i.i80.preheader, %.lr.ph.i.i.i80
  %.06.i.i.i81 = phi ptr [ %i.cp, %.lr.ph.i.i.i80 ], [ %.06.i.i.i81.ph, %.lr.ph.i.i.i80.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i81, align 4, !tbaa !68
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i81, i64 4 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.cp, %i.d
  br i1 %.not.i.i.i82, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i80, !llvm.loop !220

bb.f:                                             ; preds = %bb.b
  %i.cq = load ptr, ptr %0, align 8, !tbaa !58    ; 7 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 4 uses
  %i.cs = sub i64 %i.f, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2                 ; 4 uses
  %i.cu = sub nsw i64 2305843009213693951, %i.ct
  %i.cv = icmp ult i64 %i.cu, %2
  br i1 %i.cv, label %bb.g, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.f
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %2)
  %i.cw = add nsw i64 %.sroa.speculated.i, %i.ct  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.ct
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 2305843009213693951)
  %i.cz = select i1 %i.cx, i64 2305843009213693951, i64 %i.cy ; 3 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.db = sub i64 %i.da, %i.cr
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i85, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dc = shl nuw nsw i64 %i.cz, 2
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #14
  br label %.lr.ph.preheader.i.i.i.i85

.lr.ph.preheader.i.i.i.i85:                       ; preds = %bb.h, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.de = phi ptr [ %i.dd, %bb.h ], [ null, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db ; 3 uses
  %.pre.i.i.i.i86 = load i32, ptr %3, align 4, !tbaa !68 ; 2 uses
  %min.iters.check214 = icmp ult i64 %2, 8
  br i1 %min.iters.check214, label %.lr.ph.i.i.i.i87.preheader, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.preheader.i.i.i.i85
  %n.vec216 = and i64 %2, -8                      ; 3 uses
  %i.dg = shl i64 %n.vec216, 2
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = and i64 %2, 7
  %broadcast.splatinsert217 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i86, i64 0
  %broadcast.splat218 = shufflevector <4 x i32> %broadcast.splatinsert217, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next222, %vector.body219 ] ; 2 uses
  %i.dj = shl i64 %index220, 2
  %next.gep221 = getelementptr i8, ptr %i.df, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep221, i64 16
  store <4 x i32> %broadcast.splat218, ptr %next.gep221, align 4, !tbaa !68
  store <4 x i32> %broadcast.splat218, ptr %i.dk, align 4, !tbaa !68
  %index.next222 = add nuw i64 %index220, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.dl, label %middle.block223, label %vector.body219, !llvm.loop !221

middle.block223:                                  ; preds = %vector.body219
  %cmp.n224 = icmp eq i64 %2, %n.vec216
  br i1 %cmp.n224, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92, label %.lr.ph.i.i.i.i87.preheader

.lr.ph.i.i.i.i87.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i85, %middle.block223
  %.014.i.i.i.i88.ph = phi ptr [ %i.df, %.lr.ph.preheader.i.i.i.i85 ], [ %i.dh, %middle.block223 ]
  %.01113.i.i.i.i89.ph = phi i64 [ %2, %.lr.ph.preheader.i.i.i.i85 ], [ %i.di, %middle.block223 ]
  br label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %.lr.ph.i.i.i.i87.preheader, %.lr.ph.i.i.i.i87
  %.014.i.i.i.i88 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i87 ], [ %.014.i.i.i.i88.ph, %.lr.ph.i.i.i.i87.preheader ] ; 2 uses
  %.01113.i.i.i.i89 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i87 ], [ %.01113.i.i.i.i89.ph, %.lr.ph.i.i.i.i87.preheader ]
  store i32 %.pre.i.i.i.i86, ptr %.014.i.i.i.i88, align 4, !tbaa !68
  %i.dm = add i64 %.01113.i.i.i.i89, -1           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i88, i64 4
  %.not.i.i.i.i90 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i90, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92, label %.lr.ph.i.i.i.i87, !llvm.loop !222

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92: ; preds = %.lr.ph.i.i.i.i87, %middle.block223
  %.not13.i.i.i.i.i = icmp eq ptr %i.cq, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader

.lr.ph.i.i.i.i.i93.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92
  %i.do = add i64 %i.da, -4
  %i.dp = sub i64 %i.do, %i.cr                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check230 = icmp ult i64 %i.dp, 28
  br i1 %min.iters.check230, label %.lr.ph.i.i.i.i.i93.preheader265, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i.i.i.i.i93.preheader
  %n.vec232 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.ds = shl i64 %n.vec232, 2                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.de, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.cq, i64 %i.ds
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.dv = shl i64 %index234, 2                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.de, i64 %i.dv ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.cq, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <4 x i32>, ptr %next.gep236, align 4, !tbaa !68
  %wide.load238 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !68
  %i.dx = getelementptr i8, ptr %next.gep235, i64 16
  store <4 x i32> %wide.load237, ptr %next.gep235, align 4, !tbaa !68
  store <4 x i32> %wide.load238, ptr %i.dx, align 4, !tbaa !68
  %index.next239 = add nuw i64 %index234, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.dy, label %middle.block240, label %vector.body233, !llvm.loop !223

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.dr, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader265

.lr.ph.i.i.i.i.i93.preheader265:                  ; preds = %.lr.ph.i.i.i.i.i93.preheader, %middle.block240
  %.015.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.dt, %middle.block240 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.du, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %.lr.ph.i.i.i.i.i93.preheader265, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i93 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i93.preheader265 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i93 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i93.preheader265 ] ; 2 uses
  %i.dz = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !68
  store i32 %i.dz, ptr %.015.i.i.i.i.i, align 4, !tbaa !68
  %i.ea = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.ea, %1
  br i1 %.not.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93, !llvm.loop !224

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i93, %middle.block240, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92
  %.0.lcssa.i.i.i.i.i95 = phi ptr [ %i.de, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92 ], [ %i.dt, %middle.block240 ], [ %i.eb, %.lr.ph.i.i.i.i.i93 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i95245 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i95 to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i.i.i.i95, i64 %2 ; 5 uses
  %.not13.i.i.i.i.i96 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ed = add i64 %i.f, -4
  %i.ee = sub i64 %i.ed, %i.da                    ; 2 uses
  %i.ef = lshr i64 %i.ee, 2
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check248 = icmp ult i64 %i.ee, 76
  br i1 %min.iters.check248, label %.lr.ph.i.i.i.i.i97.preheader264, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader
  %i.eh = shl i64 %2, 2
  %i.ei = add i64 %i.eh, %.0.lcssa.i.i.i.i.i95245
  %i.ej = sub i64 %i.da, %i.ei
  %diff.check246 = icmp ugt i64 %i.ej, -32
  br i1 %diff.check246, label %.lr.ph.i.i.i.i.i97.preheader264, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck244
  %n.vec250 = and i64 %i.eg, 9223372036854775800  ; 3 uses
  %i.ek = shl i64 %n.vec250, 2                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.ec, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 %i.ek
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %i.en = shl i64 %index252, 2                    ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.ec, i64 %i.en ; 2 uses
  %next.gep254 = getelementptr i8, ptr %1, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep254, i64 16
  %wide.load255 = load <4 x i32>, ptr %next.gep254, align 4, !tbaa !68
  %wide.load256 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !68
  %i.ep = getelementptr i8, ptr %next.gep253, i64 16
  store <4 x i32> %wide.load255, ptr %next.gep253, align 4, !tbaa !68
  store <4 x i32> %wide.load256, ptr %i.ep, align 4, !tbaa !68
  %index.next257 = add nuw i64 %index252, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.eq, label %middle.block258, label %vector.body251, !llvm.loop !225

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.eg, %n.vec250
  br i1 %cmp.n259, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader264

.lr.ph.i.i.i.i.i97.preheader264:                  ; preds = %vector.memcheck244, %.lr.ph.i.i.i.i.i97.preheader, %middle.block258
  %.015.i.i.i.i.i98.ph = phi ptr [ %i.ec, %vector.memcheck244 ], [ %i.ec, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.el, %middle.block258 ]
  %.01214.i.i.i.i.i99.ph = phi ptr [ %1, %vector.memcheck244 ], [ %1, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.em, %middle.block258 ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader264, %.lr.ph.i.i.i.i.i97
  %.015.i.i.i.i.i98 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i97 ], [ %.015.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader264 ] ; 2 uses
  %.01214.i.i.i.i.i99 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i97 ], [ %.01214.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader264 ] ; 2 uses
  %i.er = load i32, ptr %.01214.i.i.i.i.i99, align 4, !tbaa !68
  store i32 %i.er, ptr %.015.i.i.i.i.i98, align 4, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i99, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i98, i64 4 ; 2 uses
  %.not.i.i.i.i.i100 = icmp eq ptr %i.es, %i.d
  br i1 %.not.i.i.i.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97, !llvm.loop !226

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102: ; preds = %.lr.ph.i.i.i.i.i97, %middle.block258, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i101 = phi ptr [ %i.ec, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.el, %middle.block258 ], [ %i.et, %.lr.ph.i.i.i.i.i97 ]
  %.not.i103 = icmp eq ptr %i.cq, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102
  %i.eu = sub i64 %i.e, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.eu) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, %bb.i
  store ptr %i.de, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i.i.i101, ptr %i.c, align 8, !tbaa !59
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cz
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !69
  br label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit

_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i80, %.lr.ph.i.i.i, %middle.block164, %middle.block210, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapISt5arrayIjLm2EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !87 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #15
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !90
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !90
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S7_EEEES2_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load i64, ptr %1, align 4, !tbaa !28     ; 3 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68
  store i32 %i.f, ptr %i.d, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !105
  %.not.not = icmp eq i64 %i.h, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.i, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !87 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load i64, ptr %i.b, align 4
  %i.l = load i64, ptr %i.j, align 8
  %i.m = icmp ne i64 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.c, !llvm.loop !227

.loopexit:                                        ; preds = %bb.c, %bb.a
end_hunk_0
begin_hunk_1_@llvm.assume
!24 = !{!"p1 _ZTSN5draco10DataBufferE", !20, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !16, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!16, !16, i64 0}
!29 = !{!"_ZTSN5draco8DataTypeE", !16, i64 0}
!30 = !{!"bool", !16, i64 0}
!31 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !16, i64 0}
!32 = !{!17, !17, i64 0}
!33 = !{!"p1 omnipotent char", !20, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 0}
!36 = !{!34, !33, i64 16}
!37 = !{!"_ZTSN5draco20DataBufferDescriptorE", !26, i64 0, !26, i64 8}
!38 = !{!"_ZTSN5draco17GeometryAttributeE", !24, i64 0, !37, i64 8, !16, i64 24, !29, i64 28, !30, i64 32, !26, i64 40, !26, i64 48, !31, i64 56, !17, i64 60}
!39 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !24, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !39, i64 0}
!41 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !42, i64 0}
!44 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !43, i64 0}
!45 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !20, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !48, i64 0}
!50 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !49, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !22, i64 0}
!52 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !53, i64 0}
!55 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !54, i64 0}
!56 = !{!"_ZTSN5draco14PointAttributeE", !38, i64 0, !44, i64 64, !50, i64 72, !17, i64 96, !30, i64 100, !55, i64 104}
!57 = !{!56, !30, i64 100}
!58 = !{!46, !45, i64 0}
!59 = !{!46, !45, i64 8}
!60 = !{!38, !29, i64 28}
!61 = !{!38, !16, i64 24}
!62 = !{!56, !17, i64 96}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{!38, !26, i64 40}
!67 = !{!"_ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !17, i64 0}
!68 = !{!67, !17, i64 0}
!69 = !{!46, !45, i64 16}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"any p2 pointer", !20, i64 0}
!74 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !73, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!76 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !75, i64 0}
!77 = !{!"float", !16, i64 0}
!78 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !77, i64 0, !26, i64 8}
!79 = !{!"_ZTSSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!80 = !{!79, !74, i64 0}
!81 = !{!79, !26, i64 8}
!82 = !{!78, !77, i64 0}
!83 = !{!38, !26, i64 48}
!84 = !{!38, !24, i64 0}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!79, !75, i64 16}
!87 = !{!76, !75, i64 0}
!88 = !{!"_ZTSSt10_HashtableISt5arrayIjLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!89 = !{!88, !74, i64 0}
!90 = !{!88, !26, i64 8}
!91 = !{!88, !75, i64 16}
!92 = !{!"_ZTSSt10_HashtableISt5arrayIjLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!93 = !{!92, !74, i64 0}
!94 = !{!92, !26, i64 8}
!95 = !{!92, !75, i64 16}
!96 = !{!"_ZTSSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!97 = !{!96, !74, i64 0}
!98 = !{!96, !26, i64 8}
!99 = !{!96, !75, i64 16}
!100 = !{!79, !26, i64 24}
!101 = !{!75, !75, i64 0}
!102 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !26, i64 0}
!103 = !{!102, !26, i64 0}
!104 = !{!78, !26, i64 8}
!105 = !{!88, !26, i64 24}
!106 = !{!92, !26, i64 24}
!107 = !{!96, !26, i64 24}
!108 = !{!"_ZTSSt10_HashtableISt5arrayIhLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!109 = !{!108, !74, i64 0}
!110 = !{!108, !26, i64 8}
!111 = !{!108, !75, i64 16}
!112 = !{!"_ZTSSt10_HashtableISt5arrayIhLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!113 = !{!112, !74, i64 0}
!114 = !{!112, !26, i64 8}
!115 = !{!112, !75, i64 16}
!116 = !{!"_ZTSSt10_HashtableISt5arrayIhLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!117 = !{!116, !74, i64 0}
!118 = !{!116, !26, i64 8}
!119 = !{!116, !75, i64 16}
!120 = !{!"_ZTSSt10_HashtableISt5arrayIhLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!121 = !{!120, !74, i64 0}
!122 = !{!120, !26, i64 8}
!123 = !{!120, !75, i64 16}
!124 = !{!108, !26, i64 24}
!125 = !{!112, !26, i64 24}
!126 = !{!116, !26, i64 24}
!127 = !{!120, !26, i64 24}
!128 = !{!"_ZTSSt10_HashtableISt5arrayItLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!129 = !{!128, !74, i64 0}
!130 = !{!128, !26, i64 8}
!131 = !{!128, !75, i64 16}
!132 = !{!"_ZTSSt10_HashtableISt5arrayItLm2EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!133 = !{!132, !74, i64 0}
!134 = !{!132, !26, i64 8}
!135 = !{!132, !75, i64 16}
!136 = !{!"_ZTSSt10_HashtableISt5arrayItLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!137 = !{!136, !74, i64 0}
!138 = !{!136, !26, i64 8}
!139 = !{!136, !75, i64 16}
!140 = !{!"_ZTSSt10_HashtableISt5arrayItLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !74, i64 0, !26, i64 8, !76, i64 16, !26, i64 24, !78, i64 32, !75, i64 48}
!141 = !{!140, !74, i64 0}
!142 = !{!140, !26, i64 8}
!143 = !{!140, !75, i64 16}
!144 = !{!128, !26, i64 24}
!145 = !{!132, !26, i64 24}
!146 = !{!136, !26, i64 24}
!147 = !{!140, !26, i64 24}
!148 = !{!29, !29, i64 0}
!149 = !{!30, !30, i64 0}
!150 = !{!31, !31, i64 0}
!151 = !{i64 0, i64 8, !25, i64 8, i64 8, !27, i64 16, i64 8, !27, i64 24, i64 1, !28, i64 28, i64 4, !148, i64 32, i64 1, !149, i64 40, i64 8, !27, i64 48, i64 8, !27, i64 56, i64 4, !150, i64 60, i64 4, !32}
!152 = !{!21, !21, i64 0}
!153 = !{!"_ZTSN5draco22AttributeTransformTypeE", !16, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !34, i64 0}
!155 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !154, i64 0}
!156 = !{!"_ZTSSt6vectorIhSaIhEE", !155, i64 0}
!157 = !{!"_ZTSN5draco10DataBufferE", !156, i64 0, !37, i64 24}
!158 = !{!"_ZTSN5draco22AttributeTransformDataE", !153, i64 0, !157, i64 8}
!159 = !{!158, !153, i64 0}
!160 = !{!34, !33, i64 8}
!161 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!162 = !{i64 0, i64 8, !27, i64 8, i64 8, !27}
!163 = distinct !{!163, !70, !71, !72}
!164 = distinct !{!164, !70, !71}
!165 = distinct !{!165, !70, !71, !72}
!166 = distinct !{!166, !70, !71}
!167 = distinct !{!167, !70, !71, !72}
!168 = distinct !{!168, !70, !71}
!169 = distinct !{!169, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!170 = distinct !{!170, !169, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!171 = distinct !{!171, !70}
!172 = distinct !{!172, !70, !71, !72}
!173 = distinct !{!173, !85}
!174 = distinct !{!174, !70, !71}
!175 = distinct !{!175, !70}
!176 = distinct !{!176, !85}
!177 = !{!170}
!178 = distinct !{!178, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!179 = distinct !{!179, !178, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!180 = distinct !{!180, !70}
!181 = distinct !{!181, !70, !71, !72}
!182 = distinct !{!182, !85}
!183 = distinct !{!183, !70, !71}
!184 = distinct !{!184, !70}
!185 = distinct !{!185, !85}
!186 = !{!179}
!187 = distinct !{!187, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!188 = distinct !{!188, !187, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!189 = distinct !{!189, !70}
!190 = distinct !{!190, !70, !71, !72}
!191 = distinct !{!191, !85}
!192 = distinct !{!192, !70, !71}
!193 = distinct !{!193, !70}
!194 = distinct !{!194, !85}
!195 = !{!188}
!196 = distinct !{!196, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!197 = distinct !{!197, !196, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!198 = distinct !{!198, !70}
!199 = distinct !{!199, !70, !71, !72}
!200 = distinct !{!200, !85}
!201 = distinct !{!201, !70, !71}
!202 = distinct !{!202, !70}
!203 = distinct !{!203, !85}
!204 = !{!197}
!205 = distinct !{!205, !70}
!206 = distinct !{!206, !70}
!207 = distinct !{!207, !70}
!208 = !{!79, !75, i64 48}
!209 = distinct !{!209, !70, !71, !72}
!210 = distinct !{!210, !70, !72, !71}
!211 = distinct !{!211, !70, !71, !72}
!212 = distinct !{!212, !70, !71}
!213 = distinct !{!213, !70, !71, !72}
!214 = distinct !{!214, !70, !72, !71}
!215 = distinct !{!215, !70, !71, !72}
!216 = distinct !{!216, !70, !72, !71}
!217 = distinct !{!217, !70, !71, !72}
!218 = distinct !{!218, !70, !71}
!219 = distinct !{!219, !70, !71, !72}
!220 = distinct !{!220, !70, !72, !71}
!221 = distinct !{!221, !70, !71, !72}
!222 = distinct !{!222, !70, !72, !71}
!223 = distinct !{!223, !70, !71, !72}
!224 = distinct !{!224, !70, !72, !71}
!225 = distinct !{!225, !70, !71, !72}
!226 = distinct !{!226, !70, !71}
!227 = distinct !{!227, !70}
!228 = distinct !{!228, !70}
!229 = distinct !{!229, !70}
!230 = !{!88, !75, i64 48}
!231 = distinct !{!231, !70}
!232 = distinct !{!232, !70}
!233 = !{i64 0, i64 12, !28}
!234 = distinct !{!234, !70}
!235 = !{!92, !75, i64 48}
!236 = distinct !{!236, !70}
!237 = distinct !{!237, !70}
!238 = !{i64 0, i64 16, !28}
!239 = distinct !{!239, !70}
!240 = !{!96, !75, i64 48}
!241 = distinct !{!241, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!242 = distinct !{!242, !241, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!243 = distinct !{!243, !70}
!244 = distinct !{!244, !70, !71, !72}
!245 = distinct !{!245, !85}
!246 = distinct !{!246, !70, !71}
!247 = distinct !{!247, !70}
!248 = distinct !{!248, !85}
!249 = !{!242}
!250 = distinct !{!250, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!251 = distinct !{!251, !250, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!252 = distinct !{!252, !70}
!253 = distinct !{!253, !70, !71, !72}
!254 = distinct !{!254, !85}
!255 = distinct !{!255, !70, !71}
!256 = distinct !{!256, !70}
!257 = distinct !{!257, !85}
!258 = !{!251}
!259 = distinct !{!259, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!260 = distinct !{!260, !259, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!261 = distinct !{!261, !70}
!262 = distinct !{!262, !70, !71, !72}
!263 = distinct !{!263, !85}
!264 = distinct !{!264, !70, !71}
!265 = distinct !{!265, !70}
!266 = distinct !{!266, !85}
!267 = !{!260}
!268 = distinct !{!268, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!269 = distinct !{!269, !268, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!270 = distinct !{!270, !70}
!271 = distinct !{!271, !70, !71, !72}
!272 = distinct !{!272, !85}
!273 = distinct !{!273, !70, !71}
!274 = distinct !{!274, !70}
!275 = distinct !{!275, !85}
!276 = !{!269}
!277 = distinct !{!277, !70}
!278 = distinct !{!278, !70}
!279 = distinct !{!279, !70}
!280 = !{!108, !75, i64 48}
!281 = distinct !{!281, !70}
!282 = distinct !{!282, !70}
!283 = distinct !{!283, !70}
!284 = !{!112, !75, i64 48}
!285 = distinct !{!285, !70}
!286 = distinct !{!286, !70}
!287 = !{i64 0, i64 3, !28}
!288 = distinct !{!288, !70}
!289 = !{!116, !75, i64 48}
!290 = distinct !{!290, !70}
!291 = distinct !{!291, !70}
!292 = distinct !{!292, !70}
!293 = !{!120, !75, i64 48}
!294 = distinct !{!294, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!295 = distinct !{!295, !294, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!296 = distinct !{!296, !70}
!297 = distinct !{!297, !70, !71, !72}
!298 = distinct !{!298, !85}
!299 = distinct !{!299, !70, !71}
!300 = distinct !{!300, !70}
!301 = distinct !{!301, !85}
!302 = !{!295}
!303 = distinct !{!303, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!304 = distinct !{!304, !303, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!305 = distinct !{!305, !70}
!306 = distinct !{!306, !70, !71, !72}
!307 = distinct !{!307, !85}
!308 = distinct !{!308, !70, !71}
!309 = distinct !{!309, !70}
!310 = distinct !{!310, !85}
!311 = !{!304}
!312 = distinct !{!312, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!313 = distinct !{!313, !312, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!314 = distinct !{!314, !70}
!315 = distinct !{!315, !70, !71, !72}
!316 = distinct !{!316, !85}
!317 = distinct !{!317, !70, !71}
!318 = distinct !{!318, !70}
!319 = distinct !{!319, !85}
!320 = !{!313}
!321 = distinct !{!321, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!322 = distinct !{!322, !321, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!323 = distinct !{!323, !70}
!324 = distinct !{!324, !70, !71, !72}
!325 = distinct !{!325, !85}
!326 = distinct !{!326, !70, !71}
!327 = distinct !{!327, !70}
!328 = distinct !{!328, !85}
!329 = !{!322}
!330 = distinct !{!330, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!331 = distinct !{!331, !330, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!332 = distinct !{!332, !70}
!333 = distinct !{!333, !70, !71, !72}
!334 = distinct !{!334, !85}
!335 = distinct !{!335, !70, !71}
!336 = distinct !{!336, !70}
!337 = distinct !{!337, !85}
!338 = !{!331}
!339 = distinct !{!339, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!340 = distinct !{!340, !339, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!341 = distinct !{!341, !70}
!342 = distinct !{!342, !70, !71, !72}
!343 = distinct !{!343, !85}
!344 = distinct !{!344, !70, !71}
!345 = distinct !{!345, !70}
!346 = distinct !{!346, !85}
!347 = !{!340}
!348 = distinct !{!348, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!349 = distinct !{!349, !348, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!350 = distinct !{!350, !70}
!351 = distinct !{!351, !70, !71, !72}
!352 = distinct !{!352, !85}
!353 = distinct !{!353, !70, !71}
!354 = distinct !{!354, !70}
!355 = distinct !{!355, !85}
!356 = !{!349}
!357 = distinct !{!357, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!358 = distinct !{!358, !357, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!359 = distinct !{!359, !70}
!360 = distinct !{!360, !70, !71, !72}
!361 = distinct !{!361, !85}
!362 = distinct !{!362, !70, !71}
!363 = distinct !{!363, !70}
!364 = distinct !{!364, !85}
!365 = !{!358}
!366 = distinct !{!366, !70}
!367 = distinct !{!367, !70}
!368 = distinct !{!368, !70}
!369 = !{!128, !75, i64 48}
!370 = distinct !{!370, !70}
!371 = distinct !{!371, !70}
!372 = distinct !{!372, !70}
!373 = !{!132, !75, i64 48}
!374 = distinct !{!374, !70}
!375 = distinct !{!375, !70}
!376 = !{i64 0, i64 6, !28}
!377 = !{!"short", !16, i64 0}
!378 = !{!377, !377, i64 0}
!379 = distinct !{!379, !70}
!380 = !{!136, !75, i64 48}
!381 = distinct !{!381, !70}
!382 = distinct !{!382, !70}
!383 = distinct !{!383, !70}
!384 = !{!140, !75, i64 48}
!385 = distinct !{!385, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!386 = distinct !{!386, !385, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!387 = distinct !{!387, !70}
!388 = distinct !{!388, !70, !71, !72}
!389 = distinct !{!389, !85}
!390 = distinct !{!390, !70, !71}
!391 = distinct !{!391, !70}
!392 = distinct !{!392, !85}
!393 = !{!386}
!394 = distinct !{!394, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!395 = distinct !{!395, !394, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!396 = distinct !{!396, !70}
!397 = distinct !{!397, !70, !71, !72}
!398 = distinct !{!398, !85}
!399 = distinct !{!399, !70, !71}
!400 = distinct !{!400, !70}
!401 = distinct !{!401, !85}
!402 = !{!395}
!403 = distinct !{!403, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!404 = distinct !{!404, !403, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!405 = distinct !{!405, !70}
!406 = distinct !{!406, !70, !71, !72}
!407 = distinct !{!407, !85}
!408 = distinct !{!408, !70, !71}
!409 = distinct !{!409, !70}
!410 = distinct !{!410, !85}
!411 = !{!404}
!412 = distinct !{!412, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!413 = distinct !{!413, !412, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!414 = distinct !{!414, !70}
!415 = distinct !{!415, !70, !71, !72}
!416 = distinct !{!416, !85}
!417 = distinct !{!417, !70, !71}
!418 = distinct !{!418, !70}
!419 = distinct !{!419, !85}
!420 = !{!413}
!421 = distinct !{!421, i1 false, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_"}
!422 = distinct !{!422, !421, !"_ZNK5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEplERKS2_: argument 0"}
!423 = distinct !{!423, !70}
!424 = distinct !{!424, !70, !71, !72}
end_hunk_1
