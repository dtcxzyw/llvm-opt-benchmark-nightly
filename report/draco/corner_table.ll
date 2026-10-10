Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/corner_table?download=true
inline.NumInlined: 1215
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block195, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ax = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit
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
  store <4 x i32> %broadcast.splat205, ptr %next.gep208, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat205, ptr %i.bd, align 4, !tbaa !54
  %index.next209 = add nuw i64 %index207, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.be, label %middle.block210, label %vector.body206, !llvm.loop !227

middle.block210:                                  ; preds = %vector.body206
  %cmp.n211 = icmp eq i64 %i.az, %n.vec203
  br i1 %cmp.n211, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, %middle.block210
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit ], [ %i.bb, %middle.block210 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.aw
  br i1 %.not.i.i.i, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !228

bb.e:                                             ; preds = %bb.c
  %i.bg = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

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
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat, ptr %i.bl, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader271

.lr.ph.i.i.i.i.preheader271:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.014.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader271, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader271 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader271 ]
  store i32 %i.i, ptr %.014.i.i.i.i, align 4, !tbaa !54
  %i.bn = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !230

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.e ], [ %i.bi, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 6 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
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
  %wide.load = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !54
  %wide.load148 = load <4 x i32>, ptr %i.by, align 4, !tbaa !54
  %i.bz = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %wide.load, ptr %next.gep146, align 4, !tbaa !54
  store <4 x i32> %wide.load148, ptr %i.bz, align 4, !tbaa !54
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.ca, label %middle.block150, label %vector.body144, !llvm.loop !231

middle.block150:                                  ; preds = %vector.body144
  %cmp.n151 = icmp eq i64 %i.bs, %n.vec143
  br i1 %cmp.n151, label %.lr.ph.preheader.i.i.i78, label %.lr.ph.i.i.i.i.i71.preheader270

.lr.ph.i.i.i.i.i71.preheader270:                  ; preds = %.lr.ph.i.i.i.i.i71.preheader, %middle.block150
  %.013.i.i.i.i.i72.ph = phi ptr [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bv, %middle.block150 ]
  %.sroa.08.012.i.i.i.i.i73.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.bw, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !30
  br label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader270, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i71 ], [ %.013.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader270 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i71 ], [ %.sroa.08.012.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i71.preheader270 ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.08.012.i.i.i.i.i73, align 4, !tbaa !54
  store i32 %i.cc, ptr %.013.i.i.i.i.i72, align 4, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 4
  %.not.i.i.i.i.i74 = icmp eq ptr %i.cd, %i.d
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.preheader.i.i.i78, label %.lr.ph.i.i.i.i.i71, !llvm.loop !232

.lr.ph.preheader.i.i.i78:                         ; preds = %.lr.ph.i.i.i.i.i71, %middle.block150
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !30
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
  store <4 x i32> %broadcast.splat159, ptr %next.gep162, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat159, ptr %i.cn, align 4, !tbaa !54
  %index.next163 = add nuw i64 %index161, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next163, %n.vec157
  br i1 %i.co, label %middle.block164, label %vector.body160, !llvm.loop !233

middle.block164:                                  ; preds = %vector.body160
  %cmp.n165 = icmp eq i64 %i.cj, %n.vec157
  br i1 %cmp.n165, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i80.preheader

.lr.ph.i.i.i80.preheader:                         ; preds = %.lr.ph.preheader.i.i.i78, %middle.block164
  %.06.i.i.i81.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i78 ], [ %i.cl, %middle.block164 ]
  br label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %.lr.ph.i.i.i80.preheader, %.lr.ph.i.i.i80
  %.06.i.i.i81 = phi ptr [ %i.cp, %.lr.ph.i.i.i80 ], [ %.06.i.i.i81.ph, %.lr.ph.i.i.i80.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i81, align 4, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i81, i64 4 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.cp, %i.d
  br i1 %.not.i.i.i82, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i80, !llvm.loop !234

bb.f:                                             ; preds = %bb.b
  %i.cq = load ptr, ptr %0, align 8, !tbaa !31    ; 7 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 4 uses
  %i.cs = sub i64 %i.f, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2                 ; 4 uses
  %i.cu = sub nsw i64 2305843009213693951, %i.ct
  %i.cv = icmp ult i64 %i.cu, %2
  br i1 %i.cv, label %bb.g, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.f
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %2)
  %i.cw = add nsw i64 %.sroa.speculated.i, %i.ct  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.ct
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 2305843009213693951)
  %i.cz = select i1 %i.cx, i64 2305843009213693951, i64 %i.cy ; 3 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.db = sub i64 %i.da, %i.cr
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i85, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dc = shl nuw nsw i64 %i.cz, 2
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #14
  br label %.lr.ph.preheader.i.i.i.i85

.lr.ph.preheader.i.i.i.i85:                       ; preds = %bb.h, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.de = phi ptr [ %i.dd, %bb.h ], [ null, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db ; 3 uses
  %.pre.i.i.i.i86 = load i32, ptr %3, align 4, !tbaa !54 ; 2 uses
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
  store <4 x i32> %broadcast.splat218, ptr %next.gep221, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat218, ptr %i.dk, align 4, !tbaa !54
  %index.next222 = add nuw i64 %index220, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.dl, label %middle.block223, label %vector.body219, !llvm.loop !235

middle.block223:                                  ; preds = %vector.body219
  %cmp.n224 = icmp eq i64 %2, %n.vec216
  br i1 %cmp.n224, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92, label %.lr.ph.i.i.i.i87.preheader

.lr.ph.i.i.i.i87.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i85, %middle.block223
  %.014.i.i.i.i88.ph = phi ptr [ %i.df, %.lr.ph.preheader.i.i.i.i85 ], [ %i.dh, %middle.block223 ]
  %.01113.i.i.i.i89.ph = phi i64 [ %2, %.lr.ph.preheader.i.i.i.i85 ], [ %i.di, %middle.block223 ]
  br label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %.lr.ph.i.i.i.i87.preheader, %.lr.ph.i.i.i.i87
  %.014.i.i.i.i88 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i87 ], [ %.014.i.i.i.i88.ph, %.lr.ph.i.i.i.i87.preheader ] ; 2 uses
  %.01113.i.i.i.i89 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i87 ], [ %.01113.i.i.i.i89.ph, %.lr.ph.i.i.i.i87.preheader ]
  store i32 %.pre.i.i.i.i86, ptr %.014.i.i.i.i88, align 4, !tbaa !54
  %i.dm = add i64 %.01113.i.i.i.i89, -1           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i88, i64 4
  %.not.i.i.i.i90 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i90, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92, label %.lr.ph.i.i.i.i87, !llvm.loop !236

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92: ; preds = %.lr.ph.i.i.i.i87, %middle.block223
  %.not13.i.i.i.i.i = icmp eq ptr %i.cq, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader

.lr.ph.i.i.i.i.i93.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92
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
  %wide.load237 = load <4 x i32>, ptr %next.gep236, align 4, !tbaa !54
  %wide.load238 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !54
  %i.dx = getelementptr i8, ptr %next.gep235, i64 16
  store <4 x i32> %wide.load237, ptr %next.gep235, align 4, !tbaa !54
  store <4 x i32> %wide.load238, ptr %i.dx, align 4, !tbaa !54
  %index.next239 = add nuw i64 %index234, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.dy, label %middle.block240, label %vector.body233, !llvm.loop !237

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.dr, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader265

.lr.ph.i.i.i.i.i93.preheader265:                  ; preds = %.lr.ph.i.i.i.i.i93.preheader, %middle.block240
  %.015.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.dt, %middle.block240 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.du, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %.lr.ph.i.i.i.i.i93.preheader265, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i93 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i93.preheader265 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i93 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i93.preheader265 ] ; 2 uses
  %i.dz = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !54
  store i32 %i.dz, ptr %.015.i.i.i.i.i, align 4, !tbaa !54
  %i.ea = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.ea, %1
  br i1 %.not.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i93, !llvm.loop !238

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i93, %middle.block240, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92
  %.0.lcssa.i.i.i.i.i95 = phi ptr [ %i.de, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit92 ], [ %i.dt, %middle.block240 ], [ %i.eb, %.lr.ph.i.i.i.i.i93 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i95245 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i95 to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i.i.i.i95, i64 %2 ; 5 uses
  %.not13.i.i.i.i.i96 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
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
  %wide.load255 = load <4 x i32>, ptr %next.gep254, align 4, !tbaa !54
  %wide.load256 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !54
  %i.ep = getelementptr i8, ptr %next.gep253, i64 16
  store <4 x i32> %wide.load255, ptr %next.gep253, align 4, !tbaa !54
  store <4 x i32> %wide.load256, ptr %i.ep, align 4, !tbaa !54
  %index.next257 = add nuw i64 %index252, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.eq, label %middle.block258, label %vector.body251, !llvm.loop !239

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.eg, %n.vec250
  br i1 %cmp.n259, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader264

.lr.ph.i.i.i.i.i97.preheader264:                  ; preds = %vector.memcheck244, %.lr.ph.i.i.i.i.i97.preheader, %middle.block258
  %.015.i.i.i.i.i98.ph = phi ptr [ %i.ec, %vector.memcheck244 ], [ %i.ec, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.el, %middle.block258 ]
  %.01214.i.i.i.i.i99.ph = phi ptr [ %1, %vector.memcheck244 ], [ %1, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.em, %middle.block258 ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader264, %.lr.ph.i.i.i.i.i97
  %.015.i.i.i.i.i98 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i97 ], [ %.015.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader264 ] ; 2 uses
  %.01214.i.i.i.i.i99 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i97 ], [ %.01214.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader264 ] ; 2 uses
  %i.er = load i32, ptr %.01214.i.i.i.i.i99, align 4, !tbaa !54
  store i32 %i.er, ptr %.015.i.i.i.i.i98, align 4, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i99, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i98, i64 4 ; 2 uses
  %.not.i.i.i.i.i100 = icmp eq ptr %i.es, %i.d
  br i1 %.not.i.i.i.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97, !llvm.loop !240

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102: ; preds = %.lr.ph.i.i.i.i.i97, %middle.block258, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i101 = phi ptr [ %i.ec, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.el, %middle.block258 ], [ %i.et, %.lr.ph.i.i.i.i.i97 ]
  %.not.i103 = icmp eq ptr %i.cq, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102
  %i.eu = sub i64 %i.e, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.eu) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, %bb.i
  store ptr %i.de, ptr %0, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i.i.i.i101, ptr %i.c, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cz
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !66
  br label %_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit

_ZSt4fillIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i80, %.lr.ph.i.i.i, %middle.block164, %middle.block210, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco11CornerTableD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #15
  br label %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit

_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiED2Ev.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit: ; preds = %_ZN5draco12ValenceCacheINS_11CornerTableEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i1, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_ED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i2, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEED2Ev.exit, %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i3, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEENS1_IjNS_21VertexIndex_tag_type_EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEENS1_IjNS_21VertexIndex_tag_type_EEEED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEENS1_IjNS_21VertexIndex_tag_type_EEEED2Ev.exit: ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_ED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !24
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #14 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !24
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.z = add i64 %i.d, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !24
  %wide.load13 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !24
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !24
  store <4 x i32> %wide.load13, ptr %i.ai, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.i.preheader15:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %i.ak = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !24
  store i32 %i.ak, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !242

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.c, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i
  %i.an = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i: ; preds = %bb.e, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !67
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.aq = icmp ult i64 %1, %i.g
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ar
  br i1 %.not.i4, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i, %_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE14_M_fill_assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #14 ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %min.iters.check59 = icmp ult i64 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %n.vec61 = and i64 %1, 2305843009213693944      ; 3 uses
  %i.l = shl nuw nsw i64 %n.vec61, 2
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = and i64 %1, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.o = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat63, ptr %i.p, align 4, !tbaa !24
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.q, label %middle.block68, label %vector.body64, !llvm.loop !243

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %1, %n.vec61
  br i1 %cmp.n69, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %middle.block68
  %.014.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.m, %middle.block68 ]
  %.01113.i.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.n, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01113.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.01113.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.014.i.i.i.i.i.i, align 4, !tbaa !24
  %i.r = add nsw i64 %.01113.i.i.i.i.i.i, -1      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !244

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block68
  %.lcssa = phi ptr [ %i.m, %middle.block68 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !27
  store ptr %i.t, ptr %i.a, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.ab = add i64 %i.x, -4
  %i.ac = sub i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec34 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec34, 2
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.af
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ah = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %broadcast.splat36, ptr %next.gep39, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat36, ptr %i.ai, align 4, !tbaa !24
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %middle.block41, label %vector.body37, !llvm.loop !245

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.ae, %n.vec34
  br i1 %cmp.n42, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!38 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !38, i64 0}
!40 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21CornerIndex_tag_type_EEES3_EE", !39, i64 0}
!41 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS1_IjNS_21CornerIndex_tag_type_EEEEE", !39, i64 0}
!42 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEES3_EE", !35, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !17, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIaSaIaEE", !44, i64 0}
!46 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEaEE", !45, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !13, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIiSaIiEE", !48, i64 0}
!50 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiEE", !49, i64 0}
!51 = !{!"_ZTSN5draco12ValenceCacheINS_11CornerTableEEE", !10, i64 0, !46, i64 8, !50, i64 32}
!52 = !{!"_ZTSN5draco11CornerTableE", !36, i64 0, !40, i64 24, !41, i64 48, !6, i64 72, !6, i64 76, !6, i64 80, !42, i64 88, !51, i64 112}
!53 = !{!"_ZTSN5draco9IndexTypeIjNS_21CornerIndex_tag_type_EEE", !6, i64 0}
!54 = !{!53, !6, i64 0}
!55 = !{!"long", !5, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"p1 long", !9, i64 0}
!60 = !{!"_ZTSSt18_Bit_iterator_base", !59, i64 0, !6, i64 8}
!61 = !{!60, !59, i64 0}
!62 = !{!60, !6, i64 8}
!63 = !{!"_ZTSSt13_Bit_iterator", !60, i64 0}
!64 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !63, i64 0, !63, i64 16, !59, i64 32}
!65 = !{!64, !59, i64 32}
!66 = !{!29, !28, i64 16}
!67 = !{!21, !20, i64 16}
!68 = !{!"bool", !5, i64 0}
!69 = !{!"_ZTSN5draco21VertexCornersIteratorINS_11CornerTableEEE", !10, i64 0, !53, i64 8, !53, i64 12, !68, i64 16}
!70 = !{!69, !10, i64 0}
!71 = !{!69, !68, i64 16}
!72 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!73 = !{!"_ZTSSt10_Head_baseILm0EPN5draco11CornerTableELb0EE", !10, i64 0}
!74 = !{!73, !10, i64 0}
!75 = distinct !{!75, !25}
!76 = !{!"p1 _ZTSSt5arrayIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEELm3EE", !9, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_21VertexIndex_tag_type_EEELm3EESaIS5_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!77, !76, i64 8}
!79 = !{!77, !76, i64 0}
!80 = distinct !{!80, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!81 = distinct !{!81, !80, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!82 = distinct !{!82, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!83 = distinct !{!83, !82, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !108}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!88 = distinct !{!88, !87, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!90 = distinct !{!90, !89, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!91 = distinct !{!91, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!92 = distinct !{!92, !91, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!93 = distinct !{!93, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!94 = distinct !{!94, !93, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!95 = distinct !{!95, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!96 = distinct !{!96, !95, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!97 = distinct !{!97, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!98 = distinct !{!98, !97, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!99 = distinct !{!99, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!100 = distinct !{!100, !99, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!101 = distinct !{!101, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!102 = distinct !{!102, !101, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = !{!83, !81}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = !{!90, !88}
!110 = !{!94, !92}
!111 = !{!98, !96}
!112 = !{!52, !6, i64 76}
!113 = !{!102, !100}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, i1 false, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!116 = distinct !{!116, !115, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!118 = distinct !{!118, !117, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!121 = distinct !{!121, !120, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!122 = distinct !{!122, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!123 = distinct !{!123, !122, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!124 = distinct !{!124, !25, !57, !58}
!125 = distinct !{!125, !25, !57}
!126 = distinct !{!126, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!127 = distinct !{!127, !126, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!129 = distinct !{!129, !128, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25}
!132 = !{!118, !116}
!133 = !{!121}
!134 = !{!123}
!135 = !{!129, !127}
!136 = distinct !{!136, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!137 = distinct !{!137, !136, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!138 = distinct !{!138, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!139 = distinct !{!139, !138, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!140 = distinct !{!140, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!141 = distinct !{!141, !140, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!143 = distinct !{!143, !142, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!144 = distinct !{!144, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!145 = distinct !{!145, !144, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!147 = distinct !{!147, !146, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!148 = distinct !{!148, !25, !57, !58}
!149 = distinct !{!149, !25, !57}
!150 = distinct !{!150, !25, !57, !58}
!151 = distinct !{!151, !25, !57}
!152 = distinct !{!152, i1 false, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!153 = distinct !{!153, !152, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!154 = distinct !{!154, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!155 = distinct !{!155, !154, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!156 = distinct !{!156, !25}
!157 = distinct !{!157, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!158 = distinct !{!158, !157, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!159 = distinct !{!159, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!160 = distinct !{!160, !159, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!161 = distinct !{!161, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!162 = distinct !{!162, !161, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!163 = distinct !{!163, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!164 = distinct !{!164, !163, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!165 = distinct !{!165, !25}
!166 = distinct !{!166, !25}
!167 = distinct !{!167, !25}
!168 = !{!52, !6, i64 72}
!169 = !{!52, !6, i64 80}
!170 = !{!139, !137}
!171 = !{!143, !141}
!172 = !{!147, !145}
!173 = !{!155, !153}
!174 = !{!160, !158}
!175 = !{!164, !162}
!176 = distinct !{!176, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!177 = distinct !{!177, !176, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!178 = distinct !{!178, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!179 = distinct !{!179, !178, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!180 = distinct !{!180, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!181 = distinct !{!181, !180, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!182 = distinct !{!182, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!183 = distinct !{!183, !182, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!184 = distinct !{!184, i1 false, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!185 = distinct !{!185, !184, !"_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!186 = distinct !{!186, i1 false, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!187 = distinct !{!187, !186, !"_ZNK5draco11CornerTable15ConfidentVertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!188 = !{!"_ZTSN5draco9IndexTypeIjNS_19FaceIndex_tag_type_EEE", !6, i64 0}
!189 = !{!188, !6, i64 0}
!190 = !{!179, !177}
!191 = !{!183, !181}
!192 = !{!187, !185}
!193 = distinct !{!193, i1 false, !"_ZNK5draco11CornerTable14LeftMostCornerENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE"}
!194 = distinct !{!194, !193, !"_ZNK5draco11CornerTable14LeftMostCornerENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE: argument 0"}
!195 = distinct !{!195, i1 false, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!196 = distinct !{!196, !195, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!197 = distinct !{!197, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!198 = distinct !{!198, !197, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!199 = distinct !{!199, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!200 = distinct !{!200, !199, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!201 = distinct !{!201, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!202 = distinct !{!202, !201, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!203 = !{!194}
!204 = !{!198, !196}
!205 = !{!202, !200}
!206 = distinct !{!206, i1 false, !"_ZNK5draco11CornerTable14LeftMostCornerENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE"}
!207 = distinct !{!207, !206, !"_ZNK5draco11CornerTable14LeftMostCornerENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE: argument 0"}
!208 = distinct !{!208, i1 false, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!209 = distinct !{!209, !208, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!210 = distinct !{!210, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!211 = distinct !{!211, !210, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!212 = distinct !{!212, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!213 = distinct !{!213, !212, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!214 = distinct !{!214, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!215 = distinct !{!215, !214, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!216 = !{!207}
!217 = !{!211, !209}
!218 = !{!215, !213}
!219 = distinct !{!219, i1 false, !"_ZNK5draco11CornerTable14LeftMostCornerENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE"}
!220 = distinct !{!220, !219, !"_ZNK5draco11CornerTable14LeftMostCornerENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE: argument 0"}
!221 = distinct !{!221, !25}
!222 = !{!220}
!223 = distinct !{!223, !25, !57, !58}
!224 = distinct !{!224, !25, !58, !57}
!225 = distinct !{!225, !25, !57, !58}
!226 = distinct !{!226, !25, !57}
!227 = distinct !{!227, !25, !57, !58}
!228 = distinct !{!228, !25, !58, !57}
!229 = distinct !{!229, !25, !57, !58}
!230 = distinct !{!230, !25, !58, !57}
!231 = distinct !{!231, !25, !57, !58}
!232 = distinct !{!232, !25, !57}
!233 = distinct !{!233, !25, !57, !58}
!234 = distinct !{!234, !25, !58, !57}
!235 = distinct !{!235, !25, !57, !58}
!236 = distinct !{!236, !25, !58, !57}
!237 = distinct !{!237, !25, !57, !58}
!238 = distinct !{!238, !25, !58, !57}
!239 = distinct !{!239, !25, !57, !58}
!240 = distinct !{!240, !25, !57}
!241 = distinct !{!241, !25, !57, !58}
!242 = distinct !{!242, !25, !58, !57}
!243 = distinct !{!243, !25, !57, !58}
!244 = distinct !{!244, !25, !58, !57}
!245 = distinct !{!245, !25, !57, !58}
!246 = distinct !{!246, !25, !58, !57}
!247 = distinct !{!247, !25, !57, !58}
!248 = distinct !{!248, !25, !58, !57}
!249 = distinct !{!249, !25, !57, !58}
!250 = distinct !{!250, !25, !58, !57}
!251 = distinct !{!251, !25, !57, !58}
!252 = distinct !{!252, !25, !58, !57}
!253 = distinct !{!253, !25, !57, !58}
!254 = distinct !{!254, !25, !58, !57}
!255 = distinct !{!255, !25, !57, !58}
!256 = distinct !{!256, !25, !58, !57}
!257 = distinct !{!257, !25, !57, !58}
!258 = distinct !{!258, !25, !58, !57}
!259 = distinct !{!259, !25, !57, !58}
!260 = distinct !{!260, !25, !58, !57}
!261 = distinct !{!261, !25, !57, !58}
!262 = distinct !{!262, !25, !58, !57}
!263 = distinct !{!263, !25, !57, !58}
!264 = distinct !{!264, !25, !58, !57}
!265 = distinct !{!265, !25, !57, !58}
!266 = distinct !{!266, !25, !58, !57}
!267 = distinct !{!267, !25}
!268 = distinct !{!268, !25}
!269 = distinct !{!269, !25}
!270 = distinct !{!270, i1 false, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!271 = distinct !{!271, !270, !"_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!272 = distinct !{!272, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!273 = distinct !{!273, !272, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!274 = distinct !{!274, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!275 = distinct !{!275, !274, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!276 = distinct !{!276, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!277 = distinct !{!277, !276, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!278 = distinct !{!278, i1 false, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!279 = distinct !{!279, !278, !"_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!280 = distinct !{!280, i1 false, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE"}
!281 = distinct !{!281, !280, !"_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE: argument 0"}
!282 = !{i8 0, i8 2}
!283 = !{}
!284 = !{!273, !271}
!285 = !{!277, !275}
!286 = !{!281, !279}
end_hunk_1
