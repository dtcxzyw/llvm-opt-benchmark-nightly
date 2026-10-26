Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 88
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.oh = bitcast <2 x i64> %.3139.3 to <8 x i16> ; 3 uses
  %i.oi = bitcast <2 x i64> %.3.3 to <8 x i16>    ; 3 uses
  %i.oj = add <8 x i16> %i.oi, %i.oh
  %i.ok = load ptr, ptr %13, align 8, !tbaa !15
  %i.ol = mul i32 %i.v, %i.w
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [2 x i8], ptr %i.ok, i64 %i.om
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %.idx ; 5 uses
  %i.op = shl nsw i32 %i.w, 3
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.oq ; 2 uses
  %i.os = shl nsw i32 %i.w, 4
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.ot ; 2 uses
  %i.ov = mul nsw i32 %i.w, 24
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.ow ; 2 uses
  %i.oy = add <8 x i16> %i.la, %i.em
  %i.oz = sub <8 x i16> %i.el, %i.oy
  %i.pa = add <8 x i16> %i.la, %i.hs
  %i.pb = sub <8 x i16> %i.la, %i.hs
  %i.pc = add <8 x i16> %i.hs, %i.oh
  %i.pd = sub <8 x i16> %i.og, %i.pc
  store <8 x i16> %i.oz, ptr %i.oo, align 16, !tbaa !18
  store <8 x i16> %i.pa, ptr %i.or, align 16, !tbaa !18
  store <8 x i16> %i.pb, ptr %i.ou, align 16, !tbaa !18
  store <8 x i16> %i.pd, ptr %i.ox, align 16, !tbaa !18
  %i.pe = load i32, ptr %4, align 4, !tbaa !24
  %i.pf = shl nsw i32 %i.pe, 5
  %i.pg = sext i32 %i.pf to i64                   ; 4 uses
  %i.ph = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.pg ; 2 uses
  %i.pi = getelementptr inbounds [2 x i8], ptr %i.or, i64 %i.pg ; 2 uses
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.ou, i64 %i.pg ; 2 uses
  %i.pk = getelementptr inbounds [2 x i8], ptr %i.ox, i64 %i.pg ; 2 uses
  %i.pl = sub <8 x i16> %i.eo, %i.lc
  %i.pm = add <8 x i16> %i.lc, %i.hu
  %i.pn = sub <8 x i16> %i.lc, %i.hu
  %i.po = sub <8 x i16> %i.oj, %i.hu
  store <8 x i16> %i.pl, ptr %i.ph, align 16, !tbaa !18
  store <8 x i16> %i.pm, ptr %i.pi, align 16, !tbaa !18
  store <8 x i16> %i.pn, ptr %i.pj, align 16, !tbaa !18
  store <8 x i16> %i.po, ptr %i.pk, align 16, !tbaa !18
  %i.pp = load i32, ptr %4, align 4, !tbaa !24
  %i.pq = shl nsw i32 %i.pp, 5
  %i.pr = sext i32 %i.pq to i64                   ; 4 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.pr ; 2 uses
  %i.pt = getelementptr inbounds [2 x i8], ptr %i.pi, i64 %i.pr ; 2 uses
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.pj, i64 %i.pr ; 2 uses
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pk, i64 %i.pr ; 2 uses
  %i.pw = add <8 x i16> %i.ld, %i.en
  %i.px = sub <8 x i16> %i.em, %i.pw
  %i.py = add <8 x i16> %i.ld, %i.hv
  %i.pz = sub <8 x i16> %i.ld, %i.hv
  %i.qa = add <8 x i16> %i.hv, %i.oi
  %i.qb = sub <8 x i16> %i.oh, %i.qa
  store <8 x i16> %i.px, ptr %i.ps, align 16, !tbaa !18
  store <8 x i16> %i.py, ptr %i.pt, align 16, !tbaa !18
  store <8 x i16> %i.pz, ptr %i.pu, align 16, !tbaa !18
  store <8 x i16> %i.qb, ptr %i.pv, align 16, !tbaa !18
  %i.qc = load i32, ptr %4, align 4, !tbaa !24
  %i.qd = shl nsw i32 %i.qc, 5
  %i.qe = sext i32 %i.qd to i64                   ; 4 uses
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.ps, i64 %i.qe
  %i.qg = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.qe
  %i.qh = getelementptr inbounds [2 x i8], ptr %i.pu, i64 %i.qe
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.qe
  %i.qj = add <8 x i16> %i.le, %i.en
  %i.qk = sub <8 x i16> %.2135, %i.qj
  %i.ql = add <8 x i16> %i.le, %i.hw
  %i.qm = sub <8 x i16> %i.le, %i.hw
  %i.qn = add <8 x i16> %i.hw, %i.oi
  %i.qo = sub <8 x i16> %.2135.3, %i.qn
  store <8 x i16> %i.qk, ptr %i.qf, align 16, !tbaa !18
  store <8 x i16> %i.ql, ptr %i.qg, align 16, !tbaa !18
  store <8 x i16> %i.qm, ptr %i.qh, align 16, !tbaa !18
  store <8 x i16> %i.qo, ptr %i.qi, align 16, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qp = load i32, ptr %4, align 4, !tbaa !24    ; 3 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next, %i.qq
  br i1 %i.qr, label %_ZN4ncnn3MatD2Ev.exit, label %._crit_edge, !llvm.loop !652

._crit_edge:                                      ; preds = %.thread.3, %.lr.ph.split
  %i.qs = phi i32 [ %i.q, %.lr.ph.split ], [ %i.qp, %.thread.3 ]
  %i.qt = add i32 %.0165, 1
  %exitcond.not = icmp eq i32 %.0165, %i.j
  br i1 %exitcond.not, label %._crit_edge167, label %.lr.ph.split, !llvm.loop !653

._crit_edge167:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge167, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.h = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !24
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !24
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not391 = icmp sgt i32 %i.k, %i.j
  br i1 %.not391, label %._crit_edge395, label %.lr.ph394

.lr.ph394:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !24    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph394, %._crit_edge390
  %i.p = phi i32 [ %.pre, %.lr.ph394 ], [ %i.qg, %._crit_edge390 ] ; 2 uses
  %i.q = phi i32 [ %.pre, %.lr.ph394 ], [ %i.qh, %._crit_edge390 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph394 ], [ %indvars.iv.next, %._crit_edge390 ] ; 6 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !15
  %i.s = load i32, ptr %i.l, align 4, !tbaa !25
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !17
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w ; 2 uses
  %i.y = icmp sgt i32 %i.q, 7
  br i1 %i.y, label %.lr.ph296.preheader, label %.preheader269

.lr.ph296.preheader:                              ; preds = %bb.c
  %.pre434 = load i32, ptr %6, align 4, !tbaa !24
  %i.z = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  br label %.lr.ph296

.preheader269:                                    ; preds = %._crit_edge291, %bb.c
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %i.dk, %._crit_edge291 ] ; 2 uses
  %i.ab = phi i32 [ %i.q, %bb.c ], [ %i.dl, %._crit_edge291 ] ; 2 uses
  %i.ac = phi i32 [ %i.q, %bb.c ], [ %i.dm, %._crit_edge291 ] ; 3 uses
  %.0241.lcssa = phi i32 [ 0, %bb.c ], [ %i.do, %._crit_edge291 ] ; 3 uses
  %.0232.lcssa = phi ptr [ %i.x, %bb.c ], [ %.3.lcssa, %._crit_edge291 ] ; 2 uses
  %i.ad = or disjoint i32 %.0241.lcssa, 3
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %.lr.ph327.preheader, label %.preheader268

.lr.ph327.preheader:                              ; preds = %.preheader269
  %.pre435 = load i32, ptr %6, align 4, !tbaa !24
  %i.af = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br label %.lr.ph327

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %._crit_edge291
  %i.ag = phi i32 [ %i.dk, %._crit_edge291 ], [ %i.p, %.lr.ph296.preheader ]
  %i.ah = phi i32 [ %i.dl, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ]
  %i.ai = phi i32 [ %i.dm, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.dn, %._crit_edge291 ], [ %.pre434, %.lr.ph296.preheader ] ; 2 uses
  %.0232294 = phi ptr [ %.3.lcssa, %._crit_edge291 ], [ %i.x, %.lr.ph296.preheader ] ; 2 uses
  %.0241293 = phi i32 [ %i.do, %._crit_edge291 ], [ 0, %.lr.ph296.preheader ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !15
  %i.al = mul nsw i32 %i.ai, %i.z
  %i.am = add nsw i32 %i.al, %.0241293            ; 2 uses
  %i.an = shl nsw i32 %i.am, 3
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.aj, 7
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph296, %.lr.ph
  %.1233274 = phi ptr [ %i.bp, %.lr.ph ], [ %.0232294, %.lr.ph296 ] ; 5 uses
  %.0251273 = phi ptr [ %i.bo, %.lr.ph ], [ %i.ap, %.lr.ph296 ] ; 5 uses
  %.0254272 = phi i32 [ %i.bq, %.lr.ph ], [ 0, %.lr.ph296 ]
  %i.ar = load <8 x float>, ptr %.0251273, align 1, !tbaa !18 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0251273, i64 32
  %i.at = load <8 x float>, ptr %i.as, align 1, !tbaa !18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0251273, i64 64
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !18 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0251273, i64 96
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !18 ; 2 uses
  %7 = shufflevector <8 x float> %i.ar, <8 x float> %i.av, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 8, i32 12, i32 9, i32 13>
  %8 = shufflevector <8 x float> %i.ar, <8 x float> %i.av, <8 x i32> <i32 2, i32 6, i32 3, i32 7, i32 10, i32 14, i32 11, i32 15>
  %9 = shufflevector <8 x float> %i.at, <8 x float> %i.ax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 8, i32 12, i32 9, i32 13>
  %10 = shufflevector <8 x float> %i.at, <8 x float> %i.ax, <8 x i32> <i32 2, i32 6, i32 3, i32 7, i32 10, i32 14, i32 11, i32 15>
  %i.ay = bitcast <8 x float> %7 to <4 x double>  ; 2 uses
  %i.az = bitcast <8 x float> %9 to <4 x double>  ; 2 uses
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bb = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bc = bitcast <8 x float> %8 to <4 x double>  ; 2 uses
  %i.bd = bitcast <8 x float> %10 to <4 x double> ; 2 uses
  %i.be = shufflevector <4 x double> %i.bc, <4 x double> %i.bd, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bf = shufflevector <4 x double> %i.bc, <4 x double> %i.bd, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.ba, ptr %.1233274, align 1, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.1233274, i64 32
  store <4 x double> %i.bb, ptr %i.bg, align 1, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.1233274, i64 64
  store <4 x double> %i.be, ptr %i.bh, align 1, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.1233274, i64 96
  store <4 x double> %i.bf, ptr %i.bi, align 1, !tbaa !18
  %i.bj = load i32, ptr %4, align 4, !tbaa !24    ; 5 uses
  %i.bk = load i32, ptr %2, align 4, !tbaa !24
  %i.bl = shl i32 %i.bj, 3
  %i.bm = mul i32 %i.bl, %i.bk
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %.0251273, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1233274, i64 128 ; 2 uses
  %i.bq = add nuw nsw i32 %.0254272, 8            ; 3 uses
  %i.br = or disjoint i32 %i.bq, 7
  %i.bs = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !655

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre438 = mul nsw i32 %i.bj, %i.z
  %.pre439 = add nsw i32 %.pre438, %.0241293      ; 2 uses
  %.pre441 = shl nsw i32 %.pre439, 3
  %.pre443 = sext i32 %.pre441 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph296
  %.pre-phi444 = phi i64 [ %.pre443, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph296 ]
  %.pre-phi440 = phi i32 [ %.pre439, %._crit_edge.loopexit ], [ %i.am, %.lr.ph296 ] ; 2 uses
  %i.bu = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph296 ]
  %i.bv = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph296 ]
  %i.bw = phi i32 [ %i.bj, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph296 ]
  %i.bx = phi i32 [ %i.bs, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph296 ] ; 2 uses
  %.0254.lcssa = phi i32 [ %i.bq, %._crit_edge.loopexit ], [ 0, %.lr.ph296 ] ; 3 uses
  %.0251.lcssa = phi ptr [ %i.bo, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph296 ]
  %.1233.lcssa = phi ptr [ %i.bp, %._crit_edge.loopexit ], [ %.0232294, %.lr.ph296 ] ; 2 uses
  %i.by = sub nsw i64 0, %.pre-phi444
  %i.bz = getelementptr inbounds [2 x i8], ptr %.0251.lcssa, i64 %i.by
  %i.ca = shl nsw i32 %.pre-phi440, 1
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = or disjoint i32 %.0254.lcssa, 1
  %i.ce = icmp slt i32 %i.cd, %i.bx
  br i1 %i.ce, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %._crit_edge, %.lr.ph281
  %.2234279 = phi ptr [ %i.cm, %.lr.ph281 ], [ %.1233.lcssa, %._crit_edge ] ; 2 uses
  %.1252278 = phi ptr [ %i.cl, %.lr.ph281 ], [ %i.cc, %._crit_edge ] ; 2 uses
  %.1255277 = phi i32 [ %i.cn, %.lr.ph281 ], [ %.0254.lcssa, %._crit_edge ]
  %i.cf = load <8 x float>, ptr %.1252278, align 1, !tbaa !18
  store <8 x float> %i.cf, ptr %.2234279, align 1, !tbaa !18
  %i.cg = load i32, ptr %4, align 4, !tbaa !24    ; 5 uses
  %i.ch = load i32, ptr %2, align 4, !tbaa !24
  %i.ci = shl i32 %i.cg, 1
  %i.cj = mul i32 %i.ci, %i.ch
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %.1252278, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.2234279, i64 32 ; 2 uses
  %i.cn = add nuw nsw i32 %.1255277, 2            ; 3 uses
  %i.co = or disjoint i32 %i.cn, 1
  %i.cp = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !656

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %.pre445 = mul nsw i32 %i.cg, %i.z
  %.pre447 = add nsw i32 %.pre445, %.0241293      ; 2 uses
  %.pre449 = shl nsw i32 %.pre447, 1
  %.pre451 = sext i32 %.pre449 to i64
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %._crit_edge
  %.pre-phi452 = phi i64 [ %.pre451, %._crit_edge282.loopexit ], [ %i.cb, %._crit_edge ]
  %.pre-phi448 = phi i32 [ %.pre447, %._crit_edge282.loopexit ], [ %.pre-phi440, %._crit_edge ]
  %i.cr = phi i32 [ %i.cg, %._crit_edge282.loopexit ], [ %i.bu, %._crit_edge ]
  %i.cs = phi i32 [ %i.cg, %._crit_edge282.loopexit ], [ %i.bv, %._crit_edge ]
  %i.ct = phi i32 [ %i.cg, %._crit_edge282.loopexit ], [ %i.bw, %._crit_edge ]
  %i.cu = phi i32 [ %i.cp, %._crit_edge282.loopexit ], [ %i.bx, %._crit_edge ] ; 2 uses
  %.1255.lcssa = phi i32 [ %i.cn, %._crit_edge282.loopexit ], [ %.0254.lcssa, %._crit_edge ] ; 2 uses
  %.1252.lcssa = phi ptr [ %i.cl, %._crit_edge282.loopexit ], [ %i.cc, %._crit_edge ]
  %.2234.lcssa = phi ptr [ %i.cm, %._crit_edge282.loopexit ], [ %.1233.lcssa, %._crit_edge ] ; 2 uses
  %i.cv = icmp slt i32 %.1255.lcssa, %i.cu
  br i1 %i.cv, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %._crit_edge282
  %i.cw = sub nsw i64 0, %.pre-phi452
  %i.cx = getelementptr inbounds [2 x i8], ptr %.1252.lcssa, i64 %i.cw
  %i.cy = sext i32 %.pre-phi448 to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.cy
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.3288 = phi ptr [ %i.dg, %.lr.ph290 ], [ %.2234.lcssa, %.lr.ph290.preheader ] ; 2 uses
  %.2253287 = phi ptr [ %i.df, %.lr.ph290 ], [ %i.cz, %.lr.ph290.preheader ] ; 2 uses
  %.2256286 = phi i32 [ %i.dh, %.lr.ph290 ], [ %.1255.lcssa, %.lr.ph290.preheader ]
  %i.da = load <2 x i64>, ptr %.2253287, align 1, !tbaa !18
  store <2 x i64> %i.da, ptr %.3288, align 16, !tbaa !18
  %i.db = load i32, ptr %4, align 4, !tbaa !24    ; 4 uses
  %i.dc = load i32, ptr %2, align 4, !tbaa !24
  %i.dd = mul nsw i32 %i.dc, %i.db
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %.2253287, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.3288, i64 16 ; 2 uses
  %i.dh = add nuw nsw i32 %.2256286, 1            ; 2 uses
  %i.di = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph290, label %._crit_edge291, !llvm.loop !657

._crit_edge291:                                   ; preds = %.lr.ph290, %._crit_edge282
  %i.dk = phi i32 [ %i.cr, %._crit_edge282 ], [ %i.db, %.lr.ph290 ] ; 2 uses
  %i.dl = phi i32 [ %i.cs, %._crit_edge282 ], [ %i.db, %.lr.ph290 ] ; 2 uses
  %i.dm = phi i32 [ %i.ct, %._crit_edge282 ], [ %i.db, %.lr.ph290 ] ; 3 uses
  %i.dn = phi i32 [ %i.cu, %._crit_edge282 ], [ %i.di, %.lr.ph290 ]
  %.3.lcssa = phi ptr [ %.2234.lcssa, %._crit_edge282 ], [ %i.dg, %.lr.ph290 ] ; 2 uses
  %i.do = add nuw nsw i32 %.0241293, 8            ; 3 uses
  %i.dp = or disjoint i32 %i.do, 7
  %i.dq = icmp slt i32 %i.dp, %i.dm
  br i1 %i.dq, label %.lr.ph296, label %.preheader269, !llvm.loop !658

.preheader268:                                    ; preds = %._crit_edge323, %.preheader269
  %i.dr = phi i32 [ %i.aa, %.preheader269 ], [ %i.gm, %._crit_edge323 ] ; 2 uses
  %i.ds = phi i32 [ %i.ab, %.preheader269 ], [ %i.gn, %._crit_edge323 ] ; 2 uses
  %i.dt = phi i32 [ %i.ac, %.preheader269 ], [ %i.go, %._crit_edge323 ] ; 2 uses
  %.1242.lcssa = phi i32 [ %.0241.lcssa, %.preheader269 ], [ %i.iq, %._crit_edge323 ] ; 3 uses
  %.4.lcssa = phi ptr [ %.0232.lcssa, %.preheader269 ], [ %.7.lcssa, %._crit_edge323 ] ; 2 uses
  %i.du = or disjoint i32 %.1242.lcssa, 1
  %i.dv = icmp slt i32 %i.du, %i.dt
  br i1 %i.dv, label %.lr.ph358.preheader, label %.preheader

.lr.ph358.preheader:                              ; preds = %.preheader268
  %.pre436 = load i32, ptr %6, align 4, !tbaa !24
  %i.dw = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph358

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %._crit_edge323
  %i.dx = phi i32 [ %i.gm, %._crit_edge323 ], [ %i.aa, %.lr.ph327.preheader ]
  %i.dy = phi i32 [ %i.gn, %._crit_edge323 ], [ %i.ab, %.lr.ph327.preheader ]
  %i.dz = phi i32 [ %i.go, %._crit_edge323 ], [ %i.ac, %.lr.ph327.preheader ] ; 2 uses
  %i.ea = phi i32 [ %i.gp, %._crit_edge323 ], [ %.pre435, %.lr.ph327.preheader ] ; 2 uses
  %.4326 = phi ptr [ %.7.lcssa, %._crit_edge323 ], [ %.0232.lcssa, %.lr.ph327.preheader ] ; 2 uses
  %.1242325 = phi i32 [ %i.iq, %._crit_edge323 ], [ %.0241.lcssa, %.lr.ph327.preheader ] ; 4 uses
  %i.eb = load ptr, ptr %5, align 8, !tbaa !15
  %i.ec = mul nsw i32 %i.dz, %i.af
  %i.ed = add nsw i32 %i.ec, %.1242325            ; 2 uses
  %i.ee = shl nsw i32 %i.ed, 3
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ef ; 2 uses
  %i.eh = icmp sgt i32 %i.ea, 7
  br i1 %i.eh, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %.lr.ph327, %.lr.ph303
  %.5301 = phi ptr [ %i.fk, %.lr.ph303 ], [ %.4326, %.lr.ph327 ] ; 5 uses
  %.0245300 = phi i32 [ %i.fl, %.lr.ph303 ], [ 0, %.lr.ph327 ]
  %.0248299 = phi ptr [ %i.fj, %.lr.ph303 ], [ %i.eg, %.lr.ph327 ] ; 5 uses
  %i.ei = load <4 x i32>, ptr %.0248299, align 16, !tbaa !18 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0248299, i64 16
  %i.ek = load <4 x i32>, ptr %i.ej, align 16, !tbaa !18 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0248299, i64 32
  %i.em = load <4 x i32>, ptr %i.el, align 16, !tbaa !18 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0248299, i64 48
  %i.eo = load <4 x i32>, ptr %i.en, align 16, !tbaa !18 ; 2 uses
  %i.ep = shufflevector <4 x i32> %i.ei, <4 x i32> %i.ek, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.eq = bitcast <4 x i32> %i.ep to <2 x i64>    ; 2 uses
  %i.er = shufflevector <4 x i32> %i.ei, <4 x i32> %i.ek, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>    ; 2 uses
  %i.et = shufflevector <4 x i32> %i.em, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.eu = bitcast <4 x i32> %i.et to <2 x i64>    ; 2 uses
  %i.ev = shufflevector <4 x i32> %i.em, <4 x i32> %i.eo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>    ; 2 uses
  %i.ex = shufflevector <2 x i64> %i.eq, <2 x i64> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.ey = shufflevector <2 x i64> %i.eq, <2 x i64> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.ez = shufflevector <2 x i64> %i.es, <2 x i64> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x i64> %i.es, <2 x i64> %i.ew, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.ex, ptr %.5301, align 1, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.5301, i64 16
  store <2 x i64> %i.ey, ptr %i.fb, align 1, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.5301, i64 32
  store <2 x i64> %i.ez, ptr %i.fc, align 1, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.5301, i64 48
  store <2 x i64> %i.fa, ptr %i.fd, align 1, !tbaa !18
  %i.fe = load i32, ptr %4, align 4, !tbaa !24    ; 5 uses
  %i.ff = load i32, ptr %2, align 4, !tbaa !24
  %i.fg = shl i32 %i.fe, 3
  %i.fh = mul i32 %i.fg, %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %.0248299, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.5301, i64 64 ; 2 uses
  %i.fl = add nuw nsw i32 %.0245300, 8            ; 3 uses
  %i.fm = or disjoint i32 %i.fl, 7
  %i.fn = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph303, label %._crit_edge304.loopexit, !llvm.loop !659

._crit_edge304.loopexit:                          ; preds = %.lr.ph303
  %.pre453 = mul nsw i32 %i.fe, %i.af
  %.pre455 = add nsw i32 %.pre453, %.1242325      ; 2 uses
  %.pre457 = shl nsw i32 %.pre455, 3
end_hunk_0
