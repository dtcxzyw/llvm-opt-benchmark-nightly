inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_get_decoded_tile_size:bb.a
  %.04659 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.k ] ; 2 uses
  %.04858 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.k ]
  %i.m = getelementptr inbounds nuw i8, ptr %.04460, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !113  ; 2 uses
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.n, 7
  %.not = icmp ne i32 %i.p, 0
  %i.q = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.o, %i.q       ; 2 uses
  %i.r = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %i.r, i32 4, i32 %spec.select ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04361, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %.04361, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !96
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [192 x i8], ptr %i.t, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -192
  br i1 %.not52, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.l, align 8, !tbaa !155
  %.not53 = icmp eq i32 %i.z, 0
  br i1 %.not53, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !156
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !157
  %i.ae = sub i32 %i.ab, %i.ad
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !100
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !97
  %i.ai = sub nsw i32 %i.ag, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ -180, %bb.e ], [ -4, %bb.d ]
  %.sink73 = phi i64 [ -188, %bb.e ], [ -12, %bb.d ]
  %.041 = phi i32 [ %i.ai, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 %.sink
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 %.sink73
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %i.an = sub i32 %i.ak, %i.am                    ; 2 uses
  %.not54 = icmp eq i32 %i.ak, %i.am
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.041, i32 %i.an)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = mul i32 %i.an, %.041                    ; 2 uses
  %.not55 = icmp eq i32 %spec.store.select, 0
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %mul56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select, i32 %i.ao)
  %mul.ov57 = extractvalue { i32, i1 } %mul56, 1
  br i1 %mul.ov57, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = mul i32 %i.ao, %spec.store.select       ; 2 uses
  %i.aq = xor i32 %.04659, -1
  %i.ar = icmp ugt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add i32 %i.ap, %.04659                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04460, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.04361, i64 112
  %i.av = add nuw i32 %.04858, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %i.d
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !158

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.g ], [ %i.as, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_tcd_encode_tile(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x [10 x [3 x i32]]], align 16 ; 6 uses
  %i.b = alloca [100 x double], align 16          ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !159
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.cj

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store i32 %1, ptr %i.g, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = zext i32 %1 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [5696 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !161
  %.not = icmp eq ptr %5, null                    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95
  %.not121 = icmp eq i32 %i.u, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 5600
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162
  %i.ab = getelementptr inbounds nuw [608 x i8], ptr %i.aa, i64 %i.l ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 812
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 944
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 420
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 8 uses
  %.063119 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.d ]
  %i.ai = getelementptr inbounds nuw [192 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !103 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !102
  %i.aq = mul i32 %i.an, %i.ap
  %i.ar = add i32 %i.aq, %.063119                 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.t, align 4, !tbaa !95
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !166

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.bb = zext i32 %i.ar to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.063.lcssa = phi i64 [ 0, %bb.c ], [ %i.bb, %._crit_edge.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !167
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !168
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %.063.lcssa, %i.be
  %i.bj = mul i64 %i.bi, %i.bh
  %i.bk = tail call ptr @opj_calloc(i64 noundef %i.bj, i64 noundef 32) #15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !162
  %i.bn = getelementptr inbounds nuw [608 x i8], ptr %i.bm, i64 %i.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 552
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !169
  %.not68.not = icmp eq ptr %i.bk, null
  br i1 %.not68.not, label %opj_tcd_mct_encode.exit.thread95, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.val75.pre = load ptr, ptr %i.n, align 8, !tbaa !161
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge._crit_edge, %bb.b
  %.val75 = phi ptr [ %.val75.pre, %._crit_edge._crit_edge ], [ %i.m, %bb.b ] ; 3 uses
  %i.bp = getelementptr i8, ptr %0, i64 24        ; 8 uses
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !18 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val75, i64 5600
  %.val75.val = load ptr, ptr %i.bq, align 8, !tbaa !63 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq i32 %i.bs, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 10 uses
  br i1 %.not.i, label %opj_tcd_dc_level_shift_encode.exit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.e, %.loopexit.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %bb.e ] ; 2 uses
  %i.bt = phi i32 [ %i.en, %.loopexit.i ], [ %i.bs, %bb.e ] ; 4 uses
  %.03110.i = phi ptr [ %i.eo, %.loopexit.i ], [ %.val75.val, %bb.e ] ; 4 uses
  %.0329.i = phi ptr [ %i.ep, %.loopexit.i ], [ %.pre, %bb.e ] ; 6 uses
  %.0338.i = phi i32 [ %i.eq, %.loopexit.i ], [ 0, %bb.e ]
  %i.bu = mul nuw nsw i64 %indvar, 1080
  %i.bv = getelementptr i8, ptr %.val75.val, i64 %i.bu
  %scevgep195 = getelementptr i8, ptr %i.bv, i64 1080
  %i.bw = getelementptr inbounds nuw i8, ptr %.0329.i, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0329.i, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !92
  %i.ca = load i32, ptr %.0329.i, align 8, !tbaa !89
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0329.i, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !93
  %i.cf = getelementptr inbounds nuw i8, ptr %.0329.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !91
  %i.ch = sub i32 %i.ce, %i.cg
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %i.cc                ; 11 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.03110.i, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !112
  %i.cm = icmp eq i32 %i.cl, 1
  %.not14.i = icmp eq i64 %i.cj, 0                ; 2 uses
  br i1 %i.cm, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph12.i
  br i1 %.not14.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader1.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.03110.i, i64 1076
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !173 ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i
  %n.vec201 = and i64 %i.cj, -8                   ; 4 uses
  %i.cp = shl i64 %n.vec201, 2
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cp
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph200
  %index205 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body204 ] ; 2 uses
  %i.cr = shl i64 %index205, 2
  %next.gep206 = getelementptr i8, ptr %i.bx, i64 %i.cr ; 4 uses
  %i.cs = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207.a = load <4 x i32>, ptr %next.gep206, align 4, !tbaa !3
  %wide.load208 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !3
  %i.ct = sub nsw <4 x i32> %wide.load207.a, %broadcast.splat203
  %i.cu = sub nsw <4 x i32> %wide.load208, %broadcast.splat203
  %i.cv = sitofp <4 x i32> %i.ct to <4 x float>
  %i.cw = sitofp <4 x i32> %i.cu to <4 x float>
  %i.cx = getelementptr i8, ptr %next.gep206, i64 16
  store <4 x float> %i.cv, ptr %next.gep206, align 4, !tbaa !174
  store <4 x float> %i.cw, ptr %i.cx, align 4, !tbaa !174
  %index.next209 = add nuw i64 %index205, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next209, %n.vec201
  br i1 %i.cy, label %middle.block210, label %vector.body204, !llvm.loop !175

middle.block210:                                  ; preds = %vector.body204
  %cmp.n211 = icmp eq i64 %i.cj, %n.vec201
  br i1 %cmp.n211, label %.loopexit.i, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.lr.ph.i, %middle.block210
  %.14.i.ph = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.cq, %middle.block210 ]
  %.1293.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec201, %middle.block210 ]
  br label %scalar.ph198

.preheader.i:                                     ; preds = %.lr.ph12.i
  br i1 %.not14.i, label %.loopexit.i, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.03110.i, i64 1076 ; 7 uses
  %min.iters.check = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph7.i
  %i.da = shl nsw i64 %i.ci, 2
  %i.db = mul i64 %i.da, %i.cc
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.db
  %bound0 = icmp ult ptr %i.bx, %scevgep195
  %bound1 = icmp ult ptr %i.cz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, -8                      ; 4 uses
  %i.dc = shl i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %i.bx, i64 %i.dc
  %i.de = load i32, ptr %i.cz, align 4, !tbaa !173, !alias.scope !178
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.df ; 3 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !181, !noalias !178
  %wide.load196 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !3, !alias.scope !181, !noalias !178
  %i.dh = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.di = sub nsw <4 x i32> %wide.load196, %broadcast.splat
  store <4 x i32> %i.dh, ptr %next.gep, align 4, !tbaa !3, !alias.scope !181, !noalias !178
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !3, !alias.scope !181, !noalias !178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph7.i, %middle.block
  %.06.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph7.i ], [ %i.dd, %middle.block ] ; 2 uses
  %.0285.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.06.i.prol = phi ptr [ %i.dn, %scalar.ph.prol ], [ %.06.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0285.i.prol = phi i64 [ %i.do, %scalar.ph.prol ], [ %.0285.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dk = load i32, ptr %i.cz, align 4, !tbaa !173
  %i.dl = load i32, ptr %.06.i.prol, align 4, !tbaa !3
  %i.dm = sub nsw i32 %i.dl, %i.dk
  store i32 %i.dm, ptr %.06.i.prol, align 4, !tbaa !3
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 4 ; 2 uses
  %i.do = add nuw i64 %.0285.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !184

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.06.i.unr = phi ptr [ %.06.i.ph, %scalar.ph.preheader ], [ %i.dn, %scalar.ph.prol ]
  %.0285.i.unr = phi i64 [ %.0285.i.ph, %scalar.ph.preheader ], [ %i.do, %scalar.ph.prol ]
  %i.dp = sub i64 %.0285.i.ph, %i.cj
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %.loopexit.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.06.i = phi ptr [ %i.eg, %scalar.ph ], [ %.06.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.0285.i = phi i64 [ %i.eh, %scalar.ph ], [ %.0285.i.unr, %scalar.ph.prol.loopexit ]
  %i.dr = load i32, ptr %i.cz, align 4, !tbaa !173
  %i.ds = load i32, ptr %.06.i, align 4, !tbaa !3
  %i.dt = sub nsw i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %.06.i, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.cz, align 4, !tbaa !173
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dx = sub nsw i32 %i.dw, %i.dv
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.cz, align 4, !tbaa !173
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.eb = sub nsw i32 %i.ea, %i.dz
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !3
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.cz, align 4, !tbaa !173
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ef = sub nsw i32 %i.ee, %i.ed
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.eh = add nuw i64 %.0285.i, 4                 ; 2 uses
  %exitcond16.not.i.3 = icmp eq i64 %i.eh, %i.cj
  br i1 %exitcond16.not.i.3, label %.loopexit.loopexit.i, label %scalar.ph, !llvm.loop !186

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %scalar.ph198
  %.14.i = phi ptr [ %i.el, %scalar.ph198 ], [ %.14.i.ph, %scalar.ph198.preheader ] ; 3 uses
  %.1293.i = phi i64 [ %i.em, %scalar.ph198 ], [ %.1293.i.ph, %scalar.ph198.preheader ]
  %i.ei = load i32, ptr %.14.i, align 4, !tbaa !3
  %i.ej = sub nsw i32 %i.ei, %i.co
  %i.ek = sitofp i32 %i.ej to float
  store float %i.ek, ptr %.14.i, align 4, !tbaa !174
  %i.el = getelementptr inbounds nuw i8, ptr %.14.i, i64 4
  %i.em = add nuw i64 %.1293.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %i.cj
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph198, !llvm.loop !187

.loopexit.loopexit.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre.i = load i32, ptr %i.br, align 8, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %scalar.ph198, %middle.block210, %.loopexit.loopexit.i, %.preheader.i, %.preheader1.i
  %i.en = phi i32 [ %i.bt, %.preheader.i ], [ %.pre.i, %.loopexit.loopexit.i ], [ %i.bt, %.preheader1.i ], [ %i.bt, %middle.block210 ], [ %i.bt, %scalar.ph198 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.03110.i, i64 1080
  %i.ep = getelementptr inbounds nuw i8, ptr %.0329.i, i64 112
  %i.eq = add nuw i32 %.0338.i, 1                 ; 2 uses
  %i.er = icmp ult i32 %i.eq, %i.en
  %indvar.next = add i64 %indvar, 1
  br i1 %i.er, label %.lr.ph12.i, label %opj_tcd_dc_level_shift_encode.exit.loopexit, !llvm.loop !188

opj_tcd_dc_level_shift_encode.exit.loopexit:      ; preds = %.loopexit.i
  %i.es = zext i32 %i.en to i64
  %i.et = shl nuw nsw i64 %i.es, 3
  br label %opj_tcd_dc_level_shift_encode.exit

opj_tcd_dc_level_shift_encode.exit:               ; preds = %bb.e, %opj_tcd_dc_level_shift_encode.exit.loopexit
  %i.eu = phi i64 [ %i.et, %opj_tcd_dc_level_shift_encode.exit.loopexit ], [ 0, %bb.e ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !92
  %i.ex = load i32, ptr %.pre, align 8, !tbaa !89
  %i.ey = sub nsw i32 %i.ew, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !93
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !91
  %i.fe = sub nsw i32 %i.fb, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.ff, %i.ez                ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !189
  switch i32 %i.fi, label %bb.h [
    i32 0, label %opj_tcd_mct_encode.exit.thread
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %opj_tcd_dc_level_shift_encode.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %.val75, i64 5648
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !190
  %.not40.i = icmp eq ptr %i.fk, null
  br i1 %.not40.i, label %opj_tcd_mct_encode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fl = tail call ptr @opj_malloc(i64 noundef %i.eu) #15 ; 8 uses
  %.not41.i = icmp eq ptr %i.fl, null
  br i1 %.not41.i, label %opj_tcd_mct_encode.exit.thread95, label %.preheader.i76

.preheader.i76:                                   ; preds = %bb.g
  %i.fm = load i32, ptr %i.br, align 8, !tbaa !30 ; 4 uses
  %.not.i77 = icmp eq i32 %i.fm, 0
  br i1 %.not.i77, label %opj_tcd_mct_encode.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i76
  %wide.trip.count.i = zext i32 %i.fm to i64      ; 2 uses
  %xtraiter253 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fn = icmp ult i32 %i.fm, 4
  br i1 %i.fn, label %.lr.ph.i78.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i78 ] ; 5 uses
  %.03543.i = phi ptr [ %.pre, %.lr.ph.preheader.i.new ], [ %i.gd, %.lr.ph.i78 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i78 ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.03543.i, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !53
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !191
  %i.fr = getelementptr inbounds nuw i8, ptr %.03543.i, i64 160
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fs, ptr %i.fu, align 8, !tbaa !191
  %i.fv = getelementptr inbounds nuw i8, ptr %.03543.i, i64 272
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !53
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !191
  %i.fz = getelementptr inbounds nuw i8, ptr %.03543.i, i64 384
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !53
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !191
  %i.gd = getelementptr inbounds nuw i8, ptr %.03543.i, i64 448 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_tcd_mct_encode.exit.loopexit.unr-lcssa, label %.lr.ph.i78, !llvm.loop !192

bb.h:                                             ; preds = %opj_tcd_dc_level_shift_encode.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %.val75.val, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !112
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !53 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.pre, i64 160
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !53 ; 2 uses
end_hunk_0
begin_hunk_1_@opj_tcd_decode_tile:bb.a
  %i.sz = icmp ult i32 %i.sw, 4
  br i1 %i.sz, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter408 = and i64 %wide.trip.count168.i, 4294967292
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %indvars.iv165.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %indvars.iv.next166.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %.0119160.us.i = phi ptr [ %i.nj, %.lr.ph.split.us.i.preheader.new ], [ %i.tp, %.lr.ph.split.us.i ] ; 5 uses
  %niter409 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter409.next.3, %.lr.ph.split.us.i ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.0119160.us.i, i64 80
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !54
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv165.i
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !191
  %i.td = getelementptr inbounds nuw i8, ptr %.0119160.us.i, i64 192
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !54
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv165.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store ptr %i.te, ptr %i.tg, align 8, !tbaa !191
  %i.th = getelementptr inbounds nuw i8, ptr %.0119160.us.i, i64 304
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !54
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv165.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store ptr %i.ti, ptr %i.tk, align 8, !tbaa !191
  %i.tl = getelementptr inbounds nuw i8, ptr %.0119160.us.i, i64 416
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !54
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv165.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  store ptr %i.tm, ptr %i.to, align 8, !tbaa !191
  %i.tp = getelementptr inbounds nuw i8, ptr %.0119160.us.i, i64 448 ; 2 uses
  %indvars.iv.next166.i.3 = add nuw nsw i64 %indvars.iv165.i, 4 ; 2 uses
  %niter409.next.3 = add i64 %niter409, 4         ; 2 uses
  %niter409.ncmp.3 = icmp eq i64 %niter409.next.3, %unroll_iter408
  br i1 %niter409.ncmp.3, label %._crit_edge.i220.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !261

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i219.3, %.lr.ph.split.i ] ; 5 uses
  %.0119160.i = phi ptr [ %i.nj, %.lr.ph.split.i.preheader.new ], [ %i.uf, %.lr.ph.split.i ] ; 5 uses
  %niter403 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter403.next.3, %.lr.ph.split.i ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.0119160.i, i64 48
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !53
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218
  store ptr %i.tr, ptr %i.ts, align 8, !tbaa !191
  %i.tt = getelementptr inbounds nuw i8, ptr %.0119160.i, i64 160
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !53
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store ptr %i.tu, ptr %i.tw, align 8, !tbaa !191
  %i.tx = getelementptr inbounds nuw i8, ptr %.0119160.i, i64 272
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !53
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store ptr %i.ty, ptr %i.ua, align 8, !tbaa !191
  %i.ub = getelementptr inbounds nuw i8, ptr %.0119160.i, i64 384
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !53
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  store ptr %i.uc, ptr %i.ue, align 8, !tbaa !191
  %i.uf = getelementptr inbounds nuw i8, ptr %.0119160.i, i64 448 ; 2 uses
  %indvars.iv.next.i219.3 = add nuw nsw i64 %indvars.iv.i218, 4 ; 2 uses
  %niter403.next.3 = add i64 %niter403, 4         ; 2 uses
  %niter403.ncmp.3 = icmp eq i64 %niter403.next.3, %unroll_iter402
  br i1 %niter403.ncmp.3, label %._crit_edge.i220.loopexit390.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !261

._crit_edge.i220.loopexit.unr-lcssa:              ; preds = %.lr.ph.split.us.i
  %lcmp.mod406.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod406.not, label %._crit_edge.i220, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next166.i.3, %._crit_edge.i220.loopexit.unr-lcssa ]
  %.0119160.us.i.epil.init = phi ptr [ %i.nj, %.lr.ph.split.us.i.preheader ], [ %i.tp, %._crit_edge.i220.loopexit.unr-lcssa ]
  %lcmp.mod407 = icmp ne i64 %xtraiter404, 0
  call void @llvm.assume(i1 %lcmp.mod407)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv165.i.epil = phi i64 [ %indvars.iv.next166.i.epil, %.lr.ph.split.us.i.epil ], [ %indvars.iv165.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %.0119160.us.i.epil = phi ptr [ %i.uj, %.lr.ph.split.us.i.epil ], [ %.0119160.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter405 = phi i64 [ %epil.iter405.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0119160.us.i.epil, i64 80
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !54
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv165.i.epil
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !191
  %i.uj = getelementptr inbounds nuw i8, ptr %.0119160.us.i.epil, i64 112
  %indvars.iv.next166.i.epil = add nuw nsw i64 %indvars.iv165.i.epil, 1
  %epil.iter405.next = add i64 %epil.iter405, 1   ; 2 uses
  %epil.iter405.cmp.not = icmp eq i64 %epil.iter405.next, %xtraiter404
  br i1 %epil.iter405.cmp.not, label %._crit_edge.i220, label %.lr.ph.split.us.i.epil, !llvm.loop !262

._crit_edge.i220.loopexit390.unr-lcssa:           ; preds = %.lr.ph.split.i
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %._crit_edge.i220, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.i220.loopexit390.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i218.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i219.3, %._crit_edge.i220.loopexit390.unr-lcssa ]
  %.0119160.i.epil.init = phi ptr [ %i.nj, %.lr.ph.split.i.preheader ], [ %i.uf, %._crit_edge.i220.loopexit390.unr-lcssa ]
  %lcmp.mod401 = icmp ne i64 %xtraiter398, 0
  call void @llvm.assume(i1 %lcmp.mod401)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.next.i219.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i218.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.0119160.i.epil = phi ptr [ %i.un, %.lr.ph.split.i.epil ], [ %.0119160.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter399 = phi i64 [ %epil.iter399.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.0119160.i.epil, i64 48
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !53
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218.epil
  store ptr %i.ul, ptr %i.um, align 8, !tbaa !191
  %i.un = getelementptr inbounds nuw i8, ptr %.0119160.i.epil, i64 112
  %indvars.iv.next.i219.epil = add nuw nsw i64 %indvars.iv.i218.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %._crit_edge.i220, label %.lr.ph.split.i.epil, !llvm.loop !263

._crit_edge.i220:                                 ; preds = %._crit_edge.i220.loopexit390.unr-lcssa, %.lr.ph.split.i.epil, %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %.preheader.i
  %i.uo = load ptr, ptr %i.sr, align 8, !tbaa !260
  %i.up = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !70
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !194
  %i.uu = call i32 @opj_mct_decode_custom(ptr noundef %i.uo, i64 noundef %.0118.ph.i, ptr noundef nonnull %i.sv, i32 noundef %i.sw, i32 noundef %i.ut) #15
  %.not149.not.i = icmp eq i32 %i.uu, 0
  call void @opj_free(ptr noundef nonnull %i.sv) #15
  br i1 %.not149.not.i, label %.critedge, label %opj_tcd_mct_decode.exit

bb.bo:                                            ; preds = %bb.bl
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ng, i64 5600
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !63
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 20
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !112
  %i.uz = icmp eq i32 %i.uy, 1
  br i1 %i.uz, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not134.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.va = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !53
  %i.vc = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !53
  %i.ve = getelementptr inbounds nuw i8, ptr %i.nj, i64 272
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !53
  call void @opj_mct_decode(ptr noundef %i.vb, ptr noundef %i.vd, ptr noundef %i.vf, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.br:                                            ; preds = %bb.bp
  %i.vg = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !54
  %i.vi = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !54
  %i.vk = getelementptr inbounds nuw i8, ptr %i.nj, i64 304
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !54
  call void @opj_mct_decode(ptr noundef %i.vh, ptr noundef %i.vj, ptr noundef %i.vl, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bs:                                            ; preds = %bb.bo
  br i1 %.not134.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vm = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !53
  %i.vo = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !53
  %i.vq = getelementptr inbounds nuw i8, ptr %i.nj, i64 272
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !53
  call void @opj_mct_decode_real(ptr noundef %i.vn, ptr noundef %i.vp, ptr noundef %i.vr, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bu:                                            ; preds = %bb.bs
  %i.vs = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !54
  %i.vu = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !54
  %i.vw = getelementptr inbounds nuw i8, ptr %i.nj, i64 304
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !54
  call void @opj_mct_decode_real(ptr noundef %i.vt, ptr noundef %i.vv, ptr noundef %i.vx, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bv:                                            ; preds = %bb.bh, %bb.az
  %i.vy = phi i32 [ %i.rb, %bb.bh ], [ %i.oj, %bb.az ]
  %i.vz = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.vy) #15 ; 0 uses
  br label %opj_tcd_mct_decode.exit

opj_tcd_mct_decode.exit:                          ; preds = %._crit_edge.i220, %bb.bq, %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bm, %bb.ax, %opj_tcd_dwt_decode.exit
  %i.wa = load ptr, ptr %i.iw, align 8, !tbaa !7
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !18 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !30
  %.not116.i = icmp eq i32 %i.wd, 0
  br i1 %.not116.i, label %.critedge, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %opj_tcd_mct_decode.exit
  %i.we = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !70
  %i.wh = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 5600
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !63 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !25
  %i.wm = load ptr, ptr %i.p, align 8, !tbaa !56  ; 2 uses
  %.not.i223 = icmp eq ptr %i.wm, null
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.i, %.lr.ph.i222
  %indvars.iv.i224 = phi i64 [ 0, %.lr.ph.i222 ], [ %indvars.iv.next.i228, %.loopexit.i ] ; 3 uses
  %.084112.i = phi ptr [ %i.wg, %.lr.ph.i222 ], [ %i.aau, %.loopexit.i ] ; 4 uses
  %.085111.i = phi ptr [ %i.wj, %.lr.ph.i222 ], [ %i.aav, %.loopexit.i ] ; 3 uses
  %.086110.i = phi ptr [ %i.wl, %.lr.ph.i222 ], [ %i.aaw, %.loopexit.i ] ; 5 uses
  %i.wn = mul nuw nsw i64 %indvars.iv.i224, 1080
  %i.wo = getelementptr i8, ptr %i.wj, i64 %i.wn
  %scevgep381 = getelementptr i8, ptr %i.wo, i64 1080
  br i1 %.not.i223, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.i224
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !3
  %.not89.i = icmp eq i32 %i.wq, 0
  br i1 %.not89.i, label %.loopexit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.wr = getelementptr inbounds nuw i8, ptr %.086110.i, i64 32
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !34 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.084112.i, i64 36
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !86
  %i.wv = zext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [192 x i8], ptr %i.ws, i64 %i.wv ; 4 uses
  %i.wx = load i32, ptr %i.o, align 8, !tbaa !155
  %.not90.i = icmp eq i32 %i.wx, 0
  br i1 %.not90.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 184
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 176
  %i.xa = load <2 x i32>, ptr %i.wy, align 8, !tbaa !3
  %i.xb = load <2 x i32>, ptr %i.wz, align 8, !tbaa !3
  %i.xc = sub <2 x i32> %i.xa, %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %.086110.i, i64 80
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.xf = load <2 x i32>, ptr %i.xe, align 8, !tbaa !3
  %i.xg = load <2 x i32>, ptr %i.ww, align 8, !tbaa !3
  %i.xh = sub nsw <2 x i32> %i.xf, %i.xg          ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.086110.i, i64 24
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !96
  %i.xk = add i32 %i.xj, -1
  %i.xl = zext i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw [192 x i8], ptr %i.ws, i64 %i.xl ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !100
  %i.xp = load i32, ptr %i.xm, align 8, !tbaa !97
  %i.xq = extractelement <2 x i32> %i.xh, i64 0
  %i.xr = add i32 %i.xq, %i.xp
  %i.xs = sub i32 %i.xo, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.086110.i, i64 48
  %i.xu = zext i32 %i.xs to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.077.in.i = phi ptr [ %i.xt, %bb.ca ], [ %i.xd, %bb.bz ]
  %.074.i = phi i64 [ %i.xu, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.xv = phi <2 x i32> [ %i.xh, %bb.ca ], [ %i.xc, %bb.bz ] ; 5 uses
  %.077.i = load ptr, ptr %.077.in.i, align 8, !tbaa !264 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.084112.i, i64 32
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !194
  %.not91.i = icmp eq i32 %i.xx, 0
  %i.xy = getelementptr inbounds nuw i8, ptr %.084112.i, i64 24
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !113 ; 2 uses
  br i1 %.not91.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ya = add i32 %i.xz, -1
  %i.yb = shl nuw i32 1, %i.ya                    ; 2 uses
  %i.yc = sub nsw i32 0, %i.yb
  %i.yd = add nsw i32 %i.yb, -1
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %notmask.i = shl nsw i32 -1, %i.xz
  %i.ye = xor i32 %notmask.i, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.076.i = phi i32 [ %i.yc, %bb.cc ], [ 0, %bb.cd ] ; 10 uses
  %.075.i = phi i32 [ %i.yd, %bb.cc ], [ %i.ye, %bb.cd ] ; 6 uses
  %i.yf = icmp eq <2 x i32> %i.xv, zeroinitializer ; 2 uses
  %i.yg = extractelement <2 x i1> %i.yf, i64 0
  %i.yh = extractelement <2 x i1> %i.yf, i64 1
  %or.cond.i225 = select i1 %i.yg, i1 true, i1 %i.yh
  br i1 %or.cond.i225, label %.loopexit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.yi = getelementptr inbounds nuw i8, ptr %.085111.i, i64 20
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !112
  %i.yk = icmp eq i32 %i.yj, 1
  %i.yl = getelementptr i8, ptr %.085111.i, i64 1076 ; 6 uses
  br i1 %i.yk, label %.preheader.i229.preheader, label %.preheader96.preheader.i

.preheader.i229.preheader:                        ; preds = %bb.cf
  %i.ym = extractelement <2 x i32> %i.xv, i64 0   ; 6 uses
  %i.yn = add i32 %i.ym, -1
  %i.yo = zext i32 %i.yn to i64
  %i.yp = shl nuw nsw i64 %i.yo, 2
  %i.yq = extractelement <2 x i32> %i.xv, i64 1
  %i.yr = zext i32 %i.ym to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ym, 8
  %n.vec = and i64 %i.yr, 4294967288              ; 4 uses
  %i.ys = shl nuw nsw i64 %n.vec, 2
  %i.yt = trunc nuw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.076.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert382 = insertelement <4 x i32> poison, i32 %.075.i, i64 0
  %broadcast.splat383 = shufflevector <4 x i32> %broadcast.splatinsert382, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.yr
  br label %.preheader.i229

.preheader96.preheader.i:                         ; preds = %bb.cf
  %i.yu = sext i32 %.076.i to i64
  %i.yv = zext nneg i32 %.075.i to i64
  %i.yw = extractelement <2 x i32> %i.xv, i64 1
  %i.yx = extractelement <2 x i32> %i.xv, i64 0
  br label %.preheader96.i

.preheader.i229:                                  ; preds = %.preheader.i229.preheader, %._crit_edge106.i
  %.1109.i = phi ptr [ %i.aae, %._crit_edge106.i ], [ %.077.i, %.preheader.i229.preheader ] ; 6 uses
  %.078108.i = phi i32 [ %i.aaf, %._crit_edge106.i ], [ 0, %.preheader.i229.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i229
  %scevgep = getelementptr i8, ptr %.1109.i, i64 4
  %scevgep379 = getelementptr i8, ptr %scevgep, i64 %i.yp
  %bound0 = icmp ult ptr %.1109.i, %scevgep381
  %bound1 = icmp ult ptr %i.yl, %scevgep379
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.yy = getelementptr i8, ptr %.1109.i, i64 %i.ys ; 2 uses
  %i.yz = load i32, ptr %i.yl, align 4, !tbaa !173, !alias.scope !265
  %broadcast.splatinsert385 = insertelement <4 x i32> poison, i32 %i.yz, i64 0
  %broadcast.splat386 = shufflevector <4 x i32> %broadcast.splatinsert385, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.za = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1109.i, i64 %i.za ; 3 uses
  %i.zb = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %wide.load384 = load <4 x i32>, ptr %i.zb, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %i.zc = add nsw <4 x i32> %broadcast.splat386, %wide.load ; 2 uses
  %i.zd = add nsw <4 x i32> %broadcast.splat386, %wide.load384 ; 2 uses
  %i.ze = icmp slt <4 x i32> %i.zc, %broadcast.splat
  %i.zf = icmp slt <4 x i32> %i.zd, %broadcast.splat
  %i.zg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zc, <4 x i32> %broadcast.splat383)
  %i.zh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zd, <4 x i32> %broadcast.splat383)
  %i.zi = select <4 x i1> %i.ze, <4 x i32> %broadcast.splat, <4 x i32> %i.zg
  %i.zj = select <4 x i1> %i.zf, <4 x i32> %broadcast.splat, <4 x i32> %i.zh
  store <4 x i32> %i.zi, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  store <4 x i32> %i.zj, ptr %i.zb, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zk = icmp eq i64 %index.next, %n.vec
  br i1 %i.zk, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge106.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i229, %middle.block
  %.2105.i.ph = phi ptr [ %.1109.i, %vector.memcheck ], [ %.1109.i, %.preheader.i229 ], [ %i.yy, %middle.block ] ; 4 uses
  %.080104.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i229 ], [ %i.yt, %middle.block ] ; 4 uses
  %i.zl = sub i32 %i.ym, %.080104.i.ph
  %.neg = add i32 %.080104.i.ph, 1
  %xtraiter410 = and i32 %i.zl, 1
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.zm = load i32, ptr %.2105.i.ph, align 4, !tbaa !3
  %i.zn = load i32, ptr %i.yl, align 4, !tbaa !173
  %i.zo = add nsw i32 %i.zn, %i.zm                ; 2 uses
  %i.zp = icmp slt i32 %i.zo, %.076.i
  %..i.i.prol = call i32 @llvm.smin.i32(i32 %i.zo, i32 %.075.i)
  %.0.i.i.prol = select i1 %i.zp, i32 %.076.i, i32 %..i.i.prol
  store i32 %.0.i.i.prol, ptr %.2105.i.ph, align 4, !tbaa !3
  %i.zq = getelementptr inbounds nuw i8, ptr %.2105.i.ph, i64 4 ; 2 uses
  %i.zr = add nuw i32 %.080104.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa389.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.zq, %scalar.ph.prol ]
  %.2105.i.unr = phi ptr [ %.2105.i.ph, %scalar.ph.preheader ], [ %i.zq, %scalar.ph.prol ]
  %.080104.i.unr = phi i32 [ %.080104.i.ph, %scalar.ph.preheader ], [ %i.zr, %scalar.ph.prol ]
  %i.zs = icmp eq i32 %i.ym, %.neg
  br i1 %i.zs, label %._crit_edge106.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2105.i = phi ptr [ %i.aac, %scalar.ph ], [ %.2105.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.080104.i = phi i32 [ %i.aad, %scalar.ph ], [ %.080104.i.unr, %scalar.ph.prol.loopexit ]
  %i.zt = load i32, ptr %.2105.i, align 4, !tbaa !3
  %i.zu = load i32, ptr %i.yl, align 4, !tbaa !173
  %i.zv = add nsw i32 %i.zu, %i.zt                ; 2 uses
  %i.zw = icmp slt i32 %i.zv, %.076.i
  %..i.i = call i32 @llvm.smin.i32(i32 %i.zv, i32 %.075.i)
  %.0.i.i = select i1 %i.zw, i32 %.076.i, i32 %..i.i
  store i32 %.0.i.i, ptr %.2105.i, align 4, !tbaa !3
  %i.zx = getelementptr inbounds nuw i8, ptr %.2105.i, i64 4 ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !3
  %i.zz = load i32, ptr %i.yl, align 4, !tbaa !173
  %i.aaa = add nsw i32 %i.zz, %i.zy               ; 2 uses
  %i.aab = icmp slt i32 %i.aaa, %.076.i
  %..i.i.1 = call i32 @llvm.smin.i32(i32 %i.aaa, i32 %.075.i)
  %.0.i.i.1 = select i1 %i.aab, i32 %.076.i, i32 %..i.i.1
  store i32 %.0.i.i.1, ptr %i.zx, align 4, !tbaa !3
  %i.aac = getelementptr inbounds nuw i8, ptr %.2105.i, i64 8 ; 2 uses
  %i.aad = add nuw i32 %.080104.i, 2              ; 2 uses
  %exitcond124.not.i.1 = icmp eq i32 %i.aad, %i.ym
  br i1 %exitcond124.not.i.1, label %._crit_edge106.i, label %scalar.ph, !llvm.loop !271

._crit_edge106.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa374 = phi ptr [ %i.yy, %middle.block ], [ %.lcssa389.unr, %scalar.ph.prol.loopexit ], [ %i.aac, %scalar.ph ]
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.lcssa374, i64 %.074.i
  %i.aaf = add nuw i32 %.078108.i, 1              ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aaf, %i.yq
  br i1 %exitcond125.not.i, label %.loopexit.i, label %.preheader.i229, !llvm.loop !272

.preheader96.i:                                   ; preds = %._crit_edge.i227, %.preheader96.preheader.i
  %.3103.i = phi ptr [ %i.aas, %._crit_edge.i227 ], [ %.077.i, %.preheader96.preheader.i ]
  %.179102.i = phi i32 [ %i.aat, %._crit_edge.i227 ], [ 0, %.preheader96.preheader.i ]
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %.preheader96.i
  %.4101.i = phi ptr [ %.3103.i, %.preheader96.i ], [ %i.aaq, %bb.cj ] ; 3 uses
  %.181100.i = phi i32 [ 0, %.preheader96.i ], [ %i.aar, %bb.cj ]
  %i.aag = load float, ptr %.4101.i, align 4, !tbaa !174 ; 3 uses
  %i.aah = fcmp ogt float %i.aag, f0x4F000000
  br i1 %i.aah, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aai = fcmp olt float %i.aag, f0xCF000000
  br i1 %i.aai, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aaj = call i64 @lrintf(float noundef %i.aag) #15, !tbaa !3
  %i.aak = load i32, ptr %i.yl, align 4, !tbaa !173
  %i.aal = sext i32 %i.aak to i64
  %i.aam = add nsw i64 %i.aaj, %i.aal             ; 2 uses
  %i.aan = icmp slt i64 %i.aam, %i.yu
  %..i92.i = call i64 @llvm.smin.i64(i64 %i.aam, i64 range(i64 -2147483648, 2147483648) %i.yv)
  %i.aao = trunc nsw i64 %..i92.i to i32
  %i.aap = select i1 %i.aan, i32 %.076.i, i32 %i.aao
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.076.sink.i = phi i32 [ %.075.i, %bb.cg ], [ %i.aap, %bb.ci ], [ %.076.i, %bb.ch ]
  store i32 %.076.sink.i, ptr %.4101.i, align 4, !tbaa !3
  %i.aaq = getelementptr inbounds nuw i8, ptr %.4101.i, i64 4 ; 2 uses
  %i.aar = add nuw i32 %.181100.i, 1              ; 2 uses
  %exitcond.not.i226 = icmp eq i32 %i.aar, %i.yx
  br i1 %exitcond.not.i226, label %._crit_edge.i227, label %bb.cg, !llvm.loop !273

._crit_edge.i227:                                 ; preds = %bb.cj
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.074.i
  %i.aat = add nuw i32 %.179102.i, 1              ; 2 uses
  %exitcond123.not.i = icmp eq i32 %i.aat, %i.yw
  br i1 %exitcond123.not.i, label %.loopexit.i, label %.preheader96.i, !llvm.loop !274

.loopexit.i:                                      ; preds = %._crit_edge.i227, %._crit_edge106.i, %bb.ce, %bb.bx
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.084112.i, i64 64
  %i.aav = getelementptr i8, ptr %.085111.i, i64 1080
  %i.aaw = getelementptr inbounds nuw i8, ptr %.086110.i, i64 112
  %i.aax = load i32, ptr %i.wc, align 8, !tbaa !30
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = icmp samesign ult i64 %indvars.iv.next.i228, %i.aay
  br i1 %i.aaz, label %bb.bw, label %.critedge, !llvm.loop !275

.critedge:                                        ; preds = %bb.au, %bb.av, %.loopexit.i, %bb.bn, %bb.bc, %.critedge.i, %._crit_edge.i220, %.critedge154.i, %.loopexit260, %opj_alloc_tile_component_data.exit, %bb.p, %bb.n, %opj_tcd_mct_decode.exit, %bb.an, %bb.ap, %bb.ab, %bb.b, %opj_tcd_t1_decode.exit, %opj_tcd_t2_decode.exit
  %.9 = phi i32 [ 0, %bb.bn ], [ 0, %bb.an ], [ 0, %bb.b ], [ 0, %.loopexit260 ], [ 0, %opj_tcd_t1_decode.exit ], [ 0, %opj_alloc_tile_component_data.exit ], [ 0, %opj_tcd_t2_decode.exit ], [ 0, %bb.bc ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 1, %opj_tcd_mct_decode.exit ], [ 0, %bb.n ], [ 0, %bb.p ], [ 1, %.loopexit.i ], [ 0, %.critedge154.i ], [ 0, %._crit_edge.i220 ], [ 0, %.critedge.i ], [ 0, %bb.av ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.9
}

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @opj_tcd_update_tile_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.not68.i = icmp eq i32 %i.d, 0
  br i1 %.not68.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !155
  %.not53.i = icmp eq i32 %i.m, 0
  br i1 %.not53.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.f
  %.04361.i.us = phi ptr [ %i.ap, %bb.f ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04460.i.us = phi ptr [ %i.ao, %bb.f ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04659.i.us = phi i32 [ %i.an, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.04858.i.us = phi i32 [ %i.aq, %bb.f ], [ 0, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.04460.i.us, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.o, 7
  %.not.i.us = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not.i.us to i32
  %spec.select.i.us = add nuw nsw i32 %i.p, %i.r  ; 2 uses
  %i.s = icmp eq i32 %spec.select.i.us, 3
  %spec.store.select.i.us = select i1 %i.s, i32 4, i32 %spec.select.i.us ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04361.i.us, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %.04361.i.us, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !96
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [192 x i8], ptr %i.u, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !156
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !157
  %i.ad = sub i32 %i.aa, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.ai = sub i32 %i.af, %i.ah                    ; 2 uses
  %.not54.i.us = icmp eq i32 %i.af, %i.ah
  br i1 %.not54.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.split.us
  %mul.i.us = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ad, i32 %i.ai)
  %mul.ov.i.us = extractvalue { i32, i1 } %mul.i.us, 1
  br i1 %mul.ov.i.us, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.split.us
  %i.aj = mul i32 %i.ai, %i.ad                    ; 2 uses
  %.not55.i.us = icmp eq i32 %spec.store.select.i.us, 0
  br i1 %.not55.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %mul56.i.us = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select.i.us, i32 %i.aj)
  %mul.ov57.i.us = extractvalue { i32, i1 } %mul56.i.us, 1
  br i1 %mul.ov57.i.us, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = mul i32 %i.aj, %spec.store.select.i.us  ; 2 uses
  %i.al = xor i32 %.04659.i.us, -1
  %i.am = icmp ugt i32 %i.ak, %i.al
  br i1 %i.am, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = add i32 %i.ak, %.04659.i.us             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04460.i.us, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.04361.i.us, i64 112
  %i.aq = add nuw i32 %.04858.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.aq, %i.d
  br i1 %exitcond.not.i.us, label %opj_tcd_get_decoded_tile_size.exit, label %.lr.ph.i.split.us, !llvm.loop !158

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.k
  %.04361.i = phi ptr [ %i.bt, %bb.k ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04460.i = phi ptr [ %i.bs, %bb.k ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04659.i = phi i32 [ %i.br, %bb.k ], [ 0, %.lr.ph.i ] ; 2 uses
  %.04858.i = phi i32 [ %i.bu, %bb.k ], [ 0, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.04460.i, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = and i32 %i.as, 7
  %.not.i = icmp ne i32 %i.au, 0
  %i.av = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %i.at, %i.av   ; 2 uses
  %i.aw = icmp eq i32 %spec.select.i, 3
  %spec.store.select.i = select i1 %i.aw, i32 4, i32 %spec.select.i ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04361.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.04361.i, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !96
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [192 x i8], ptr %i.ay, i64 %i.bb ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -192
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -184
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !100
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !97
  %i.bh = sub nsw i32 %i.bf, %i.bg                ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -180
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 -188
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = sub i32 %i.bj, %i.bl                    ; 2 uses
  %.not54.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not54.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.split
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bh, i32 %i.bm)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.split
  %i.bn = mul i32 %i.bm, %i.bh                    ; 2 uses
  %.not55.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %mul56.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select.i, i32 %i.bn)
  %mul.ov57.i = extractvalue { i32, i1 } %mul56.i, 1
  br i1 %mul.ov57.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = mul i32 %i.bn, %spec.store.select.i     ; 2 uses
  %i.bp = xor i32 %.04659.i, -1
  %i.bq = icmp ugt i32 %i.bo, %i.bp
  br i1 %i.bq, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add i32 %i.bo, %.04659.i                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04460.i, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %.04361.i, i64 112
  %i.bu = add nuw i32 %.04858.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond.not.i, label %opj_tcd_get_decoded_tile_size.exit, label %.lr.ph.i.split, !llvm.loop !158

opj_tcd_get_decoded_tile_size.exit:               ; preds = %bb.k, %bb.f
  %.2.i = phi i32 [ %i.an, %bb.f ], [ %i.br, %bb.k ] ; 2 uses
  %i.bv = icmp ne i32 %.2.i, -1
  %i.bw = icmp ule i32 %.2.i, %2
  %or.cond.not = and i1 %i.bv, %i.bw              ; 2 uses
  %.mux = zext i1 %or.cond.not to i32
  br i1 %or.cond.not, label %.lr.ph210, label %opj_tcd_get_decoded_tile_size.exit.thread

.lr.ph210:                                        ; preds = %opj_tcd_get_decoded_tile_size.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !7
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph210, %.loopexit
  %.0102209 = phi ptr [ %1, %.lr.ph210 ], [ %.1, %.loopexit ] ; 16 uses
  %.0123208 = phi ptr [ %i.cd, %.lr.ph210 ], [ %i.nq, %.loopexit ] ; 4 uses
  %.0124207 = phi ptr [ %i.by, %.lr.ph210 ], [ %i.np, %.loopexit ] ; 5 uses
  %.0134206 = phi i32 [ 0, %.lr.ph210 ], [ %i.nr, %.loopexit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0124207, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !113 ; 2 uses
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = and i32 %i.cg, 7
  %i.cj = getelementptr inbounds nuw i8, ptr %.0123208, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0124207, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !86
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [192 x i8], ptr %i.ck, i64 %i.cn ; 4 uses
  %i.cp = load i32, ptr %i.ce, align 8, !tbaa !155
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_1
