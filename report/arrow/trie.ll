inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs:bb.a

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check168, %vec.epilog.iter.check170, %vec.epilog.middle.block181
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check168 ], [ %i.ai, %vec.epilog.iter.check170 ], [ %i.an, %vec.epilog.middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i, align 2, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !143

bb.k:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %2, %i.l
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.as = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.au = shl i64 %2, 1
  %i.av = add i64 %i.au, -2
  %i.aw = sub i64 %i.av, %i.k                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = add nuw i64 %i.ax, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aw, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.aw, 30
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ay, 12
  %n.vec = and i64 %i.ay, -16                     ; 4 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.d, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat, ptr %i.bc, align 2, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.ay, -4                   ; 3 uses
  %i.be = shl i64 %n.vec114, 1
  %i.bf = getelementptr i8, ptr %i.d, i64 %i.be
  %broadcast.splatinsert115 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i16> %broadcast.splatinsert115, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index117, 1
  %next.gep118 = getelementptr i8, ptr %i.d, i64 %i.bg
  store <4 x i16> %broadcast.splat116, ptr %next.gep118, align 2, !tbaa !28
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ay, %n.vec114
  br i1 %cmp.n120, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i.i.i.i.i, align 2, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !146

_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.at, %middle.block ], [ %i.at, %vec.epilog.middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !63
  %i.bj = icmp sgt i64 %i.k, 2
  br i1 %i.bj, label %bb.l, label %bb.m, !prof !137

bb.l:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %.0.i.i.i.i.i, ptr align 2 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bk = icmp eq i64 %i.k, 2
  br i1 %i.bk, label %bb.n, label %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69

bb.n:                                             ; preds = %bb.m
  %i.bl = load i16, ptr %1, align 2, !tbaa !28
  store i16 %i.bl, ptr %.0.i.i.i.i.i, align 2, !tbaa !28
  br label %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.n, %bb.m, %bb.l
  %i.bm = phi ptr [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.m ], [ %.pre, %bb.l ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.k
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !63
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %iter.check137

iter.check137:                                    ; preds = %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69
  %i.bo = add i64 %i.f, -2
  %i.bp = sub i64 %i.bo, %i.j                     ; 3 uses
  %i.bq = lshr i64 %i.bp, 1
  %i.br = add nuw i64 %i.bq, 1                    ; 5 uses
  %min.iters.check122 = icmp ult i64 %i.bp, 6
  br i1 %min.iters.check122, label %.lr.ph.i.i.i71.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check137
  %min.iters.check124 = icmp ult i64 %i.bp, 30
  br i1 %min.iters.check124, label %vec.epilog.ph141, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %i.br, 12
  %n.vec127 = and i64 %i.br, -16                  ; 4 uses
  %i.bs = shl i64 %n.vec127, 1
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %broadcast.splatinsert128 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat129 = shufflevector <8 x i16> %broadcast.splatinsert128, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.bu = shl i64 %index131, 1
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep132, i64 16
  store <8 x i16> %broadcast.splat129, ptr %next.gep132, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat129, ptr %i.bv, align 2, !tbaa !28
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.bw = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.bw, label %middle.block134, label %vector.body130, !llvm.loop !147

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.br, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i.i.i71.preheader, label %vec.epilog.ph141, !prof !141

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec127, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.br, -4                   ; 3 uses
  %i.bx = shl i64 %n.vec143, 1
  %i.by = getelementptr i8, ptr %1, i64 %i.bx
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph141
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.bz = shl i64 %index147, 1
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.bz
  store <4 x i16> %broadcast.splat145, ptr %next.gep148, align 2, !tbaa !28
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.ca, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !148

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.br, %n.vec143
  br i1 %cmp.n151, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block150
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check137 ], [ %i.bt, %vec.epilog.iter.check139 ], [ %i.by, %vec.epilog.middle.block150 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.cb, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i72, align 2, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 2 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.cb, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !149

bb.o:                                             ; preds = %bb.b
  %i.cc = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ce = sub i64 %i.f, %i.cd
  %i.cf = ashr exact i64 %i.ce, 1                 ; 4 uses
  %i.cg = sub nsw i64 4611686018427387903, %i.cf
  %i.ch = icmp ult i64 %i.cg, %2
  br i1 %i.ch, label %bb.p, label %iter.check199

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #18
  unreachable

iter.check199:                                    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %2)
  %4 = add i64 %.sroa.speculated.i, %i.cf         ; 2 uses
  %5 = icmp ult i64 %4, %i.cf
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 4611686018427387903)
  %7 = select i1 %5, i64 4611686018427387903, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.cd                          ; 4 uses
  %10 = shl nuw nsw i64 %7, 1
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #17 ; 5 uses
  %i.ci = getelementptr inbounds i8, ptr %11, i64 %9 ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 1       ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i.i.i.i.i75
  %i.ck = load i16, ptr %3, align 2, !tbaa !28    ; 3 uses
  %i.cl = add nsw i64 %.idx.i.i.i.i.i75, -2       ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 1
  %i.cn = add nuw i64 %i.cm, 1                    ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.cl, 6
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check199
  %min.iters.check186 = icmp ult i64 %i.cl, 30
  br i1 %min.iters.check186, label %vec.epilog.ph203, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %n.mod.vf188 = and i64 %i.cn, 12
  %n.vec189 = and i64 %i.cn, -16                  ; 4 uses
  %i.co = shl i64 %n.vec189, 1
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.co
  %broadcast.splatinsert190 = insertelement <8 x i16> poison, i16 %i.ck, i64 0
  %broadcast.splat191 = shufflevector <8 x i16> %broadcast.splatinsert190, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.cq = shl i64 %index193, 1
  %next.gep194 = getelementptr i8, ptr %i.ci, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep194, i64 16
  store <8 x i16> %broadcast.splat191, ptr %next.gep194, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat191, ptr %i.cr, align 2, !tbaa !28
  %index.next195 = add nuw i64 %index193, 16      ; 2 uses
  %i.cs = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.cs, label %middle.block196, label %vector.body192, !llvm.loop !150

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.cn, %n.vec189
  br i1 %cmp.n197, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %min.epilog.iters.check202 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph203, !prof !141

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec189, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec205 = and i64 %i.cn, -4                   ; 3 uses
  %i.ct = shl i64 %n.vec205, 1
  %i.cu = getelementptr i8, ptr %i.ci, i64 %i.ct
  %broadcast.splatinsert206 = insertelement <4 x i16> poison, i16 %i.ck, i64 0
  %broadcast.splat207 = shufflevector <4 x i16> %broadcast.splatinsert206, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph203
  %index209 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 2 uses
  %i.cv = shl i64 %index209, 1
  %next.gep210 = getelementptr i8, ptr %i.ci, i64 %i.cv
  store <4 x i16> %broadcast.splat207, ptr %next.gep210, align 2, !tbaa !28
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.cw, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !151

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  %cmp.n213 = icmp eq i64 %i.cn, %n.vec205
  br i1 %cmp.n213, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block212
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.ci, %iter.check199 ], [ %i.cp, %vec.epilog.iter.check201 ], [ %i.cu, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i16 %i.ck, ptr %.06.i.i.i.i.i.i.i77, align 2, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cx, %i.cj
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !152

_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block212, %middle.block196
  %i.cy = icmp sgt i64 %9, 2
  br i1 %i.cy, label %bb.q, label %bb.r, !prof !137

bb.q:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %11, ptr align 2 %i.cc, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cz = icmp eq i64 %9, 2
  br i1 %i.cz, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.da = load i16, ptr %i.cc, align 2, !tbaa !28
  store i16 %i.da, ptr %11, align 2, !tbaa !28
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit: ; preds = %bb.s, %bb.r, %bb.q
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %2 ; 3 uses
  %i.dc = sub i64 %i.f, %8                        ; 4 uses
  %i.dd = icmp sgt i64 %i.dc, 2
  br i1 %i.dd, label %bb.t, label %bb.u, !prof !137

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.db, ptr align 2 %1, i64 %i.dc, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit
  %i.de = icmp eq i64 %i.dc, 2
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.df = load i16, ptr %1, align 2, !tbaa !28
  store i16 %i.df, ptr %i.db, align 2, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  %.not.i82 = icmp eq ptr %i.cc, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = sub i64 %i.e, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.dh) #16
  br label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit

_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit: ; preds = %bb.w, %bb.x
  store ptr %11, ptr %0, align 8, !tbaa !46
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !63
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %7
  store ptr %i.di, ptr %i.a, align 8, !tbaa !62
  br label %_ZSt4fillIPssEvT_S1_RKT0_.exit

_ZSt4fillIPssEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block134, %vec.epilog.middle.block150, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(46) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !153
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !153
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !noalias !153, !nonnull !166, !align !167
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %2) #15, !noalias !153
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !153 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !153
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !153
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA20_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !168
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !168
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !noalias !168, !nonnull !166, !align !167
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %2) #15, !noalias !168
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !168 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !168
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !168
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(53) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !171
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !171
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !noalias !171, !nonnull !166, !align !167
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(53) %2) #15, !noalias !171
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(53) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !171 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
