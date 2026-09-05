Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZL20reorder_marks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tjj:.preheader89
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.a
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val82 = load i16, ptr %i.i, align 4, !tbaa !280 ; 2 uses
  %i.j = and i16 %.val82, 31
  %i.k = zext nneg i16 %i.j to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, 7168
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = icmp ult i16 %.val82, -9216
  %i.o = or i1 %.not.i, %i.n
  br i1 %i.o, label %bb.a, label %.critedge.loopexit

bb.a:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !2997

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.p = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader89
  %.1.lcssa = phi i32 [ %2, %.preheader89 ], [ %i.p, %.critedge.loopexit ] ; 10 uses
  %i.q = icmp eq i32 %.1.lcssa, %3
  br i1 %i.q, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.r = zext i32 %.1.lcssa to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val81 = load i16, ptr %i.t, align 4, !tbaa !280 ; 2 uses
  %i.u = and i16 %.val81, 31
  %i.v = zext nneg i16 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, 7168
  %.not.i84 = icmp ne i32 %i.x, 0
  %i.y = icmp ugt i16 %.val81, -8961
  %i.z = and i1 %.not.i84, %i.y
  br i1 %i.z, label %.preheader89.1, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.aa = icmp ult i32 %.1.lcssa, %3
  br i1 %i.aa, label %.lr.ph94, label %.critedge2

.lr.ph94:                                         ; preds = %.preheader, %bb.d
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %bb.d ], [ %i.r, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv115 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %.val = load i16, ptr %i.ac, align 4, !tbaa !280 ; 2 uses
  %i.ad = and i16 %.val, 31
  %i.ae = zext nneg i16 %i.ad to i32
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = and i32 %i.af, 7168
  %.not.i85 = icmp ne i32 %i.ag, 0
  %.mask = and i16 %.val, -256
  %i.ah = icmp eq i16 %.mask, -9216
  %i.ai = and i1 %.not.i85, %i.ah
  br i1 %i.ai, label %bb.c, label %.critedge2.loopexit.split.loop.exit130

bb.c:                                             ; preds = %.lr.ph94
  %.val83 = load i32, ptr %i.ab, align 4, !tbaa !635
  switch i32 %.val83, label %.critedge2.loopexit.split.loop.exit [
    i32 1620, label %bb.d
    i32 1621, label %bb.d
    i32 1624, label %bb.d
    i32 1756, label %bb.d
    i32 1763, label %bb.d
    i32 1767, label %bb.d
    i32 1768, label %bb.d
    i32 2250, label %bb.d
    i32 2251, label %bb.d
    i32 2253, label %bb.d
    i32 2254, label %bb.d
    i32 2255, label %bb.d
    i32 2259, label %bb.d
    i32 2291, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next116, %i.e
  br i1 %exitcond107.not, label %.critedge2, label %.lr.ph94, !llvm.loop !2998

.critedge2.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.aj = trunc nuw i64 %indvars.iv115 to i32
  br label %.critedge2

.critedge2.loopexit.split.loop.exit130:           ; preds = %.lr.ph94
  %i.ak = trunc nuw i64 %indvars.iv115 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.d, %.critedge2.loopexit.split.loop.exit, %.critedge2.loopexit.split.loop.exit130, %.preheader
  %.0.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %i.ak, %.critedge2.loopexit.split.loop.exit130 ], [ %i.aj, %.critedge2.loopexit.split.loop.exit ], [ %3, %bb.d ] ; 8 uses
  %i.al = icmp eq i32 %.1.lcssa, %.0.lcssa
  br i1 %i.al, label %.preheader89.1, label %bb.e

bb.e:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.am = sub i32 %.0.lcssa, %2                   ; 2 uses
  %i.an = icmp ult i32 %i.am, 2
  br i1 %i.an, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !607
  %.not.i86 = icmp ugt i32 %i.ao, 1
  br i1 %.not.i86, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ne i32 %.0.lcssa, -1
  %i.aq = icmp ugt i32 %i.am, 255
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.d, align 8, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %.0.lcssa, i32 %i.as) ; 2 uses
  %i.at = sub i32 %.sroa.speculated.i.i, %2
  %i.au = icmp ult i32 %i.at, 2
  br i1 %i.au, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef 3, i32 noundef %2, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit

bb.j:                                             ; preds = %bb.f
  tail call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %2, i32 noundef %.0.lcssa)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit

_ZN11hb_buffer_t14merge_clustersEjj.exit:         ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %i.av = sub i32 %.0.lcssa, %.1.lcssa
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 20               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 4 %i.s, i64 %i.ax, i1 false)
  %i.ay = sub i32 %2, %.1.lcssa
  %i.az = add i32 %i.ay, %.0.lcssa                ; 4 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.ba
  %i.bc = zext i32 %2 to i64                      ; 5 uses
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.bc ; 2 uses
  %i.be = sub i32 %.1.lcssa, %2
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bb, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bd, ptr nonnull align 16 %4, i64 %i.ax, i1 false)
  %i.bh = icmp ult i32 %2, %i.az
  br i1 %i.bh, label %.lr.ph101.preheader, label %._crit_edge

.lr.ph101.preheader:                              ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit
  %i.bi = sub nsw i64 %i.ba, %i.bc                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check, label %.lr.ph101.preheader191, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.preheader
  %n.vec = and i64 %i.bi, -8                      ; 3 uses
  %i.bj = add nsw i64 %n.vec, %i.bc
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue160, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue160 ] ; 2 uses
  %i.bk = add nuw i64 %index, %i.bc               ; 8 uses
  %i.bl = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.bk
  %i.bm = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.bn = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.bo = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.bp = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.bq = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.br = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.bs = getelementptr [20 x i8], ptr %i.b, i64 %i.bk
  %i.bt = getelementptr i8, ptr %i.bl, i64 16     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 36     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 56     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 76     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bp, i64 96     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bq, i64 116    ; 2 uses
  %i.bz = getelementptr i8, ptr %i.br, i64 136    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bs, i64 156    ; 2 uses
  %i.cb = load i16, ptr %i.bt, align 4, !tbaa !280 ; 2 uses
  %i.cc = load i16, ptr %i.bu, align 4, !tbaa !280 ; 2 uses
  %i.cd = load i16, ptr %i.bv, align 4, !tbaa !280 ; 2 uses
  %i.ce = load i16, ptr %i.bw, align 4, !tbaa !280 ; 2 uses
  %i.cf = load i16, ptr %i.bx, align 4, !tbaa !280 ; 2 uses
  %i.cg = load i16, ptr %i.by, align 4, !tbaa !280 ; 2 uses
  %i.ch = load i16, ptr %i.bz, align 4, !tbaa !280 ; 2 uses
  %i.ci = load i16, ptr %i.ca, align 4, !tbaa !280 ; 2 uses
  %i.cj = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 1
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 2
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 3
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 4
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 5
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 6
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 7
  %i.cr = and <8 x i16> %i.cq, splat (i16 31)
  %i.cs = zext nneg <8 x i16> %i.cr to <8 x i32>
  %i.ct = shl nuw <8 x i32> splat (i32 1), %i.cs
  %i.cu = and <8 x i32> %i.ct, splat (i32 7168)
  %i.cv = icmp ne <8 x i32> %i.cu, zeroinitializer ; 8 uses
  %i.cw = extractelement <8 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cx = and i16 %i.cb, 255
  %i.cy = or disjoint i16 %i.cx, 6400
  store i16 %i.cy, ptr %i.bt, align 4, !tbaa !280
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cz = extractelement <8 x i1> %i.cv, i64 1
  br i1 %i.cz, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue
  %i.da = and i16 %i.cc, 255
  %i.db = or disjoint i16 %i.da, 6400
  store i16 %i.db, ptr %i.bu, align 4, !tbaa !280
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue
  %i.dc = extractelement <8 x i1> %i.cv, i64 2
  br i1 %i.dc, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.dd = and i16 %i.cd, 255
  %i.de = or disjoint i16 %i.dd, 6400
  store i16 %i.de, ptr %i.bv, align 4, !tbaa !280
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.df = extractelement <8 x i1> %i.cv, i64 3
  br i1 %i.df, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.dg = and i16 %i.ce, 255
  %i.dh = or disjoint i16 %i.dg, 6400
  store i16 %i.dh, ptr %i.bw, align 4, !tbaa !280
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.di = extractelement <8 x i1> %i.cv, i64 4
  br i1 %i.di, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.dj = and i16 %i.cf, 255
  %i.dk = or disjoint i16 %i.dj, 6400
  store i16 %i.dk, ptr %i.bx, align 4, !tbaa !280
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.dl = extractelement <8 x i1> %i.cv, i64 5
  br i1 %i.dl, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  %i.dm = and i16 %i.cg, 255
  %i.dn = or disjoint i16 %i.dm, 6400
  store i16 %i.dn, ptr %i.by, align 4, !tbaa !280
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.do = extractelement <8 x i1> %i.cv, i64 6
  br i1 %i.do, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  %i.dp = and i16 %i.ch, 255
  %i.dq = or disjoint i16 %i.dp, 6400
  store i16 %i.dq, ptr %i.bz, align 4, !tbaa !280
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.dr = extractelement <8 x i1> %i.cv, i64 7
  br i1 %i.dr, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  %i.ds = and i16 %i.ci, 255
  %i.dt = or disjoint i16 %i.ds, 6400
  store i16 %i.dt, ptr %i.ca, align 4, !tbaa !280
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !2999

middle.block:                                     ; preds = %pred.store.continue160
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph101.preheader191

.lr.ph101.preheader191:                           ; preds = %.lr.ph101.preheader, %middle.block
  %indvars.iv108.ph = phi i64 [ %i.bc, %.lr.ph101.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader191, %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit ], [ %indvars.iv108.ph, %.lr.ph101.preheader191 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv108
  %i.dw = getelementptr i8, ptr %i.dv, i64 16     ; 2 uses
  %.val.i = load i16, ptr %i.dw, align 4, !tbaa !280 ; 2 uses
  %i.dx = and i16 %.val.i, 31
  %i.dy = zext nneg i16 %i.dx to i32
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dz, 7168
  %.not.i87 = icmp eq i32 %i.ea, 0
  br i1 %.not.i87, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit, label %bb.k, !prof !267

bb.k:                                             ; preds = %.lr.ph101
  %i.eb = and i16 %.val.i, 255
  %i.ec = or disjoint i16 %i.eb, 6400
  store i16 %i.ec, ptr %i.dw, align 4, !tbaa !280
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit: ; preds = %.lr.ph101, %bb.k
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next109, %i.ba
  br i1 %exitcond111.not, label %._crit_edge, label %.lr.ph101, !llvm.loop !3000

._crit_edge:                                      ; preds = %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit, %middle.block, %_ZN11hb_buffer_t14merge_clustersEjj.exit
  %.177.lcssa = phi i32 [ %2, %_ZN11hb_buffer_t14merge_clustersEjj.exit ], [ %i.az, %middle.block ], [ %i.az, %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.preheader89.1

.preheader89.1:                                   ; preds = %._crit_edge, %.critedge2, %bb.b
  %.379 = phi i32 [ %2, %bb.b ], [ %.177.lcssa, %._crit_edge ], [ %2, %.critedge2 ] ; 8 uses
  %.3 = phi i32 [ %.1.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ], [ %.1.lcssa, %.critedge2 ] ; 3 uses
  %i.ed = icmp ult i32 %.3, %3
  br i1 %i.ed, label %.lr.ph.preheader.1, label %.critedge.1

.lr.ph.preheader.1:                               ; preds = %.preheader89.1
  %i.ee = zext i32 %.3 to i64
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.l, %.lr.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %i.ee, %.lr.ph.preheader.1 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv.1
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %.val82.1 = load i16, ptr %i.eg, align 4, !tbaa !280 ; 2 uses
  %i.eh = and i16 %.val82.1, 31
  %i.ei = zext nneg i16 %i.eh to i32
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = and i32 %i.ej, 7168
  %.not.i.1 = icmp eq i32 %i.ek, 0
  %i.el = icmp ult i16 %.val82.1, -6656
  %i.em = or i1 %.not.i.1, %i.el
  br i1 %i.em, label %bb.l, label %.critedge.1.loopexit

bb.l:                                             ; preds = %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.e
  br i1 %exitcond.1.not, label %.critedge.thread, label %.lr.ph.1, !llvm.loop !2997

.critedge.1.loopexit:                             ; preds = %.lr.ph.1
  %i.en = trunc nuw i64 %indvars.iv.1 to i32
  br label %.critedge.1

.critedge.1:                                      ; preds = %.critedge.1.loopexit, %.preheader89.1
  %.1.lcssa.1 = phi i32 [ %.3, %.preheader89.1 ], [ %i.en, %.critedge.1.loopexit ] ; 8 uses
  %i.eo = icmp eq i32 %.1.lcssa.1, %3
  br i1 %i.eo, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %.critedge.1
  %i.ep = zext i32 %.1.lcssa.1 to i64             ; 2 uses
  %i.eq = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %.val81.1 = load i16, ptr %i.er, align 4, !tbaa !280 ; 2 uses
  %i.es = and i16 %.val81.1, 31
  %i.et = zext nneg i16 %i.es to i32
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = and i32 %i.eu, 7168
  %.not.i84.1 = icmp ne i32 %i.ev, 0
  %i.ew = icmp ugt i16 %.val81.1, -6401
  %i.ex = and i1 %.not.i84.1, %i.ew
  br i1 %i.ex, label %.critedge.thread, label %.preheader.1

.preheader.1:                                     ; preds = %bb.m
  %i.ey = icmp ult i32 %.1.lcssa.1, %3
  br i1 %i.ey, label %.lr.ph94.1, label %.critedge2.1

.lr.ph94.1:                                       ; preds = %.preheader.1, %bb.o
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %bb.o ], [ %i.ep, %.preheader.1 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv112 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  %.val.1 = load i16, ptr %i.fa, align 4, !tbaa !280 ; 2 uses
  %i.fb = and i16 %.val.1, 31
  %i.fc = zext nneg i16 %i.fb to i32
  %i.fd = shl nuw i32 1, %i.fc
  %i.fe = and i32 %i.fd, 7168
  %.not.i85.1 = icmp ne i32 %i.fe, 0
  %.mask123 = and i16 %.val.1, -256
  %i.ff = icmp eq i16 %.mask123, -6656
  %i.fg = and i1 %.not.i85.1, %i.ff
  br i1 %i.fg, label %bb.n, label %.critedge2.1.loopexit.split.loop.exit137

bb.n:                                             ; preds = %.lr.ph94.1
  %.val83.1 = load i32, ptr %i.ez, align 4, !tbaa !635
  switch i32 %.val83.1, label %.critedge2.1.loopexit.split.loop.exit135 [
    i32 1620, label %bb.o
    i32 1621, label %bb.o
    i32 1624, label %bb.o
    i32 1756, label %bb.o
    i32 1763, label %bb.o
    i32 1767, label %bb.o
    i32 1768, label %bb.o
    i32 2250, label %bb.o
    i32 2251, label %bb.o
    i32 2253, label %bb.o
    i32 2254, label %bb.o
    i32 2255, label %bb.o
    i32 2259, label %bb.o
    i32 2291, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond107.1.not = icmp eq i64 %indvars.iv.next113, %i.e
  br i1 %exitcond107.1.not, label %.critedge2.1, label %.lr.ph94.1, !llvm.loop !2998

.critedge2.1.loopexit.split.loop.exit135:         ; preds = %bb.n
  %i.fh = trunc nuw i64 %indvars.iv112 to i32
  br label %.critedge2.1

.critedge2.1.loopexit.split.loop.exit137:         ; preds = %.lr.ph94.1
  %i.fi = trunc nuw i64 %indvars.iv112 to i32
  br label %.critedge2.1

.critedge2.1:                                     ; preds = %bb.o, %.critedge2.1.loopexit.split.loop.exit135, %.critedge2.1.loopexit.split.loop.exit137, %.preheader.1
  %.0.lcssa.1 = phi i32 [ %.1.lcssa.1, %.preheader.1 ], [ %i.fi, %.critedge2.1.loopexit.split.loop.exit137 ], [ %i.fh, %.critedge2.1.loopexit.split.loop.exit135 ], [ %3, %bb.o ] ; 7 uses
  %i.fj = icmp eq i32 %.1.lcssa.1, %.0.lcssa.1
  br i1 %i.fj, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %.critedge2.1
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fk = sub i32 %.0.lcssa.1, %.379              ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 2
  br i1 %i.fl, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = load i32, ptr %i.c, align 4, !tbaa !607
  %.not.i86.1 = icmp ugt i32 %i.fm, 1
  br i1 %.not.i86.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %.379, i32 noundef %.0.lcssa.1)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.1

bb.s:                                             ; preds = %bb.q
  %i.fn = icmp ne i32 %.0.lcssa.1, -1
  %i.fo = icmp ugt i32 %i.fk, 255
  %i.fp = and i1 %i.fn, %i.fo
  br i1 %i.fp, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.1, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  %i.fq = load i32, ptr %i.d, align 8, !tbaa !324
  %.sroa.speculated.i.i.1 = tail call i32 @llvm.umin.i32(i32 %.0.lcssa.1, i32 %i.fq) ; 2 uses
  %i.fr = sub i32 %.sroa.speculated.i.i.1, %.379
  %i.fs = icmp ult i32 %i.fr, 2
  br i1 %i.fs, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef 3, i32 noundef %.379, i32 noundef %.sroa.speculated.i.i.1, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.1

_ZN11hb_buffer_t14merge_clustersEjj.exit.1:       ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.p
  %i.ft = sub i32 %.0.lcssa.1, %.1.lcssa.1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = mul nuw nsw i64 %i.fu, 20               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 4 %i.eq, i64 %i.fv, i1 false)
  %i.fw = sub i32 %.379, %.1.lcssa.1
  %i.fx = add i32 %i.fw, %.0.lcssa.1              ; 2 uses
  %i.fy = zext i32 %i.fx to i64                   ; 3 uses
  %i.fz = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.fy
  %i.ga = zext i32 %.379 to i64                   ; 5 uses
  %i.gb = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.ga ; 2 uses
  %i.gc = sub i32 %.1.lcssa.1, %.379
  %i.gd = zext i32 %i.gc to i64
  %i.ge = mul nuw nsw i64 %i.gd, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fz, ptr align 4 %i.gb, i64 %i.ge, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gb, ptr nonnull align 16 %4, i64 %i.fv, i1 false)
  %i.gf = icmp ult i32 %.379, %i.fx
  br i1 %i.gf, label %.lr.ph101.1.preheader, label %._crit_edge.1

.lr.ph101.1.preheader:                            ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit.1
  %i.gg = sub nsw i64 %i.fy, %i.ga                ; 3 uses
  %min.iters.check162 = icmp ult i64 %i.gg, 8
  br i1 %min.iters.check162, label %.lr.ph101.1.preheader187, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph101.1.preheader
  %n.vec164 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = add nsw i64 %n.vec164, %i.ga
  br label %vector.body165

vector.body165:                                   ; preds = %pred.store.continue182, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next183, %pred.store.continue182 ] ; 2 uses
  %i.gi = add nuw i64 %index166, %i.ga            ; 8 uses
  %i.gj = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.gi
  %i.gk = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.gl = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.gm = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.gn = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.go = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.gp = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.gq = getelementptr [20 x i8], ptr %i.b, i64 %i.gi
  %i.gr = getelementptr i8, ptr %i.gj, i64 16     ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gk, i64 36     ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gl, i64 56     ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gm, i64 76     ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gn, i64 96     ; 2 uses
  %i.gw = getelementptr i8, ptr %i.go, i64 116    ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gp, i64 136    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gq, i64 156    ; 2 uses
  %i.gz = load i16, ptr %i.gr, align 4, !tbaa !280 ; 2 uses
  %i.ha = load i16, ptr %i.gs, align 4, !tbaa !280 ; 2 uses
  %i.hb = load i16, ptr %i.gt, align 4, !tbaa !280 ; 2 uses
  %i.hc = load i16, ptr %i.gu, align 4, !tbaa !280 ; 2 uses
  %i.hd = load i16, ptr %i.gv, align 4, !tbaa !280 ; 2 uses
  %i.he = load i16, ptr %i.gw, align 4, !tbaa !280 ; 2 uses
  %i.hf = load i16, ptr %i.gx, align 4, !tbaa !280 ; 2 uses
  %i.hg = load i16, ptr %i.gy, align 4, !tbaa !280 ; 2 uses
  %i.hh = insertelement <8 x i16> poison, i16 %i.gz, i64 0
  %i.hi = insertelement <8 x i16> %i.hh, i16 %i.ha, i64 1
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 2
  %i.hk = insertelement <8 x i16> %i.hj, i16 %i.hc, i64 3
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 4
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 5
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 6
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 7
  %i.hp = and <8 x i16> %i.ho, splat (i16 31)
  %i.hq = zext nneg <8 x i16> %i.hp to <8 x i32>
  %i.hr = shl nuw <8 x i32> splat (i32 1), %i.hq
  %i.hs = and <8 x i32> %i.hr, splat (i32 7168)
  %i.ht = icmp ne <8 x i32> %i.hs, zeroinitializer ; 8 uses
  %i.hu = extractelement <8 x i1> %i.ht, i64 0
  br i1 %i.hu, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %vector.body165
  %i.hv = and i16 %i.gz, 255
  %i.hw = or disjoint i16 %i.hv, 6656
  store i16 %i.hw, ptr %i.gr, align 4, !tbaa !280
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %vector.body165
  %i.hx = extractelement <8 x i1> %i.ht, i64 1
  br i1 %i.hx, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.hy = and i16 %i.ha, 255
  %i.hz = or disjoint i16 %i.hy, 6656
  store i16 %i.hz, ptr %i.gs, align 4, !tbaa !280
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.ia = extractelement <8 x i1> %i.ht, i64 2
  br i1 %i.ia, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.ib = and i16 %i.hb, 255
  %i.ic = or disjoint i16 %i.ib, 6656
  store i16 %i.ic, ptr %i.gt, align 4, !tbaa !280
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue170
  %i.id = extractelement <8 x i1> %i.ht, i64 3
  br i1 %i.id, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.ie = and i16 %i.hc, 255
  %i.if = or disjoint i16 %i.ie, 6656
  store i16 %i.if, ptr %i.gu, align 4, !tbaa !280
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.ig = extractelement <8 x i1> %i.ht, i64 4
  br i1 %i.ig, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.ih = and i16 %i.hd, 255
  %i.ii = or disjoint i16 %i.ih, 6656
  store i16 %i.ii, ptr %i.gv, align 4, !tbaa !280
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %i.ij = extractelement <8 x i1> %i.ht, i64 5
  br i1 %i.ij, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  %i.ik = and i16 %i.he, 255
  %i.il = or disjoint i16 %i.ik, 6656
  store i16 %i.il, ptr %i.gw, align 4, !tbaa !280
  br label %pred.store.continue178

pred.store.continue178:                           ; preds = %pred.store.if177, %pred.store.continue176
  %i.im = extractelement <8 x i1> %i.ht, i64 6
  br i1 %i.im, label %pred.store.if179, label %pred.store.continue180

pred.store.if179:                                 ; preds = %pred.store.continue178
  %i.in = and i16 %i.hf, 255
  %i.io = or disjoint i16 %i.in, 6656
  store i16 %i.io, ptr %i.gx, align 4, !tbaa !280
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.if179, %pred.store.continue178
  %i.ip = extractelement <8 x i1> %i.ht, i64 7
  br i1 %i.ip, label %pred.store.if181, label %pred.store.continue182

pred.store.if181:                                 ; preds = %pred.store.continue180
  %i.iq = and i16 %i.hg, 255
  %i.ir = or disjoint i16 %i.iq, 6656
  store i16 %i.ir, ptr %i.gy, align 4, !tbaa !280
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.if181, %pred.store.continue180
  %index.next183 = add nuw i64 %index166, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next183, %n.vec164
  br i1 %i.is, label %middle.block184, label %vector.body165, !llvm.loop !3001

middle.block184:                                  ; preds = %pred.store.continue182
  %cmp.n185 = icmp eq i64 %i.gg, %n.vec164
  br i1 %cmp.n185, label %._crit_edge.1, label %.lr.ph101.1.preheader187

.lr.ph101.1.preheader187:                         ; preds = %.lr.ph101.1.preheader, %middle.block184
  %indvars.iv108.1.ph = phi i64 [ %i.ga, %.lr.ph101.1.preheader ], [ %i.gh, %middle.block184 ]
  br label %.lr.ph101.1

.lr.ph101.1:                                      ; preds = %.lr.ph101.1.preheader187, %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit.1
  %indvars.iv108.1 = phi i64 [ %indvars.iv.next109.1, %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit.1 ], [ %indvars.iv108.1.ph, %.lr.ph101.1.preheader187 ] ; 2 uses
  %i.it = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv108.1
  %i.iu = getelementptr i8, ptr %i.it, i64 16     ; 2 uses
  %.val.i.1 = load i16, ptr %i.iu, align 4, !tbaa !280 ; 2 uses
  %i.iv = and i16 %.val.i.1, 31
  %i.iw = zext nneg i16 %i.iv to i32
  %i.ix = shl nuw i32 1, %i.iw
  %i.iy = and i32 %i.ix, 7168
  %.not.i87.1 = icmp eq i32 %i.iy, 0
  br i1 %.not.i87.1, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit.1, label %bb.v, !prof !267

bb.v:                                             ; preds = %.lr.ph101.1
  %i.iz = and i16 %.val.i.1, 255
  %i.ja = or disjoint i16 %i.iz, 6656
  store i16 %i.ja, ptr %i.iu, align 4, !tbaa !280
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit.1

_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit.1: ; preds = %bb.v, %.lr.ph101.1
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108.1, 1 ; 2 uses
  %exitcond111.1.not = icmp eq i64 %indvars.iv.next109.1, %i.fy
  br i1 %exitcond111.1.not, label %._crit_edge.1, label %.lr.ph101.1, !llvm.loop !3002

._crit_edge.1:                                    ; preds = %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit.1, %middle.block184, %_ZN11hb_buffer_t14merge_clustersEjj.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.l, %bb.m, %.critedge2.1, %._crit_edge.1, %.critedge.1, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23collect_features_hangulP21hb_ot_shape_planner_t(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !1308 ; 3 uses
  %i.g = add i32 %i.f, 1                          ; 6 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.g, i1 noundef zeroext false)
  %.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !1308 ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.f, !prof !523

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %i.g, %.pre.pre.i
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw nsw i32 %i.g, %.pre.pre.i
  %i.l = mul i32 %i.k, 28                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1309
  %i.n = zext nneg i32 %.pre.pre.i to i64
  %i.o = getelementptr inbounds nuw [28 x i8], ptr %i.m, i64 %i.n
  %i.p = zext i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.b ], [ %i.f, %bb.a ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) @_hb_CrapPool, i8 0, i64 28, i1 false)
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i32 %i.g, ptr %i.a, align 4, !tbaa !1308
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !1309
  %i.r = zext i32 %i.f to i64
  %i.s = getelementptr inbounds nuw [28 x i8], ptr %i.q, i64 %i.r
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i: ; preds = %bb.g, %bb.f
  %i.t = phi i32 [ %.pre.i, %bb.f ], [ %i.g, %bb.g ]
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.s, %bb.g ] ; 7 uses
  store i32 1818914159, ptr %.0.i.i, align 4, !tbaa !1317
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !1318
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 1, ptr %i.v, align 4, !tbaa !1319
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !1320
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.x, align 4, !tbaa !1321
  %i.y = load i32, ptr %i.d, align 8, !tbaa !324
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store i32 %i.y, ptr %i.z, align 4, !tbaa !324
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !324
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !324
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !1308 ; 3 uses
  %i.ad = add i32 %i.ac, 1                        ; 6 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.h, !prof !267

bb.h:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i
  %i.af = tail call noundef zeroext i1 @_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.ad, i1 noundef zeroext false)
  %.pre.pre.i.1 = load i32, ptr %i.a, align 4, !tbaa !1308 ; 4 uses
  br i1 %i.af, label %bb.i, label %bb.m, !prof !523

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ugt i32 %i.ad, %.pre.pre.i.1
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = sub nuw nsw i32 %i.ad, %.pre.pre.i.1
  %i.ai = mul i32 %i.ah, 28                       ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.1, label %bb.l, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !1309
  %i.ak = zext nneg i32 %.pre.pre.i.1 to i64
  %i.al = getelementptr inbounds nuw [28 x i8], ptr %i.aj, i64 %i.ak
  %i.am = zext i32 %i.ai to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %i.am, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !1308
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1309
  %i.ao = zext i32 %i.ac to i64
  %i.ap = getelementptr inbounds nuw [28 x i8], ptr %i.an, i64 %i.ao
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.1

bb.m:                                             ; preds = %bb.h, %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i
  %.pre.i.1 = phi i32 [ %.pre.pre.i.1, %bb.h ], [ %i.ac, %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) @_hb_CrapPool, i8 0, i64 28, i1 false)
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.1

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.1: ; preds = %bb.m, %bb.l
  %i.aq = phi i32 [ %.pre.i.1, %bb.m ], [ %i.ad, %bb.l ]
  %.0.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.ap, %bb.l ] ; 7 uses
  store i32 1986686319, ptr %.0.i.i.1, align 4, !tbaa !1317
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !1318
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 8
  store i32 1, ptr %i.as, align 4, !tbaa !1319
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !1320
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 16
  store i32 0, ptr %i.au, align 4, !tbaa !1321
  %i.av = load i32, ptr %i.d, align 8, !tbaa !324
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 20
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !324
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !324
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 24
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !324
  %i.az = load i32, ptr %i.a, align 4, !tbaa !1308 ; 3 uses
  %i.ba = add i32 %i.az, 1                        ; 6 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %bb.n, !prof !267

bb.n:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit.i.1
  %i.bc = tail call noundef zeroext i1 @_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.ba, i1 noundef zeroext false)
  %.pre.pre.i.2 = load i32, ptr %i.a, align 4, !tbaa !1308 ; 4 uses
  br i1 %i.bc, label %bb.o, label %bb.s, !prof !523

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp ugt i32 %i.ba, %.pre.pre.i.2
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.be = sub nuw nsw i32 %i.ba, %.pre.pre.i.2
  %i.bf = mul i32 %i.be, 28                       ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.2, label %bb.r, label %bb.q, !prof !267

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !1309
  %i.bh = zext nneg i32 %.pre.pre.i.2 to i64
  %i.bi = getelementptr inbounds nuw [28 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = zext i32 %i.bf to i64
end_hunk_0
