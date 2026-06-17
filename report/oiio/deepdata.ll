inline.NumInlined: 2081
inline.NumDeleted: 1015
begin_hunk_0_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 18 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -8                          ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 2305843009213693951
  %i.p = and i64 %i.o, 2305843009213693951        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check166 = icmp samesign ult i64 %i.p, 3
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader253, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec169 = and i64 %i.q, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec169, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph167
  %index171 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.u = shl i64 %index171, 3                     ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load174 = load <2 x i64>, ptr %next.gep173, align 4
  %wide.load175 = load <2 x i64>, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %next.gep172, i64 16
  store <2 x i64> %wide.load174, ptr %next.gep172, align 4
  store <2 x i64> %wide.load175, ptr %i.w, align 4
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.x, label %middle.block177, label %vector.body170, !llvm.loop !186

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.q, %n.vec169
  br i1 %cmp.n178, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.preheader253

.lr.ph.i.i.i.i.i.preheader253:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block177
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block177 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block177 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader253, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader253 ] ; 2 uses
  %i.y = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 4
  store i64 %i.y, ptr %.013.i.i.i.i.i, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !187

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block177
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !7
  br label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.d
  %i.ab = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %2
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !7
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = sub i64 %i.ad, %i.j                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %1, i64 %i.ae, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.al = load i64, ptr %1, align 4
  store i64 %i.al, ptr %i.ak, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.an, 24
  br i1 %min.iters.check182, label %.lr.ph.i.i.i.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %bb.h
  %n.vec185 = and i64 %i.ap, 4611686018427387900  ; 3 uses
  %i.aq = shl i64 %n.vec185, 3
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %broadcast.splatinsert186 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat187 = shufflevector <2 x i64> %broadcast.splatinsert186, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body188 ] ; 2 uses
  %i.as = shl i64 %index189, 3
  %next.gep190 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %broadcast.splat187, ptr %next.gep190, align 4
  store <2 x i64> %broadcast.splat187, ptr %i.at, align 4
  %index.next191 = add nuw i64 %index189, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.au, label %middle.block192, label %vector.body188, !llvm.loop !188

middle.block192:                                  ; preds = %vector.body188
  %cmp.n193 = icmp eq i64 %i.ap, %n.vec185
  br i1 %cmp.n193, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h, %middle.block192
  %.06.i.i.i.ph = phi ptr [ %1, %bb.h ], [ %i.ar, %middle.block192 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !189

bb.i:                                             ; preds = %bb.c
  %i.aw = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader256, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.d, i64 %i.ax   ; 2 uses
  %i.az = and i64 %i.aw, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader256

.lr.ph.i.i.i.i.preheader256:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader256, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader256 ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader256 ]
  store i64 %i.i, ptr %.09.i.i.i.i, align 4
  %i.bd = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !191

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.i
  %i.bf = phi ptr [ %i.d, %bb.i ], [ %i.ay, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !7
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %4 = sub i64 %i.f, %i.j
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bh = lshr i64 %5, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %5, 56
  %i.bj = sub i64 %i.bg, %i.j
  %diff.check = icmp ult i64 %i.bj, 32
  %or.cond = select i1 %min.iters.check137, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i70.preheader255, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec140 = and i64 %i.bi, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bf, i64 %i.bk
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body141 ] ; 2 uses
  %i.bn = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.bf, i64 %i.bn ; 2 uses
  %next.gep144 = getelementptr i8, ptr %1, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 4
  %wide.load145 = load <2 x i64>, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load, ptr %next.gep143, align 4
  store <2 x i64> %wide.load145, ptr %i.bp, align 4
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.bq, label %middle.block147, label %vector.body141, !llvm.loop !192

middle.block147:                                  ; preds = %vector.body141
  %cmp.n148 = icmp eq i64 %i.bi, %n.vec140
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70.preheader255

.lr.ph.i.i.i.i.i70.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block147
  %.013.i.i.i.i.i71.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bl, %middle.block147 ]
  %.sroa.08.012.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bm, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !7
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader255, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i70 ], [ %.013.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader255 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader255 ] ; 2 uses
  %i.bs = load i64, ptr %.sroa.08.012.i.i.i.i.i72, align 4
  store i64 %i.bs, ptr %.013.i.i.i.i.i71, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 8
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bt, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !193

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block147
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.k
  store ptr %i.bw, ptr %i.c, align 8, !tbaa !7
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -8                             ; 2 uses
  %i.bx = lshr i64 %7, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %7, 24
  br i1 %min.iters.check152, label %.lr.ph.i.i.i77.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75
  %n.vec155 = and i64 %i.by, 4611686018427387900  ; 3 uses
  %i.bz = shl i64 %n.vec155, 3
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %broadcast.splatinsert156 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat157 = shufflevector <2 x i64> %broadcast.splatinsert156, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph153
  %index159 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body158 ] ; 2 uses
  %i.cb = shl i64 %index159, 3
  %next.gep160 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %broadcast.splat157, ptr %next.gep160, align 4
  store <2 x i64> %broadcast.splat157, ptr %i.cc, align 4
  %index.next161 = add nuw i64 %index159, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next161, %n.vec155
  br i1 %i.cd, label %middle.block162, label %vector.body158, !llvm.loop !194

middle.block162:                                  ; preds = %vector.body158
  %cmp.n163 = icmp eq i64 %i.by, %n.vec155
  br i1 %cmp.n163, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77.preheader

.lr.ph.i.i.i77.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, %middle.block162
  %.06.i.i.i78.ph = phi ptr [ %1, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75 ], [ %i.ca, %middle.block162 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ce, %.lr.ph.i.i.i77 ], [ %.06.i.i.i78.ph, %.lr.ph.i.i.i77.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i78, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !195

bb.j:                                             ; preds = %bb.b
  %i.cf = load ptr, ptr %0, align 8, !tbaa !11    ; 7 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 6 uses
  %i.ch = sub i64 %i.f, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3                 ; 4 uses
  %i.cj = sub nsw i64 1152921504606846975, %i.ci
  %i.ck = icmp ult i64 %i.cj, %2
  br i1 %i.ck, label %bb.k, label %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %2)
  %i.cl = add nsw i64 %.sroa.speculated.i, %i.ci  ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ci
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %i.cp = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cq = sub i64 %i.cp, %i.cg
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cr = shl nuw nsw i64 %i.co, 3
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #30
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.ct = phi ptr [ %i.cs, %bb.l ], [ null, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cq  ; 5 uses
  %min.iters.check198 = icmp ult i64 %2, 16
  br i1 %min.iters.check198, label %.lr.ph.i.i.i.i82.preheader, label %vector.memcheck195

vector.memcheck195:                               ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit
  %i.cw = shl i64 %2, 3
  %i.cx = add i64 %i.cw, %i.cp
  %i.cy = sub i64 %i.cx, %i.cg
  %scevgep = getelementptr i8, ptr %i.ct, i64 %i.cy
  %scevgep196 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %bound0 = icmp ult ptr %i.cv, %scevgep196
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i82.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck195
  %n.vec201 = and i64 %2, -4                      ; 3 uses
  %i.cz = shl i64 %n.vec201, 3
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.cz
  %i.db = and i64 %2, 3
  %i.dc = load i64, ptr %3, align 4, !alias.scope !196
  %broadcast.splatinsert205 = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat206 = shufflevector <2 x i64> %broadcast.splatinsert205, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body202 ] ; 2 uses
  %i.dd = shl i64 %index203, 3
  %next.gep204 = getelementptr i8, ptr %i.cv, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep204, i64 16
  store <2 x i64> %broadcast.splat206, ptr %next.gep204, align 4, !alias.scope !199, !noalias !196
  store <2 x i64> %broadcast.splat206, ptr %i.de, align 4, !alias.scope !199, !noalias !196
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.df, label %middle.block208, label %vector.body202, !llvm.loop !201

middle.block208:                                  ; preds = %vector.body202
  %cmp.n209 = icmp eq i64 %2, %n.vec201
  br i1 %cmp.n209, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %vector.memcheck195, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, %middle.block208
  %.09.i.i.i.i83.ph = phi ptr [ %i.cv, %vector.memcheck195 ], [ %i.cv, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.da, %middle.block208 ] ; 2 uses
  %.068.i.i.i.i84.ph = phi i64 [ %2, %vector.memcheck195 ], [ %2, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.db, %middle.block208 ] ; 4 uses
  %i.dg = add i64 %.068.i.i.i.i84.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i84.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %.lr.ph.i.i.i.i82.preheader, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i82.prol ], [ %.09.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.di, %.lr.ph.i.i.i.i82.prol ], [ %.068.i.i.i.i84.ph, %.lr.ph.i.i.i.i82.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %.lr.ph.i.i.i.i82.preheader ]
  %i.dh = load i64, ptr %3, align 4
  store i64 %i.dh, ptr %.09.i.i.i.i83.prol, align 4
  %i.di = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !202

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %.lr.ph.i.i.i.i82.preheader
  %.09.i.i.i.i83.unr = phi ptr [ %.09.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader ], [ %i.dj, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %.068.i.i.i.i84.ph, %.lr.ph.i.i.i.i82.preheader ], [ %i.di, %.lr.ph.i.i.i.i82.prol ]
  %i.dk = icmp ult i64 %i.dg, 7
  br i1 %i.dk, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i84 = phi i64 [ %i.ea, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  %i.dl = load i64, ptr %3, align 4
  store i64 %i.dl, ptr %.09.i.i.i.i83, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 8
  %i.dn = load i64, ptr %3, align 4
  store i64 %i.dn, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 16
  %i.dp = load i64, ptr %3, align 4
  store i64 %i.dp, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  %i.dr = load i64, ptr %3, align 4
  store i64 %i.dr, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 32
  %i.dt = load i64, ptr %3, align 4
  store i64 %i.dt, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 40
  %i.dv = load i64, ptr %3, align 4
  store i64 %i.dv, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %i.dx = load i64, ptr %3, align 4
  store i64 %i.dx, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 56
  %i.dz = load i64, ptr %3, align 4
  store i64 %i.dz, ptr %i.dy, align 4
  %i.ea = add i64 %.068.i.i.i.i84, -8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 64
  %.not.i.i.i.i85.7 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i85.7, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !203

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82, %middle.block208
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.cf, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i89.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %8 = sub i64 %i.cp, %i.cg
  %9 = add i64 %8, -8                             ; 2 uses
  %i.ec = lshr i64 %9, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %9, 56
  %i.ee = sub i64 %i.cu, %i.cg
  %diff.check213 = icmp ult i64 %i.ee, 32
  %or.cond249 = or i1 %min.iters.check215, %diff.check213
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i89.preheader251, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph.i.i.i.i.i89.preheader
  %n.vec218 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec218, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ct, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.cf, i64 %i.ef
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next225, %vector.body219 ] ; 2 uses
  %i.ei = shl i64 %index220, 3                    ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.ct, i64 %i.ei ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.cf, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load223 = load <2 x i64>, ptr %next.gep222, align 4
  %wide.load224 = load <2 x i64>, ptr %i.ej, align 4
  %i.ek = getelementptr i8, ptr %next.gep221, i64 16
  store <2 x i64> %wide.load223, ptr %next.gep221, align 4
  store <2 x i64> %wide.load224, ptr %i.ek, align 4
  %index.next225 = add nuw i64 %index220, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next225, %n.vec218
  br i1 %i.el, label %middle.block226, label %vector.body219, !llvm.loop !204

middle.block226:                                  ; preds = %vector.body219
  %cmp.n227 = icmp eq i64 %i.ed, %n.vec218
  br i1 %cmp.n227, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader251

.lr.ph.i.i.i.i.i89.preheader251:                  ; preds = %.lr.ph.i.i.i.i.i89.preheader, %middle.block226
  %.013.i.i.i.i.i90.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.eg, %middle.block226 ]
  %.sroa.08.012.i.i.i.i.i91.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.eh, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader251, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i89 ], [ %.013.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i89.preheader251 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i89 ], [ %.sroa.08.012.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i89.preheader251 ] ; 2 uses
  %i.em = load i64, ptr %.sroa.08.012.i.i.i.i.i91, align 4
  store i64 %i.em, ptr %.013.i.i.i.i.i90, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.en, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !205

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %middle.block226, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.ct, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ], [ %i.eg, %middle.block226 ], [ %i.eo, %.lr.ph.i.i.i.i.i89 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i93231 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i93 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader

.lr.ph.i.i.i.i.i95.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %10 = sub i64 %i.f, %i.cp
  %11 = add i64 %10, -8                           ; 2 uses
  %i.eq = lshr i64 %11, 3
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check234 = icmp ult i64 %11, 104
  br i1 %min.iters.check234, label %.lr.ph.i.i.i.i.i95.preheader250, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader
  %i.es = shl i64 %2, 3
  %i.et = add i64 %i.es, %.0.lcssa.i.i.i.i.i93231
  %i.eu = sub i64 %i.et, %i.cp
  %diff.check232 = icmp ult i64 %i.eu, 32
  br i1 %diff.check232, label %.lr.ph.i.i.i.i.i95.preheader250, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck230
  %n.vec237 = and i64 %i.er, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec237, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ep, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %1, i64 %i.ev
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %i.ey = shl i64 %index239, 3                    ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.ep, i64 %i.ey ; 2 uses
  %next.gep241 = getelementptr i8, ptr %1, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load242 = load <2 x i64>, ptr %next.gep241, align 4
  %wide.load243 = load <2 x i64>, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %next.gep240, i64 16
  store <2 x i64> %wide.load242, ptr %next.gep240, align 4
  store <2 x i64> %wide.load243, ptr %i.fa, align 4
  %index.next244 = add nuw i64 %index239, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.fb, label %middle.block245, label %vector.body238, !llvm.loop !206

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i64 %i.er, %n.vec237
  br i1 %cmp.n246, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader250

.lr.ph.i.i.i.i.i95.preheader250:                  ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i95.preheader, %middle.block245
  %.013.i.i.i.i.i96.ph = phi ptr [ %i.ep, %vector.memcheck230 ], [ %i.ep, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.ew, %middle.block245 ]
  %.sroa.08.012.i.i.i.i.i97.ph = phi ptr [ %1, %vector.memcheck230 ], [ %1, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.ex, %middle.block245 ]
  br label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader250, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i95 ], [ %.013.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i95.preheader250 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i95 ], [ %.sroa.08.012.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i95.preheader250 ] ; 2 uses
  %i.fc = load i64, ptr %.sroa.08.012.i.i.i.i.i97, align 4
  store i64 %i.fc, ptr %.013.i.i.i.i.i96, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.fd, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !207

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %middle.block245, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.ep, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ew, %middle.block245 ], [ %i.fe, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.cf, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.fh) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, %bb.m
  store ptr %i.ct, ptr %0, align 8, !tbaa !11
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !7
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.co
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !61
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %middle.block162, %middle.block192, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = load ptr, ptr %0, align 8, !tbaa !11     ; 8 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 9223372036854775800
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #30 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.n = and i64 %i.d, 9223372036854775800
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %1, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !7
  store ptr %i.p, ptr %i.e, align 8, !tbaa !61
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = sub i64 %i.s, %i.i                       ; 5 uses
  %.not = icmp ult i64 %i.t, %i.d
  br i1 %.not, label %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp sgt i64 %i.d, 8
  br i1 %i.u, label %bb.g, label %bb.h, !prof !140

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.d, 8
  br i1 %i.v, label %bb.i, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %1, align 4
  store i64 %i.w, ptr %i.g, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !7
  %.not.i16 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i16, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit
  store ptr %i.x, ptr %i.q, align 8, !tbaa !7
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.t ; 5 uses
  %i.z = icmp sgt i64 %i.t, 8
  br i1 %i.z, label %bb.j, label %bb.k, !prof !140

bb.j:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %1, i64 %i.t, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aa = icmp eq i64 %i.t, 8
  br i1 %i.aa, label %bb.l, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.g, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !7   ; 6 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %i.ae = add i64 %i.i, %i.b
  %i.af = add i64 %i.ae, -8
  %i.ag = add i64 %i.s, %i.a
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm:bb.a
  store i8 0, ptr %i.bb, align 8, !tbaa !47
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !211

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bf, ptr %.012.i.i.i, align 8, !tbaa !116, !alias.scope !213, !noalias !216
  %i.bg = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !216, !noalias !213 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !97, !alias.scope !216, !noalias !213 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !218
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.bg, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !213, !noalias !216
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !47, !alias.scope !216, !noalias !213
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !47, !alias.scope !213, !noalias !216
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !97, !alias.scope !216, !noalias !213
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.bo = phi i64 [ %i.bk, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !97, !alias.scope !213, !noalias !216
  store ptr %i.bh, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !216, !noalias !213
  store i64 0, ptr %i.bp, align 8, !tbaa !97, !alias.scope !216, !noalias !213
  store i8 0, ptr %i.bh, align 8, !tbaa !47, !alias.scope !216, !noalias !213
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37, !llvm.loop !219

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.f
  store ptr %i.al, ptr %0, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %1
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bx, ptr %i.h, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.s, ptr %i.d, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !91
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !3
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !220

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !221

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -4                             ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !223

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !91
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !91
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -4                             ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec116, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat118, ptr %i.bj, align 4, !tbaa !3
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !224

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !225

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !39    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec144, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat146, ptr %i.ck, align 4, !tbaa !3
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !226

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !227

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !3
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !3
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !39
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !91
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !82
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.s, ptr %i.d, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !82
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !3
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !228

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !229

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -4                             ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !231

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !82
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !82
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !82
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -4                             ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec116, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat118, ptr %i.bj, align 4, !tbaa !3
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !232

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !233

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !54    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec144, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat146, ptr %i.ck, align 4, !tbaa !3
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !234

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !235

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !3
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !3
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !54
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !82
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !56
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPcS1_EEmRKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPccEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !47      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZSt22__merge_without_bufferIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_:bb.a
  %i.k = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.h, i32 noundef %i.i, i32 noundef %.val36) ; 2 uses
  %i.l = fcmp olt float %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp ogt float %i.j, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit: ; preds = %bb.d
  %i.n = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !255 ; 2 uses
  %i.o = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.h, i32 noundef %i.n, i32 noundef %.val)
  %i.p = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.h, i32 noundef %i.n, i32 noundef %.val36)
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit
  %i.r = load i32, ptr %.tr84, align 4, !tbaa !3
  %i.s = load i32, ptr %.tr7585, align 4, !tbaa !3
  store i32 %i.s, ptr %.tr84, align 4, !tbaa !3
  store i32 %i.r, ptr %.tr7585, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71

bb.e:                                             ; preds = %bb.b
  %i.t = icmp sgt i64 %.tr7787, %.tr7888
  %.sroa.049.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !245 ; 8 uses
  %.sroa.049.sroa.3.0.copyload = load i32, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %.sroa.049.sroa.4.0.copyload = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3 ; 4 uses
  %i.u = ptrtoint ptr %.tr7585 to i64             ; 4 uses
  br i1 %i.t, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.v = sdiv i64 %.tr7787, 2                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %.tr84, i64 %i.v ; 2 uses
  %i.x = sub i64 %i.c, %i.u
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.049.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.aa = sext i32 %.sroa.049.sroa.2.0.copyload to i64 ; 4 uses
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.025.i = phi ptr [ %.tr7585, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.ar, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i ] ; 3 uses
  %.01124.i = phi i64 [ %i.y, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.aq, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i ] ; 3 uses
  %i.ab = lshr i64 %.01124.i, 1                   ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.025.i, i64 %i.ab ; 3 uses
  %.val.i = load i32, ptr %i.ac, align 4, !tbaa !3 ; 2 uses
  %.val13.i = load i32, ptr %i.w, align 4, !tbaa !3 ; 2 uses
  %i.ad = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val.i) ; 2 uses
  %i.ae = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val13.i) ; 2 uses
  %i.af = fcmp olt float %i.ad, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i, label %bb.f

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = xor i64 %i.ab, -1
  %i.ai = add nsw i64 %.01124.i, %i.ah
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

bb.f:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.aj = fcmp ogt float %i.ad, %i.ae
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ak = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val.i)
  %i.al = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val13.i)
  %i.am = fcmp olt float %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i
  %i.an = xor i64 %i.ab, -1
  %i.ao = add nsw i64 %.01124.i, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i, %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i
  %i.aq = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i ], [ %i.ao, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ar = phi ptr [ %.025.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i ], [ %i.ag, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i ], [ %i.ap, %bb.g ], [ %.025.i, %bb.f ] ; 3 uses
  %i.as = icmp sgt i64 %i.aq, 0
  br i1 %i.as, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !256

_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i
  %.pre = ptrtoint ptr %i.ar to i64
  br label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.u, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.ar, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr7585, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.at = sub i64 %.pre-phi, %i.u
  %i.au = ashr exact i64 %i.at, 2
  br label %tailrecurse

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40: ; preds = %bb.e
  %i.av = sdiv i64 %.tr7888, 2                    ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %.tr7585, i64 %i.av ; 2 uses
  %i.ax = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.ay = sub i64 %i.u, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42, label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.bb = sext i32 %.sroa.0.sroa.2.0.copyload to i64 ; 4 uses
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42
  %.024.i = phi ptr [ %.tr84, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42 ], [ %i.bs, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i ] ; 3 uses
  %.01123.i = phi i64 [ %i.az, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42 ], [ %i.br, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.bc = lshr i64 %.01123.i, 1                   ; 5 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.024.i, i64 %i.bc ; 3 uses
  %.val.i46 = load i32, ptr %i.aw, align 4, !tbaa !3 ; 2 uses
  %.val13.i47 = load i32, ptr %i.bd, align 4, !tbaa !3 ; 2 uses
  %i.be = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val.i46) ; 2 uses
  %i.bf = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val13.i47) ; 2 uses
  %i.bg = fcmp olt float %i.be, %i.bf
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43
  %i.bh = fcmp ogt float %i.be, %i.bf
  br i1 %i.bh, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bj = xor i64 %i.bc, -1
  %i.bk = add nsw i64 %.01123.i, %i.bj
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i: ; preds = %bb.h
  %i.bl = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val.i46)
  %i.bm = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val13.i47)
  %i.bn = fcmp olt float %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bp = xor i64 %i.bc, -1
  %i.bq = add nsw i64 %.01123.i, %i.bp
  br i1 %i.bn, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43
  %i.br = phi i64 [ %i.bq, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i ], [ %i.bk, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i ], [ %i.bc, %bb.i ], [ %i.bc, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.bs = phi ptr [ %i.bo, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i ], [ %i.bi, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i ], [ %.024.i, %bb.i ], [ %.024.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 3 uses
  %i.bt = icmp sgt i64 %i.br, 0
  br i1 %i.bt, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !257

_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i
  %.pre93 = ptrtoint ptr %i.bs to i64
  br label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40
  %.pre-phi94 = phi i64 [ %.pre93, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ax, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40 ]
  %.0.lcssa.i41 = phi ptr [ %i.bs, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr84, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40 ]
  %i.bu = sub i64 %.pre-phi94, %i.ax
  %i.bv = ashr exact i64 %i.bu, 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit
  %.069 = phi ptr [ %i.w, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %.0.lcssa.i41, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.068 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %i.aw, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.033 = phi i64 [ %i.au, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %i.av, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.v, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %i.bv, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.bw = tail call noundef ptr @_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %.069, ptr noundef %.tr7585, ptr noundef %.068) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr84, ptr noundef %.069, ptr noundef %i.bw, i64 noundef %.0, i64 noundef %.033, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.bx = sub nsw i64 %.tr7787, %.0               ; 2 uses
  %i.by = sub nsw i64 %.tr7888, %.033             ; 2 uses
  %i.bz = icmp eq i64 %i.bx, 0
  %i.ca = icmp eq i64 %i.by, 0
  %or.cond = or i1 %i.bz, %i.ca
  br i1 %or.cond, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71, label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71: ; preds = %tailrecurse, %bb.a, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %i.g, %i.d
  %4 = add i64 %3, -4                             ; 2 uses
  %i.l = lshr i64 %4, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check175 = icmp ult i64 %4, 60
  br i1 %min.iters.check175, label %.lr.ph.i.preheader192, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -4
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -4
  %i.q = add i64 %i.p, 4                          ; 2 uses
  %scevgep169 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.q
  %bound0171 = icmp ult ptr %0, %scevgep170
  %bound1172 = icmp ult ptr %1, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.i.preheader192, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck168
  %n.vec178 = and i64 %i.m, 9223372036854775800   ; 3 uses
  %i.r = shl i64 %n.vec178, 2                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next187, %vector.body179 ] ; 2 uses
  %i.u = shl i64 %index180, 2                     ; 2 uses
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep182 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep182, i64 16 ; 2 uses
  %wide.load183 = load <4 x i32>, ptr %next.gep182, align 4, !tbaa !3, !alias.scope !258, !noalias !261
  %wide.load184 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3, !alias.scope !258, !noalias !261
  %i.w = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load185 = load <4 x i32>, ptr %next.gep181, align 4, !tbaa !3, !alias.scope !261
  %wide.load186 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3, !alias.scope !261
  store <4 x i32> %wide.load185, ptr %next.gep182, align 4, !tbaa !3, !alias.scope !258, !noalias !261
  store <4 x i32> %wide.load186, ptr %i.v, align 4, !tbaa !3, !alias.scope !258, !noalias !261
  store <4 x i32> %wide.load183, ptr %next.gep181, align 4, !tbaa !3, !alias.scope !261
  store <4 x i32> %wide.load184, ptr %i.w, align 4, !tbaa !3, !alias.scope !261
  %index.next187 = add nuw i64 %index180, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.x, label %middle.block188, label %vector.body179, !llvm.loop !263

middle.block188:                                  ; preds = %vector.body179
  %cmp.n189 = icmp eq i64 %i.m, %n.vec178
  br i1 %cmp.n189, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader192

.lr.ph.i.preheader192:                            ; preds = %vector.memcheck168, %.lr.ph.i.preheader, %middle.block188
  %.010.i.ph = phi ptr [ %1, %vector.memcheck168 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block188 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck168 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block188 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader192, %.lr.ph.i
  %.010.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader192 ] ; 3 uses
  %.079.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader192 ] ; 3 uses
  %i.y = load i32, ptr %.079.i, align 4, !tbaa !3
  %i.z = load i32, ptr %.010.i, align 4, !tbaa !3
  store i32 %i.z, ptr %.079.i, align 4, !tbaa !3
  store i32 %i.y, ptr %.010.i, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !264

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ae = sub nsw i64 %.086, %.082                ; 10 uses
  %i.af = icmp slt i64 %.082, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.082, 1
  br i1 %i.ag, label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.ah = load i32, ptr %.058, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %.idx97 = shl nsw i64 %.086, 2                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.058, ptr nonnull align 4 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !3
  br label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [4 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph110.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.an = shl i64 %.086, 2
  %i.ao = sub i64 %.086, %.082
  %i.ap = shl i64 %i.ao, 2
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ap
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.an
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 4 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.058, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  %wide.load139 = load <4 x i32>, ptr %i.au, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268
  %wide.load141 = load <4 x i32>, ptr %i.av, align 4, !tbaa !3, !alias.scope !268
  store <4 x i32> %wide.load140, ptr %next.gep138, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  store <4 x i32> %wide.load141, ptr %i.au, align 4, !tbaa !3, !alias.scope !265, !noalias !268
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268
  store <4 x i32> %wide.load139, ptr %i.av, align 4, !tbaa !3, !alias.scope !268
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader193

.lr.ph110.preheader193:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph110.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.086, %.082
  %xtraiter201 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader193, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bc, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader193 ]
  %.055107.prol = phi ptr [ %i.bb, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader193 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.ba, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader193 ] ; 3 uses
  %prol.iter203 = phi i64 [ %prol.iter203.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader193 ]
  %i.ay = load i32, ptr %.159106.prol, align 4, !tbaa !3
  %i.az = load i32, ptr %.055107.prol, align 4, !tbaa !3
  store i32 %i.az, ptr %.159106.prol, align 4, !tbaa !3
  store i32 %i.ay, ptr %.055107.prol, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 4 ; 2 uses
  %i.bc = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !271

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader193
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader193 ], [ %i.ba, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader193 ], [ %i.bc, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader193 ], [ %i.bb, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader193 ], [ %i.ba, %.lr.ph110.prol ]
  %i.bd = sub i64 %.054108.ph, %.086
  %i.be = add i64 %i.bd, %.082
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bv, %.lr.ph110 ]
  %i.bg = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bg, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bx, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.bw, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bv, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bh = load i32, ptr %.159106, align 4, !tbaa !3
  %i.bi = load i32, ptr %.055107, align 4, !tbaa !3
  store i32 %i.bi, ptr %.159106, align 4, !tbaa !3
  store i32 %i.bh, ptr %.055107, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.159106, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.055107, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !3
end_hunk_2
