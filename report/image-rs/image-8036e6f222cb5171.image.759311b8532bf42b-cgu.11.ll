inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE11loop_filterCsa5QsYiPB8Gl_5image:bb.a
bb.br:                                            ; preds = %bb.bq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.jk
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.jo, i64 noundef 8)
  %i.jp = or disjoint i64 %i.bm, 5
  %i.jq = mul nuw nsw i64 %i.jp, %i.d
  %i.jr = add nuw nsw i64 %i.bo, %i.jq            ; 4 uses
  %i.js = icmp ugt i64 %i.jr, %i.bq
  br i1 %i.js, label %bb.bh, label %bb.bs, !prof !154

bb.bs:                                            ; preds = %bb.br
  %i.jt = sub nuw i64 %i.bq, %i.jr                ; 2 uses
  %i.ju = icmp ugt i64 %i.jt, 7
  br i1 %i.ju, label %bb.bt, label %bb.bi, !prof !156

bb.bt:                                            ; preds = %bb.bs
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.jr
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.jv, i64 noundef 8)
  %i.jw = or disjoint i64 %i.bm, 6
  %i.jx = mul nuw nsw i64 %i.jw, %i.d
  %i.jy = add nuw nsw i64 %i.bo, %i.jx            ; 4 uses
  %i.jz = icmp ugt i64 %i.jy, %i.bq
  br i1 %i.jz, label %bb.bh, label %bb.bu, !prof !154

bb.bu:                                            ; preds = %bb.bt
  %i.ka = sub nuw i64 %i.bq, %i.jy                ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, 7
  br i1 %i.kb, label %bb.bv, label %bb.bi, !prof !156

bb.bv:                                            ; preds = %bb.bu
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.jy
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.kc, i64 noundef 8)
  %i.kd = or disjoint i64 %i.bm, 7
  %i.ke = mul nuw nsw i64 %i.kd, %i.d
  %i.kf = add nuw nsw i64 %i.bo, %i.ke            ; 4 uses
  %i.kg = icmp ugt i64 %i.kf, %i.bq
  br i1 %i.kg, label %bb.bh, label %bb.bw, !prof !154

bb.bw:                                            ; preds = %bb.bv
  %i.kh = sub nuw i64 %i.bq, %i.kf                ; 2 uses
  %i.ki = icmp ugt i64 %i.kh, 7
  br i1 %i.ki, label %bb.bx, label %bb.bi, !prof !156

bb.bx:                                            ; preds = %bb.bw
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.kf
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.kj, i64 noundef 8)
  %i.kk = or disjoint i64 %i.bm, 8
  %i.kl = mul nuw nsw i64 %i.kk, %i.d
  %i.km = add nuw nsw i64 %i.bo, %i.kl            ; 4 uses
  %i.kn = icmp ugt i64 %i.km, %i.bq
  br i1 %i.kn, label %bb.bh, label %bb.by, !prof !154

bb.by:                                            ; preds = %bb.bx
  %i.ko = sub nuw i64 %i.bq, %i.km                ; 2 uses
  %i.kp = icmp ugt i64 %i.ko, 7
  br i1 %i.kp, label %bb.bz, label %bb.bi, !prof !156

bb.bz:                                            ; preds = %bb.by
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.km
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.kq, i64 noundef 8)
  %i.kr = or disjoint i64 %i.bm, 9
  %i.ks = mul nuw nsw i64 %i.kr, %i.d
  %i.kt = add nuw nsw i64 %i.bo, %i.ks            ; 4 uses
  %i.ku = icmp ugt i64 %i.kt, %i.bq
  br i1 %i.ku, label %bb.bh, label %bb.ca, !prof !154

bb.ca:                                            ; preds = %bb.bz
  %i.kv = sub nuw i64 %i.bq, %i.kt                ; 2 uses
  %i.kw = icmp ugt i64 %i.kv, 7
  br i1 %i.kw, label %bb.cb, label %bb.bi, !prof !156

bb.cb:                                            ; preds = %bb.ca
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.kt
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.kx, i64 noundef 8)
  %i.ky = or disjoint i64 %i.bm, 10
  %i.kz = mul nuw nsw i64 %i.ky, %i.d
  %i.la = add nuw nsw i64 %i.bo, %i.kz            ; 4 uses
  %i.lb = icmp ugt i64 %i.la, %i.bq
  br i1 %i.lb, label %bb.bh, label %bb.cc, !prof !154

bb.cc:                                            ; preds = %bb.cb
  %i.lc = sub nuw i64 %i.bq, %i.la                ; 2 uses
  %i.ld = icmp ugt i64 %i.lc, 7
  br i1 %i.ld, label %bb.cd, label %bb.bi, !prof !156

bb.cd:                                            ; preds = %bb.cc
  %i.le = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.la
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.le, i64 noundef 8)
  %i.lf = or disjoint i64 %i.bm, 11
  %i.lg = mul nuw nsw i64 %i.lf, %i.d
  %i.lh = add nuw nsw i64 %i.bo, %i.lg            ; 4 uses
  %i.li = icmp ugt i64 %i.lh, %i.bq
  br i1 %i.li, label %bb.bh, label %bb.ce, !prof !154

bb.ce:                                            ; preds = %bb.cd
  %i.lj = sub nuw i64 %i.bq, %i.lh                ; 2 uses
  %i.lk = icmp ugt i64 %i.lj, 7
  br i1 %i.lk, label %bb.cf, label %bb.bi, !prof !156

bb.cf:                                            ; preds = %bb.ce
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.lh
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.ll, i64 noundef 8)
  %i.lm = or disjoint i64 %i.bm, 12
  %i.ln = mul nuw nsw i64 %i.lm, %i.d
  %i.lo = add nuw nsw i64 %i.bo, %i.ln            ; 4 uses
  %i.lp = icmp ugt i64 %i.lo, %i.bq
  br i1 %i.lp, label %bb.bh, label %bb.cg, !prof !154

bb.cg:                                            ; preds = %bb.cf
  %i.lq = sub nuw i64 %i.bq, %i.lo                ; 2 uses
  %i.lr = icmp ugt i64 %i.lq, 7
  br i1 %i.lr, label %bb.ch, label %bb.bi, !prof !156

bb.ch:                                            ; preds = %bb.cg
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.lo
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.ls, i64 noundef 8)
  %i.lt = or disjoint i64 %i.bm, 13
  %i.lu = mul nuw nsw i64 %i.lt, %i.d
  %i.lv = add nuw nsw i64 %i.bo, %i.lu            ; 4 uses
  %i.lw = icmp ugt i64 %i.lv, %i.bq
  br i1 %i.lw, label %bb.bh, label %bb.ci, !prof !154

bb.ci:                                            ; preds = %bb.ch
  %i.lx = sub nuw i64 %i.bq, %i.lv                ; 2 uses
  %i.ly = icmp ugt i64 %i.lx, 7
  br i1 %i.ly, label %bb.cj, label %bb.bi, !prof !156

bb.cj:                                            ; preds = %bb.ci
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.lv
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.lz, i64 noundef 8)
  %i.ma = or disjoint i64 %i.bm, 14
  %i.mb = mul nuw nsw i64 %i.ma, %i.d
  %i.mc = add nuw nsw i64 %i.bo, %i.mb            ; 4 uses
  %i.md = icmp ugt i64 %i.mc, %i.bq
  br i1 %i.md, label %bb.bh, label %bb.ck, !prof !154

bb.ck:                                            ; preds = %bb.cj
  %i.me = sub nuw i64 %i.bq, %i.mc                ; 2 uses
  %i.mf = icmp ugt i64 %i.me, 7
  br i1 %i.mf, label %bb.cl, label %bb.bi, !prof !156

bb.cl:                                            ; preds = %bb.ck
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.mc
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.mg, i64 noundef 8)
  %i.mh = or disjoint i64 %i.bm, 15
  %i.mi = mul nuw nsw i64 %i.mh, %i.d
  %i.mj = add nuw nsw i64 %i.bo, %i.mi            ; 4 uses
  %i.mk = icmp ugt i64 %i.mj, %i.bq
  br i1 %i.mk, label %bb.bh, label %bb.cm, !prof !154

bb.cm:                                            ; preds = %bb.cl
  %i.ml = sub nuw i64 %i.bq, %i.mj                ; 2 uses
  %i.mm = icmp ugt i64 %i.ml, 7
  br i1 %i.mm, label %.preheader159, label %bb.bi, !prof !156

.preheader159:                                    ; preds = %bb.cm
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.mj
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.mn, i64 noundef 8)
  %i.mo = shl nuw nsw i64 %2, 3                   ; 8 uses
  %i.mp = shl nuw nsw i64 %1, 3
  %i.mq = add nsw i64 %i.mp, -4                   ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ms = load i64, ptr %i.mr, align 8, !noundef !5 ; 18 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !nonnull !5 ; 8 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mw = load i64, ptr %i.mv, align 8            ; 18 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.my = load ptr, ptr %i.mx, align 8, !nonnull !5 ; 8 uses
  %i.mz = mul nuw nsw i64 %i.mo, %i.e
  %i.na = add nuw nsw i64 %i.mq, %i.mz            ; 8 uses
  %i.nb = icmp ugt i64 %i.na, %i.ms
  br i1 %i.nb, label %bb.y, label %bb.x, !prof !154

.loopexit152:                                     ; preds = %.loopexit150, %.loopexit152.loopexit231, %.loopexit158
  %.sroa.01.4 = phi i1 [ true, %.loopexit152.loopexit231 ], [ false, %.loopexit158 ], [ true, %.loopexit150 ] ; 2 uses
  %.not121 = icmp eq i64 %2, 0
  br i1 %.not121, label %.loopexit146, label %bb.v

.preheader153:                                    ; preds = %.loopexit155
  %i.nc = shl nuw nsw i64 %2, 3                   ; 8 uses
  %i.nd = shl nuw nsw i64 %1, 3                   ; 8 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !5 ; 18 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nh = load ptr, ptr %i.ng, align 8, !nonnull !5 ; 8 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nj = load i64, ptr %i.ni, align 8            ; 18 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nl = load ptr, ptr %i.nk, align 8, !nonnull !5 ; 8 uses
  %i.nm = mul nuw nsw i64 %i.nc, %i.e
  %i.nn = add nuw nsw i64 %i.nm, %i.nd            ; 8 uses
  %i.no = icmp ugt i64 %i.nn, %i.nf
  br i1 %i.no, label %bb.co, label %bb.cn, !prof !154

.preheader156:                                    ; preds = %bb.w, %.loopexit155
  %.sroa.077.0214 = phi i64 [ %i.nq, %.loopexit155 ], [ 3, %bb.w ]
  %.sroa.051.0213 = phi i64 [ %i.np, %.loopexit155 ], [ 4, %bb.w ] ; 2 uses
  %i.np = add nuw nsw i64 %.sroa.051.0213, 4
  %i.nq = add nsw i64 %.sroa.077.0214, -1         ; 2 uses
  %i.nr = add nsw i64 %i.du, %.sroa.051.0213      ; 16 uses
  %i.ns = add i64 %i.nr, %i.dz                    ; 4 uses
  %i.nt = icmp ugt i64 %i.ns, %i.dw
  br i1 %i.nt, label %bb.dx, label %bb.dw, !prof !154

bb.cn:                                            ; preds = %.preheader153
  %i.nu = sub nuw i64 %i.nf, %i.nn                ; 2 uses
  %i.nv = icmp ugt i64 %i.nu, 7
  br i1 %i.nv, label %bb.cq, label %bb.cp, !prof !156

bb.co:                                            ; preds = %bb.ds, %bb.do, %bb.dk, %bb.dg, %bb.dc, %bb.cy, %bb.cu, %.preheader153
  %.lcssa237 = phi i64 [ %i.nn, %.preheader153 ], [ %i.od, %bb.cu ], [ %i.oo, %bb.cy ], [ %i.oz, %bb.dc ], [ %i.pk, %bb.dg ], [ %i.pv, %bb.dk ], [ %i.qg, %bb.do ], [ %i.qr, %bb.ds ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa237, i64 noundef %i.nf, i64 noundef %i.nf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

bb.cp:                                            ; preds = %bb.dt, %bb.dp, %bb.dl, %bb.dh, %bb.dd, %bb.cz, %bb.cv, %bb.cn
  %.lcssa242 = phi i64 [ %i.nu, %bb.cn ], [ %i.of, %bb.cv ], [ %i.oq, %bb.cz ], [ %i.pb, %bb.dd ], [ %i.pm, %bb.dh ], [ %i.px, %bb.dl ], [ %i.qi, %bb.dp ], [ %i.qt, %bb.dt ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %.lcssa242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #26
  unreachable

bb.cq:                                            ; preds = %bb.cn
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nn
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.nw, i64 noundef 8)
  %i.nx = icmp ugt i64 %i.nn, %i.nj
  br i1 %i.nx, label %bb.cs, label %bb.cr, !prof !154

bb.cr:                                            ; preds = %bb.cq
  %i.ny = sub nuw i64 %i.nj, %i.nn                ; 2 uses
  %i.nz = icmp ugt i64 %i.ny, 7
  br i1 %i.nz, label %bb.cu, label %bb.ct, !prof !156

bb.cs:                                            ; preds = %bb.du, %bb.dq, %bb.dm, %bb.di, %bb.de, %bb.da, %bb.cw, %bb.cq
  %.lcssa239 = phi i64 [ %i.nn, %bb.cq ], [ %i.od, %bb.cw ], [ %i.oo, %bb.da ], [ %i.oz, %bb.de ], [ %i.pk, %bb.di ], [ %i.pv, %bb.dm ], [ %i.qg, %bb.dq ], [ %i.qr, %bb.du ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa239, i64 noundef %i.nj, i64 noundef %i.nj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #26
  unreachable

bb.ct:                                            ; preds = %bb.dv, %bb.dr, %bb.dn, %bb.dj, %bb.df, %bb.db, %bb.cx, %bb.cr
  %.lcssa246 = phi i64 [ %i.ny, %bb.cr ], [ %i.oj, %bb.cx ], [ %i.ou, %bb.db ], [ %i.pf, %bb.df ], [ %i.pq, %bb.dj ], [ %i.qb, %bb.dn ], [ %i.qm, %bb.dr ], [ %i.qx, %bb.dv ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %.lcssa246, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #26
  unreachable

bb.cu:                                            ; preds = %bb.cr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nn
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.oa, i64 noundef 8)
  %i.ob = or disjoint i64 %i.nc, 1
  %i.oc = mul nuw nsw i64 %i.ob, %i.e
  %i.od = add nuw nsw i64 %i.oc, %i.nd            ; 8 uses
  %i.oe = icmp ugt i64 %i.od, %i.nf
  br i1 %i.oe, label %bb.co, label %bb.cv, !prof !154

bb.cv:                                            ; preds = %bb.cu
  %i.of = sub nuw i64 %i.nf, %i.od                ; 2 uses
  %i.og = icmp ugt i64 %i.of, 7
  br i1 %i.og, label %bb.cw, label %bb.cp, !prof !156

bb.cw:                                            ; preds = %bb.cv
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.od
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.oh, i64 noundef 8)
  %i.oi = icmp ugt i64 %i.od, %i.nj
  br i1 %i.oi, label %bb.cs, label %bb.cx, !prof !154

bb.cx:                                            ; preds = %bb.cw
  %i.oj = sub nuw i64 %i.nj, %i.od                ; 2 uses
  %i.ok = icmp ugt i64 %i.oj, 7
  br i1 %i.ok, label %bb.cy, label %bb.ct, !prof !156

bb.cy:                                            ; preds = %bb.cx
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.od
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ol, i64 noundef 8)
  %i.om = or disjoint i64 %i.nc, 2
  %i.on = mul nuw nsw i64 %i.om, %i.e
  %i.oo = add nuw nsw i64 %i.on, %i.nd            ; 8 uses
  %i.op = icmp ugt i64 %i.oo, %i.nf
  br i1 %i.op, label %bb.co, label %bb.cz, !prof !154

bb.cz:                                            ; preds = %bb.cy
  %i.oq = sub nuw i64 %i.nf, %i.oo                ; 2 uses
  %i.or = icmp ugt i64 %i.oq, 7
  br i1 %i.or, label %bb.da, label %bb.cp, !prof !156

bb.da:                                            ; preds = %bb.cz
  %i.os = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.oo
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.os, i64 noundef 8)
  %i.ot = icmp ugt i64 %i.oo, %i.nj
  br i1 %i.ot, label %bb.cs, label %bb.db, !prof !154

bb.db:                                            ; preds = %bb.da
  %i.ou = sub nuw i64 %i.nj, %i.oo                ; 2 uses
  %i.ov = icmp ugt i64 %i.ou, 7
  br i1 %i.ov, label %bb.dc, label %bb.ct, !prof !156

bb.dc:                                            ; preds = %bb.db
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.oo
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ow, i64 noundef 8)
  %i.ox = or disjoint i64 %i.nc, 3
  %i.oy = mul nuw nsw i64 %i.ox, %i.e
  %i.oz = add nuw nsw i64 %i.oy, %i.nd            ; 8 uses
  %i.pa = icmp ugt i64 %i.oz, %i.nf
  br i1 %i.pa, label %bb.co, label %bb.dd, !prof !154

bb.dd:                                            ; preds = %bb.dc
  %i.pb = sub nuw i64 %i.nf, %i.oz                ; 2 uses
  %i.pc = icmp ugt i64 %i.pb, 7
  br i1 %i.pc, label %bb.de, label %bb.cp, !prof !156

bb.de:                                            ; preds = %bb.dd
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.oz
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.pd, i64 noundef 8)
  %i.pe = icmp ugt i64 %i.oz, %i.nj
  br i1 %i.pe, label %bb.cs, label %bb.df, !prof !154

bb.df:                                            ; preds = %bb.de
  %i.pf = sub nuw i64 %i.nj, %i.oz                ; 2 uses
  %i.pg = icmp ugt i64 %i.pf, 7
  br i1 %i.pg, label %bb.dg, label %bb.ct, !prof !156

bb.dg:                                            ; preds = %bb.df
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.oz
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ph, i64 noundef 8)
  %i.pi = or disjoint i64 %i.nc, 4
  %i.pj = mul nuw nsw i64 %i.pi, %i.e
  %i.pk = add nuw nsw i64 %i.pj, %i.nd            ; 8 uses
  %i.pl = icmp ugt i64 %i.pk, %i.nf
  br i1 %i.pl, label %bb.co, label %bb.dh, !prof !154

bb.dh:                                            ; preds = %bb.dg
  %i.pm = sub nuw i64 %i.nf, %i.pk                ; 2 uses
  %i.pn = icmp ugt i64 %i.pm, 7
  br i1 %i.pn, label %bb.di, label %bb.cp, !prof !156

bb.di:                                            ; preds = %bb.dh
  %i.po = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.pk
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.po, i64 noundef 8)
  %i.pp = icmp ugt i64 %i.pk, %i.nj
  br i1 %i.pp, label %bb.cs, label %bb.dj, !prof !154

bb.dj:                                            ; preds = %bb.di
  %i.pq = sub nuw i64 %i.nj, %i.pk                ; 2 uses
  %i.pr = icmp ugt i64 %i.pq, 7
  br i1 %i.pr, label %bb.dk, label %bb.ct, !prof !156

bb.dk:                                            ; preds = %bb.dj
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.pk
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ps, i64 noundef 8)
  %i.pt = or disjoint i64 %i.nc, 5
  %i.pu = mul nuw nsw i64 %i.pt, %i.e
  %i.pv = add nuw nsw i64 %i.pu, %i.nd            ; 8 uses
  %i.pw = icmp ugt i64 %i.pv, %i.nf
  br i1 %i.pw, label %bb.co, label %bb.dl, !prof !154

bb.dl:                                            ; preds = %bb.dk
  %i.px = sub nuw i64 %i.nf, %i.pv                ; 2 uses
  %i.py = icmp ugt i64 %i.px, 7
  br i1 %i.py, label %bb.dm, label %bb.cp, !prof !156

bb.dm:                                            ; preds = %bb.dl
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.pv
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.pz, i64 noundef 8)
  %i.qa = icmp ugt i64 %i.pv, %i.nj
  br i1 %i.qa, label %bb.cs, label %bb.dn, !prof !154

bb.dn:                                            ; preds = %bb.dm
  %i.qb = sub nuw i64 %i.nj, %i.pv                ; 2 uses
  %i.qc = icmp ugt i64 %i.qb, 7
  br i1 %i.qc, label %bb.do, label %bb.ct, !prof !156

bb.do:                                            ; preds = %bb.dn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.pv
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.qd, i64 noundef 8)
  %i.qe = or disjoint i64 %i.nc, 6
  %i.qf = mul nuw nsw i64 %i.qe, %i.e
  %i.qg = add nuw nsw i64 %i.qf, %i.nd            ; 8 uses
  %i.qh = icmp ugt i64 %i.qg, %i.nf
  br i1 %i.qh, label %bb.co, label %bb.dp, !prof !154

bb.dp:                                            ; preds = %bb.do
  %i.qi = sub nuw i64 %i.nf, %i.qg                ; 2 uses
  %i.qj = icmp ugt i64 %i.qi, 7
  br i1 %i.qj, label %bb.dq, label %bb.cp, !prof !156

bb.dq:                                            ; preds = %bb.dp
  %i.qk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.qg
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.qk, i64 noundef 8)
  %i.ql = icmp ugt i64 %i.qg, %i.nj
  br i1 %i.ql, label %bb.cs, label %bb.dr, !prof !154

bb.dr:                                            ; preds = %bb.dq
  %i.qm = sub nuw i64 %i.nj, %i.qg                ; 2 uses
  %i.qn = icmp ugt i64 %i.qm, 7
  br i1 %i.qn, label %bb.ds, label %bb.ct, !prof !156

bb.ds:                                            ; preds = %bb.dr
  %i.qo = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.qg
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.qo, i64 noundef 8)
  %i.qp = or disjoint i64 %i.nc, 7
  %i.qq = mul nuw nsw i64 %i.qp, %i.e
  %i.qr = add nuw nsw i64 %i.qq, %i.nd            ; 8 uses
  %i.qs = icmp ugt i64 %i.qr, %i.nf
  br i1 %i.qs, label %bb.co, label %bb.dt, !prof !154

bb.dt:                                            ; preds = %bb.ds
  %i.qt = sub nuw i64 %i.nf, %i.qr                ; 2 uses
  %i.qu = icmp ugt i64 %i.qt, 7
  br i1 %i.qu, label %bb.du, label %bb.cp, !prof !156

bb.du:                                            ; preds = %bb.dt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.qr
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.qv, i64 noundef 8)
  %i.qw = icmp ugt i64 %i.qr, %i.nj
  br i1 %i.qw, label %bb.cs, label %bb.dv, !prof !154

bb.dv:                                            ; preds = %bb.du
  %i.qx = sub nuw i64 %i.nj, %i.qr                ; 2 uses
  %i.qy = icmp ugt i64 %i.qx, 7
  br i1 %i.qy, label %.loopexit152.loopexit231, label %bb.ct, !prof !156

.loopexit152.loopexit231:                         ; preds = %bb.dv
  %i.qz = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.qr
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.qz, i64 noundef 8)
  br label %.loopexit152

bb.dw:                                            ; preds = %.preheader156
  %i.ra = sub nuw i64 %i.dw, %i.ns                ; 2 uses
  %i.rb = icmp ugt i64 %i.ra, 7
  br i1 %i.rb, label %bb.dz, label %bb.dy, !prof !156

bb.dx:                                            ; preds = %bb.fb, %bb.ez, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.en, %bb.el, %bb.ej, %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.dz, %.preheader156
  %.lcssa248 = phi i64 [ %i.ns, %.preheader156 ], [ %i.rd, %bb.dz ], [ %i.ri, %bb.eb ], [ %i.rn, %bb.ed ], [ %i.rs, %bb.ef ], [ %i.rx, %bb.eh ], [ %i.sc, %bb.ej ], [ %i.sh, %bb.el ], [ %i.sm, %bb.en ], [ %i.sr, %bb.ep ], [ %i.sw, %bb.er ], [ %i.tb, %bb.et ], [ %i.tg, %bb.ev ], [ %i.tl, %bb.ex ], [ %i.tq, %bb.ez ], [ %i.tv, %bb.fb ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa248, i64 noundef %i.dw, i64 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
  unreachable

bb.dy:                                            ; preds = %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dw
  %.lcssa251 = phi i64 [ %i.ra, %bb.dw ], [ %i.rf, %bb.ea ], [ %i.rk, %bb.ec ], [ %i.rp, %bb.ee ], [ %i.ru, %bb.eg ], [ %i.rz, %bb.ei ], [ %i.se, %bb.ek ], [ %i.sj, %bb.em ], [ %i.so, %bb.eo ], [ %i.st, %bb.eq ], [ %i.sy, %bb.es ], [ %i.td, %bb.eu ], [ %i.ti, %bb.ew ], [ %i.tn, %bb.ey ], [ %i.ts, %bb.fa ], [ %i.tx, %bb.fc ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %.lcssa251, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #26
  unreachable

bb.dz:                                            ; preds = %bb.dw
  %i.rc = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ns
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.rc, i64 noundef 8)
  %i.rd = add i64 %i.nr, %i.eb                    ; 4 uses
  %i.re = icmp ugt i64 %i.rd, %i.dw
  br i1 %i.re, label %bb.dx, label %bb.ea, !prof !154

bb.ea:                                            ; preds = %bb.dz
  %i.rf = sub nuw i64 %i.dw, %i.rd                ; 2 uses
  %i.rg = icmp ugt i64 %i.rf, 7
  br i1 %i.rg, label %bb.eb, label %bb.dy, !prof !156

bb.eb:                                            ; preds = %bb.ea
  %i.rh = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.rd
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.rh, i64 noundef 8)
  %i.ri = add i64 %i.nr, %i.ed                    ; 4 uses
  %i.rj = icmp ugt i64 %i.ri, %i.dw
  br i1 %i.rj, label %bb.dx, label %bb.ec, !prof !154

bb.ec:                                            ; preds = %bb.eb
  %i.rk = sub nuw i64 %i.dw, %i.ri                ; 2 uses
  %i.rl = icmp ugt i64 %i.rk, 7
  br i1 %i.rl, label %bb.ed, label %bb.dy, !prof !156

bb.ed:                                            ; preds = %bb.ec
  %i.rm = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ri
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.rm, i64 noundef 8)
  %i.rn = add i64 %i.nr, %i.ef                    ; 4 uses
  %i.ro = icmp ugt i64 %i.rn, %i.dw
  br i1 %i.ro, label %bb.dx, label %bb.ee, !prof !154

bb.ee:                                            ; preds = %bb.ed
  %i.rp = sub nuw i64 %i.dw, %i.rn                ; 2 uses
  %i.rq = icmp ugt i64 %i.rp, 7
  br i1 %i.rq, label %bb.ef, label %bb.dy, !prof !156

bb.ef:                                            ; preds = %bb.ee
  %i.rr = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.rn
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.rr, i64 noundef 8)
  %i.rs = add i64 %i.nr, %i.eh                    ; 4 uses
  %i.rt = icmp ugt i64 %i.rs, %i.dw
  br i1 %i.rt, label %bb.dx, label %bb.eg, !prof !154

bb.eg:                                            ; preds = %bb.ef
  %i.ru = sub nuw i64 %i.dw, %i.rs                ; 2 uses
  %i.rv = icmp ugt i64 %i.ru, 7
  br i1 %i.rv, label %bb.eh, label %bb.dy, !prof !156

bb.eh:                                            ; preds = %bb.eg
  %i.rw = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.rs
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.rw, i64 noundef 8)
  %i.rx = add i64 %i.nr, %i.ej                    ; 4 uses
  %i.ry = icmp ugt i64 %i.rx, %i.dw
  br i1 %i.ry, label %bb.dx, label %bb.ei, !prof !154

bb.ei:                                            ; preds = %bb.eh
  %i.rz = sub nuw i64 %i.dw, %i.rx                ; 2 uses
  %i.sa = icmp ugt i64 %i.rz, 7
  br i1 %i.sa, label %bb.ej, label %bb.dy, !prof !156

bb.ej:                                            ; preds = %bb.ei
  %i.sb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.rx
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.sb, i64 noundef 8)
  %i.sc = add i64 %i.nr, %i.el                    ; 4 uses
  %i.sd = icmp ugt i64 %i.sc, %i.dw
  br i1 %i.sd, label %bb.dx, label %bb.ek, !prof !154

bb.ek:                                            ; preds = %bb.ej
  %i.se = sub nuw i64 %i.dw, %i.sc                ; 2 uses
  %i.sf = icmp ugt i64 %i.se, 7
  br i1 %i.sf, label %bb.el, label %bb.dy, !prof !156

bb.el:                                            ; preds = %bb.ek
  %i.sg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.sc
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.sg, i64 noundef 8)
  %i.sh = add i64 %i.nr, %i.en                    ; 4 uses
  %i.si = icmp ugt i64 %i.sh, %i.dw
  br i1 %i.si, label %bb.dx, label %bb.em, !prof !154

bb.em:                                            ; preds = %bb.el
  %i.sj = sub nuw i64 %i.dw, %i.sh                ; 2 uses
  %i.sk = icmp ugt i64 %i.sj, 7
  br i1 %i.sk, label %bb.en, label %bb.dy, !prof !156

bb.en:                                            ; preds = %bb.em
  %i.sl = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.sh
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.sl, i64 noundef 8)
  %i.sm = add i64 %i.nr, %i.ep                    ; 4 uses
  %i.sn = icmp ugt i64 %i.sm, %i.dw
  br i1 %i.sn, label %bb.dx, label %bb.eo, !prof !154

bb.eo:                                            ; preds = %bb.en
  %i.so = sub nuw i64 %i.dw, %i.sm                ; 2 uses
  %i.sp = icmp ugt i64 %i.so, 7
  br i1 %i.sp, label %bb.ep, label %bb.dy, !prof !156

bb.ep:                                            ; preds = %bb.eo
  %i.sq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.sm
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.sq, i64 noundef 8)
  %i.sr = add i64 %i.nr, %i.er                    ; 4 uses
  %i.ss = icmp ugt i64 %i.sr, %i.dw
  br i1 %i.ss, label %bb.dx, label %bb.eq, !prof !154

bb.eq:                                            ; preds = %bb.ep
  %i.st = sub nuw i64 %i.dw, %i.sr                ; 2 uses
  %i.su = icmp ugt i64 %i.st, 7
  br i1 %i.su, label %bb.er, label %bb.dy, !prof !156

bb.er:                                            ; preds = %bb.eq
  %i.sv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.sr
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.sv, i64 noundef 8)
  %i.sw = add i64 %i.nr, %i.et                    ; 4 uses
  %i.sx = icmp ugt i64 %i.sw, %i.dw
  br i1 %i.sx, label %bb.dx, label %bb.es, !prof !154

bb.es:                                            ; preds = %bb.er
  %i.sy = sub nuw i64 %i.dw, %i.sw                ; 2 uses
  %i.sz = icmp ugt i64 %i.sy, 7
  br i1 %i.sz, label %bb.et, label %bb.dy, !prof !156

bb.et:                                            ; preds = %bb.es
  %i.ta = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.sw
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ta, i64 noundef 8)
  %i.tb = add i64 %i.nr, %i.ev                    ; 4 uses
  %i.tc = icmp ugt i64 %i.tb, %i.dw
  br i1 %i.tc, label %bb.dx, label %bb.eu, !prof !154

bb.eu:                                            ; preds = %bb.et
  %i.td = sub nuw i64 %i.dw, %i.tb                ; 2 uses
  %i.te = icmp ugt i64 %i.td, 7
  br i1 %i.te, label %bb.ev, label %bb.dy, !prof !156

bb.ev:                                            ; preds = %bb.eu
  %i.tf = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.tb
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.tf, i64 noundef 8)
  %i.tg = add i64 %i.nr, %i.ex                    ; 4 uses
  %i.th = icmp ugt i64 %i.tg, %i.dw
  br i1 %i.th, label %bb.dx, label %bb.ew, !prof !154

bb.ew:                                            ; preds = %bb.ev
  %i.ti = sub nuw i64 %i.dw, %i.tg                ; 2 uses
  %i.tj = icmp ugt i64 %i.ti, 7
  br i1 %i.tj, label %bb.ex, label %bb.dy, !prof !156

bb.ex:                                            ; preds = %bb.ew
  %i.tk = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.tg
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.tk, i64 noundef 8)
  %i.tl = add i64 %i.nr, %i.ez                    ; 4 uses
  %i.tm = icmp ugt i64 %i.tl, %i.dw
  br i1 %i.tm, label %bb.dx, label %bb.ey, !prof !154

bb.ey:                                            ; preds = %bb.ex
  %i.tn = sub nuw i64 %i.dw, %i.tl                ; 2 uses
  %i.to = icmp ugt i64 %i.tn, 7
  br i1 %i.to, label %bb.ez, label %bb.dy, !prof !156

bb.ez:                                            ; preds = %bb.ey
  %i.tp = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.tl
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.tp, i64 noundef 8)
  %i.tq = add i64 %i.nr, %i.fb                    ; 4 uses
  %i.tr = icmp ugt i64 %i.tq, %i.dw
  br i1 %i.tr, label %bb.dx, label %bb.fa, !prof !154

bb.fa:                                            ; preds = %bb.ez
  %i.ts = sub nuw i64 %i.dw, %i.tq                ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 7
  br i1 %i.tt, label %bb.fb, label %bb.dy, !prof !156

bb.fb:                                            ; preds = %bb.fa
  %i.tu = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.tq
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.tu, i64 noundef 8)
  %i.tv = add i64 %i.nr, %i.fd                    ; 4 uses
  %i.tw = icmp ugt i64 %i.tv, %i.dw
  br i1 %i.tw, label %bb.dx, label %bb.fc, !prof !154

bb.fc:                                            ; preds = %bb.fb
  %i.tx = sub nuw i64 %i.dw, %i.tv                ; 2 uses
  %i.ty = icmp ugt i64 %i.tx, 7
  br i1 %i.ty, label %.loopexit155, label %bb.dy, !prof !156

.loopexit155:                                     ; preds = %bb.fc
  %i.tz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.tv
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.tz, i64 noundef 8)
  %.not119 = icmp eq i64 %i.nq, 0
  br i1 %.not119, label %.preheader153, label %.preheader156

.preheader151:                                    ; preds = %bb.w, %.loopexit150
  %.sroa.046.0218 = phi i64 [ %i.ua, %.loopexit150 ], [ 4, %bb.w ] ; 2 uses
  %.sroa.076.0217 = phi i64 [ %i.ub, %.loopexit150 ], [ 3, %bb.w ]
  %i.ua = add nuw nsw i64 %.sroa.046.0218, 4
  %i.ub = add nsw i64 %.sroa.076.0217, -1         ; 2 uses
  %i.uc = add nsw i64 %i.du, %.sroa.046.0218      ; 16 uses
  %i.ud = add i64 %i.uc, %i.dz                    ; 4 uses
  %i.ue = icmp ugt i64 %i.ud, %i.dw
  br i1 %i.ue, label %bb.ff, label %bb.fe, !prof !154

.loopexit146:                                     ; preds = %.loopexit152
  br i1 %.sroa.01.4, label %bb.fd, label %.loopexit140

bb.fd:                                            ; preds = %.preheader149, %.preheader145, %.loopexit146
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.ug = load i8, ptr %i.uf, align 2, !range !40, !noundef !5
  %i.uh = trunc nuw i8 %i.ug to i1
  %i.ui = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.uj = shl nuw nsw i64 %1, 4                   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ul = load ptr, ptr %i.uk, align 8, !nonnull !5, !noundef !5 ; 32 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.un = load i64, ptr %i.um, align 8, !noundef !5 ; 32 uses
  br i1 %i.uh, label %.loopexit, label %.loopexit143

.preheader141:                                    ; preds = %.loopexit143
  %i.uo = shl nuw nsw i64 %2, 3
  %i.up = or disjoint i64 %i.uo, 4
  %i.uq = shl nuw nsw i64 %1, 3
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.us = load ptr, ptr %i.ur, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.uu = load i64, ptr %i.ut, align 8, !noundef !5 ; 8 uses
  %i.uv = mul nuw nsw i64 %i.e, %i.up
  %i.uw = add nuw nsw i64 %i.uv, %i.uq            ; 9 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uy = load ptr, ptr %i.ux, align 8, !nonnull !5 ; 8 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.va = load i64, ptr %i.uz, align 8            ; 8 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.uw, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.uw, i64 noundef %i.e)
  %i.vb = or disjoint i64 %i.uw, 1                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.vb, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.vb, i64 noundef %i.e)
  %i.vc = or disjoint i64 %i.uw, 2                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.vc, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.vc, i64 noundef %i.e)
  %i.vd = or disjoint i64 %i.uw, 3                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.vd, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.vd, i64 noundef %i.e)
  %i.ve = or disjoint i64 %i.uw, 4                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.ve, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.ve, i64 noundef %i.e)
  %i.vf = or disjoint i64 %i.uw, 5                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.vf, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.vf, i64 noundef %i.e)
  %i.vg = or disjoint i64 %i.uw, 6                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.vg, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.vg, i64 noundef %i.e)
  %i.vh = or disjoint i64 %i.uw, 7                ; 2 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.us, i64 noundef %i.uu, i64 noundef %i.vh, i64 noundef %i.e)
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.uy, i64 noundef %i.va, i64 noundef %i.vh, i64 noundef %i.e)
  br label %.loopexit140

.loopexit143:                                     ; preds = %bb.fd, %.loopexit143
  %.sroa.079.0224 = phi i64 [ %i.wb, %.loopexit143 ], [ 3, %bb.fd ]
  %.sroa.069.0223 = phi i64 [ %i.wa, %.loopexit143 ], [ 4, %bb.fd ] ; 2 uses
  %i.vi = add nuw nsw i64 %.sroa.069.0223, %i.ui
  %i.vj = mul i64 %i.vi, %i.d
  %i.vk = add i64 %i.vj, %i.uj                    ; 16 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vk, i64 noundef %i.d)
  %i.vl = or disjoint i64 %i.vk, 1
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vl, i64 noundef %i.d)
  %i.vm = or disjoint i64 %i.vk, 2
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vm, i64 noundef %i.d)
  %i.vn = or disjoint i64 %i.vk, 3
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vn, i64 noundef %i.d)
  %i.vo = or disjoint i64 %i.vk, 4
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vo, i64 noundef %i.d)
  %i.vp = or disjoint i64 %i.vk, 5
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vp, i64 noundef %i.d)
  %i.vq = or disjoint i64 %i.vk, 6
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vq, i64 noundef %i.d)
  %i.vr = or disjoint i64 %i.vk, 7
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vr, i64 noundef %i.d)
  %i.vs = or disjoint i64 %i.vk, 8
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vs, i64 noundef %i.d)
  %i.vt = or disjoint i64 %i.vk, 9
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vt, i64 noundef %i.d)
  %i.vu = or disjoint i64 %i.vk, 10
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vu, i64 noundef %i.d)
  %i.vv = or disjoint i64 %i.vk, 11
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vv, i64 noundef %i.d)
  %i.vw = or disjoint i64 %i.vk, 12
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vw, i64 noundef %i.d)
  %i.vx = or disjoint i64 %i.vk, 13
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vx, i64 noundef %i.d)
  %i.vy = or disjoint i64 %i.vk, 14
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vy, i64 noundef %i.d)
  %i.vz = or disjoint i64 %i.vk, 15
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef %.sroa.5.0.i, i8 noundef %spec.store.select.i, i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.vz, i64 noundef %i.d)
  %i.wa = add nuw nsw i64 %.sroa.069.0223, 4
  %i.wb = add nsw i64 %.sroa.079.0224, -1         ; 2 uses
  %.not122 = icmp eq i64 %i.wb, 0
  br i1 %.not122, label %.preheader141, label %.loopexit143

.loopexit:                                        ; preds = %bb.fd, %.loopexit
  %.sroa.078.0228 = phi i64 [ %i.wv, %.loopexit ], [ 3, %bb.fd ]
  %.sroa.064.0227 = phi i64 [ %i.wu, %.loopexit ], [ 4, %bb.fd ] ; 2 uses
  %i.wc = add nuw nsw i64 %.sroa.064.0227, %i.ui
  %i.wd = mul i64 %i.wc, %i.d
  %i.we = add i64 %i.wd, %i.uj                    ; 16 uses
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.we, i64 noundef %i.d)
  %i.wf = or disjoint i64 %i.we, 1
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wf, i64 noundef %i.d)
  %i.wg = or disjoint i64 %i.we, 2
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wg, i64 noundef %i.d)
  %i.wh = or disjoint i64 %i.we, 3
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wh, i64 noundef %i.d)
  %i.wi = or disjoint i64 %i.we, 4
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wi, i64 noundef %i.d)
  %i.wj = or disjoint i64 %i.we, 5
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wj, i64 noundef %i.d)
  %i.wk = or disjoint i64 %i.we, 6
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wk, i64 noundef %i.d)
  %i.wl = or disjoint i64 %i.we, 7
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wl, i64 noundef %i.d)
  %i.wm = or disjoint i64 %i.we, 8
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wm, i64 noundef %i.d)
  %i.wn = or disjoint i64 %i.we, 9
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wn, i64 noundef %i.d)
  %i.wo = or disjoint i64 %i.we, 10
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wo, i64 noundef %i.d)
  %i.wp = or disjoint i64 %i.we, 11
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wp, i64 noundef %i.d)
  %i.wq = or disjoint i64 %i.we, 12
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wq, i64 noundef %i.d)
  %i.wr = or disjoint i64 %i.we, 13
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wr, i64 noundef %i.d)
  %i.ws = or disjoint i64 %i.we, 14
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.ws, i64 noundef %i.d)
  %i.wt = or disjoint i64 %i.we, 15
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ul, i64 noundef %i.un, i64 noundef %i.wt, i64 noundef %i.d)
  %i.wu = add nuw nsw i64 %.sroa.064.0227, 4
  %i.wv = add nsw i64 %.sroa.078.0228, -1         ; 2 uses
  %.not123 = icmp eq i64 %i.wv, 0
  br i1 %.not123, label %.loopexit140, label %.loopexit

bb.fe:                                            ; preds = %.preheader151
  %i.ww = sub nuw i64 %i.dw, %i.ud                ; 2 uses
  %i.wx = icmp ugt i64 %i.ww, 7
  br i1 %i.wx, label %bb.fh, label %bb.fg, !prof !156

bb.ff:                                            ; preds = %bb.gj, %bb.gh, %bb.gf, %bb.gd, %bb.gb, %bb.fz, %bb.fx, %bb.fv, %bb.ft, %bb.fr, %bb.fp, %bb.fn, %bb.fl, %bb.fj, %bb.fh, %.preheader151
  %.lcssa = phi i64 [ %i.ud, %.preheader151 ], [ %i.wz, %bb.fh ], [ %i.xe, %bb.fj ], [ %i.xj, %bb.fl ], [ %i.xo, %bb.fn ], [ %i.xt, %bb.fp ], [ %i.xy, %bb.fr ], [ %i.yd, %bb.ft ], [ %i.yi, %bb.fv ], [ %i.yn, %bb.fx ], [ %i.ys, %bb.fz ], [ %i.yx, %bb.gb ], [ %i.zc, %bb.gd ], [ %i.zh, %bb.gf ], [ %i.zm, %bb.gh ], [ %i.zr, %bb.gj ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.dw, i64 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #26
  unreachable

bb.fg:                                            ; preds = %bb.gk, %bb.gi, %bb.gg, %bb.ge, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fe
  %.lcssa235 = phi i64 [ %i.ww, %bb.fe ], [ %i.xb, %bb.fi ], [ %i.xg, %bb.fk ], [ %i.xl, %bb.fm ], [ %i.xq, %bb.fo ], [ %i.xv, %bb.fq ], [ %i.ya, %bb.fs ], [ %i.yf, %bb.fu ], [ %i.yk, %bb.fw ], [ %i.yp, %bb.fy ], [ %i.yu, %bb.ga ], [ %i.yz, %bb.gc ], [ %i.ze, %bb.ge ], [ %i.zj, %bb.gg ], [ %i.zo, %bb.gi ], [ %i.zt, %bb.gk ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %.lcssa235, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #26
  unreachable

bb.fh:                                            ; preds = %bb.fe
  %i.wy = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ud
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.wy, i64 noundef 8)
  %i.wz = add i64 %i.uc, %i.eb                    ; 4 uses
  %i.xa = icmp ugt i64 %i.wz, %i.dw
  br i1 %i.xa, label %bb.ff, label %bb.fi, !prof !154

bb.fi:                                            ; preds = %bb.fh
  %i.xb = sub nuw i64 %i.dw, %i.wz                ; 2 uses
  %i.xc = icmp ugt i64 %i.xb, 7
  br i1 %i.xc, label %bb.fj, label %bb.fg, !prof !156

bb.fj:                                            ; preds = %bb.fi
  %i.xd = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.wz
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.xd, i64 noundef 8)
  %i.xe = add i64 %i.uc, %i.ed                    ; 4 uses
  %i.xf = icmp ugt i64 %i.xe, %i.dw
  br i1 %i.xf, label %bb.ff, label %bb.fk, !prof !154

bb.fk:                                            ; preds = %bb.fj
  %i.xg = sub nuw i64 %i.dw, %i.xe                ; 2 uses
  %i.xh = icmp ugt i64 %i.xg, 7
  br i1 %i.xh, label %bb.fl, label %bb.fg, !prof !156

bb.fl:                                            ; preds = %bb.fk
  %i.xi = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.xe
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.xi, i64 noundef 8)
  %i.xj = add i64 %i.uc, %i.ef                    ; 4 uses
  %i.xk = icmp ugt i64 %i.xj, %i.dw
  br i1 %i.xk, label %bb.ff, label %bb.fm, !prof !154

bb.fm:                                            ; preds = %bb.fl
  %i.xl = sub nuw i64 %i.dw, %i.xj                ; 2 uses
  %i.xm = icmp ugt i64 %i.xl, 7
  br i1 %i.xm, label %bb.fn, label %bb.fg, !prof !156

bb.fn:                                            ; preds = %bb.fm
  %i.xn = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.xj
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.xn, i64 noundef 8)
  %i.xo = add i64 %i.uc, %i.eh                    ; 4 uses
  %i.xp = icmp ugt i64 %i.xo, %i.dw
  br i1 %i.xp, label %bb.ff, label %bb.fo, !prof !154

bb.fo:                                            ; preds = %bb.fn
  %i.xq = sub nuw i64 %i.dw, %i.xo                ; 2 uses
  %i.xr = icmp ugt i64 %i.xq, 7
  br i1 %i.xr, label %bb.fp, label %bb.fg, !prof !156

bb.fp:                                            ; preds = %bb.fo
  %i.xs = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.xo
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.xs, i64 noundef 8)
  %i.xt = add i64 %i.uc, %i.ej                    ; 4 uses
  %i.xu = icmp ugt i64 %i.xt, %i.dw
  br i1 %i.xu, label %bb.ff, label %bb.fq, !prof !154

bb.fq:                                            ; preds = %bb.fp
  %i.xv = sub nuw i64 %i.dw, %i.xt                ; 2 uses
  %i.xw = icmp ugt i64 %i.xv, 7
  br i1 %i.xw, label %bb.fr, label %bb.fg, !prof !156

bb.fr:                                            ; preds = %bb.fq
  %i.xx = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.xt
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.xx, i64 noundef 8)
  %i.xy = add i64 %i.uc, %i.el                    ; 4 uses
  %i.xz = icmp ugt i64 %i.xy, %i.dw
  br i1 %i.xz, label %bb.ff, label %bb.fs, !prof !154

bb.fs:                                            ; preds = %bb.fr
  %i.ya = sub nuw i64 %i.dw, %i.xy                ; 2 uses
  %i.yb = icmp ugt i64 %i.ya, 7
  br i1 %i.yb, label %bb.ft, label %bb.fg, !prof !156

bb.ft:                                            ; preds = %bb.fs
  %i.yc = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.xy
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.yc, i64 noundef 8)
  %i.yd = add i64 %i.uc, %i.en                    ; 4 uses
  %i.ye = icmp ugt i64 %i.yd, %i.dw
  br i1 %i.ye, label %bb.ff, label %bb.fu, !prof !154

bb.fu:                                            ; preds = %bb.ft
  %i.yf = sub nuw i64 %i.dw, %i.yd                ; 2 uses
  %i.yg = icmp ugt i64 %i.yf, 7
  br i1 %i.yg, label %bb.fv, label %bb.fg, !prof !156

bb.fv:                                            ; preds = %bb.fu
  %i.yh = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.yd
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.yh, i64 noundef 8)
  %i.yi = add i64 %i.uc, %i.ep                    ; 4 uses
  %i.yj = icmp ugt i64 %i.yi, %i.dw
  br i1 %i.yj, label %bb.ff, label %bb.fw, !prof !154

bb.fw:                                            ; preds = %bb.fv
  %i.yk = sub nuw i64 %i.dw, %i.yi                ; 2 uses
  %i.yl = icmp ugt i64 %i.yk, 7
  br i1 %i.yl, label %bb.fx, label %bb.fg, !prof !156

bb.fx:                                            ; preds = %bb.fw
  %i.ym = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.yi
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.ym, i64 noundef 8)
  %i.yn = add i64 %i.uc, %i.er                    ; 4 uses
  %i.yo = icmp ugt i64 %i.yn, %i.dw
  br i1 %i.yo, label %bb.ff, label %bb.fy, !prof !154

bb.fy:                                            ; preds = %bb.fx
  %i.yp = sub nuw i64 %i.dw, %i.yn                ; 2 uses
  %i.yq = icmp ugt i64 %i.yp, 7
  br i1 %i.yq, label %bb.fz, label %bb.fg, !prof !156

bb.fz:                                            ; preds = %bb.fy
  %i.yr = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.yn
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.yr, i64 noundef 8)
  %i.ys = add i64 %i.uc, %i.et                    ; 4 uses
  %i.yt = icmp ugt i64 %i.ys, %i.dw
  br i1 %i.yt, label %bb.ff, label %bb.ga, !prof !154

bb.ga:                                            ; preds = %bb.fz
  %i.yu = sub nuw i64 %i.dw, %i.ys                ; 2 uses
  %i.yv = icmp ugt i64 %i.yu, 7
  br i1 %i.yv, label %bb.gb, label %bb.fg, !prof !156

bb.gb:                                            ; preds = %bb.ga
  %i.yw = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ys
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.yw, i64 noundef 8)
  %i.yx = add i64 %i.uc, %i.ev                    ; 4 uses
  %i.yy = icmp ugt i64 %i.yx, %i.dw
  br i1 %i.yy, label %bb.ff, label %bb.gc, !prof !154

bb.gc:                                            ; preds = %bb.gb
  %i.yz = sub nuw i64 %i.dw, %i.yx                ; 2 uses
  %i.za = icmp ugt i64 %i.yz, 7
  br i1 %i.za, label %bb.gd, label %bb.fg, !prof !156

bb.gd:                                            ; preds = %bb.gc
  %i.zb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.yx
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.zb, i64 noundef 8)
  %i.zc = add i64 %i.uc, %i.ex                    ; 4 uses
  %i.zd = icmp ugt i64 %i.zc, %i.dw
  br i1 %i.zd, label %bb.ff, label %bb.ge, !prof !154

bb.ge:                                            ; preds = %bb.gd
  %i.ze = sub nuw i64 %i.dw, %i.zc                ; 2 uses
  %i.zf = icmp ugt i64 %i.ze, 7
  br i1 %i.zf, label %bb.gf, label %bb.fg, !prof !156

bb.gf:                                            ; preds = %bb.ge
  %i.zg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.zc
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.zg, i64 noundef 8)
  %i.zh = add i64 %i.uc, %i.ez                    ; 4 uses
  %i.zi = icmp ugt i64 %i.zh, %i.dw
  br i1 %i.zi, label %bb.ff, label %bb.gg, !prof !154

bb.gg:                                            ; preds = %bb.gf
  %i.zj = sub nuw i64 %i.dw, %i.zh                ; 2 uses
  %i.zk = icmp ugt i64 %i.zj, 7
  br i1 %i.zk, label %bb.gh, label %bb.fg, !prof !156

bb.gh:                                            ; preds = %bb.gg
  %i.zl = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.zh
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.zl, i64 noundef 8)
  %i.zm = add i64 %i.uc, %i.fb                    ; 4 uses
  %i.zn = icmp ugt i64 %i.zm, %i.dw
  br i1 %i.zn, label %bb.ff, label %bb.gi, !prof !154

bb.gi:                                            ; preds = %bb.gh
  %i.zo = sub nuw i64 %i.dw, %i.zm                ; 2 uses
  %i.zp = icmp ugt i64 %i.zo, 7
  br i1 %i.zp, label %bb.gj, label %bb.fg, !prof !156

bb.gj:                                            ; preds = %bb.gi
  %i.zq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.zm
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.zq, i64 noundef 8)
  %i.zr = add i64 %i.uc, %i.fd                    ; 4 uses
  %i.zs = icmp ugt i64 %i.zr, %i.dw
  br i1 %i.zs, label %bb.ff, label %bb.gk, !prof !154

bb.gk:                                            ; preds = %bb.gj
  %i.zt = sub nuw i64 %i.dw, %i.zr                ; 2 uses
  %i.zu = icmp ugt i64 %i.zt, 7
  br i1 %i.zu, label %.loopexit150, label %bb.fg, !prof !156

.loopexit150:                                     ; preds = %bb.gk
  %i.zv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.zr
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bc, ptr noalias nofree noundef nonnull %i.zv, i64 noundef 8)
  %.not120 = icmp eq i64 %i.ub, 0
  br i1 %.not120, label %.loopexit152, label %.preheader151

bb.gl:                                            ; preds = %.preheader157
  %i.zw = sub nuw i64 %i.bq, %i.bu                ; 2 uses
  %i.zx = icmp ugt i64 %i.zw, 7
  br i1 %i.zx, label %bb.go, label %bb.gn, !prof !156

bb.gm:                                            ; preds = %bb.hq, %bb.ho, %bb.hm, %bb.hk, %bb.hi, %bb.hg, %bb.he, %bb.hc, %bb.ha, %bb.gy, %bb.gw, %bb.gu, %bb.gs, %bb.gq, %bb.go, %.preheader157
  %.lcssa253 = phi i64 [ %i.bu, %.preheader157 ], [ %i.aab, %bb.go ], [ %i.aai, %bb.gq ], [ %i.aap, %bb.gs ], [ %i.aaw, %bb.gu ], [ %i.abd, %bb.gw ], [ %i.abk, %bb.gy ], [ %i.abr, %bb.ha ], [ %i.aby, %bb.hc ], [ %i.acf, %bb.he ], [ %i.acm, %bb.hg ], [ %i.act, %bb.hi ], [ %i.ada, %bb.hk ], [ %i.adh, %bb.hm ], [ %i.ado, %bb.ho ], [ %i.adv, %bb.hq ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa253, i64 noundef %i.bq, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #26
  unreachable

bb.gn:                                            ; preds = %bb.hr, %bb.hp, %bb.hn, %bb.hl, %bb.hj, %bb.hh, %bb.hf, %bb.hd, %bb.hb, %bb.gz, %bb.gx, %bb.gv, %bb.gt, %bb.gr, %bb.gp, %bb.gl
  %.lcssa256 = phi i64 [ %i.zw, %bb.gl ], [ %i.aad, %bb.gp ], [ %i.aak, %bb.gr ], [ %i.aar, %bb.gt ], [ %i.aay, %bb.gv ], [ %i.abf, %bb.gx ], [ %i.abm, %bb.gz ], [ %i.abt, %bb.hb ], [ %i.aca, %bb.hd ], [ %i.ach, %bb.hf ], [ %i.aco, %bb.hh ], [ %i.acv, %bb.hj ], [ %i.adc, %bb.hl ], [ %i.adj, %bb.hn ], [ %i.adq, %bb.hp ], [ %i.adx, %bb.hr ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %.lcssa256, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #26
  unreachable

bb.go:                                            ; preds = %bb.gl
  %i.zy = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.zy, i64 noundef 8)
  %i.zz = or disjoint i64 %i.bm, 1
  %i.aaa = mul nuw nsw i64 %i.zz, %i.d
  %i.aab = add nuw nsw i64 %i.bo, %i.aaa          ; 4 uses
  %i.aac = icmp ugt i64 %i.aab, %i.bq
  br i1 %i.aac, label %bb.gm, label %bb.gp, !prof !154

bb.gp:                                            ; preds = %bb.go
  %i.aad = sub nuw i64 %i.bq, %i.aab              ; 2 uses
  %i.aae = icmp ugt i64 %i.aad, 7
  br i1 %i.aae, label %bb.gq, label %bb.gn, !prof !156

bb.gq:                                            ; preds = %bb.gp
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.aab
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.aaf, i64 noundef 8)
  %i.aag = or disjoint i64 %i.bm, 2
  %i.aah = mul nuw nsw i64 %i.aag, %i.d
  %i.aai = add nuw nsw i64 %i.bo, %i.aah          ; 4 uses
  %i.aaj = icmp ugt i64 %i.aai, %i.bq
  br i1 %i.aaj, label %bb.gm, label %bb.gr, !prof !154

bb.gr:                                            ; preds = %bb.gq
  %i.aak = sub nuw i64 %i.bq, %i.aai              ; 2 uses
  %i.aal = icmp ugt i64 %i.aak, 7
  br i1 %i.aal, label %bb.gs, label %bb.gn, !prof !156

bb.gs:                                            ; preds = %bb.gr
  %i.aam = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.aai
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.aam, i64 noundef 8)
  %i.aan = or disjoint i64 %i.bm, 3
  %i.aao = mul nuw nsw i64 %i.aan, %i.d
  %i.aap = add nuw nsw i64 %i.bo, %i.aao          ; 4 uses
  %i.aaq = icmp ugt i64 %i.aap, %i.bq
  br i1 %i.aaq, label %bb.gm, label %bb.gt, !prof !154

bb.gt:                                            ; preds = %bb.gs
  %i.aar = sub nuw i64 %i.bq, %i.aap              ; 2 uses
  %i.aas = icmp ugt i64 %i.aar, 7
  br i1 %i.aas, label %bb.gu, label %bb.gn, !prof !156

bb.gu:                                            ; preds = %bb.gt
  %i.aat = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.aap
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.aat, i64 noundef 8)
  %i.aau = or disjoint i64 %i.bm, 4
  %i.aav = mul nuw nsw i64 %i.aau, %i.d
  %i.aaw = add nuw nsw i64 %i.bo, %i.aav          ; 4 uses
  %i.aax = icmp ugt i64 %i.aaw, %i.bq
  br i1 %i.aax, label %bb.gm, label %bb.gv, !prof !154

bb.gv:                                            ; preds = %bb.gu
  %i.aay = sub nuw i64 %i.bq, %i.aaw              ; 2 uses
  %i.aaz = icmp ugt i64 %i.aay, 7
  br i1 %i.aaz, label %bb.gw, label %bb.gn, !prof !156

bb.gw:                                            ; preds = %bb.gv
  %i.aba = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.aaw
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.aba, i64 noundef 8)
  %i.abb = or disjoint i64 %i.bm, 5
  %i.abc = mul nuw nsw i64 %i.abb, %i.d
  %i.abd = add nuw nsw i64 %i.bo, %i.abc          ; 4 uses
  %i.abe = icmp ugt i64 %i.abd, %i.bq
  br i1 %i.abe, label %bb.gm, label %bb.gx, !prof !154

bb.gx:                                            ; preds = %bb.gw
  %i.abf = sub nuw i64 %i.bq, %i.abd              ; 2 uses
  %i.abg = icmp ugt i64 %i.abf, 7
  br i1 %i.abg, label %bb.gy, label %bb.gn, !prof !156

bb.gy:                                            ; preds = %bb.gx
  %i.abh = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.abd
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.abh, i64 noundef 8)
  %i.abi = or disjoint i64 %i.bm, 6
  %i.abj = mul nuw nsw i64 %i.abi, %i.d
  %i.abk = add nuw nsw i64 %i.bo, %i.abj          ; 4 uses
  %i.abl = icmp ugt i64 %i.abk, %i.bq
  br i1 %i.abl, label %bb.gm, label %bb.gz, !prof !154

bb.gz:                                            ; preds = %bb.gy
  %i.abm = sub nuw i64 %i.bq, %i.abk              ; 2 uses
  %i.abn = icmp ugt i64 %i.abm, 7
  br i1 %i.abn, label %bb.ha, label %bb.gn, !prof !156

bb.ha:                                            ; preds = %bb.gz
  %i.abo = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.abk
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.abo, i64 noundef 8)
  %i.abp = or disjoint i64 %i.bm, 7
  %i.abq = mul nuw nsw i64 %i.abp, %i.d
  %i.abr = add nuw nsw i64 %i.bo, %i.abq          ; 4 uses
  %i.abs = icmp ugt i64 %i.abr, %i.bq
  br i1 %i.abs, label %bb.gm, label %bb.hb, !prof !154

bb.hb:                                            ; preds = %bb.ha
  %i.abt = sub nuw i64 %i.bq, %i.abr              ; 2 uses
  %i.abu = icmp ugt i64 %i.abt, 7
  br i1 %i.abu, label %bb.hc, label %bb.gn, !prof !156

bb.hc:                                            ; preds = %bb.hb
  %i.abv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.abr
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.abv, i64 noundef 8)
  %i.abw = or disjoint i64 %i.bm, 8
  %i.abx = mul nuw nsw i64 %i.abw, %i.d
  %i.aby = add nuw nsw i64 %i.bo, %i.abx          ; 4 uses
  %i.abz = icmp ugt i64 %i.aby, %i.bq
  br i1 %i.abz, label %bb.gm, label %bb.hd, !prof !154

bb.hd:                                            ; preds = %bb.hc
  %i.aca = sub nuw i64 %i.bq, %i.aby              ; 2 uses
  %i.acb = icmp ugt i64 %i.aca, 7
  br i1 %i.acb, label %bb.he, label %bb.gn, !prof !156

bb.he:                                            ; preds = %bb.hd
  %i.acc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.aby
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.acc, i64 noundef 8)
  %i.acd = or disjoint i64 %i.bm, 9
  %i.ace = mul nuw nsw i64 %i.acd, %i.d
  %i.acf = add nuw nsw i64 %i.bo, %i.ace          ; 4 uses
  %i.acg = icmp ugt i64 %i.acf, %i.bq
  br i1 %i.acg, label %bb.gm, label %bb.hf, !prof !154

bb.hf:                                            ; preds = %bb.he
  %i.ach = sub nuw i64 %i.bq, %i.acf              ; 2 uses
  %i.aci = icmp ugt i64 %i.ach, 7
  br i1 %i.aci, label %bb.hg, label %bb.gn, !prof !156

bb.hg:                                            ; preds = %bb.hf
  %i.acj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.acf
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.acj, i64 noundef 8)
  %i.ack = or disjoint i64 %i.bm, 10
  %i.acl = mul nuw nsw i64 %i.ack, %i.d
  %i.acm = add nuw nsw i64 %i.bo, %i.acl          ; 4 uses
  %i.acn = icmp ugt i64 %i.acm, %i.bq
  br i1 %i.acn, label %bb.gm, label %bb.hh, !prof !154

bb.hh:                                            ; preds = %bb.hg
  %i.aco = sub nuw i64 %i.bq, %i.acm              ; 2 uses
  %i.acp = icmp ugt i64 %i.aco, 7
  br i1 %i.acp, label %bb.hi, label %bb.gn, !prof !156

bb.hi:                                            ; preds = %bb.hh
  %i.acq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.acm
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.acq, i64 noundef 8)
  %i.acr = or disjoint i64 %i.bm, 11
  %i.acs = mul nuw nsw i64 %i.acr, %i.d
  %i.act = add nuw nsw i64 %i.bo, %i.acs          ; 4 uses
  %i.acu = icmp ugt i64 %i.act, %i.bq
  br i1 %i.acu, label %bb.gm, label %bb.hj, !prof !154

bb.hj:                                            ; preds = %bb.hi
  %i.acv = sub nuw i64 %i.bq, %i.act              ; 2 uses
  %i.acw = icmp ugt i64 %i.acv, 7
  br i1 %i.acw, label %bb.hk, label %bb.gn, !prof !156

bb.hk:                                            ; preds = %bb.hj
  %i.acx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.act
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.acx, i64 noundef 8)
  %i.acy = or disjoint i64 %i.bm, 12
  %i.acz = mul nuw nsw i64 %i.acy, %i.d
  %i.ada = add nuw nsw i64 %i.bo, %i.acz          ; 4 uses
  %i.adb = icmp ugt i64 %i.ada, %i.bq
  br i1 %i.adb, label %bb.gm, label %bb.hl, !prof !154

bb.hl:                                            ; preds = %bb.hk
  %i.adc = sub nuw i64 %i.bq, %i.ada              ; 2 uses
  %i.add = icmp ugt i64 %i.adc, 7
  br i1 %i.add, label %bb.hm, label %bb.gn, !prof !156

bb.hm:                                            ; preds = %bb.hl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ada
  tail call void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef %i.bb, ptr noalias nofree noundef nonnull %i.ade, i64 noundef 8)
end_hunk_0
