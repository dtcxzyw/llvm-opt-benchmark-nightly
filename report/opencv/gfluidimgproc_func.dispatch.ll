Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidimgproc_func.dispatch?download=true
inline.NumInlined: 601
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN2cv4gapi5fluid12cpu_baseline19run_medblur3x3_implEPfPPKfii:bb.a
  %i.ao = select <4 x i1> %i.an, <4 x float> %wide.load18, <4 x float> %wide.load ; 4 uses
  %i.ap = fcmp olt <4 x float> %wide.load, %wide.load18
  %i.aq = select <4 x i1> %i.ap, <4 x float> %wide.load18, <4 x float> %wide.load ; 4 uses
  %i.ar = fcmp olt <4 x float> %wide.load19, %i.aq
  %i.as = select <4 x i1> %i.ar, <4 x float> %wide.load19, <4 x float> %i.aq ; 4 uses
  %i.at = fcmp olt <4 x float> %i.aq, %wide.load19
  %i.au = select <4 x i1> %i.at, <4 x float> %wide.load19, <4 x float> %i.aq ; 2 uses
  %i.av = fcmp olt <4 x float> %i.as, %i.ao
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.as, <4 x float> %i.ao ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.ao, %i.as
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.as, <4 x float> %i.ao ; 4 uses
  %i.az = fcmp olt <4 x float> %wide.load21, %wide.load20
  %i.ba = select <4 x i1> %i.az, <4 x float> %wide.load21, <4 x float> %wide.load20 ; 4 uses
  %i.bb = fcmp olt <4 x float> %wide.load20, %wide.load21
  %i.bc = select <4 x i1> %i.bb, <4 x float> %wide.load21, <4 x float> %wide.load20 ; 4 uses
  %i.bd = fcmp olt <4 x float> %wide.load22, %i.bc
  %i.be = select <4 x i1> %i.bd, <4 x float> %wide.load22, <4 x float> %i.bc ; 4 uses
  %i.bf = fcmp olt <4 x float> %i.bc, %wide.load22
  %i.bg = select <4 x i1> %i.bf, <4 x float> %wide.load22, <4 x float> %i.bc ; 2 uses
  %i.bh = fcmp olt <4 x float> %i.be, %i.ba
  %i.bi = select <4 x i1> %i.bh, <4 x float> %i.be, <4 x float> %i.ba ; 2 uses
  %i.bj = fcmp olt <4 x float> %i.ba, %i.be
  %i.bk = select <4 x i1> %i.bj, <4 x float> %i.be, <4 x float> %i.ba ; 4 uses
  %i.bl = fcmp olt <4 x float> %wide.load24, %wide.load23
  %i.bm = select <4 x i1> %i.bl, <4 x float> %wide.load24, <4 x float> %wide.load23 ; 4 uses
  %i.bn = fcmp olt <4 x float> %wide.load23, %wide.load24
  %i.bo = select <4 x i1> %i.bn, <4 x float> %wide.load24, <4 x float> %wide.load23 ; 4 uses
  %i.bp = fcmp olt <4 x float> %wide.load25, %i.bo
  %i.bq = select <4 x i1> %i.bp, <4 x float> %wide.load25, <4 x float> %i.bo ; 4 uses
  %i.br = fcmp olt <4 x float> %i.bo, %wide.load25
  %i.bs = select <4 x i1> %i.br, <4 x float> %wide.load25, <4 x float> %i.bo ; 2 uses
  %i.bt = fcmp olt <4 x float> %i.bq, %i.bm
  %i.bu = select <4 x i1> %i.bt, <4 x float> %i.bq, <4 x float> %i.bm ; 2 uses
  %i.bv = fcmp olt <4 x float> %i.bm, %i.bq
  %i.bw = select <4 x i1> %i.bv, <4 x float> %i.bq, <4 x float> %i.bm ; 2 uses
  %i.bx = fcmp olt <4 x float> %i.aw, %i.bi
  %i.by = select <4 x i1> %i.bx, <4 x float> %i.bi, <4 x float> %i.aw ; 2 uses
  %i.bz = fcmp olt <4 x float> %i.bk, %i.ay
  %i.ca = select <4 x i1> %i.bz, <4 x float> %i.bk, <4 x float> %i.ay ; 2 uses
  %i.cb = fcmp olt <4 x float> %i.ay, %i.bk
  %i.cc = select <4 x i1> %i.cb, <4 x float> %i.bk, <4 x float> %i.ay ; 2 uses
  %i.cd = fcmp olt <4 x float> %i.by, %i.bu
  %i.ce = select <4 x i1> %i.cd, <4 x float> %i.bu, <4 x float> %i.by ; 2 uses
  %i.cf = fcmp olt <4 x float> %i.bw, %i.cc
  %i.cg = select <4 x i1> %i.cf, <4 x float> %i.bw, <4 x float> %i.cc ; 2 uses
  %i.ch = fcmp olt <4 x float> %i.bs, %i.bg
  %i.ci = select <4 x i1> %i.ch, <4 x float> %i.bs, <4 x float> %i.bg ; 2 uses
  %i.cj = fcmp olt <4 x float> %i.ca, %i.cg
  %i.ck = select <4 x i1> %i.cj, <4 x float> %i.cg, <4 x float> %i.ca ; 4 uses
  %i.cl = fcmp olt <4 x float> %i.ci, %i.au
  %i.cm = select <4 x i1> %i.cl, <4 x float> %i.ci, <4 x float> %i.au ; 4 uses
  %i.cn = fcmp olt <4 x float> %i.cm, %i.ck
  %i.co = select <4 x i1> %i.cn, <4 x float> %i.cm, <4 x float> %i.ck ; 2 uses
  %i.cp = fcmp olt <4 x float> %i.ck, %i.cm
  %i.cq = select <4 x i1> %i.cp, <4 x float> %i.cm, <4 x float> %i.ck ; 2 uses
  %i.cr = fcmp olt <4 x float> %i.ce, %i.co
  %i.cs = select <4 x i1> %i.cr, <4 x float> %i.co, <4 x float> %i.ce ; 2 uses
  %i.ct = fcmp olt <4 x float> %i.cq, %i.cs
  %i.cu = select <4 x i1> %i.ct, <4 x float> %i.cq, <4 x float> %i.cs
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.cu, ptr %i.cv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !885

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZN2cv4gapi5fluid12cpu_baselineL19run_medblur3x3_codeIfEEvPT_PPKS4_ii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 7 uses
  %i.cx = sub nsw i64 %indvars.iv.i.i, %i.i       ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !25 ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !25 ; 4 uses
  %i.dc = add nsw i64 %indvars.iv.i.i, %i.i       ; 3 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !25 ; 4 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cx
  %i.dg = load float, ptr %i.df, align 4, !tbaa !25 ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.di = load float, ptr %i.dh, align 4, !tbaa !25 ; 4 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dc
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !25 ; 4 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cx
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !25 ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.do = load float, ptr %i.dn, align 4, !tbaa !25 ; 4 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dc
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !25 ; 4 uses
  %i.dr = fcmp olt float %i.db, %i.cz
  %.sroa.speculated4.i.i.i = select i1 %i.dr, float %i.db, float %i.cz ; 4 uses
  %i.ds = fcmp olt float %i.cz, %i.db
  %.sroa.speculated.i.i.i = select i1 %i.ds, float %i.db, float %i.cz ; 4 uses
  %i.dt = fcmp olt float %i.de, %.sroa.speculated.i.i.i
  %.sroa.speculated4.i31.i.i = select i1 %i.dt, float %i.de, float %.sroa.speculated.i.i.i ; 4 uses
  %i.du = fcmp olt float %.sroa.speculated.i.i.i, %i.de
  %.sroa.speculated.i32.i.i = select i1 %i.du, float %i.de, float %.sroa.speculated.i.i.i ; 2 uses
  %i.dv = fcmp olt float %.sroa.speculated4.i31.i.i, %.sroa.speculated4.i.i.i
  %.sroa.speculated4.i33.i.i = select i1 %i.dv, float %.sroa.speculated4.i31.i.i, float %.sroa.speculated4.i.i.i ; 2 uses
  %i.dw = fcmp olt float %.sroa.speculated4.i.i.i, %.sroa.speculated4.i31.i.i
  %.sroa.speculated.i34.i.i = select i1 %i.dw, float %.sroa.speculated4.i31.i.i, float %.sroa.speculated4.i.i.i ; 4 uses
  %i.dx = fcmp olt float %i.di, %i.dg
  %.sroa.speculated4.i35.i.i = select i1 %i.dx, float %i.di, float %i.dg ; 4 uses
  %i.dy = fcmp olt float %i.dg, %i.di
  %.sroa.speculated.i36.i.i = select i1 %i.dy, float %i.di, float %i.dg ; 4 uses
  %i.dz = fcmp olt float %i.dk, %.sroa.speculated.i36.i.i
  %.sroa.speculated4.i37.i.i = select i1 %i.dz, float %i.dk, float %.sroa.speculated.i36.i.i ; 4 uses
  %i.ea = fcmp olt float %.sroa.speculated.i36.i.i, %i.dk
  %.sroa.speculated.i38.i.i = select i1 %i.ea, float %i.dk, float %.sroa.speculated.i36.i.i ; 2 uses
  %i.eb = fcmp olt float %.sroa.speculated4.i37.i.i, %.sroa.speculated4.i35.i.i
  %.sroa.speculated4.i39.i.i = select i1 %i.eb, float %.sroa.speculated4.i37.i.i, float %.sroa.speculated4.i35.i.i ; 2 uses
  %i.ec = fcmp olt float %.sroa.speculated4.i35.i.i, %.sroa.speculated4.i37.i.i
  %.sroa.speculated.i40.i.i = select i1 %i.ec, float %.sroa.speculated4.i37.i.i, float %.sroa.speculated4.i35.i.i ; 4 uses
  %i.ed = fcmp olt float %i.do, %i.dm
  %.sroa.speculated4.i41.i.i = select i1 %i.ed, float %i.do, float %i.dm ; 4 uses
  %i.ee = fcmp olt float %i.dm, %i.do
  %.sroa.speculated.i42.i.i = select i1 %i.ee, float %i.do, float %i.dm ; 4 uses
  %i.ef = fcmp olt float %i.dq, %.sroa.speculated.i42.i.i
  %.sroa.speculated4.i43.i.i = select i1 %i.ef, float %i.dq, float %.sroa.speculated.i42.i.i ; 4 uses
  %i.eg = fcmp olt float %.sroa.speculated.i42.i.i, %i.dq
  %.sroa.speculated.i44.i.i = select i1 %i.eg, float %i.dq, float %.sroa.speculated.i42.i.i ; 2 uses
  %i.eh = fcmp olt float %.sroa.speculated4.i43.i.i, %.sroa.speculated4.i41.i.i
  %.sroa.speculated4.i45.i.i = select i1 %i.eh, float %.sroa.speculated4.i43.i.i, float %.sroa.speculated4.i41.i.i ; 2 uses
  %i.ei = fcmp olt float %.sroa.speculated4.i41.i.i, %.sroa.speculated4.i43.i.i
  %.sroa.speculated.i46.i.i = select i1 %i.ei, float %.sroa.speculated4.i43.i.i, float %.sroa.speculated4.i41.i.i ; 2 uses
  %i.ej = fcmp olt float %.sroa.speculated4.i33.i.i, %.sroa.speculated4.i39.i.i
  %.sroa.speculated.i48.i.i = select i1 %i.ej, float %.sroa.speculated4.i39.i.i, float %.sroa.speculated4.i33.i.i ; 2 uses
  %i.ek = fcmp olt float %.sroa.speculated.i40.i.i, %.sroa.speculated.i34.i.i
  %.sroa.speculated4.i49.i.i = select i1 %i.ek, float %.sroa.speculated.i40.i.i, float %.sroa.speculated.i34.i.i ; 2 uses
  %i.el = fcmp olt float %.sroa.speculated.i34.i.i, %.sroa.speculated.i40.i.i
  %.sroa.speculated.i50.i.i = select i1 %i.el, float %.sroa.speculated.i40.i.i, float %.sroa.speculated.i34.i.i ; 2 uses
  %i.em = fcmp olt float %.sroa.speculated.i48.i.i, %.sroa.speculated4.i45.i.i
  %.sroa.speculated.i52.i.i = select i1 %i.em, float %.sroa.speculated4.i45.i.i, float %.sroa.speculated.i48.i.i ; 2 uses
  %i.en = fcmp olt float %.sroa.speculated.i46.i.i, %.sroa.speculated.i50.i.i
  %.sroa.speculated4.i53.i.i = select i1 %i.en, float %.sroa.speculated.i46.i.i, float %.sroa.speculated.i50.i.i ; 2 uses
  %i.eo = fcmp olt float %.sroa.speculated.i44.i.i, %.sroa.speculated.i38.i.i
  %.sroa.speculated4.i55.i.i = select i1 %i.eo, float %.sroa.speculated.i44.i.i, float %.sroa.speculated.i38.i.i ; 2 uses
  %i.ep = fcmp olt float %.sroa.speculated4.i49.i.i, %.sroa.speculated4.i53.i.i
  %.sroa.speculated.i58.i.i = select i1 %i.ep, float %.sroa.speculated4.i53.i.i, float %.sroa.speculated4.i49.i.i ; 4 uses
  %i.eq = fcmp olt float %.sroa.speculated4.i55.i.i, %.sroa.speculated.i32.i.i
  %.sroa.speculated4.i59.i.i = select i1 %i.eq, float %.sroa.speculated4.i55.i.i, float %.sroa.speculated.i32.i.i ; 4 uses
  %i.er = fcmp olt float %.sroa.speculated4.i59.i.i, %.sroa.speculated.i58.i.i
  %.sroa.speculated4.i61.i.i = select i1 %i.er, float %.sroa.speculated4.i59.i.i, float %.sroa.speculated.i58.i.i ; 2 uses
  %i.es = fcmp olt float %.sroa.speculated.i58.i.i, %.sroa.speculated4.i59.i.i
  %.sroa.speculated.i62.i.i = select i1 %i.es, float %.sroa.speculated4.i59.i.i, float %.sroa.speculated.i58.i.i ; 2 uses
  %i.et = fcmp olt float %.sroa.speculated.i52.i.i, %.sroa.speculated4.i61.i.i
  %.sroa.speculated.i64.i.i = select i1 %i.et, float %.sroa.speculated4.i61.i.i, float %.sroa.speculated.i52.i.i ; 2 uses
  %i.eu = fcmp olt float %.sroa.speculated.i62.i.i, %.sroa.speculated.i64.i.i
  %.sroa.speculated4.i65.i.i = select i1 %i.eu, float %.sroa.speculated.i62.i.i, float %.sroa.speculated.i64.i.i
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
  store float %.sroa.speculated4.i65.i.i, ptr %i.ev, align 4, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN2cv4gapi5fluid12cpu_baselineL19run_medblur3x3_codeIfEEvPT_PPKS4_ii.exit, label %scalar.ph, !llvm.loop !886

_ZN2cv4gapi5fluid12cpu_baselineL19run_medblur3x3_codeIfEEvPT_PPKS4_ii.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4gapi5fluid17run_rgb2gray_implEPhPKhifff(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline17run_rgb2gray_implEPhPKhifff(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv4gapi5fluid16run_rgb2hsv_implEPhPKhPKiS6_i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZN2cv4gapi5fluid12cpu_baseline16run_rgb2hsv_implEPhPKhPKiS7_i.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.b = mul nuw nsw i64 %indvars.iv.i, 3         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = zext i8 %i.d to i32                      ; 5 uses
  %i.f = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32                      ; 5 uses
  %i.j = add nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32                      ; 4 uses
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.e)
  %.sroa.speculated73.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.m)
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %i.i)
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %i.m) ; 5 uses
  %i.p = sub nsw i32 %.sroa.speculated.i, %.sroa.speculated73.i
  %5 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0) ; 4 uses
  %i.q = zext nneg i32 %5 to i64
  %.not52.i = icmp eq i32 %.sroa.speculated.i, %i.e
  %.not.i = icmp eq i32 %.sroa.speculated.i, %i.i
  %i.r = zext nneg i32 %.sroa.speculated.i to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %i.u = mul nsw i32 %5, %i.t
  %i.v = add nsw i32 %i.u, 2048
  %i.w = lshr i32 %i.v, 12
  %i.x = sub nsw i32 %i.i, %i.m
  %i.y = sub nsw i32 %i.m, %i.e
  %i.z = shl nuw nsw i32 %5, 1
  %i.aa = add nsw i32 %i.y, %i.z
  %i.ab = sub nsw i32 %i.e, %i.i
  %i.ac = shl nuw nsw i32 %5, 2
  %i.ad = add nsw i32 %i.ab, %i.ac
  %i.ae = select i1 %.not.i, i32 %i.aa, i32 %i.ad
  %i.af = select i1 %.not52.i, i32 %i.x, i32 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.q
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.ai = mul nsw i32 %i.af, %i.ah
  %i.aj = add nsw i32 %i.ai, 2048
  %i.ak = ashr i32 %i.aj, 12                      ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  %i.am = select i1 %i.al, i32 180, i32 0
  %i.an = add nsw i32 %i.am, %i.ak
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !14
  %i.as = trunc i32 %i.w to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  store i8 %i.as, ptr %i.at, align 1, !tbaa !14
  %i.au = trunc nuw i32 %.sroa.speculated.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  store i8 %i.au, ptr %i.av, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv4gapi5fluid12cpu_baseline16run_rgb2hsv_implEPhPKhPKiS7_i.exit, label %.lr.ph.i.i.i, !llvm.loop !21

_ZN2cv4gapi5fluid12cpu_baseline16run_rgb2hsv_implEPhPKhPKiS7_i.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid23run_bayergr2rgb_bg_implEPhPPKhi(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline23run_bayergr2rgb_bg_implEPhPPKhi(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid23run_bayergr2rgb_gr_implEPhPPKhi(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline23run_bayergr2rgb_gr_implEPhPPKhi(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv4gapi5fluid16run_rgb2yuv_implEPhPKhiPKf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline16run_rgb2yuv_implEPhPKhiPKf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv4gapi5fluid16run_yuv2rgb_implEPhPKhiPKf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline16run_yuv2rgb_implEPhPKhiPKf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv4gapi5fluid19run_rgb2yuv422_implEPhPKhi(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %_ZN2cv4gapi5fluid12cpu_baseline19run_rgb2yuv422_implEPhPKhi.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = mul nuw nsw i32 %2, 3
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next41.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 6 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 7
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = shl nuw nsw i32 %i.m, 7
  %i.o = mul nuw nsw i32 %i.f, 2508160
  %i.p = mul nuw nsw i32 %i.j, 4924160
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = mul nuw nsw i32 %i.m, 956288
  %i.s = add nuw nsw i32 %i.q, %i.r
  %i.t = lshr i32 %i.s, 16                        ; 3 uses
  %i.u = sub nsw i32 %i.n, %i.t
  %i.v = mul nsw i32 %i.u, 2015
  %i.w = sub nsw i32 %i.g, %i.t
  %i.x = mul nsw i32 %i.w, 3592
  %i.y = lshr i32 %i.v, 16
  %i.z = add nuw nsw i32 %i.y, 1028
  %i.aa = lshr i32 %i.z, 3
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv40.i ; 4 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !14
  %i.ad = add nuw nsw i32 %i.t, 64
  %i.ae = lshr i32 %i.ad, 7
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !14
  %i.ah = ashr i32 %i.x, 16
  %i.ai = add nsw i32 %i.ah, 1028
  %i.aj = ashr i32 %i.ai, 3
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 255)
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.at = zext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.aq, 2508160
  %i.ay = mul nuw nsw i32 %i.at, 4924160
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  %i.ba = mul nuw nsw i32 %i.aw, 956288
  %i.bb = add nuw nsw i32 %i.az, %i.ba
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = add nuw nsw i32 %i.bc, 64
  %i.be = lshr i32 %i.bd, 7
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !14
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next.i, %i.c
  br i1 %i.bh, label %.lr.ph.i, label %_ZN2cv4gapi5fluid12cpu_baseline19run_rgb2yuv422_implEPhPKhi.exit, !llvm.loop !39

_ZN2cv4gapi5fluid12cpu_baseline19run_rgb2yuv422_implEPhPKhi.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPhPPKhiiPKfS7_iffPPfii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPhPPKhiiPKfS8_iffPPfii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPsPPKhiiPKfS7_iffPPfii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPsPPKhiiPKfS8_iffPPfii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKhiiPKfS7_iffPS2_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPfPPKhiiPKfS8_iffPS3_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPtPPKtiiPKfS7_iffPPfii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPtPPKtiiPKfS8_iffPPfii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPsPPKtiiPKfS7_iffPPfii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPsPPKtiiPKfS8_iffPPfii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKtiiPKfS7_iffPS2_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPfPPKtiiPKfS8_iffPS3_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPsPPKsiiPKfS7_iffPPfii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPsPPKsiiPKfS8_iffPPfii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKsiiPKfS7_iffPS2_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN2cv4gapi5fluid12cpu_baseline21run_sepfilter3x3_implEPfPPKsiiPKfS8_iffPS3_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4gapi5fluid21run_sepfilter3x3_implEPfPPKfiiS4_S4_iffPS2_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, float noundef %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
end_hunk_0
