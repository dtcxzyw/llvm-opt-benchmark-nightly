Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj1_EB6_:bb.a
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph168.split

.lr.ph168.split.us:                               ; preds = %.lr.ph168
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph168.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx372 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %0, i64 %.idx372  ; 4 uses
  %.idx373 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %0, i64 %.idx373  ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx374 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %0, i64 %.idx374  ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx375 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %0, i64 %.idx375  ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !9
  %i.ao = load float, ptr %i.ai, align 4, !noundef !9
  %i.ap = load float, ptr %i.ak, align 4, !noundef !9
  %i.aq = load float, ptr %i.am, align 4, !noundef !9
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !9
  %i.ba = load float, ptr %i.aw, align 4, !noundef !9
  %i.bb = load float, ptr %i.ax, align 4, !noundef !9
  %i.bc = load float, ptr %i.ay, align 4, !noundef !9
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !9
  %i.bm = load float, ptr %i.bi, align 4, !noundef !9
  %i.bn = load float, ptr %i.bj, align 4, !noundef !9
  %i.bo = load float, ptr %i.bk, align 4, !noundef !9
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !9
  %i.by = load float, ptr %i.bu, align 4, !noundef !9
  %i.bz = load float, ptr %i.bv, align 4, !noundef !9
  %i.ca = load float, ptr %i.bw, align 4, !noundef !9
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !150

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph168.split.us
  %.sroa.079.0166.us.ph = phi ptr [ %2, %.lr.ph168.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0165.us.ph = phi i64 [ 0, %.lr.ph168.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.079.0166.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.079.0166.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0165.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0165.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.079.0166.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0165.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0165.us, 2     ; 3 uses
  %exitcond242 = icmp eq i64 %.sroa.7.0165.us, %i.r
  br i1 %exitcond242, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.i, %i.cp
  br i1 %.not65.us, label %.split171.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %0, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.079.0166.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge169, label %scalar.ph, !llvm.loop !151

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph168.split:                                  ; preds = %.lr.ph168.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph168.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.079.0166 = phi ptr [ %2, %.lr.ph168.split.preheader ], [ %i.ct, %._crit_edge ] ; 2 uses
  %.sroa.7.0165 = phi i64 [ 0, %.lr.ph168.split.preheader ], [ %i.cu, %._crit_edge ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.079.0166, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0165, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0165, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0165, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge169:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx194 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx194 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx194, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge169
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.cz = icmp eq i64 %i.a, 0
  br i1 %i.cz, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.da = add nsw i64 %.idx194, -4
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = sub nsw i64 %1, %i.d
  %i.dd = add nuw nsw i64 %1, 1
  %i.de = tail call i64 @llvm.usub.sat.i64(i64 %i.dd, i64 %i.d)
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dc)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.de) ; 2 uses
  %min.iters.check359 = icmp samesign ult i64 %i.dg, 8
  br i1 %min.iters.check359, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376, label %vector.ph360

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376: ; preds = %vector.body364, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.083.0185.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.dm, %vector.body364 ]
  %.sroa.785.0184.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %n.vec361, %vector.body364 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

vector.ph360:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = and i64 %i.dh, 7                        ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  %i.dk = select i1 %i.dj, i64 8, i64 %i.di
  %n.vec361 = sub nsw i64 %i.dh, %i.dk            ; 3 uses
  %i.dl = shl i64 %n.vec361, 2
  %i.dm = getelementptr i8, ptr %i.e, i64 %i.dl
  %broadcast.splatinsert362 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat363 = shufflevector <4 x float> %broadcast.splatinsert362, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.d
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph360
  %index365 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body364 ] ; 3 uses
  %i.dn = shl i64 %index365, 2
  %next.gep366 = getelementptr i8, ptr %i.e, i64 %i.dn ; 2 uses
  %gep461 = getelementptr [4 x i8], ptr %invariant.gep, i64 %index365 ; 2 uses
  %i.do = getelementptr i8, ptr %gep461, i64 16
  %wide.load = load <4 x float>, ptr %gep461, align 4
  %wide.load367 = load <4 x float>, ptr %i.do, align 4
  %i.dp = fmul <4 x float> %broadcast.splat363, %wide.load
  %i.dq = fmul <4 x float> %broadcast.splat363, %wide.load367
  %i.dr = getelementptr i8, ptr %next.gep366, i64 16
  store <4 x float> %i.dp, ptr %next.gep366, align 4
  store <4 x float> %i.dq, ptr %i.dr, align 4
  %index.next368 = add nuw i64 %index365, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.ds, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376, label %vector.body364, !llvm.loop !152

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.dt = sub nsw i64 %1, %i.d                    ; 2 uses
  %umin = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.dt)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376, %bb.g
  %.sroa.083.0185.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.083.0185.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376 ] ; 2 uses
  %.sroa.785.0184.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.785.0184.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader376 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.083.0185.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.785.0184.us, 1
  %i.dw = add nuw nsw i64 %.sroa.785.0184.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split187.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not266 = icmp eq i64 %1, %i.dw
  br i1 %.not266, label %.split190.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep193 = getelementptr [4 x i8], ptr %0, i64 %i.dw
  %i.dy = load float, ptr %gep193, align 4, !noundef !9
  %i.dz = fmul float %i.c, %i.dy
  store float %i.dz, ptr %.sroa.083.0185.us, align 4
  %i.ea = icmp eq ptr %i.du, %i.cw
  br i1 %i.ea, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !153

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge180
  %indvars.iv243 = phi i64 [ %i.dt, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %indvars.iv.next244, %._crit_edge180 ] ; 5 uses
  %.sroa.083.0185 = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.eb, %._crit_edge180 ] ; 2 uses
  %.sroa.785.0184 = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.ec, %._crit_edge180 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.083.0185, i64 4 ; 2 uses
  %i.ec = add nuw nsw i64 %.sroa.785.0184, 1
  %i.ed = add nuw nsw i64 %.sroa.785.0184, %i.d   ; 4 uses
  %i.ee = icmp samesign ugt i64 %i.ed, %1
  br i1 %i.ee, label %.split187.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge180, %bb.g, %._crit_edge169
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ef = sub nuw nsw i64 %1, %i.ed               ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ed ; 3 uses
  %i.eh = icmp samesign ult i64 %i.a, %i.ef
  br i1 %i.eh, label %.lr.ph179, label %.split190.us

.split187.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi188 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ed, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi188, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph179:                                        ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.a
  %i.ej = load float, ptr %i.ei, align 4, !noundef !9
  %i.ek = fmul float %i.c, %i.ej
  %.not64.first_iter = icmp ugt i64 %5, %indvars.iv243
  br label %bb.i

.split190.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi191 = phi i64 [ 0, %bb.f ], [ %umin, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph179, %bb.n
  %.sroa.026.0177 = phi float [ %i.ek, %.lr.ph179 ], [ %i.fb, %bb.n ] ; 2 uses
  %.sroa.1089.0176 = phi i64 [ 0, %.lr.ph179 ], [ %i.eo, %bb.n ] ; 5 uses
  %.sroa.788.0175 = phi i64 [ %i.a, %.lr.ph179 ], [ %i.el, %bb.n ]
  %.sroa.086.0174 = phi ptr [ %4, %.lr.ph179 ], [ %i.en, %bb.n ] ; 3 uses
  %i.el = add nsw i64 %.sroa.788.0175, -1         ; 2 uses
  %i.em = icmp eq ptr %.sroa.086.0174, %i.cy
  br i1 %i.em, label %._crit_edge180, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.086.0174, i64 4
  %i.eo = add nuw nsw i64 %.sroa.1089.0176, 1
  %i.ep = load float, ptr %.sroa.086.0174, align 4, !noundef !9
  %i.eq = sub nsw i64 %5, %.sroa.1089.0176        ; 2 uses
  %i.er = add nsw i64 %i.eq, -1                   ; 2 uses
  %exitcond246.not = icmp eq i64 %.sroa.1089.0176, %indvars.iv243
  br i1 %exitcond246.not, label %bb.k, label %bb.l, !prof !6

._crit_edge180:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.fb, %bb.n ], [ %.sroa.026.0177, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.083.0185, align 4
  %i.es = icmp eq ptr %i.eb, %i.cw
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, -1
  br i1 %i.es, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.et = add i64 %indvars.iv243, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %indvars.iv243, i64 noundef %i.et, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.eu = icmp eq i64 %5, %.sroa.1089.0176
  %or.cond69 = or i1 %i.eu, %.not64.first_iter
  br i1 %or.cond69, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.er, i64 noundef %i.eq, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.sroa.1089.0176
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.er
  %i.ex = load float, ptr %i.ev, align 4, !noundef !9
  %i.ey = load float, ptr %i.ew, align 4, !noundef !9
  %i.ez = fadd float %i.ex, %i.ey
  %i.fa = fmul float %i.ep, %i.ez
  %i.fb = fadd float %.sroa.026.0177, %i.fa       ; 2 uses
  %i.fc = icmp eq i64 %i.el, 0
  br i1 %i.fc, label %._crit_edge180, label %bb.i

bb.o:                                             ; preds = %.lr.ph168.split
  %i.fd = sub nuw nsw i64 %1, %i.cv               ; 5 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not65 = icmp samesign ugt i64 %i.i, %i.fd
  br i1 %.not65, label %.split171.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph168.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph168.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split171.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi172 = phi i64 [ %i.cp, %bb.c ], [ %i.fd, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %.us-phi172, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.a
  %i.fg = load <4 x float>, ptr %i.ff, align 4
  %i.fh = fmul <4 x float> %i.p, %i.fg
  %.not68.first_iter = icmp ugt i64 %i.l, %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.080.0152 = phi ptr [ %4, %.lr.ph ], [ %i.fl, %bb.u ] ; 3 uses
  %.sroa.782.0151 = phi i64 [ %i.a, %.lr.ph ], [ %i.fj, %bb.u ]
  %.sroa.10.0150 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.u ] ; 5 uses
  %i.fi = phi <4 x float> [ %i.fh, %.lr.ph ], [ %i.gd, %bb.u ] ; 2 uses
  %i.fj = add nsw i64 %.sroa.782.0151, -1         ; 2 uses
  %i.fk = icmp eq ptr %.sroa.080.0152, %i.j
  br i1 %i.fk, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.080.0152, i64 4
  %i.fm = add nuw nsw i64 %.sroa.10.0150, 1
  %i.fn = load float, ptr %.sroa.080.0152, align 4, !noundef !9
  %i.fo = xor i64 %.sroa.10.0150, -1
  %i.fp = add nsw i64 %5, %i.fo                   ; 4 uses
  %i.fq = add nuw nsw i64 %.sroa.10.0150, 4       ; 2 uses
  %.not67 = icmp samesign ugt i64 %i.fq, %i.fd
  br i1 %.not67, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fr = phi <4 x float> [ %i.gd, %bb.u ], [ %i.fi, %bb.p ]
  store <4 x float> %i.fr, ptr %.sroa.079.0166, align 4
  %i.fs = icmp eq ptr %i.ct, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %i.fs, label %._crit_edge169, label %.lr.ph168.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.10.0150, i64 noundef %i.fq, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ft = icmp ugt i64 %i.fp, -5
  %or.cond71 = or i1 %i.ft, %.not68.first_iter
  br i1 %or.cond71, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.fu = add nsw i64 %i.fp, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fp, i64 noundef %i.fu, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.10.0150
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  %i.fx = load <4 x float>, ptr %i.fv, align 4
  %i.fy = load <4 x float>, ptr %i.fw, align 4
  %i.fz = fadd <4 x float> %i.fx, %i.fy
  %i.ga = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = fmul <4 x float> %i.gb, %i.fz
  %i.gd = fadd <4 x float> %i.fi, %i.gc           ; 2 uses
  %i.ge = icmp eq i64 %i.fj, 0
  br i1 %i.ge, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj2_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.b
  %i.i = and i64 %5, 2305843009213693950          ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph173.split.us, label %.lr.ph173.split.preheader

.lr.ph173.split.preheader:                        ; preds = %.lr.ph173
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph173.split

.lr.ph173.split.us:                               ; preds = %.lr.ph173
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph173.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx370 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx370 ; 4 uses
  %.idx371 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx371 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx372 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx372 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx373 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx373 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !9
  %i.ao = load float, ptr %i.ai, align 4, !noundef !9
  %i.ap = load float, ptr %i.ak, align 4, !noundef !9
  %i.aq = load float, ptr %i.am, align 4, !noundef !9
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !9
  %i.ba = load float, ptr %i.aw, align 4, !noundef !9
  %i.bb = load float, ptr %i.ax, align 4, !noundef !9
  %i.bc = load float, ptr %i.ay, align 4, !noundef !9
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !9
  %i.bm = load float, ptr %i.bi, align 4, !noundef !9
  %i.bn = load float, ptr %i.bj, align 4, !noundef !9
  %i.bo = load float, ptr %i.bk, align 4, !noundef !9
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !9
  %i.by = load float, ptr %i.bu, align 4, !noundef !9
  %i.bz = load float, ptr %i.bv, align 4, !noundef !9
  %i.ca = load float, ptr %i.bw, align 4, !noundef !9
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !154

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph173.split.us
  %.sroa.081.0171.us.ph = phi ptr [ %2, %.lr.ph173.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0170.us.ph = phi i64 [ 0, %.lr.ph173.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0171.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.081.0171.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0170.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0170.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.081.0171.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0170.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0170.us, 2     ; 3 uses
  %exitcond244 = icmp eq i64 %.sroa.7.0170.us, %i.r
  br i1 %exitcond244, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split176.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.081.0171.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge174, label %scalar.ph, !llvm.loop !155

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph173.split:                                  ; preds = %.lr.ph173.split.preheader, %._crit_edge
  %.sroa.081.0171 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph173.split.preheader ] ; 2 uses
  %.sroa.7.0170 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph173.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.081.0171, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0170, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0170, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0170, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge174:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx201 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx201 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx201, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge174
  %i.cy = and i64 %5, 2305843009213693950         ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep199 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx201, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %6 = tail call i64 @llvm.smin.i64(i64 %i.cy, i64 %i.dd)
  %7 = add i64 %6, %i.d
  %8 = sub i64 %1, %7
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %8)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check357 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check357, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec359 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec359, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert360 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat361 = shufflevector <4 x float> %broadcast.splatinsert360, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep452 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.d
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph358
  %index363 = phi i64 [ 0, %vector.ph358 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.do = shl i64 %index363, 2
  %next.gep364 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep453 = getelementptr [4 x i8], ptr %invariant.gep452, i64 %index363 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep453, i64 16
  %wide.load = load <4 x float>, ptr %gep453, align 4
  %wide.load365 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat361, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat361, %wide.load365
  %i.ds = getelementptr i8, ptr %next.gep364, i64 16
  store <4 x float> %i.dq, ptr %next.gep364, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next366 = add nuw i64 %index363, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body362, !llvm.loop !156

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body362, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.085.0191.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body362 ]
  %.sroa.787.0190.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec359, %vector.body362 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.085.0191.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.085.0191.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.787.0190.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.787.0190.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.085.0191.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.787.0190.us, 1
  %i.dw = add nuw nsw i64 %.sroa.787.0190.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split193.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split196.us

bb.g:                                             ; preds = %bb.f
  %gep200 = getelementptr [4 x i8], ptr %invariant.gep199, i64 %i.dw
  %i.ea = load float, ptr %gep200, align 4, !noundef !9
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.085.0191.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !157

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge186
  %.sroa.085.0191 = phi ptr [ %i.ed, %._crit_edge186 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.787.0190 = phi i64 [ %i.ee, %._crit_edge186 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.085.0191, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.787.0190, 1
  %i.ef = add nuw nsw i64 %.sroa.787.0190, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split193.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge186, %bb.g, %._crit_edge174
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph185, label %.split196.us

.split193.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi194 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi194, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph185:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !9
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split196.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi197 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi197, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph185, %bb.n
  %.sroa.026.0183 = phi float [ %i.em, %.lr.ph185 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1091.0182 = phi i64 [ 0, %.lr.ph185 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.790.0181 = phi i64 [ %i.a, %.lr.ph185 ], [ %i.en, %bb.n ]
  %.sroa.088.0180 = phi ptr [ %4, %.lr.ph185 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.790.0181, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.088.0180, %i.cz
  br i1 %i.eo, label %._crit_edge186, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.088.0180, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1091.0182, 1
  %i.er = load float, ptr %.sroa.088.0180, align 4, !noundef !9
  %i.es = shl nuw nsw i64 %.sroa.1091.0182, 1     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !4

._crit_edge186:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0183, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.085.0191, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = or disjoint i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1091.0182, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = shl nsw i64 %i.ew, 1                    ; 4 uses
  %.not68.not = icmp ult i64 %i.ex, %i.eh
  br i1 %.not68.not, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.ey = or disjoint i64 %i.ex, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !9
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0183, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge186, label %bb.i

bb.o:                                             ; preds = %.lr.ph173.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split176.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph173.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph173.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split176.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi177 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.082.0157 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.784.0156 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0155 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.784.0156, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.082.0157, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.082.0157, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0155, 1
  %i.fr = load float, ptr %.sroa.082.0157, align 4, !noundef !9
  %i.fs = shl nuw nsw i64 %.sroa.10.0155, 1       ; 3 uses
  %i.ft = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.ft, %i.fh
  br i1 %.not71, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.081.0171, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge174, label %.lr.ph173.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fw = xor i64 %.sroa.10.0155, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = shl nsw i64 %i.fx, 1                    ; 4 uses
  %i.fz = add nsw i64 %i.fy, 4                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, -5
  %.not72 = icmp ugt i64 %i.fz, %i.fh
  %or.cond73 = or i1 %i.ga, %.not72
  br i1 %or.cond73, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fy
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj3_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.a, 3                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph178.split.us, label %.lr.ph178.split.preheader

.lr.ph178.split.preheader:                        ; preds = %.lr.ph178
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph178.split

.lr.ph178.split.us:                               ; preds = %.lr.ph178
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph178.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx378 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx378 ; 4 uses
  %.idx379 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx379 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx380 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx380 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx381 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx381 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !9
  %i.ao = load float, ptr %i.ai, align 4, !noundef !9
  %i.ap = load float, ptr %i.ak, align 4, !noundef !9
  %i.aq = load float, ptr %i.am, align 4, !noundef !9
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !9
  %i.ba = load float, ptr %i.aw, align 4, !noundef !9
  %i.bb = load float, ptr %i.ax, align 4, !noundef !9
  %i.bc = load float, ptr %i.ay, align 4, !noundef !9
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !9
  %i.bm = load float, ptr %i.bi, align 4, !noundef !9
  %i.bn = load float, ptr %i.bj, align 4, !noundef !9
  %i.bo = load float, ptr %i.bk, align 4, !noundef !9
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !9
  %i.by = load float, ptr %i.bu, align 4, !noundef !9
  %i.bz = load float, ptr %i.bv, align 4, !noundef !9
  %i.ca = load float, ptr %i.bw, align 4, !noundef !9
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !158

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph178.split.us
  %.sroa.083.0176.us.ph = phi ptr [ %2, %.lr.ph178.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0175.us.ph = phi i64 [ 0, %.lr.ph178.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.083.0176.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.083.0176.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0175.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0175.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.083.0176.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0175.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0175.us, 2     ; 3 uses
  %exitcond252 = icmp eq i64 %.sroa.7.0175.us, %i.r
  br i1 %exitcond252, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split181.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.083.0176.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge179, label %scalar.ph, !llvm.loop !159

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph178.split:                                  ; preds = %.lr.ph178.split.preheader, %._crit_edge
  %.sroa.083.0176 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph178.split.preheader ] ; 2 uses
  %.sroa.7.0175 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph178.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.083.0176, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0175, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0175, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0175, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge179:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx206 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx206 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx206, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge179
  %i.cy = mul nuw nsw i64 %i.a, 3                 ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep204 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx206, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %6 = tail call i64 @llvm.smin.i64(i64 %i.cy, i64 %i.dd)
  %7 = add i64 %6, %i.d
  %8 = sub i64 %1, %7
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %8)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check365 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check365, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph366

vector.ph366:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec367 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec367, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert368 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat369 = shufflevector <4 x float> %broadcast.splatinsert368, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep462 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.d
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph366
  %index371 = phi i64 [ 0, %vector.ph366 ], [ %index.next374, %vector.body370 ] ; 3 uses
  %i.do = shl i64 %index371, 2
  %next.gep372 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep463 = getelementptr [4 x i8], ptr %invariant.gep462, i64 %index371 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep463, i64 16
  %wide.load = load <4 x float>, ptr %gep463, align 4
  %wide.load373 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat369, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat369, %wide.load373
  %i.ds = getelementptr i8, ptr %next.gep372, i64 16
  store <4 x float> %i.dq, ptr %next.gep372, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next374 = add nuw i64 %index371, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body370, !llvm.loop !160

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body370, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.087.0196.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body370 ]
  %.sroa.789.0195.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec367, %vector.body370 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.087.0196.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.087.0196.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.789.0195.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.789.0195.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.087.0196.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.789.0195.us, 1
  %i.dw = add nuw nsw i64 %.sroa.789.0195.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split198.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split201.us

bb.g:                                             ; preds = %bb.f
  %gep205 = getelementptr [4 x i8], ptr %invariant.gep204, i64 %i.dw
  %i.ea = load float, ptr %gep205, align 4, !noundef !9
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.087.0196.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !161

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge191
  %.sroa.087.0196 = phi ptr [ %i.ed, %._crit_edge191 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.789.0195 = phi i64 [ %i.ee, %._crit_edge191 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.087.0196, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.789.0195, 1
  %i.ef = add nuw nsw i64 %.sroa.789.0195, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split198.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge191, %bb.g, %._crit_edge179
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph190, label %.split201.us

.split198.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi199 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi199, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph190:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !9
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split201.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi202 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi202, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph190, %bb.n
  %.sroa.026.0188 = phi float [ %i.em, %.lr.ph190 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1093.0187 = phi i64 [ 0, %.lr.ph190 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.792.0186 = phi i64 [ %i.a, %.lr.ph190 ], [ %i.en, %bb.n ]
  %.sroa.090.0185 = phi ptr [ %4, %.lr.ph190 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.792.0186, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.090.0185, %i.cz
  br i1 %i.eo, label %._crit_edge191, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.090.0185, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1093.0187, 1
  %i.er = load float, ptr %.sroa.090.0185, align 4, !noundef !9
  %i.es = mul nuw nsw i64 %.sroa.1093.0187, 3     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !11

._crit_edge191:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0188, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.087.0196, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = add nuw nsw i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1093.0187, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = mul nsw i64 %i.ew, 3                    ; 3 uses
  %i.ey = add nsw i64 %i.ex, 1                    ; 2 uses
  %.not68 = icmp ugt i64 %i.ey, %i.eh
  br i1 %.not68, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !9
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0188, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge191, label %bb.i

bb.o:                                             ; preds = %.lr.ph178.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split181.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph178.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph178.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split181.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi182 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.084.0162 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.786.0161 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0160 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.786.0161, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.084.0162, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.084.0162, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0160, 1
  %i.fr = load float, ptr %.sroa.084.0162, align 4, !noundef !9
  %i.fs = mul nuw nsw i64 %.sroa.10.0160, 3       ; 3 uses
  %i.ft = add nuw nsw i64 %i.fs, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.ft, %i.fh
  br i1 %.not71, label %bb.r, label %bb.s, !prof !6

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.083.0176, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge179, label %.lr.ph178.split

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.ft, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fw = xor i64 %.sroa.10.0160, -1
  %i.fx = add nsw i64 %5, %i.fw
  %i.fy = mul nsw i64 %i.fx, 3                    ; 4 uses
  %i.fz = add nsw i64 %i.fy, 4                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, -5
  %.not72 = icmp ugt i64 %i.fz, %i.fh
  %or.cond75 = or i1 %i.ga, %.not72
  br i1 %or.cond75, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fy, i64 noundef %i.fz, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fy
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowffKj4_EB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !noundef !9 ; 6 uses
  %i.d = and i64 %3, 2305843009213693948          ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 2                    ; 3 uses
  %.idx = and i64 %i.f, 9223372036854775792       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.a, 2                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph170.split.us, label %.lr.ph170.split.preheader

.lr.ph170.split.preheader:                        ; preds = %.lr.ph170
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph170.split

.lr.ph170.split.us:                               ; preds = %.lr.ph170
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.i ; 5 uses
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2                         ; 2 uses
  %i.s = lshr i64 %1, 2
  %i.t = add nsw i64 %i.f, -16
  %i.u = lshr i64 %i.t, 4
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.r) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph170.split.us
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 4
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.af = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.af
  %.idx358 = shl i64 %index, 4
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %.idx358 ; 4 uses
  %.idx359 = shl i64 %index, 4
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %.idx359 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.idx360 = shl i64 %index, 4
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %.idx360 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.idx361 = shl i64 %index, 4
  %i.al = getelementptr i8, ptr %invariant.gep, i64 %.idx361 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load float, ptr %i.ag, align 4, !noundef !9
  %i.ao = load float, ptr %i.ai, align 4, !noundef !9
  %i.ap = load float, ptr %i.ak, align 4, !noundef !9
  %i.aq = load float, ptr %i.am, align 4, !noundef !9
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = getelementptr i8, ptr %i.ah, i64 20
  %i.ax = getelementptr i8, ptr %i.aj, i64 36
  %i.ay = getelementptr i8, ptr %i.al, i64 52
  %i.az = load float, ptr %i.av, align 4, !noundef !9
  %i.ba = load float, ptr %i.aw, align 4, !noundef !9
  %i.bb = load float, ptr %i.ax, align 4, !noundef !9
  %i.bc = load float, ptr %i.ay, align 4, !noundef !9
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = getelementptr i8, ptr %i.ah, i64 24
  %i.bj = getelementptr i8, ptr %i.aj, i64 40
  %i.bk = getelementptr i8, ptr %i.al, i64 56
  %i.bl = load float, ptr %i.bh, align 4, !noundef !9
  %i.bm = load float, ptr %i.bi, align 4, !noundef !9
  %i.bn = load float, ptr %i.bj, align 4, !noundef !9
  %i.bo = load float, ptr %i.bk, align 4, !noundef !9
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bu = getelementptr i8, ptr %i.ah, i64 28
  %i.bv = getelementptr i8, ptr %i.aj, i64 44
  %i.bw = getelementptr i8, ptr %i.al, i64 60
  %i.bx = load float, ptr %i.bt, align 4, !noundef !9
  %i.by = load float, ptr %i.bu, align 4, !noundef !9
  %i.bz = load float, ptr %i.bv, align 4, !noundef !9
  %i.ca = load float, ptr %i.bw, align 4, !noundef !9
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3
  %i.cf = shufflevector <4 x float> %i.au, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fmul <8 x float> %i.ad, %i.cf
  %i.ch = shufflevector <4 x float> %i.bs, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = fmul <8 x float> %i.ae, %i.ch
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !162

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph170.split.us
  %.sroa.081.0168.us.ph = phi ptr [ %2, %.lr.ph170.split.us ], [ %i.ac, %vector.body ]
  %.sroa.7.0167.us.ph = phi i64 [ 0, %.lr.ph170.split.us ], [ %n.vec, %vector.body ]
  %i.ck = insertelement <4 x float> poison, float %i.c, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.081.0168.us = phi ptr [ %i.cm, %bb.d ], [ %.sroa.081.0168.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.0167.us = phi i64 [ %i.cn, %bb.d ], [ %.sroa.7.0167.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.081.0168.us, i64 16 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.0167.us, 1
  %i.co = shl nuw nsw i64 %.sroa.7.0167.us, 2     ; 3 uses
  %exitcond238 = icmp eq i64 %.sroa.7.0167.us, %i.r
  br i1 %exitcond238, label %.split.us, label %bb.c, !prof !5

bb.c:                                             ; preds = %scalar.ph
  %i.cp = sub nuw nsw i64 %1, %i.co               ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.cp
  br i1 %.not69.us, label %.split173.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %i.cq = load <4 x float>, ptr %gep, align 4
  %i.cr = fmul <4 x float> %i.cl, %i.cq
  store <4 x float> %i.cr, ptr %.sroa.081.0168.us, align 4
  %i.cs = icmp eq ptr %i.cm, %i.g
  br i1 %i.cs, label %._crit_edge171, label %scalar.ph, !llvm.loop !163

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph170.split:                                  ; preds = %.lr.ph170.split.preheader, %._crit_edge
  %.sroa.081.0168 = phi ptr [ %i.ct, %._crit_edge ], [ %2, %.lr.ph170.split.preheader ] ; 2 uses
  %.sroa.7.0167 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph170.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.081.0168, i64 16 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.7.0167, 1
  %i.cv = shl nuw nsw i64 %.sroa.7.0167, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0167, %i.n
  br i1 %exitcond, label %.split.us, label %bb.o, !prof !5

._crit_edge171:                                   ; preds = %._crit_edge, %bb.d, %bb.b
  %.idx198 = and i64 %i.f, 12                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx198 ; 2 uses
  %i.cx = icmp samesign eq i64 %.idx198, 0
  br i1 %i.cx, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge171
  %i.cy = shl nuw nsw i64 %i.a, 2                 ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.da = icmp eq i64 %i.a, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep196 = getelementptr [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.db = add nsw i64 %.idx198, -4
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = sub nsw i64 %1, %i.d
  %6 = tail call i64 @llvm.smin.i64(i64 %i.cy, i64 %i.dd)
  %7 = add i64 %6, %i.d
  %8 = sub i64 %1, %7
  %i.de = add nuw nsw i64 %1, 1
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.de, i64 %i.d)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %8)
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.df) ; 2 uses
  %min.iters.check345 = icmp samesign ult i64 %i.dh, 8
  br i1 %min.iters.check345, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 7                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 8, i64 %i.dj
  %n.vec347 = sub nsw i64 %i.di, %i.dl            ; 3 uses
  %i.dm = shl i64 %n.vec347, 2
  %i.dn = getelementptr i8, ptr %i.e, i64 %i.dm
  %broadcast.splatinsert348 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat349 = shufflevector <4 x float> %broadcast.splatinsert348, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep434 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.d
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph346
  %index351 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body350 ] ; 3 uses
  %i.do = shl i64 %index351, 2
  %next.gep352 = getelementptr i8, ptr %i.e, i64 %i.do ; 2 uses
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index351 ; 2 uses
  %i.dp = getelementptr i8, ptr %gep435, i64 16
  %wide.load = load <4 x float>, ptr %gep435, align 4
  %wide.load353 = load <4 x float>, ptr %i.dp, align 4
  %i.dq = fmul <4 x float> %broadcast.splat349, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat349, %wide.load353
  %i.ds = getelementptr i8, ptr %next.gep352, i64 16
  store <4 x float> %i.dq, ptr %next.gep352, align 4
  store <4 x float> %i.dr, ptr %i.ds, align 4
  %index.next354 = add nuw i64 %index351, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.dt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body350, !llvm.loop !164

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body350, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.085.0188.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.dn, %vector.body350 ]
  %.sroa.787.0187.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec347, %vector.body350 ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.g
  %.sroa.085.0188.us = phi ptr [ %i.du, %bb.g ], [ %.sroa.085.0188.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.787.0187.us = phi i64 [ %i.dv, %bb.g ], [ %.sroa.787.0187.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.085.0188.us, i64 4 ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.787.0187.us, 1
  %i.dw = add nuw nsw i64 %.sroa.787.0187.us, %i.d ; 4 uses
  %i.dx = icmp samesign ugt i64 %i.dw, %1
  br i1 %i.dx, label %.split190.us, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.dy = sub nuw nsw i64 %1, %i.dw               ; 2 uses
  %i.dz = icmp samesign ult i64 %i.cy, %i.dy
  br i1 %i.dz, label %bb.g, label %.split193.us

bb.g:                                             ; preds = %bb.f
  %gep197 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %i.dw
  %i.ea = load float, ptr %gep197, align 4, !noundef !9
  %i.eb = fmul float %i.c, %i.ea
  store float %i.eb, ptr %.sroa.085.0188.us, align 4
  %i.ec = icmp eq ptr %i.du, %i.cw
  br i1 %i.ec, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !165

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge183
  %.sroa.085.0188 = phi ptr [ %i.ed, %._crit_edge183 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.787.0187 = phi i64 [ %i.ee, %._crit_edge183 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.085.0188, i64 4 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.787.0187, 1
  %i.ef = add nuw nsw i64 %.sroa.787.0187, %i.d   ; 4 uses
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %.split190.us, label %bb.h, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge183, %bb.g, %._crit_edge171
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.eh = sub nuw nsw i64 %1, %i.ef               ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 3 uses
  %i.ej = icmp samesign ult i64 %i.cy, %i.eh
  br i1 %i.ej, label %.lr.ph182, label %.split193.us

.split190.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi191 = phi i64 [ %i.dw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ef, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi191, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph182:                                        ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.el = load float, ptr %i.ek, align 4, !noundef !9
  %i.em = fmul float %i.c, %i.el
  br label %bb.i

.split193.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi194 = phi i64 [ %i.dy, %bb.f ], [ %i.eh, %bb.h ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %.us-phi194, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph182, %bb.n
  %.sroa.026.0180 = phi float [ %i.em, %.lr.ph182 ], [ %i.ff, %bb.n ] ; 2 uses
  %.sroa.1091.0179 = phi i64 [ 0, %.lr.ph182 ], [ %i.eq, %bb.n ] ; 3 uses
  %.sroa.790.0178 = phi i64 [ %i.a, %.lr.ph182 ], [ %i.en, %bb.n ]
  %.sroa.088.0177 = phi ptr [ %4, %.lr.ph182 ], [ %i.ep, %bb.n ] ; 3 uses
  %i.en = add nsw i64 %.sroa.790.0178, -1         ; 2 uses
  %i.eo = icmp eq ptr %.sroa.088.0177, %i.cz
  br i1 %i.eo, label %._crit_edge183, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.088.0177, i64 4
  %i.eq = add nuw nsw i64 %.sroa.1091.0179, 1
  %i.er = load float, ptr %.sroa.088.0177, align 4, !noundef !9
  %i.es = shl nuw nsw i64 %.sroa.1091.0179, 2     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.es, %i.eh
  br i1 %.not67.not, label %bb.l, label %bb.k, !prof !4

._crit_edge183:                                   ; preds = %bb.i, %bb.n
  %.sroa.026.0.lcssa = phi float [ %i.ff, %bb.n ], [ %.sroa.026.0180, %bb.i ]
  store float %.sroa.026.0.lcssa, ptr %.sroa.085.0188, align 4
  %i.et = icmp eq ptr %i.ed, %i.cw
  br i1 %i.et, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutfEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %bb.j
  %i.eu = or disjoint i64 %i.es, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = xor i64 %.sroa.1091.0179, -1
  %i.ew = add nsw i64 %5, %i.ev
  %i.ex = shl nsw i64 %i.ew, 2                    ; 4 uses
  %.not68.not = icmp ult i64 %i.ex, %i.eh
  br i1 %.not68.not, label %bb.n, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.ey = or disjoint i64 %i.ex, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ey, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.fb = load float, ptr %i.ez, align 4, !noundef !9
  %i.fc = load float, ptr %i.fa, align 4, !noundef !9
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fmul float %i.er, %i.fd
  %i.ff = fadd float %.sroa.026.0180, %i.fe       ; 2 uses
  %i.fg = icmp eq i64 %i.en, 0
  br i1 %i.fg, label %._crit_edge183, label %bb.i

bb.o:                                             ; preds = %.lr.ph170.split
  %i.fh = sub nuw nsw i64 %1, %i.cv               ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.fh
  br i1 %.not69, label %.split173.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph170.split, %scalar.ph
  %.us-phi = phi i64 [ %i.co, %scalar.ph ], [ %i.cv, %.lr.ph170.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split173.us:                                     ; preds = %bb.o, %bb.c
  %.us-phi174 = phi i64 [ %i.cp, %bb.c ], [ %i.fh, %bb.o ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi174, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.i
  %i.fk = load <4 x float>, ptr %i.fj, align 4
  %i.fl = fmul <4 x float> %i.p, %i.fk
  %invariant.op = add nsw i64 %i.fh, -3
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.082.0154 = phi ptr [ %4, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.sroa.784.0153 = phi i64 [ %i.a, %.lr.ph ], [ %i.fn, %bb.u ]
  %.sroa.10.0152 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.u ] ; 3 uses
  %i.fm = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.gj, %bb.u ] ; 2 uses
  %i.fn = add nsw i64 %.sroa.784.0153, -1         ; 2 uses
  %i.fo = icmp eq ptr %.sroa.082.0154, %i.k
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.082.0154, i64 4
  %i.fq = add nuw nsw i64 %.sroa.10.0152, 1
  %i.fr = load float, ptr %.sroa.082.0154, align 4, !noundef !9
  %i.fs = shl nuw nsw i64 %.sroa.10.0152, 2       ; 4 uses
  %i.ft = or disjoint i64 %i.fs, 3
  %or.cond.not = icmp samesign ult i64 %i.ft, %i.fh
  br i1 %or.cond.not, label %bb.s, label %bb.r, !prof !11

._crit_edge:                                      ; preds = %bb.p, %bb.u
  %i.fu = phi <4 x float> [ %i.gj, %bb.u ], [ %i.fm, %bb.p ]
  store <4 x float> %i.fu, ptr %.sroa.081.0168, align 4
  %i.fv = icmp eq ptr %i.ct, %i.g
  br i1 %i.fv, label %._crit_edge171, label %.lr.ph170.split

bb.r:                                             ; preds = %bb.q
  %i.fw = add nuw i64 %i.fs, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %i.fw, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fx = xor i64 %.sroa.10.0152, -1
  %i.fy = add nsw i64 %5, %i.fx
  %i.fz = shl nsw i64 %i.fy, 2                    ; 4 uses
  %or.cond73.not = icmp ult i64 %i.fz, %invariant.op
  br i1 %or.cond73.not, label %bb.u, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ga = add i64 %i.fz, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fz, i64 noundef %i.ga, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fz
  %i.gd = load <4 x float>, ptr %i.gb, align 4
  %i.ge = load <4 x float>, ptr %i.gc, align 4
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.gf
  %i.gj = fadd <4 x float> %i.fm, %i.gi           ; 2 uses
  %i.gk = icmp eq i64 %i.fn, 0
  br i1 %i.gk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowhmKj1_EB6_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull writeonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 19 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !9 ; 8 uses
  %i.d = and i64 %3, 9223372036854775804          ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 8 uses
  %i.f = and i64 %3, 3                            ; 5 uses
  %i.g = icmp samesign eq i64 %i.d, 0
  br i1 %i.g, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.a, 4                  ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.j = icmp eq i64 %i.a, 0
  br i1 %i.j, label %.lr.ph172.split.us, label %.lr.ph172.split.preheader

.lr.ph172.split.preheader:                        ; preds = %.lr.ph172
  %i.k = add nuw nsw i64 %5, 3
  %i.l = add nuw i64 %1, 4
  %i.m = lshr i64 %i.l, 2
  %i.n = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph172.split

.lr.ph172.split.us:                               ; preds = %.lr.ph172
  %i.p = add nuw i64 %1, 4
  %i.q = lshr i64 %i.p, 2
  %i.r = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph172.split.us
  %.sroa.083.0170.us = phi ptr [ %2, %.lr.ph172.split.us ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0169.us = phi i64 [ 0, %.lr.ph172.split.us ], [ %i.u, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.083.0170.us, i64 4 ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.7.0169.us, 1
  %i.v = shl nuw nsw i64 %.sroa.7.0169.us, 2      ; 3 uses
  %exitcond245 = icmp eq i64 %.sroa.7.0169.us, %i.q
  br i1 %exitcond245, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.w = sub nuw nsw i64 %1, %i.v                 ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.h, %i.w
  br i1 %.not65.us, label %.split175.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr i8, ptr %0, i64 %i.v
  %i.x = load <4 x i8>, ptr %gep, align 1
  %i.y = zext <4 x i8> %i.x to <4 x i32>
  %i.z = mul <4 x i32> %i.s, %i.y
  %i.aa = add <4 x i32> %i.z, splat (i32 16384)
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 15)
  %i.ac = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ab, <4 x i32> splat (i32 255))
  %i.ad = trunc nuw <4 x i32> %i.ac to <4 x i8>
  store <4 x i8> %i.ad, ptr %.sroa.083.0170.us, align 1
  %i.ae = icmp eq ptr %i.t, %i.e
  br i1 %i.ae, label %._crit_edge173, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph172.split:                                  ; preds = %.lr.ph172.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph172.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.083.0170 = phi ptr [ %2, %.lr.ph172.split.preheader ], [ %i.af, %._crit_edge ] ; 2 uses
  %.sroa.7.0169 = phi i64 [ 0, %.lr.ph172.split.preheader ], [ %i.ag, %._crit_edge ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.083.0170, i64 4 ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.0169, 1
  %i.ah = shl nuw nsw i64 %.sroa.7.0169, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0169, %i.m
  br i1 %exitcond, label %.split.us, label %bb.ab, !prof !5

._crit_edge173:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %i.ai = icmp samesign eq i64 %i.f, 0
  br i1 %i.ai, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge173
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5 ; 3 uses
  %i.ak = icmp eq i64 %i.a, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.al = sub nsw i64 %1, %i.d                    ; 6 uses
  %umin = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.al) ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.an = icmp samesign ugt i64 %i.d, %1
  br i1 %i.an, label %.split191.us, label %bb.m, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ap = icmp samesign ugt i64 %i.d, %1
  br i1 %i.ap, label %.split191.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not269 = icmp eq i64 %1, %i.d
  br i1 %.not269, label %.split194.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gep197 = getelementptr i8, ptr %0, i64 %i.d
  %i.aq = load i8, ptr %gep197, align 1, !noundef !9
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul i32 %i.c, %i.ar
  %i.at = add i32 %i.as, 16384
  %i.au = lshr i32 %i.at, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.au, i32 255)
  %i.av = trunc nuw i32 %..i.us to i8
  store i8 %i.av, ptr %i.e, align 1
  %i.aw = icmp samesign eq i64 %i.f, 1
  br i1 %i.aw, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ay = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not421 = icmp samesign ult i64 %i.d, %1
  br i1 %.not421, label %bb.i, label %.split191.us, !prof !4

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %.not269.1 = icmp eq i64 %1, %i.ay
  br i1 %.not269.1, label %.split194.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %gep197.1 = getelementptr i8, ptr %0, i64 %i.ay
  %i.az = load i8, ptr %gep197.1, align 1, !noundef !9
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul i32 %i.c, %i.ba
  %i.bc = add i32 %i.bb, 16384
  %i.bd = lshr i32 %i.bc, 15
  %..i.us.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bd, i32 255)
  %i.be = trunc nuw i32 %..i.us.1 to i8
  store i8 %i.be, ptr %i.ao, align 1
  %i.bf = icmp samesign eq i64 %i.f, 2
  br i1 %i.bf, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2: ; preds = %bb.j
  %i.bg = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.bh = icmp samesign ugt i64 %i.bg, %1
  br i1 %i.bh, label %.split191.us, label %bb.k, !prof !5

bb.k:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.not269.2 = icmp eq i64 %1, %i.bg
  br i1 %.not269.2, label %.split194.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep197.2 = getelementptr i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %gep197.2, align 1, !noundef !9
  %i.bj = zext i8 %i.bi to i32
  %i.bk = mul i32 %i.c, %i.bj
  %i.bl = add i32 %i.bk, 16384
  %i.bm = lshr i32 %i.bl, 15
  %..i.us.2 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bm, i32 255)
  %i.bn = trunc nuw i32 %..i.us.2 to i8
  store i8 %i.bn, ptr %i.ax, align 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge184, %._crit_edge184.1, %._crit_edge184.2, %bb.h, %bb.j, %bb.l, %._crit_edge173
  ret void

bb.m:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader
  %i.bo = sub nuw nsw i64 %1, %i.d                ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.bq = icmp samesign ult i64 %i.a, %i.bo
  br i1 %i.bq, label %.lr.ph183, label %.split194.us

.split191.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2
  %.us-phi192 = phi i64 [ %i.bg, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.2 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ay, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.ch, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1 ], [ %i.dl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi192, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph183:                                        ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.a
  %i.bs = load i8, ptr %i.br, align 1, !noundef !9
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul i32 %i.c, %i.bt
  %.not64.first_iter = icmp ugt i64 %5, %i.al
  br label %bb.n

.split194.us:                                     ; preds = %bb.m, %bb.p, %bb.u, %bb.g, %bb.i, %bb.k
  %.us-phi195 = phi i64 [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.i ], [ %umin, %bb.u ], [ %umin, %bb.p ], [ %umin, %bb.m ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi195, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.n:                                             ; preds = %.lr.ph183, %bb.aa
  %.sroa.026.0181 = phi i32 [ %i.bu, %.lr.ph183 ], [ %i.ez, %bb.aa ] ; 2 uses
  %.sroa.1093.0180 = phi i64 [ 0, %.lr.ph183 ], [ %i.by, %bb.aa ] ; 5 uses
  %.sroa.792.0179 = phi i64 [ %i.a, %.lr.ph183 ], [ %i.bv, %bb.aa ]
  %.sroa.090.0178 = phi ptr [ %4, %.lr.ph183 ], [ %i.bx, %bb.aa ] ; 3 uses
  %i.bv = add nsw i64 %.sroa.792.0179, -1         ; 2 uses
  %i.bw = icmp eq ptr %.sroa.090.0178, %i.aj
  br i1 %i.bw, label %._crit_edge184, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.090.0178, i64 4
  %i.by = add nuw nsw i64 %.sroa.1093.0180, 1
  %i.bz = load i32, ptr %.sroa.090.0178, align 4, !noundef !9
  %i.ca = sub nsw i64 %5, %.sroa.1093.0180        ; 2 uses
  %i.cb = add nsw i64 %i.ca, -1                   ; 2 uses
  %exitcond249.not = icmp eq i64 %.sroa.1093.0180, %i.al
  br i1 %exitcond249.not, label %.loopexit, label %bb.z, !prof !6

._crit_edge184:                                   ; preds = %bb.n, %bb.aa
  %.sroa.026.0.lcssa = phi i32 [ %i.ez, %bb.aa ], [ %.sroa.026.0181, %bb.n ]
  %i.cc = add i32 %.sroa.026.0.lcssa, 16384
  %i.cd = lshr i32 %i.cc, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.cd, i32 255)
  %i.ce = trunc nuw i32 %..i to i8
  store i8 %i.ce, ptr %i.e, align 1
  %i.cf = icmp samesign eq i64 %i.f, 1
  %indvars.iv.next247 = add nsw i64 %i.al, -1     ; 3 uses
  br i1 %i.cf, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1: ; preds = %._crit_edge184
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ch = or disjoint i64 %i.d, 1                 ; 3 uses
  %.not420 = icmp samesign ult i64 %i.d, %1
  br i1 %.not420, label %bb.p, label %.split191.us, !prof !4

bb.p:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.1
  %i.ci = sub nuw nsw i64 %1, %i.ch               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch ; 3 uses
  %i.ck = icmp samesign ult i64 %i.a, %i.ci
  br i1 %i.ck, label %.lr.ph183.1, label %.split194.us

.lr.ph183.1:                                      ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.a
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !9
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul i32 %i.c, %i.cn
  %.not64.first_iter.1 = icmp ugt i64 %5, %indvars.iv.next247
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph183.1
  %.sroa.026.0181.1 = phi i32 [ %i.co, %.lr.ph183.1 ], [ %i.df, %bb.t ] ; 2 uses
  %.sroa.1093.0180.1 = phi i64 [ 0, %.lr.ph183.1 ], [ %i.cs, %bb.t ] ; 5 uses
  %.sroa.792.0179.1 = phi i64 [ %i.a, %.lr.ph183.1 ], [ %i.cp, %bb.t ]
  %.sroa.090.0178.1 = phi ptr [ %4, %.lr.ph183.1 ], [ %i.cr, %bb.t ] ; 3 uses
  %i.cp = add nsw i64 %.sroa.792.0179.1, -1       ; 2 uses
  %i.cq = icmp eq ptr %.sroa.090.0178.1, %i.aj
  br i1 %i.cq, label %._crit_edge184.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.090.0178.1, i64 4
  %i.cs = add nuw nsw i64 %.sroa.1093.0180.1, 1
  %i.ct = load i32, ptr %.sroa.090.0178.1, align 4, !noundef !9
  %i.cu = sub nsw i64 %5, %.sroa.1093.0180.1      ; 2 uses
  %i.cv = add nsw i64 %i.cu, -1                   ; 2 uses
  %exitcond249.not.1 = icmp eq i64 %.sroa.1093.0180.1, %indvars.iv.next247
  br i1 %exitcond249.not.1, label %.loopexit, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp eq i64 %5, %.sroa.1093.0180.1
  %or.cond69.1 = or i1 %i.cw, %.not64.first_iter.1
  br i1 %or.cond69.1, label %.loopexit405, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.1093.0180.1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  %i.cz = load i8, ptr %i.cx, align 1, !noundef !9
  %i.da = zext i8 %i.cz to i32
  %i.db = load i8, ptr %i.cy, align 1, !noundef !9
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  %i.de = mul i32 %i.dd, %i.ct
  %i.df = add i32 %i.de, %.sroa.026.0181.1        ; 2 uses
  %i.dg = icmp eq i64 %i.cp, 0
  br i1 %i.dg, label %._crit_edge184.1, label %bb.q

._crit_edge184.1:                                 ; preds = %bb.t, %bb.q
  %.sroa.026.0.lcssa.1 = phi i32 [ %i.df, %bb.t ], [ %.sroa.026.0181.1, %bb.q ]
  %i.dh = add i32 %.sroa.026.0.lcssa.1, 16384
  %i.di = lshr i32 %i.dh, 15
  %..i.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.di, i32 255)
  %i.dj = trunc nuw i32 %..i.1 to i8
  store i8 %i.dj, ptr %i.am, align 1
  %i.dk = icmp samesign eq i64 %i.f, 2
  %indvars.iv.next247.1 = add nsw i64 %i.al, -2   ; 3 uses
  br i1 %i.dk, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2: ; preds = %._crit_edge184.1
  %i.dl = or disjoint i64 %i.d, 2                 ; 4 uses
  %i.dm = icmp samesign ugt i64 %i.dl, %1
  br i1 %i.dm, label %.split191.us, label %bb.u, !prof !5

bb.u:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.2
  %i.dn = sub nuw nsw i64 %1, %i.dl               ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowhmKj4_EB6_:bb.a
bb.ac:                                            ; preds = %.lr.ph, %bb.ah
  %.sroa.086.0158 = phi ptr [ %4, %.lr.ph ], [ %i.fu, %bb.ah ] ; 3 uses
  %.sroa.788.0157 = phi i64 [ %i.a, %.lr.ph ], [ %i.fs, %bb.ah ]
  %.sroa.10.0156 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %bb.ah ] ; 3 uses
  %i.fr = phi <4 x i32> [ %i.fq, %.lr.ph ], [ %i.gu, %bb.ah ] ; 2 uses
  %i.fs = add nsw i64 %.sroa.788.0157, -1         ; 2 uses
  %i.ft = icmp eq ptr %.sroa.086.0158, %i.j
  br i1 %i.ft, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.086.0158, i64 4
  %i.fv = add nuw nsw i64 %.sroa.10.0156, 1
  %i.fw = load i32, ptr %.sroa.086.0158, align 4, !noundef !9
  %i.fx = shl nuw nsw i64 %.sroa.10.0156, 2       ; 4 uses
  %i.fy = or disjoint i64 %i.fx, 3
  %or.cond.not = icmp samesign ult i64 %i.fy, %i.fl
  br i1 %or.cond.not, label %bb.af, label %bb.ae, !prof !11

._crit_edge:                                      ; preds = %bb.ac, %bb.ah
  %i.fz = phi <4 x i32> [ %i.gu, %bb.ah ], [ %i.fr, %bb.ac ]
  %i.ga = add <4 x i32> %i.fz, splat (i32 16384)
  %i.gb = lshr <4 x i32> %i.ga, splat (i32 15)
  %i.gc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 255))
  %i.gd = trunc nuw <4 x i32> %i.gc to <4 x i8>
  store <4 x i8> %i.gd, ptr %.sroa.085.0172, align 1
  %i.ge = icmp eq ptr %i.af, %i.e
  br i1 %i.ge, label %._crit_edge175, label %.lr.ph174.split

bb.ae:                                            ; preds = %bb.ad
  %i.gf = add nuw i64 %i.fx, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fx, i64 noundef %i.gf, i64 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gg = xor i64 %.sroa.10.0156, -1
  %i.gh = add nsw i64 %5, %i.gg
  %i.gi = shl nsw i64 %i.gh, 2                    ; 4 uses
  %or.cond73.not = icmp ult i64 %i.gi, %invariant.op
  br i1 %or.cond73.not, label %bb.ah, label %bb.ag, !prof !11

bb.ag:                                            ; preds = %bb.af
  %i.gj = add i64 %i.gi, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.gi, i64 noundef %i.gj, i64 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fx
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gi
  %i.gm = load <4 x i8>, ptr %i.gk, align 1
  %i.gn = zext <4 x i8> %i.gm to <4 x i32>
  %i.go = load <4 x i8>, ptr %i.gl, align 1
  %i.gp = zext <4 x i8> %i.go to <4 x i32>
  %i.gq = add nuw nsw <4 x i32> %i.gp, %i.gn
  %i.gr = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.gs = shufflevector <4 x i32> %i.gr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gt = mul <4 x i32> %i.gq, %i.gs
  %i.gu = add <4 x i32> %i.gt, %i.fr              ; 2 uses
  %i.gv = icmp eq i64 %i.fs, 0
  br i1 %i.gv, label %._crit_edge, label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj1_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 13 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !9 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 7 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.a, 4                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %.lr.ph172.split.us, label %.lr.ph172.split.preheader

.lr.ph172.split.preheader:                        ; preds = %.lr.ph172
  %i.l = add nuw nsw i64 %5, 3
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph172.split

.lr.ph172.split.us:                               ; preds = %.lr.ph172
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph172.split.us
  %.sroa.083.0170.us = phi ptr [ %2, %.lr.ph172.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0169.us = phi i64 [ 0, %.lr.ph172.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.083.0170.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0169.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0169.us, 2      ; 3 uses
  %exitcond246 = icmp eq i64 %.sroa.7.0169.us, %i.r
  br i1 %exitcond246, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not65.us = icmp samesign ugt i64 %i.i, %i.x
  br i1 %.not65.us, label %.split175.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %0, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.083.0170.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge173, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph172.split:                                  ; preds = %.lr.ph172.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %1, %.lr.ph172.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.083.0170 = phi ptr [ %2, %.lr.ph172.split.preheader ], [ %i.ag, %._crit_edge ] ; 2 uses
  %.sroa.7.0169 = phi i64 [ 0, %.lr.ph172.split.preheader ], [ %i.ah, %._crit_edge ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.083.0170, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0169, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0169, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0169, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge173:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx198 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx198 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx198, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge173
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.am = icmp eq i64 %i.a, 0
  br i1 %i.am, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.an = add nsw i64 %.idx198, -2
  %i.ao = lshr exact i64 %i.an, 1
  %i.ap = sub nsw i64 %1, %i.d
  %i.aq = add nuw nsw i64 %1, 1
  %i.ar = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.d)
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ap)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.at, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader362, label %vector.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader362: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.087.0189.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.az, %vector.body ]
  %.sroa.789.0188.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.au = add nuw i64 %i.at, 1                    ; 2 uses
  %i.av = and i64 %i.au, 7                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 8, i64 %i.av
  %n.vec = sub i64 %i.au, %i.ax                   ; 3 uses
  %i.ay = shl i64 %n.vec, 1
  %i.az = getelementptr i8, ptr %i.e, i64 %i.ay
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.ba
  %gep447 = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %gep447, align 2
  %i.bb = zext <8 x i16> %wide.load to <8 x i32>
  %i.bc = mul <8 x i32> %broadcast.splat, %i.bb
  %i.bd = add <8 x i32> %i.bc, splat (i32 16384)
  %i.be = lshr <8 x i32> %i.bd, splat (i32 15)
  %i.bf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.be, <8 x i32> splat (i32 65535))
  %i.bg = trunc nuw <8 x i32> %i.bf to <8 x i16>
  store <8 x i16> %i.bg, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader362, label %vector.body, !llvm.loop !166

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.bi = sub nsw i64 %1, %i.d                    ; 2 uses
  %umin = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.bi)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader362, %bb.h
  %.sroa.087.0189.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.087.0189.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader362 ] ; 2 uses
  %.sroa.789.0188.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.789.0188.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader362 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.087.0189.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.789.0188.us, 1
  %i.bl = add nuw nsw i64 %.sroa.789.0188.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split191.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.not270 = icmp eq i64 %1, %i.bl
  br i1 %.not270, label %.split194.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gep197 = getelementptr [2 x i8], ptr %0, i64 %i.bl
  %i.bn = load i16, ptr %gep197, align 2, !noundef !9
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul i32 %i.c, %i.bo
  %i.bq = add i32 %i.bp, 16384
  %i.br = lshr i32 %i.bq, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.br, i32 65535)
  %i.bs = trunc nuw i32 %..i.us to i16
  store i16 %i.bs, ptr %.sroa.087.0189.us, align 2
  %i.bt = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bt, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !167

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge184
  %indvars.iv247 = phi i64 [ %i.bi, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %indvars.iv.next248, %._crit_edge184 ] ; 5 uses
  %.sroa.087.0189 = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.bu, %._crit_edge184 ] ; 2 uses
  %.sroa.789.0188 = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.preheader ], [ %i.bv, %._crit_edge184 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.087.0189, i64 2 ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.789.0188, 1
  %i.bw = add nuw nsw i64 %.sroa.789.0188, %i.d   ; 4 uses
  %i.bx = icmp samesign ugt i64 %i.bw, %1
  br i1 %i.bx, label %.split191.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge184, %bb.h, %._crit_edge173
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.by = sub nuw nsw i64 %1, %i.bw               ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.ca = icmp samesign ult i64 %i.a, %i.by
  br i1 %i.ca, label %.lr.ph183, label %.split194.us

.split191.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi192 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.bw, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi192, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph183:                                        ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.a
  %i.cc = load i16, ptr %i.cb, align 2, !noundef !9
  %i.cd = zext i16 %i.cc to i32
  %i.ce = mul i32 %i.c, %i.cd
  %.not64.first_iter = icmp ugt i64 %5, %indvars.iv247
  br label %bb.j

.split194.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi195 = phi i64 [ 0, %bb.g ], [ %umin, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %.us-phi195, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph183, %bb.o
  %.sroa.026.0181 = phi i32 [ %i.ce, %.lr.ph183 ], [ %i.da, %bb.o ] ; 2 uses
  %.sroa.1093.0180 = phi i64 [ 0, %.lr.ph183 ], [ %i.ci, %bb.o ] ; 5 uses
  %.sroa.792.0179 = phi i64 [ %i.a, %.lr.ph183 ], [ %i.cf, %bb.o ]
  %.sroa.090.0178 = phi ptr [ %4, %.lr.ph183 ], [ %i.ch, %bb.o ] ; 3 uses
  %i.cf = add nsw i64 %.sroa.792.0179, -1         ; 2 uses
  %i.cg = icmp eq ptr %.sroa.090.0178, %i.al
  br i1 %i.cg, label %._crit_edge184, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.090.0178, i64 4
  %i.ci = add nuw nsw i64 %.sroa.1093.0180, 1
  %i.cj = load i32, ptr %.sroa.090.0178, align 4, !noundef !9
  %i.ck = sub nsw i64 %5, %.sroa.1093.0180        ; 2 uses
  %i.cl = add nsw i64 %i.ck, -1                   ; 2 uses
  %exitcond250.not = icmp eq i64 %.sroa.1093.0180, %indvars.iv247
  br i1 %exitcond250.not, label %bb.l, label %bb.m, !prof !6

._crit_edge184:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.da, %bb.o ], [ %.sroa.026.0181, %bb.j ]
  %i.cm = add i32 %.sroa.026.0.lcssa, 16384
  %i.cn = lshr i32 %i.cm, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.cn, i32 65535)
  %i.co = trunc nuw i32 %..i to i16
  store i16 %i.co, ptr %.sroa.087.0189, align 2
  %i.cp = icmp eq ptr %i.bu, %i.aj
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, -1
  br i1 %i.cp, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = add i64 %indvars.iv247, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %indvars.iv247, i64 noundef %i.cq, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cr = icmp eq i64 %5, %.sroa.1093.0180
  %or.cond69 = or i1 %i.cr, %.not64.first_iter
  br i1 %or.cond69, label %bb.n, label %bb.o, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cl, i64 noundef %i.ck, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %.sroa.1093.0180
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cl
  %i.cu = load i16, ptr %i.cs, align 2, !noundef !9
  %i.cv = zext i16 %i.cu to i32
  %i.cw = load i16, ptr %i.ct, align 2, !noundef !9
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nuw nsw i32 %i.cx, %i.cv
  %i.cz = mul i32 %i.cy, %i.cj
  %i.da = add i32 %i.cz, %.sroa.026.0181          ; 2 uses
  %i.db = icmp eq i64 %i.cf, 0
  br i1 %i.db, label %._crit_edge184, label %bb.j

bb.p:                                             ; preds = %.lr.ph172.split
  %i.dc = sub nuw nsw i64 %1, %i.ai               ; 5 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not65 = icmp samesign ugt i64 %i.i, %i.dc
  br i1 %.not65, label %.split175.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph172.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph172.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split175.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi176 = phi i64 [ %i.x, %bb.d ], [ %i.dc, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %.us-phi176, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.a
  %i.df = load <4 x i16>, ptr %i.de, align 2
  %i.dg = zext <4 x i16> %i.df to <4 x i32>
  %i.dh = mul <4 x i32> %i.p, %i.dg
  %.not68.first_iter = icmp ugt i64 %i.l, %indvars.iv
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.084.0156 = phi ptr [ %4, %.lr.ph ], [ %i.dl, %bb.v ] ; 3 uses
  %.sroa.786.0155 = phi i64 [ %i.a, %.lr.ph ], [ %i.dj, %bb.v ]
  %.sroa.10.0154 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %bb.v ] ; 5 uses
  %i.di = phi <4 x i32> [ %i.dh, %.lr.ph ], [ %i.ej, %bb.v ] ; 2 uses
  %i.dj = add nsw i64 %.sroa.786.0155, -1         ; 2 uses
  %i.dk = icmp eq ptr %.sroa.084.0156, %i.j
  br i1 %i.dk, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.084.0156, i64 4
  %i.dm = add nuw nsw i64 %.sroa.10.0154, 1
  %i.dn = load i32, ptr %.sroa.084.0156, align 4, !noundef !9
  %i.do = xor i64 %.sroa.10.0154, -1
  %i.dp = add nsw i64 %5, %i.do                   ; 4 uses
  %i.dq = add nuw nsw i64 %.sroa.10.0154, 4       ; 2 uses
  %.not67 = icmp samesign ugt i64 %i.dq, %i.dc
  br i1 %.not67, label %bb.s, label %bb.t, !prof !6

._crit_edge:                                      ; preds = %bb.q, %bb.v
  %i.dr = phi <4 x i32> [ %i.ej, %bb.v ], [ %i.di, %bb.q ]
  %i.ds = add <4 x i32> %i.dr, splat (i32 16384)
  %i.dt = lshr <4 x i32> %i.ds, splat (i32 15)
  %i.du = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 65535))
  %i.dv = trunc nuw <4 x i32> %i.du to <4 x i16>
  store <4 x i16> %i.dv, ptr %.sroa.083.0170, align 2
  %i.dw = icmp eq ptr %i.ag, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %i.dw, label %._crit_edge173, label %.lr.ph172.split

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.10.0154, i64 noundef %i.dq, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dx = icmp ugt i64 %i.dp, -5
  %or.cond71 = or i1 %i.dx, %.not68.first_iter
  br i1 %or.cond71, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  %i.dy = add nsw i64 %i.dp, 4
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.dy, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %.sroa.10.0154
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.dp
  %i.eb = load <4 x i16>, ptr %i.dz, align 2
  %i.ec = zext <4 x i16> %i.eb to <4 x i32>
  %i.ed = load <4 x i16>, ptr %i.ea, align 2
  %i.ee = zext <4 x i16> %i.ed to <4 x i32>
  %i.ef = add nuw nsw <4 x i32> %i.ee, %i.ec
  %i.eg = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %i.eh = shufflevector <4 x i32> %i.eg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ei = mul <4 x i32> %i.ef, %i.eh
  %i.ej = add <4 x i32> %i.ei, %i.di              ; 2 uses
  %i.ek = icmp eq i64 %i.dj, 0
  br i1 %i.ek, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj2_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !9 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 7 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.b
  %i.i = and i64 %5, 2305843009213693950          ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph177.split.us, label %.lr.ph177.split.preheader

.lr.ph177.split.preheader:                        ; preds = %.lr.ph177
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph177.split

.lr.ph177.split.us:                               ; preds = %.lr.ph177
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph177.split.us
  %.sroa.085.0175.us = phi ptr [ %2, %.lr.ph177.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0174.us = phi i64 [ 0, %.lr.ph177.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.085.0175.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0174.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0174.us, 2      ; 3 uses
  %exitcond248 = icmp eq i64 %.sroa.7.0174.us, %i.r
  br i1 %exitcond248, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.x
  br i1 %.not69.us, label %.split180.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.085.0175.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge178, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph177.split:                                  ; preds = %.lr.ph177.split.preheader, %._crit_edge
  %.sroa.085.0175 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph177.split.preheader ] ; 2 uses
  %.sroa.7.0174 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.lr.ph177.split.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.085.0175, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0174, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0174, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0174, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge178:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx205 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx205 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx205, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge178
  %i.al = and i64 %5, 2305843009213693950         ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep203 = getelementptr [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = add nsw i64 %.idx205, -2
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = sub nsw i64 %1, %i.d
  %6 = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.aq)
  %7 = add i64 %6, %i.d
  %8 = sub i64 %1, %7
  %i.ar = add nuw nsw i64 %1, 1
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.d)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %8)
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.av = add nuw i64 %i.au, 1                    ; 2 uses
  %i.aw = and i64 %i.av, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub i64 %i.av, %i.ay                   ; 3 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep438 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bb
  %gep439 = getelementptr [2 x i8], ptr %invariant.gep438, i64 %index
  %wide.load = load <8 x i16>, ptr %gep439, align 2
  %i.bc = zext <8 x i16> %wide.load to <8 x i32>
  %i.bd = mul <8 x i32> %broadcast.splat, %i.bc
  %i.be = add <8 x i32> %i.bd, splat (i32 16384)
  %i.bf = lshr <8 x i32> %i.be, splat (i32 15)
  %i.bg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 65535))
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>
  store <8 x i16> %i.bh, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body, !llvm.loop !168

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.089.0195.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.ba, %vector.body ]
  %.sroa.791.0194.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.h
  %.sroa.089.0195.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.089.0195.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.791.0194.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.791.0194.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.089.0195.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.791.0194.us, 1
  %i.bl = add nuw nsw i64 %.sroa.791.0194.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split197.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.bn = sub nuw nsw i64 %1, %i.bl               ; 2 uses
  %i.bo = icmp samesign ult i64 %i.al, %i.bn
  br i1 %i.bo, label %bb.h, label %.split200.us

bb.h:                                             ; preds = %bb.g
  %gep204 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %i.bl
  %i.bp = load i16, ptr %gep204, align 2, !noundef !9
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %i.c, %i.bq
  %i.bs = add i32 %i.br, 16384
  %i.bt = lshr i32 %i.bs, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %..i.us to i16
  store i16 %i.bu, ptr %.sroa.089.0195.us, align 2
  %i.bv = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !169

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge190
  %.sroa.089.0195 = phi ptr [ %i.bw, %._crit_edge190 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.791.0194 = phi i64 [ %i.bx, %._crit_edge190 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.089.0195, i64 2 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.791.0194, 1
  %i.by = add nuw nsw i64 %.sroa.791.0194, %i.d   ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.by, %1
  br i1 %i.bz, label %.split197.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge190, %bb.h, %._crit_edge178
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ca = sub nuw nsw i64 %1, %i.by               ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.cc = icmp samesign ult i64 %i.al, %i.ca
  br i1 %i.cc, label %.lr.ph189, label %.split200.us

.split197.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi198 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.by, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi198, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph189:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.al
  %i.ce = load i16, ptr %i.cd, align 2, !noundef !9
  %i.cf = zext i16 %i.ce to i32
  %i.cg = mul i32 %i.c, %i.cf
  br label %bb.j

.split200.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi201 = phi i64 [ %i.bn, %bb.g ], [ %i.ca, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.us-phi201, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph189, %bb.o
  %.sroa.026.0187 = phi i32 [ %i.cg, %.lr.ph189 ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.1095.0186 = phi i64 [ 0, %.lr.ph189 ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.794.0185 = phi i64 [ %i.a, %.lr.ph189 ], [ %i.ch, %bb.o ]
  %.sroa.092.0184 = phi ptr [ %4, %.lr.ph189 ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.794.0185, -1         ; 2 uses
  %i.ci = icmp eq ptr %.sroa.092.0184, %i.am
  br i1 %i.ci, label %._crit_edge190, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.092.0184, i64 4
  %i.ck = add nuw nsw i64 %.sroa.1095.0186, 1
  %i.cl = load i32, ptr %.sroa.092.0184, align 4, !noundef !9
  %i.cm = shl nuw nsw i64 %.sroa.1095.0186, 1     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.cm, %i.ca
  br i1 %.not67.not, label %bb.m, label %bb.l, !prof !4

._crit_edge190:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %.sroa.026.0187, %bb.j ]
  %i.cn = add i32 %.sroa.026.0.lcssa, 16384
  %i.co = lshr i32 %i.cn, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.co, i32 65535)
  %i.cp = trunc nuw i32 %..i to i16
  store i16 %i.cp, ptr %.sroa.089.0195, align 2
  %i.cq = icmp eq ptr %i.bw, %i.aj
  br i1 %i.cq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = or disjoint i64 %i.cm, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cr, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = xor i64 %.sroa.1095.0186, -1
  %i.ct = add nsw i64 %5, %i.cs
  %i.cu = shl nsw i64 %i.ct, 1                    ; 4 uses
  %.not68.not = icmp ult i64 %i.cu, %i.ca
  br i1 %.not68.not, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %bb.m
  %i.cv = or disjoint i64 %i.cu, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cu
  %i.cy = load i16, ptr %i.cw, align 2, !noundef !9
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !noundef !9
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = mul i32 %i.dc, %i.cl
  %i.de = add i32 %i.dd, %.sroa.026.0187          ; 2 uses
  %i.df = icmp eq i64 %i.ch, 0
  br i1 %i.df, label %._crit_edge190, label %bb.j

bb.p:                                             ; preds = %.lr.ph177.split
  %i.dg = sub nuw nsw i64 %1, %i.ai               ; 6 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.dg
  br i1 %.not69, label %.split180.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph177.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph177.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split180.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi181 = phi i64 [ %i.x, %bb.d ], [ %i.dg, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi181, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.i
  %i.dj = load <4 x i16>, ptr %i.di, align 2
  %i.dk = zext <4 x i16> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.p, %i.dk
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.086.0161 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.788.0160 = phi i64 [ %i.a, %.lr.ph ], [ %i.dn, %bb.v ]
  %.sroa.10.0159 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dm = phi <4 x i32> [ %i.dl, %.lr.ph ], [ %i.ep, %bb.v ] ; 2 uses
  %i.dn = add nsw i64 %.sroa.788.0160, -1         ; 2 uses
  %i.do = icmp eq ptr %.sroa.086.0161, %i.k
  br i1 %i.do, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.086.0161, i64 4
  %i.dq = add nuw nsw i64 %.sroa.10.0159, 1
  %i.dr = load i32, ptr %.sroa.086.0161, align 4, !noundef !9
  %i.ds = shl nuw nsw i64 %.sroa.10.0159, 1       ; 3 uses
  %i.dt = add nuw nsw i64 %i.ds, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.dt, %i.dg
  br i1 %.not71, label %bb.s, label %bb.t, !prof !6

._crit_edge:                                      ; preds = %bb.q, %bb.v
  %i.du = phi <4 x i32> [ %i.ep, %bb.v ], [ %i.dm, %bb.q ]
  %i.dv = add <4 x i32> %i.du, splat (i32 16384)
  %i.dw = lshr <4 x i32> %i.dv, splat (i32 15)
  %i.dx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dw, <4 x i32> splat (i32 65535))
  %i.dy = trunc nuw <4 x i32> %i.dx to <4 x i16>
  store <4 x i16> %i.dy, ptr %.sroa.085.0175, align 2
  %i.dz = icmp eq ptr %i.ag, %i.g
  br i1 %i.dz, label %._crit_edge178, label %.lr.ph177.split

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %i.dt, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ea = xor i64 %.sroa.10.0159, -1
  %i.eb = add nsw i64 %5, %i.ea
  %i.ec = shl nsw i64 %i.eb, 1                    ; 4 uses
  %i.ed = add nsw i64 %i.ec, 4                    ; 2 uses
  %i.ee = icmp ugt i64 %i.ec, -5
  %.not72 = icmp ugt i64 %i.ed, %i.dg
  %or.cond73 = or i1 %i.ee, %.not72
  br i1 %or.cond73, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef %i.ed, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ds
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ec
  %i.eh = load <4 x i16>, ptr %i.ef, align 2
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = load <4 x i16>, ptr %i.eg, align 2
  %i.ek = zext <4 x i16> %i.ej to <4 x i32>
  %i.el = add nuw nsw <4 x i32> %i.ek, %i.ei
  %i.em = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.en = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eo = mul <4 x i32> %i.el, %i.en
  %i.ep = add <4 x i32> %i.eo, %i.dm              ; 2 uses
  %i.eq = icmp eq i64 %i.dn, 0
  br i1 %i.eq, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj3_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !9 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 7 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.a, 3                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph182.split.us, label %.lr.ph182.split.preheader

.lr.ph182.split.preheader:                        ; preds = %.lr.ph182
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph182.split

.lr.ph182.split.us:                               ; preds = %.lr.ph182
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph182.split.us
  %.sroa.087.0180.us = phi ptr [ %2, %.lr.ph182.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0179.us = phi i64 [ 0, %.lr.ph182.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.087.0180.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0179.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0179.us, 2      ; 3 uses
  %exitcond256 = icmp eq i64 %.sroa.7.0179.us, %i.r
  br i1 %exitcond256, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.x
  br i1 %.not69.us, label %.split185.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.087.0180.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge183, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph182.split:                                  ; preds = %.lr.ph182.split.preheader, %._crit_edge
  %.sroa.087.0180 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph182.split.preheader ] ; 2 uses
  %.sroa.7.0179 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.lr.ph182.split.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.087.0180, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0179, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0179, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0179, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge183:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx210 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx210 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx210, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge183
  %i.al = mul nuw nsw i64 %i.a, 3                 ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep208 = getelementptr [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = add nsw i64 %.idx210, -2
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = sub nsw i64 %1, %i.d
  %6 = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.aq)
  %7 = add i64 %6, %i.d
  %8 = sub i64 %1, %7
  %i.ar = add nuw nsw i64 %1, 1
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.d)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %8)
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.av = add nuw i64 %i.au, 1                    ; 2 uses
  %i.aw = and i64 %i.av, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub i64 %i.av, %i.ay                   ; 3 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep448 = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bb
  %gep449 = getelementptr [2 x i8], ptr %invariant.gep448, i64 %index
  %wide.load = load <8 x i16>, ptr %gep449, align 2
  %i.bc = zext <8 x i16> %wide.load to <8 x i32>
  %i.bd = mul <8 x i32> %broadcast.splat, %i.bc
  %i.be = add <8 x i32> %i.bd, splat (i32 16384)
  %i.bf = lshr <8 x i32> %i.be, splat (i32 15)
  %i.bg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 65535))
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>
  store <8 x i16> %i.bh, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body, !llvm.loop !170

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.091.0200.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.ba, %vector.body ]
  %.sroa.793.0199.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.h
  %.sroa.091.0200.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.091.0200.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.793.0199.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.793.0199.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.091.0200.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.793.0199.us, 1
  %i.bl = add nuw nsw i64 %.sroa.793.0199.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split202.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.bn = sub nuw nsw i64 %1, %i.bl               ; 2 uses
  %i.bo = icmp samesign ult i64 %i.al, %i.bn
  br i1 %i.bo, label %bb.h, label %.split205.us

bb.h:                                             ; preds = %bb.g
  %gep209 = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.bl
  %i.bp = load i16, ptr %gep209, align 2, !noundef !9
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %i.c, %i.bq
  %i.bs = add i32 %i.br, 16384
  %i.bt = lshr i32 %i.bs, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %..i.us to i16
  store i16 %i.bu, ptr %.sroa.091.0200.us, align 2
  %i.bv = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !171

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge195
  %.sroa.091.0200 = phi ptr [ %i.bw, %._crit_edge195 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.793.0199 = phi i64 [ %i.bx, %._crit_edge195 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.091.0200, i64 2 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.793.0199, 1
  %i.by = add nuw nsw i64 %.sroa.793.0199, %i.d   ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.by, %1
  br i1 %i.bz, label %.split202.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge195, %bb.h, %._crit_edge183
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ca = sub nuw nsw i64 %1, %i.by               ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.cc = icmp samesign ult i64 %i.al, %i.ca
  br i1 %i.cc, label %.lr.ph194, label %.split205.us

.split202.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi203 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.by, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi203, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph194:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.al
  %i.ce = load i16, ptr %i.cd, align 2, !noundef !9
  %i.cf = zext i16 %i.ce to i32
  %i.cg = mul i32 %i.c, %i.cf
  br label %bb.j

.split205.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi206 = phi i64 [ %i.bn, %bb.g ], [ %i.ca, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.us-phi206, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph194, %bb.o
  %.sroa.026.0192 = phi i32 [ %i.cg, %.lr.ph194 ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.1097.0191 = phi i64 [ 0, %.lr.ph194 ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.796.0190 = phi i64 [ %i.a, %.lr.ph194 ], [ %i.ch, %bb.o ]
  %.sroa.094.0189 = phi ptr [ %4, %.lr.ph194 ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.796.0190, -1         ; 2 uses
  %i.ci = icmp eq ptr %.sroa.094.0189, %i.am
  br i1 %i.ci, label %._crit_edge195, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.094.0189, i64 4
  %i.ck = add nuw nsw i64 %.sroa.1097.0191, 1
  %i.cl = load i32, ptr %.sroa.094.0189, align 4, !noundef !9
  %i.cm = mul nuw nsw i64 %.sroa.1097.0191, 3     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.cm, %i.ca
  br i1 %.not67.not, label %bb.m, label %bb.l, !prof !11

._crit_edge195:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %.sroa.026.0192, %bb.j ]
  %i.cn = add i32 %.sroa.026.0.lcssa, 16384
  %i.co = lshr i32 %i.cn, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.co, i32 65535)
  %i.cp = trunc nuw i32 %..i to i16
  store i16 %i.cp, ptr %.sroa.091.0200, align 2
  %i.cq = icmp eq ptr %i.bw, %i.aj
  br i1 %i.cq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = add nuw nsw i64 %i.cm, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cr, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = xor i64 %.sroa.1097.0191, -1
  %i.ct = add nsw i64 %5, %i.cs
  %i.cu = mul nsw i64 %i.ct, 3                    ; 3 uses
  %i.cv = add nsw i64 %i.cu, 1                    ; 2 uses
  %.not68 = icmp ugt i64 %i.cv, %i.ca
  br i1 %.not68, label %bb.n, label %bb.o, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cu
  %i.cy = load i16, ptr %i.cw, align 2, !noundef !9
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !noundef !9
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = mul i32 %i.dc, %i.cl
  %i.de = add i32 %i.dd, %.sroa.026.0192          ; 2 uses
  %i.df = icmp eq i64 %i.ch, 0
  br i1 %i.df, label %._crit_edge195, label %bb.j

bb.p:                                             ; preds = %.lr.ph182.split
  %i.dg = sub nuw nsw i64 %1, %i.ai               ; 6 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.dg
  br i1 %.not69, label %.split185.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph182.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph182.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split185.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi186 = phi i64 [ %i.x, %bb.d ], [ %i.dg, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.i
  %i.dj = load <4 x i16>, ptr %i.di, align 2
  %i.dk = zext <4 x i16> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.p, %i.dk
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.088.0166 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.790.0165 = phi i64 [ %i.a, %.lr.ph ], [ %i.dn, %bb.v ]
  %.sroa.10.0164 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dm = phi <4 x i32> [ %i.dl, %.lr.ph ], [ %i.ep, %bb.v ] ; 2 uses
  %i.dn = add nsw i64 %.sroa.790.0165, -1         ; 2 uses
  %i.do = icmp eq ptr %.sroa.088.0166, %i.k
  br i1 %i.do, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.088.0166, i64 4
  %i.dq = add nuw nsw i64 %.sroa.10.0164, 1
  %i.dr = load i32, ptr %.sroa.088.0166, align 4, !noundef !9
  %i.ds = mul nuw nsw i64 %.sroa.10.0164, 3       ; 3 uses
  %i.dt = add nuw nsw i64 %i.ds, 4                ; 2 uses
  %.not71 = icmp samesign ugt i64 %i.dt, %i.dg
  br i1 %.not71, label %bb.s, label %bb.t, !prof !6

._crit_edge:                                      ; preds = %bb.q, %bb.v
  %i.du = phi <4 x i32> [ %i.ep, %bb.v ], [ %i.dm, %bb.q ]
  %i.dv = add <4 x i32> %i.du, splat (i32 16384)
  %i.dw = lshr <4 x i32> %i.dv, splat (i32 15)
  %i.dx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dw, <4 x i32> splat (i32 65535))
  %i.dy = trunc nuw <4 x i32> %i.dx to <4 x i16>
  store <4 x i16> %i.dy, ptr %.sroa.087.0180, align 2
  %i.dz = icmp eq ptr %i.ag, %i.g
  br i1 %i.dz, label %._crit_edge183, label %.lr.ph182.split

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ds, i64 noundef %i.dt, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ea = xor i64 %.sroa.10.0164, -1
  %i.eb = add nsw i64 %5, %i.ea
  %i.ec = mul nsw i64 %i.eb, 3                    ; 4 uses
  %i.ed = add nsw i64 %i.ec, 4                    ; 2 uses
  %i.ee = icmp ugt i64 %i.ec, -5
  %.not72 = icmp ugt i64 %i.ed, %i.dg
  %or.cond75 = or i1 %i.ee, %.not72
  br i1 %or.cond75, label %bb.u, label %bb.v, !prof !6

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef %i.ed, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ds
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ec
  %i.eh = load <4 x i16>, ptr %i.ef, align 2
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = load <4 x i16>, ptr %i.eg, align 2
  %i.ek = zext <4 x i16> %i.ej to <4 x i32>
  %i.el = add nuw nsw <4 x i32> %i.ek, %i.ei
  %i.em = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.en = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eo = mul <4 x i32> %i.el, %i.en
  %i.ep = add <4 x i32> %i.eo, %i.dm              ; 2 uses
  %i.eq = icmp eq i64 %i.dn, 0
  br i1 %i.eq, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d20filter_symmetric_rowtmKj4_EB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %5, 1                           ; 8 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !noundef !9 ; 5 uses
  %i.d = and i64 %3, 4611686018427387900          ; 7 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.f = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.f, 9223372036854775800       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.a, 2                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.l = icmp eq i64 %i.a, 0
  br i1 %i.l, label %.lr.ph174.split.us, label %.lr.ph174.split.preheader

.lr.ph174.split.preheader:                        ; preds = %.lr.ph174
  %i.m = add nuw nsw i64 %1, 4
  %i.n = lshr i64 %i.m, 2
  %i.o = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph174.split

.lr.ph174.split.us:                               ; preds = %.lr.ph174
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.q = add nuw nsw i64 %1, 4
  %i.r = lshr i64 %i.q, 2
  %i.s = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph174.split.us
  %.sroa.085.0172.us = phi ptr [ %2, %.lr.ph174.split.us ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0171.us = phi i64 [ 0, %.lr.ph174.split.us ], [ %i.v, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.085.0172.us, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0171.us, 1
  %i.w = shl nuw nsw i64 %.sroa.7.0171.us, 2      ; 3 uses
  %exitcond242 = icmp eq i64 %.sroa.7.0171.us, %i.r
  br i1 %exitcond242, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %1, %i.w                 ; 2 uses
  %.not69.us = icmp samesign ugt i64 %i.j, %i.x
  br i1 %.not69.us, label %.split177.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.w
  %i.y = load <4 x i16>, ptr %gep, align 2
  %i.z = zext <4 x i16> %i.y to <4 x i32>
  %i.aa = mul <4 x i32> %i.t, %i.z
  %i.ab = add <4 x i32> %i.aa, splat (i32 16384)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 15)
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ac, <4 x i32> splat (i32 65535))
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  store <4 x i16> %i.ae, ptr %.sroa.085.0172.us, align 2
  %i.af = icmp eq ptr %i.u, %i.g
  br i1 %i.af, label %._crit_edge175, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

.lr.ph174.split:                                  ; preds = %.lr.ph174.split.preheader, %._crit_edge
  %.sroa.085.0172 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph174.split.preheader ] ; 2 uses
  %.sroa.7.0171 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.lr.ph174.split.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.085.0172, i64 8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0171, 1
  %i.ai = shl nuw nsw i64 %.sroa.7.0171, 2        ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.0171, %i.n
  br i1 %exitcond, label %.split.us, label %bb.p, !prof !5

._crit_edge175:                                   ; preds = %._crit_edge, %bb.e, %bb.b
  %.idx202 = and i64 %i.f, 6                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx202 ; 2 uses
  %i.ak = icmp samesign eq i64 %.idx202, 0
  br i1 %i.ak, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge175
  %i.al = shl nuw nsw i64 %i.a, 2                 ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.an = icmp eq i64 %i.a, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %invariant.gep200 = getelementptr [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = add nsw i64 %.idx202, -2
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = sub nsw i64 %1, %i.d
  %6 = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.aq)
  %7 = add i64 %6, %i.d
  %8 = sub i64 %1, %7
  %i.ar = add nuw nsw i64 %1, 1
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.d)
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %8)
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 8
  br i1 %min.iters.check, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %i.av = add nuw i64 %i.au, 1                    ; 2 uses
  %i.aw = and i64 %i.av, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub i64 %i.av, %i.ay                   ; 3 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep420 = getelementptr [2 x i8], ptr %invariant.gep200, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bb
  %gep421 = getelementptr [2 x i8], ptr %invariant.gep420, i64 %index
  %wide.load = load <8 x i16>, ptr %gep421, align 2
  %i.bc = zext <8 x i16> %wide.load to <8 x i32>
  %i.bd = mul <8 x i32> %broadcast.splat, %i.bc
  %i.be = add <8 x i32> %i.bd, splat (i32 16384)
  %i.bf = lshr <8 x i32> %i.be, splat (i32 15)
  %i.bg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 65535))
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>
  store <8 x i16> %i.bh, ptr %next.gep, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.body, !llvm.loop !172

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.body, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us
  %.sroa.089.0192.us.ph = phi ptr [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %i.ba, %vector.body ]
  %.sroa.791.0191.us.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %bb.h
  %.sroa.089.0192.us = phi ptr [ %i.bj, %bb.h ], [ %.sroa.089.0192.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %.sroa.791.0191.us = phi i64 [ %i.bk, %bb.h ], [ %.sroa.791.0191.us.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.089.0192.us, i64 2 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.791.0191.us, 1
  %i.bl = add nuw nsw i64 %.sroa.791.0191.us, %i.d ; 4 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %1
  br i1 %i.bm, label %.split194.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.bn = sub nuw nsw i64 %1, %i.bl               ; 2 uses
  %i.bo = icmp samesign ult i64 %i.al, %i.bn
  br i1 %i.bo, label %bb.h, label %.split197.us

bb.h:                                             ; preds = %bb.g
  %gep201 = getelementptr [2 x i8], ptr %invariant.gep200, i64 %i.bl
  %i.bp = load i16, ptr %gep201, align 2, !noundef !9
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %i.c, %i.bq
  %i.bs = add i32 %i.br, 16384
  %i.bt = lshr i32 %i.bs, 15
  %..i.us = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %..i.us to i16
  store i16 %i.bu, ptr %.sroa.089.0192.us, align 2
  %i.bv = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !173

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge187
  %.sroa.089.0192 = phi ptr [ %i.bw, %._crit_edge187 ], [ %i.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %.sroa.791.0191 = phi i64 [ %i.bx, %._crit_edge187 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.089.0192, i64 2 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.791.0191, 1
  %i.by = add nuw nsw i64 %.sroa.791.0191, %i.d   ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.by, %1
  br i1 %i.bz, label %.split194.us, label %bb.i, !prof !5

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge187, %bb.h, %._crit_edge175
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.ca = sub nuw nsw i64 %1, %i.by               ; 6 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.cc = icmp samesign ult i64 %i.al, %i.ca
  br i1 %i.cc, label %.lr.ph186, label %.split197.us

.split194.us:                                     ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi195 = phi i64 [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.by, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi195, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph186:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.al
  %i.ce = load i16, ptr %i.cd, align 2, !noundef !9
  %i.cf = zext i16 %i.ce to i32
  %i.cg = mul i32 %i.c, %i.cf
  br label %bb.j

.split197.us:                                     ; preds = %bb.i, %bb.g
  %.us-phi198 = phi i64 [ %i.bn, %bb.g ], [ %i.ca, %bb.i ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.us-phi198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph186, %bb.o
  %.sroa.026.0184 = phi i32 [ %i.cg, %.lr.ph186 ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.1095.0183 = phi i64 [ 0, %.lr.ph186 ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.794.0182 = phi i64 [ %i.a, %.lr.ph186 ], [ %i.ch, %bb.o ]
  %.sroa.092.0181 = phi ptr [ %4, %.lr.ph186 ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.794.0182, -1         ; 2 uses
  %i.ci = icmp eq ptr %.sroa.092.0181, %i.am
  br i1 %i.ci, label %._crit_edge187, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.092.0181, i64 4
  %i.ck = add nuw nsw i64 %.sroa.1095.0183, 1
  %i.cl = load i32, ptr %.sroa.092.0181, align 4, !noundef !9
  %i.cm = shl nuw nsw i64 %.sroa.1095.0183, 2     ; 4 uses
  %.not67.not = icmp samesign ult i64 %i.cm, %i.ca
  br i1 %.not67.not, label %bb.m, label %bb.l, !prof !4

._crit_edge187:                                   ; preds = %bb.j, %bb.o
  %.sroa.026.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %.sroa.026.0184, %bb.j ]
  %i.cn = add i32 %.sroa.026.0.lcssa, 16384
  %i.co = lshr i32 %i.cn, 15
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.co, i32 65535)
  %i.cp = trunc nuw i32 %..i to i16
  store i16 %i.cp, ptr %.sroa.089.0192, align 2
  %i.cq = icmp eq ptr %i.bw, %i.aj
  br i1 %i.cq, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMuttEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = or disjoint i64 %i.cm, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cr, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = xor i64 %.sroa.1095.0183, -1
  %i.ct = add nsw i64 %5, %i.cs
  %i.cu = shl nsw i64 %i.ct, 2                    ; 4 uses
  %.not68.not = icmp ult i64 %i.cu, %i.ca
  br i1 %.not68.not, label %bb.o, label %bb.n, !prof !4

bb.n:                                             ; preds = %bb.m
  %i.cv = or disjoint i64 %i.cu, 1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cu
  %i.cy = load i16, ptr %i.cw, align 2, !noundef !9
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !noundef !9
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = mul i32 %i.dc, %i.cl
  %i.de = add i32 %i.dd, %.sroa.026.0184          ; 2 uses
  %i.df = icmp eq i64 %i.ch, 0
  br i1 %i.df, label %._crit_edge187, label %bb.j

bb.p:                                             ; preds = %.lr.ph174.split
  %i.dg = sub nuw nsw i64 %1, %i.ai               ; 6 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.not69 = icmp samesign ugt i64 %i.j, %i.dg
  br i1 %.not69, label %.split177.us, label %.lr.ph, !prof !5

.split.us:                                        ; preds = %.lr.ph174.split, %bb.c
  %.us-phi = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph174.split ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

.split177.us:                                     ; preds = %bb.p, %bb.d
  %.us-phi178 = phi i64 [ %i.x, %bb.d ], [ %i.dg, %bb.p ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %.us-phi178, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

.lr.ph:                                           ; preds = %bb.p
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.i
  %i.dj = load <4 x i16>, ptr %i.di, align 2
  %i.dk = zext <4 x i16> %i.dj to <4 x i32>
  %i.dl = mul <4 x i32> %i.p, %i.dk
  %invariant.op = add nsw i64 %i.dg, -3
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.086.0158 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.788.0157 = phi i64 [ %i.a, %.lr.ph ], [ %i.dn, %bb.v ]
  %.sroa.10.0156 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.v ] ; 3 uses
  %i.dm = phi <4 x i32> [ %i.dl, %.lr.ph ], [ %i.ep, %bb.v ] ; 2 uses
  %i.dn = add nsw i64 %.sroa.788.0157, -1         ; 2 uses
  %i.do = icmp eq ptr %.sroa.086.0158, %i.k
  br i1 %i.do, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.086.0158, i64 4
  %i.dq = add nuw nsw i64 %.sroa.10.0156, 1
  %i.dr = load i32, ptr %.sroa.086.0158, align 4, !noundef !9
  %i.ds = shl nuw nsw i64 %.sroa.10.0156, 2       ; 4 uses
  %i.dt = or disjoint i64 %i.ds, 3
  %or.cond.not = icmp samesign ult i64 %i.dt, %i.dg
  br i1 %or.cond.not, label %bb.t, label %bb.s, !prof !11

end_hunk_1
begin_hunk_2_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablefffKj4_Es_0EE9from_iterB2H_

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj1_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj1_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemRShNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj2_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj3_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj3_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj4_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separablehfmKj4_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj1_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj1_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemRStNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj2_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj2_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj3_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj3_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj4_E0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterfENCINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d19filter_2d_separabletfmKj4_Es_0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE6removeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecmE6removeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter14ChunksExactMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter14ChunksExactMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter14ChunksExactMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAfj1_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAfj2_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAfj4_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAhj1_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAhj2_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAhj3_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAhj4_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAtj1_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAtj2_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAtj3_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutAtj4_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutRSfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutRShEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutRStEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold }
attributes #13 = { noinline noreturn }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"branch_weights", i32 4000000, i32 4001}
!12 = !{!"branch_weights", i32 8, i32 24}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = !{i64 0, i64 2}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = !{i8 -1, i8 10}
!17 = !{!"address", !"read_provenance"}
!18 = distinct !{!18, !7, !8}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7, !8}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7, !8}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7, !8}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7, !8}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7, !8}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7, !8}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7, !8}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7, !8}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7, !8}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7, !8}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7, !8}
!55 = distinct !{!55, !7, !8}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7, !8}
!59 = distinct !{!59, !7, !8}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7, !8}
!63 = distinct !{!63, !7, !8}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7, !8}
!67 = distinct !{!67, !7, !8}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7, !8}
!71 = distinct !{!71, !7, !8}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7, !8}
!75 = distinct !{!75, !7, !8}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7, !8}
!79 = distinct !{!79, !7, !8}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7, !8}
!83 = distinct !{!83, !7, !8}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7, !8}
!87 = distinct !{!87, !7, !8}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !7}
!90 = distinct !{!90, !7, !8}
!91 = distinct !{!91, !7, !8}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !7}
!94 = distinct !{!94, !7, !8}
!95 = distinct !{!95, !7, !8}
!96 = distinct !{!96, !10}
!97 = distinct !{!97, !7}
!98 = distinct !{!98, !7, !8}
!99 = distinct !{!99, !7, !8}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !7}
!102 = distinct !{!102, !7, !8}
!103 = distinct !{!103, !7, !8}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !7}
!106 = distinct !{!106, !7, !8}
!107 = distinct !{!107, !7, !8}
!108 = distinct !{!108, !10}
!109 = distinct !{!109, !7}
!110 = distinct !{!110, !7, !8}
!111 = distinct !{!111, !7, !8}
!112 = distinct !{!112, !10}
!113 = distinct !{!113, !7}
!114 = distinct !{!114, !7, !8}
!115 = distinct !{!115, !7, !8}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !7}
!118 = distinct !{!118, !7, !8}
!119 = distinct !{!119, !7, !8}
!120 = distinct !{!120, !10}
!121 = distinct !{!121, !7}
!122 = distinct !{!122, !7, !8}
!123 = distinct !{!123, !7, !8}
!124 = distinct !{!124, !10}
!125 = distinct !{!125, !7}
!126 = distinct !{!126, !7, !8}
!127 = distinct !{!127, !7, !8}
!128 = distinct !{!128, !10}
!129 = distinct !{!129, !7}
!130 = distinct !{!130, !7, !8}
!131 = distinct !{!131, !7, !8}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, !7}
!134 = distinct !{!134, !7, !8}
!135 = distinct !{!135, !7, !8}
!136 = distinct !{!136, !10}
!137 = distinct !{!137, !7}
!138 = distinct !{!138, !7, !8}
!139 = distinct !{!139, !7, !8}
!140 = distinct !{!140, !10}
!141 = distinct !{!141, !7}
!142 = distinct !{!142, !7, !8}
!143 = distinct !{!143, !7, !8}
!144 = distinct !{!144, !10}
!145 = distinct !{!145, !7}
!146 = distinct !{!146, !7, !8}
!147 = distinct !{!147, !7, !8}
!148 = distinct !{!148, !10}
!149 = distinct !{!149, !7}
!150 = distinct !{!150, !7, !8}
!151 = distinct !{!151, !8, !7}
!152 = distinct !{!152, !7, !8}
!153 = distinct !{!153, !8, !7}
!154 = distinct !{!154, !7, !8}
!155 = distinct !{!155, !8, !7}
!156 = distinct !{!156, !7, !8}
!157 = distinct !{!157, !8, !7}
!158 = distinct !{!158, !7, !8}
!159 = distinct !{!159, !8, !7}
!160 = distinct !{!160, !7, !8}
!161 = distinct !{!161, !8, !7}
!162 = distinct !{!162, !7, !8}
!163 = distinct !{!163, !8, !7}
!164 = distinct !{!164, !7, !8}
!165 = distinct !{!165, !8, !7}
!166 = distinct !{!166, !7, !8}
!167 = distinct !{!167, !8, !7}
!168 = distinct !{!168, !7, !8}
!169 = distinct !{!169, !8, !7}
!170 = distinct !{!170, !7, !8}
!171 = distinct !{!171, !8, !7}
!172 = distinct !{!172, !7, !8}
!173 = distinct !{!173, !8, !7}
!174 = distinct !{!174, !7}
!175 = distinct !{!175, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter7IterMutfEINtBU_4IterfEENtNtNtBa_6traits8iterator8Iterator3zipRSfECsa5QsYiPB8Gl_5image"}
end_hunk_2
