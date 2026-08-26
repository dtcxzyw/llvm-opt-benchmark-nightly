Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ops?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@apply_filter_weights:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call { i64, i64 } @av_mul_q64(i64 %i.o, i64 %i.q, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  %i.u = load i64, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call { i64, i64 } @av_mul_q64(i64 %i.u, i64 %i.w, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = tail call { i64, i64 } @av_add_q64(i64 %i.s, i64 %i.t, i64 %i.y, i64 %i.z) #16 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !17
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !17
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = load i64, ptr %i.p, align 8
  %i.af = tail call { i64, i64 } @av_mul_q64(i64 %i.ad, i64 %i.ae, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  %i.ai = load i64, ptr %i.i, align 8
  %i.aj = load i64, ptr %i.v, align 8
  %i.ak = tail call { i64, i64 } @av_mul_q64(i64 %i.ai, i64 %i.aj, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1
  %i.an = tail call { i64, i64 } @av_add_q64(i64 %i.ag, i64 %i.ah, i64 %i.al, i64 %i.am) #16 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  store i64 %i.ao, ptr %i.j, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13 ; 2 uses
  %i.as = and i32 %i.ar, -49
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !13
  %i.au = load i32, ptr %2, align 8, !tbaa !50
  %.not.1 = icmp eq i32 %i.au, 1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = and i32 %i.ar, -51
  store i32 %i.av, ptr %i.at, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = tail call { i64, i64 } @av_mul_q64(i64 %i.ay, i64 %i.ba, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = tail call { i64, i64 } @av_mul_q64(i64 %i.bf, i64 %i.bh, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  %i.bl = tail call { i64, i64 } @av_add_q64(i64 %i.bc, i64 %i.bd, i64 %i.bj, i64 %i.bk) #16 ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0
  %i.bn = extractvalue { i64, i64 } %i.bl, 1
  store i64 %i.bm, ptr %i.aw, align 8, !tbaa !17
  %.sroa.49.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bn, ptr %.sroa.49.0..sroa_idx.1, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.ax, align 8
  %i.bq = load i64, ptr %i.az, align 8
  %i.br = tail call { i64, i64 } @av_mul_q64(i64 %i.bp, i64 %i.bq, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 0
  %i.bt = extractvalue { i64, i64 } %i.br, 1
  %i.bu = load i64, ptr %i.be, align 8
  %i.bv = load i64, ptr %i.bg, align 8
  %i.bw = tail call { i64, i64 } @av_mul_q64(i64 %i.bu, i64 %i.bv, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.bx = extractvalue { i64, i64 } %i.bw, 0
  %i.by = extractvalue { i64, i64 } %i.bw, 1
  %i.bz = tail call { i64, i64 } @av_add_q64(i64 %i.bs, i64 %i.bt, i64 %i.bx, i64 %i.by) #16 ; 2 uses
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  %i.cb = extractvalue { i64, i64 } %i.bz, 1
  store i64 %i.ca, ptr %i.bo, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.cb, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = and i32 %i.cd, -49
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !13
  %i.cg = load i32, ptr %2, align 8, !tbaa !50
  %.not.2 = icmp eq i32 %i.cg, 1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = and i32 %i.cd, -51
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = tail call { i64, i64 } @av_mul_q64(i64 %i.ck, i64 %i.cm, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.cn, 0
  %i.cp = extractvalue { i64, i64 } %i.cn, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = tail call { i64, i64 } @av_mul_q64(i64 %i.cr, i64 %i.ct, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.cv = extractvalue { i64, i64 } %i.cu, 0
  %i.cw = extractvalue { i64, i64 } %i.cu, 1
  %i.cx = tail call { i64, i64 } @av_add_q64(i64 %i.co, i64 %i.cp, i64 %i.cv, i64 %i.cw) #16 ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0
  %i.cz = extractvalue { i64, i64 } %i.cx, 1
  store i64 %i.cy, ptr %i.ci, align 8, !tbaa !17
  %.sroa.49.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.cz, ptr %.sroa.49.0..sroa_idx.2, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.db = load i64, ptr %i.cj, align 8
  %i.dc = load i64, ptr %i.cl, align 8
  %i.dd = tail call { i64, i64 } @av_mul_q64(i64 %i.db, i64 %i.dc, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.de = extractvalue { i64, i64 } %i.dd, 0
  %i.df = extractvalue { i64, i64 } %i.dd, 1
  %i.dg = load i64, ptr %i.cq, align 8
  %i.dh = load i64, ptr %i.cs, align 8
  %i.di = tail call { i64, i64 } @av_mul_q64(i64 %i.dg, i64 %i.dh, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.di, 0
  %i.dk = extractvalue { i64, i64 } %i.di, 1
  %i.dl = tail call { i64, i64 } @av_add_q64(i64 %i.de, i64 %i.df, i64 %i.dj, i64 %i.dk) #16 ; 2 uses
  %i.dm = extractvalue { i64, i64 } %i.dl, 0
  %i.dn = extractvalue { i64, i64 } %i.dl, 1
  store i64 %i.dm, ptr %i.da, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dn, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !13 ; 2 uses
  %i.dq = and i32 %i.dp, -49
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !13
  %i.ds = load i32, ptr %2, align 8, !tbaa !50
  %.not.3 = icmp eq i32 %i.ds, 1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dt = and i32 %i.dp, -51
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = tail call { i64, i64 } @av_mul_q64(i64 %i.dw, i64 %i.dy, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.ea = extractvalue { i64, i64 } %i.dz, 0
  %i.eb = extractvalue { i64, i64 } %i.dz, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = tail call { i64, i64 } @av_mul_q64(i64 %i.ed, i64 %i.ef, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.eh = extractvalue { i64, i64 } %i.eg, 0
  %i.ei = extractvalue { i64, i64 } %i.eg, 1
  %i.ej = tail call { i64, i64 } @av_add_q64(i64 %i.ea, i64 %i.eb, i64 %i.eh, i64 %i.ei) #16 ; 2 uses
  %i.ek = extractvalue { i64, i64 } %i.ej, 0
  %i.el = extractvalue { i64, i64 } %i.ej, 1
  store i64 %i.ek, ptr %i.du, align 8, !tbaa !17
  %.sroa.49.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.el, ptr %.sroa.49.0..sroa_idx.3, align 8, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.en = load i64, ptr %i.dv, align 8
  %i.eo = load i64, ptr %i.dx, align 8
  %i.ep = tail call { i64, i64 } @av_mul_q64(i64 %i.en, i64 %i.eo, i64 %i.f, i64 16384) #16 ; 2 uses
  %i.eq = extractvalue { i64, i64 } %i.ep, 0
  %i.er = extractvalue { i64, i64 } %i.ep, 1
  %i.es = load i64, ptr %i.ec, align 8
  %i.et = load i64, ptr %i.ee, align 8
  %i.eu = tail call { i64, i64 } @av_mul_q64(i64 %i.es, i64 %i.et, i64 %i.c, i64 16384) #16 ; 2 uses
  %i.ev = extractvalue { i64, i64 } %i.eu, 0
  %i.ew = extractvalue { i64, i64 } %i.eu, 1
  %i.ex = tail call { i64, i64 } @av_add_q64(i64 %i.eq, i64 %i.er, i64 %i.ev, i64 %i.ew) #16 ; 2 uses
  %i.ey = extractvalue { i64, i64 } %i.ex, 0
  %i.ez = extractvalue { i64, i64 } %i.ex, 1
  store i64 %i.ey, ptr %i.em, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.ez, ptr %.sroa.4.0..sroa_idx.3, align 8, !tbaa !17
  ret void
}

declare i32 @av_cmp_q64(i64, i64, i64, i64) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @ff_sws_op_list_alloc() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 440) #15 ; 14 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <8 x i8> <i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 2, i8 3>, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 2>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store i32 2, ptr %.sroa.62.0..sroa_idx.i, align 8, !tbaa !13
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 2, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !13
  %.sroa.8.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx.i.a, i8 0, i64 96, i1 false)
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 2>, ptr %.sroa.2.0..sroa_idx.i13, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.sroa.62.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i17, i8 0, i64 16, i1 false)
  store i32 2, ptr %.sroa.62.0..sroa_idx.i18, align 8, !tbaa !13
  %.sroa.7.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 2, ptr %.sroa.7.0..sroa_idx.i19, align 4, !tbaa !13
  %.sroa.8.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i20, i8 0, i64 80, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  ret ptr %i.a
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @ff_sws_op_list_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %op_uninit.exit, %.preheader
  tail call void @av_freep(ptr noundef nonnull %i.a) #15
  tail call void @av_free(ptr noundef nonnull %i.a) #15
  store ptr null, ptr %0, align 8, !tbaa !51
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader, %op_uninit.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %op_uninit.exit ], [ 0, %.preheader ] ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw [480 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %switch.tableidx = add i32 %i.g, -1             ; 3 uses
  %i.h = icmp ult i32 %switch.tableidx, 17
  %switch.shifted = lshr i32 114689, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.h, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %op_uninit.exit

switch.lookup:                                    ; preds = %.lr.ph
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_sws_enum_op_lists.8, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %switch.ext
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.j) #15
  br label %op_uninit.exit

op_uninit.exit:                                   ; preds = %.lr.ph, %switch.lookup
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.f, i8 0, i64 480, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !27
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !53

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #7

declare void @av_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @ff_sws_op_list_duplicate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias ptr @av_malloc(i64 noundef 440) #15 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not28 = icmp eq i32 %i.c, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl i32 %i.c, 1
  %i.e = add i32 %i.d, -2                         ; 3 uses
  %i.f = icmp ugt i32 %i.e, 65535                 ; 2 uses
  %i.g = lshr i32 %i.e, 16
  %spec.select.i = select i1 %i.f, i32 %i.g, i32 %i.e ; 3 uses
  %spec.select11.i = select i1 %i.f, i32 16, i32 0 ; 2 uses
  %.not.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.h = lshr i32 %spec.select.i, 8
  %i.i = or disjoint i32 %spec.select11.i, 8
  %.110.i = select i1 %.not.i, i32 %spec.select.i, i32 %i.h
  %.1.i = select i1 %.not.i, i32 %spec.select11.i, i32 %i.i
  %i.j = zext nneg i32 %.110.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i32
  %i.n = add nuw nsw i32 %.1.i, %i.m
  %i.o = shl nuw i32 1, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 480
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.023 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.a, ptr noundef nonnull align 8 dereferenceable(440) %0, i64 440, i1 false), !tbaa.struct !54
  %i.r = load ptr, ptr %0, align 8, !tbaa !37
  %i.s = tail call ptr @av_memdup(ptr noundef %i.r, i64 noundef %.023) #15 ; 3 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !37
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.w = zext nneg i32 %i.u to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @av_free(ptr noundef nonnull %i.a) #15
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw [480 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14
  switch i32 %i.y, label %bb.g [
    i32 1, label %bb.f
    i32 15, label %.sink.split.sink.split
    i32 16, label %.sink.split.sink.split
    i32 17, label %.sink.split.sink.split
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not30 = icmp eq ptr %i.aa, null
  br i1 %.not30, label %bb.g, label %.sink.split

.sink.split.sink.split:                           ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.f
  %.sink = phi ptr [ %i.aa, %bb.f ], [ %i.ac, %.sink.split.sink.split ]
  %i.ad = tail call ptr @av_refstruct_ref(ptr noundef %.sink) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.e, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %bb.g ]
  ret ptr %.1
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #7

declare ptr @av_memdup(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @av_refstruct_ref(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ff_sws_op_list_input(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq i32 %i.d, 1
  %i.f = select i1 %i.e, ptr %i.c, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ff_sws_op_list_output(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !37
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr [480 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -480     ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq i32 %i.g, 2
end_hunk_0
