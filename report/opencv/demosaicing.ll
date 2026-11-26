Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/demosaicing?download=true
inline.NumInlined: 241
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2cv17Bayer2RGB_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEclERKNS_5RangeE:bb.a
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !48
  %i.ok = zext i16 %i.oj to i32
  %i.ol = getelementptr inbounds [2 x i8], ptr %.5328, i64 %i.ag ; 3 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !48
  %i.on = zext i16 %i.om to i32
  %i.oo = getelementptr i8, ptr %i.ol, i64 4
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !48
  %i.oq = zext i16 %i.op to i32
  %i.or = add nuw nsw i32 %i.oh, 2
  %i.os = add nuw nsw i32 %i.or, %i.ok
  %i.ot = add nuw nsw i32 %i.os, %i.on
  %i.ou = add nuw nsw i32 %i.ot, %i.oq
  %i.ov = lshr i32 %i.ou, 2
  %i.ow = getelementptr inbounds nuw i8, ptr %.5328, i64 2
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !48
  %i.oy = zext i16 %i.ox to i32
  %i.oz = getelementptr inbounds i8, ptr %.5328, i64 %i.ah
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !48
  %i.pb = zext i16 %i.pa to i32
  %i.pc = getelementptr inbounds i8, ptr %.5328, i64 %i.ai
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !48
  %i.pe = zext i16 %i.pd to i32
  %i.pf = getelementptr i8, ptr %i.ol, i64 2
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !48
  %i.ph = zext i16 %i.pg to i32
  %i.pi = add nuw nsw i32 %i.oy, 2
  %i.pj = add nuw nsw i32 %i.pi, %i.pb
  %i.pk = add nuw nsw i32 %i.pj, %i.pe
  %i.pl = add nuw nsw i32 %i.pk, %i.ph
  %i.pm = lshr i32 %i.pl, 2
  %i.pn = trunc nuw i32 %i.ov to i16
  %i.po = sub nsw i32 0, %.1334402
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [2 x i8], ptr %.5, i64 %i.pp
  store i16 %i.pn, ptr %i.pq, align 2, !tbaa !48
  %i.pr = trunc nuw i32 %i.pm to i16
  store i16 %i.pr, ptr %.5, align 2, !tbaa !48
  %i.ps = getelementptr inbounds i8, ptr %.5328, i64 %i.aj
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !48
  %i.pu = sext i32 %.1334402 to i64
  %i.pv = getelementptr inbounds [2 x i8], ptr %.5, i64 %i.pu
  store i16 %i.pt, ptr %i.pv, align 2, !tbaa !48
  br i1 %i.ak, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.pw = getelementptr inbounds nuw i8, ptr %.5, i64 4
  store i16 -1, ptr %i.pw, align 2, !tbaa !48
  br label %bb.k

bb.i:                                             ; preds = %bb.h, %.loopexit
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.px = getelementptr inbounds i8, ptr %.0336401, i64 -2
  %i.py = getelementptr inbounds i8, ptr %.0336401, i64 -8
  %i.pz = load <2 x i16>, ptr %i.px, align 2, !tbaa !48
  store <2 x i16> %i.pz, ptr %i.py, align 2, !tbaa !48
  %i.qa = getelementptr inbounds nuw i8, ptr %.0336401, i64 2
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !48
  %i.qc = getelementptr inbounds i8, ptr %.0336401, i64 -4
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !48
  %i.qd = getelementptr [2 x i8], ptr %.0336401, i64 %i.ap ; 4 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -8
  %i.qf = getelementptr i8, ptr %i.qd, i64 -2
  %i.qg = load <2 x i16>, ptr %i.qe, align 2, !tbaa !48
  store <2 x i16> %i.qg, ptr %i.qf, align 2, !tbaa !48
  %i.qh = getelementptr i8, ptr %i.qd, i64 -4
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !48
  %i.qj = getelementptr i8, ptr %i.qd, i64 2
  store i16 %i.qi, ptr %i.qj, align 2, !tbaa !48
  br label %bb.l

bb.k:                                             ; preds = %.thread, %bb.i
  %i.qk = getelementptr inbounds i8, ptr %.0336401, i64 -2
  %i.ql = getelementptr inbounds i8, ptr %.0336401, i64 -10
  %i.qm = load <4 x i16>, ptr %i.qk, align 2, !tbaa !48
  store <4 x i16> %i.qm, ptr %i.ql, align 2, !tbaa !48
  %i.qn = getelementptr [2 x i8], ptr %.0336401, i64 %i.ar ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 -10
  %i.qp = getelementptr i8, ptr %i.qn, i64 -2
  %i.qq = load <4 x i16>, ptr %i.qo, align 2, !tbaa !48
  store <4 x i16> %i.qq, ptr %i.qp, align 2, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.qr = sub nsw i32 0, %.1334402
  %i.qs = getelementptr inbounds i8, ptr %.0337400, i64 %i.ah
  %i.qt = getelementptr inbounds i8, ptr %.0336401, i64 %i.au
  %i.qu = add nsw i32 %.0329404, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.qu, %i.u
  %i.qv = xor i1 %.1331403, true
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph405.split, !llvm.loop !158
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29Bayer2RGB_EdgeAware_T_InvokerIhNS_24SIMDBayerInterpolator_8uEED2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29Bayer2RGB_EdgeAware_T_InvokerIhNS_24SIMDBayerInterpolator_8uEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29Bayer2RGB_EdgeAware_T_InvokerIhNS_24SIMDBayerInterpolator_8uEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29Bayer2RGB_EdgeAware_T_InvokerIhNS_24SIMDBayerInterpolator_8uEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16, !inline_history !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16, !inline_history !57
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(440) %0) #16, !inline_history !57
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29Bayer2RGB_EdgeAware_T_InvokerIhNS_24SIMDBayerInterpolator_8uEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = lshr i32 %i.b, 5                         ; 2 uses
  %i.d = and i32 %i.c, 127                        ; 3 uses
  %i.e = add nuw nsw i32 %i.d, 1                  ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !26     ; 4 uses
  %i.g = zext nneg i32 %i.e to i64                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = icmp slt i32 %i.f, %i.i
  br i1 %i.j, label %.lr.ph232, label %._crit_edge

.lr.ph232:                                        ; preds = %bb.a
  %i.k = and i32 %i.f, 1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  %.0182 = xor i32 %i.k, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  %.0184 = xor i32 %i.k, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = add nsw i32 %i.f, 1
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = mul i64 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ac = mul i64 %i.ab, %i.u
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = shl i32 %i.b, 2
  %i.ag = and i32 %i.af, 124
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 1275511473185297, %i.ah
  %i.aj = and i64 %i.ai, 15
  %i.ak = udiv i64 %i.s, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !24
  %i.ao = shl i32 %i.an, 2
  %i.ap = and i32 %i.ao, 124
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 1275511473185297, %i.aq
  %i.as = and i64 %i.ar, 15
  %i.at = udiv i64 %i.ab, %i.as                   ; 3 uses
  %i.au = shl nuw nsw i32 %i.e, 1                 ; 2 uses
  %.neg = mul i64 %i.at, -4294967296
  %i.av = ashr exact i64 %.neg, 32                ; 4 uses
  %sext = shl i64 %i.at, 32                       ; 4 uses
  %i.aw = ashr exact i64 %sext, 32                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.ay = xor i64 %i.at, -1
  %sext205 = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext205, 32             ; 3 uses
  %sext208 = sub i64 4294967296, %sext
  %i.ba = ashr exact i64 %sext208, 32             ; 3 uses
  %sext209 = add i64 %sext, -4294967296
  %i.bb = ashr exact i64 %sext209, 32             ; 3 uses
  %sext210 = add i64 %sext, 4294967296
  %i.bc = ashr exact i64 %sext210, 32             ; 3 uses
  %i.bd = zext nneg i32 %i.au to i64              ; 3 uses
  %i.be = sub i32 %i.au, %i.al
  %i.bf = sub i32 %i.e, %i.al
  %i.bg = zext nneg i32 %i.e to i64               ; 8 uses
  %i.bh = sext i32 %i.be to i64                   ; 3 uses
  %i.bi = sext i32 %i.bf to i64                   ; 4 uses
  %i.bj = and i32 %i.c, 127
  %i.bk = zext nneg i32 %i.bj to i64              ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.d, 3
  %i.bl = add nsw i64 %i.bi, -1
  %diff.check272 = icmp ult i64 %i.bl, 31
  %i.bm = add nsw i64 %i.bh, -1
  %diff.check273.a = icmp ult i64 %i.bm, 31
  %conflict.rdx274.a = or i1 %diff.check272, %diff.check273.a
  %i.bn = add nsw i64 %i.bi, %i.bk
  %diff.check275 = icmp ult i64 %i.bn, 31
  %conflict.rdx276 = or i1 %conflict.rdx274.a, %diff.check275
  %i.bo = sub nsw i64 %i.bh, %i.bi
  %diff.check277 = icmp ugt i64 %i.bo, -32
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %min.iters.check275 = icmp samesign ult i32 %i.d, 31
  %i.bp = and i64 %i.g, 28
  %n.vec = and i64 %i.g, 224                      ; 6 uses
  %i.bq = sub nsw i64 0, %i.bg
  %i.br = icmp eq i64 %n.vec, 32
  %i.bs = sub nsw i64 32, %i.bg
  %i.bt = icmp eq i64 %n.vec, 64
  %i.bu = sub nsw i64 64, %i.bg
  %i.bv = icmp eq i64 %n.vec, 96
  %i.bw = sub nsw i64 96, %i.bg
  %cmp.n = icmp eq i64 %n.vec, %i.g
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  %n.vec283 = and i64 %i.g, 252                   ; 3 uses
  %cmp.n288 = icmp eq i64 %n.vec283, %i.g
  %i.bx = and i64 %i.bk, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bx, 0
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit289, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph232, %.loopexit289
  %.0171231 = phi i32 [ %i.f, %.lr.ph232 ], [ %i.ma, %.loopexit289 ]
  %.0172230 = phi ptr [ %i.x, %.lr.ph232 ], [ %i.lz, %.loopexit289 ] ; 5 uses
  %.0176229 = phi ptr [ %i.ae, %.lr.ph232 ], [ %i.ly, %.loopexit289 ] ; 6 uses
  %.1183228 = phi i32 [ %.0182, %.lr.ph232 ], [ %i.lx, %.loopexit289 ] ; 4 uses
  %.1185227 = phi i32 [ %.0184, %.lr.ph232 ], [ %i.lw, %.loopexit289 ] ; 2 uses
  %.not187 = icmp eq i32 %.1185227, 0
  br i1 %.not187, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds i8, ptr %.0176229, i64 %i.av
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr inbounds i8, ptr %.0176229, i64 %i.aw
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = zext i8 %i.cc to i16
  %i.ce = add nuw nsw i16 %i.ca, 1
  %i.cf = add nuw nsw i16 %i.ce, %i.cd
  %i.cg = lshr i16 %i.cf, 1
  %i.ch = trunc nuw i16 %i.cg to i8
  %i.ci = shl i32 %.1183228, 1                    ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %.0172230, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !18
  %i.cl = load i8, ptr %.0176229, align 1, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.0172230, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !18
  %i.cn = getelementptr inbounds i8, ptr %.0176229, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = zext i8 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0176229, i64 1 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !18
  %i.cs = zext i8 %i.cr to i16
  %i.ct = add nuw nsw i16 %i.cp, 1
  %i.cu = add nuw nsw i16 %i.ct, %i.cs
  %i.cv = lshr i16 %i.cu, 1
  %i.cw = trunc nuw i16 %i.cv to i8
  %i.cx = sub nsw i32 2, %i.ci
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %.0172230, i64 %i.cy
  store i8 %i.cw, ptr %i.cz, align 1, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.0172230, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1177 = phi ptr [ %i.cq, %bb.c ], [ %.0176229, %bb.b ] ; 4 uses
  %.1173 = phi ptr [ %i.da, %bb.c ], [ %.0172230, %bb.b ] ; 4 uses
  %.0170 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ]     ; 5 uses
  %.not189 = icmp eq i32 %.1183228, 0
  %i.db = load i32, ptr %i.ax, align 8, !tbaa !171 ; 3 uses
  %i.dc = icmp slt i32 %.0170, %i.db              ; 2 uses
  br i1 %.not189, label %.preheader, label %.preheader212

.preheader212:                                    ; preds = %bb.d
  br i1 %i.dc, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.d
  br i1 %i.dc, label %.lr.ph222, label %.loopexit

.lr.ph:                                           ; preds = %.preheader212, %.lr.ph
  %.1216 = phi i32 [ %i.fp, %.lr.ph ], [ %.0170, %.preheader212 ]
  %.2174215 = phi ptr [ %i.fq, %.lr.ph ], [ %.1173, %.preheader212 ] ; 7 uses
  %.2178214 = phi ptr [ %i.ew, %.lr.ph ], [ %.1177, %.preheader212 ] ; 11 uses
  %i.dd = load i8, ptr %.2178214, align 1, !tbaa !18
  store i8 %i.dd, ptr %.2174215, align 1, !tbaa !18
  %i.de = getelementptr inbounds i8, ptr %.2178214, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !18
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.2178214, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !18
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = sub nsw i32 %i.dg, %i.dj
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = getelementptr inbounds i8, ptr %.2178214, i64 %i.aw
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !18
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.2178214, i64 %i.av
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !18
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = sub nsw i32 %i.do, %i.dr
  %i.dt = tail call i32 @llvm.abs.i32(i32 %i.ds, i1 true)
  %i.du = icmp samesign ugt i32 %i.dl, %i.dt
  %i.dv = add nuw nsw i32 %i.dr, %i.do
  %i.dw = add nuw nsw i32 %i.dj, %i.dg
  %.in204 = select i1 %i.du, i32 %i.dv, i32 %i.dw
  %i.dx = add nuw nsw i32 %.in204, 1
  %i.dy = lshr i32 %i.dx, 1
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.2174215, i64 1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !18
  %i.eb = getelementptr inbounds i8, ptr %.2178214, i64 %i.az
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  %i.ed = zext i8 %i.ec to i16
  %i.ee = getelementptr inbounds i8, ptr %.2178214, i64 %i.ba ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !18
  %i.eg = zext i8 %i.ef to i16
  %i.eh = getelementptr inbounds i8, ptr %.2178214, i64 %i.bb
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !18
  %i.ej = zext i8 %i.ei to i16
  %i.ek = getelementptr inbounds i8, ptr %.2178214, i64 %i.bc ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.em = zext i8 %i.el to i16
  %i.en = add nuw nsw i16 %i.ed, 2
  %i.eo = add nuw nsw i16 %i.en, %i.eg
  %i.ep = add nuw nsw i16 %i.eo, %i.ej
  %i.eq = add nuw nsw i16 %i.ep, %i.em
  %i.er = lshr i16 %i.eq, 2
  %i.es = trunc nuw i16 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %.2174215, i64 2
  store i8 %i.es, ptr %i.et, align 1, !tbaa !18
  %i.eu = load i8, ptr %.2178214, align 1, !tbaa !18
  %i.ev = zext i8 %i.eu to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %.2178214, i64 2 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !18
  %i.ey = zext i8 %i.ex to i16
  %i.ez = add nuw nsw i16 %i.ev, 1
  %i.fa = add nuw nsw i16 %i.ez, %i.ey
  %i.fb = lshr i16 %i.fa, 1
  %i.fc = trunc nuw i16 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.2174215, i64 3
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !18
  %i.fe = load i8, ptr %i.dh, align 1, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.2174215, i64 4
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !18
  %i.fg = load i8, ptr %i.ee, align 1, !tbaa !18
  %i.fh = zext i8 %i.fg to i16
  %i.fi = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.fj = zext i8 %i.fi to i16
  %i.fk = add nuw nsw i16 %i.fh, 1
  %i.fl = add nuw nsw i16 %i.fk, %i.fj
  %i.fm = lshr i16 %i.fl, 1
  %i.fn = trunc nuw i16 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.2174215, i64 5
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !18
  %i.fp = add nuw nsw i32 %.1216, 2               ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.2174215, i64 %i.bd ; 2 uses
  %i.fr = load i32, ptr %i.ax, align 8, !tbaa !171 ; 2 uses
  %i.fs = icmp slt i32 %i.fp, %i.fr
  br i1 %i.fs, label %.lr.ph, label %.loopexit, !llvm.loop !165

.lr.ph222:                                        ; preds = %.preheader, %.lr.ph222
  %.2221 = phi i32 [ %i.if, %.lr.ph222 ], [ %.0170, %.preheader ]
  %.3175220 = phi ptr [ %i.ig, %.lr.ph222 ], [ %.1173, %.preheader ] ; 7 uses
  %.3179219 = phi ptr [ %i.hx, %.lr.ph222 ], [ %.1177, %.preheader ] ; 11 uses
  %i.ft = getelementptr inbounds i8, ptr %.3179219, i64 %i.az
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !18
  %i.fv = zext i8 %i.fu to i16
  %i.fw = getelementptr inbounds i8, ptr %.3179219, i64 %i.ba ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !18
  %i.fy = zext i8 %i.fx to i16
  %i.fz = getelementptr inbounds i8, ptr %.3179219, i64 %i.bb
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !18
  %i.gb = zext i8 %i.ga to i16
  %i.gc = getelementptr inbounds i8, ptr %.3179219, i64 %i.bc ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !18
  %i.ge = zext i8 %i.gd to i16
  %i.gf = add nuw nsw i16 %i.fv, 2
  %i.gg = add nuw nsw i16 %i.gf, %i.fy
  %i.gh = add nuw nsw i16 %i.gg, %i.gb
  %i.gi = add nuw nsw i16 %i.gh, %i.ge
  %i.gj = lshr i16 %i.gi, 2
  %i.gk = trunc nuw i16 %i.gj to i8
  store i8 %i.gk, ptr %.3175220, align 1, !tbaa !18
  %i.gl = getelementptr inbounds i8, ptr %.3179219, i64 -1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.3179219, i64 1 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !18
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = sub nsw i32 %i.gn, %i.gq
  %i.gs = tail call i32 @llvm.abs.i32(i32 %i.gr, i1 true)
  %i.gt = getelementptr inbounds i8, ptr %.3179219, i64 %i.aw
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.3179219, i64 %i.av
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !18
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = sub nsw i32 %i.gv, %i.gy
  %i.ha = tail call i32 @llvm.abs.i32(i32 %i.gz, i1 true)
  %i.hb = icmp samesign ugt i32 %i.gs, %i.ha
  %i.hc = add nuw nsw i32 %i.gy, %i.gv
  %i.hd = add nuw nsw i32 %i.gq, %i.gn
  %.in = select i1 %i.hb, i32 %i.hc, i32 %i.hd
  %i.he = add nuw nsw i32 %.in, 1
  %i.hf = lshr i32 %i.he, 1
  %i.hg = trunc nuw i32 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.3175220, i64 1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !18
  %i.hi = load i8, ptr %.3179219, align 1, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.3175220, i64 2
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !18
  %i.hk = load i8, ptr %i.fw, align 1, !tbaa !18
  %i.hl = zext i8 %i.hk to i16
  %i.hm = load i8, ptr %i.gc, align 1, !tbaa !18
  %i.hn = zext i8 %i.hm to i16
  %i.ho = add nuw nsw i16 %i.hl, 1
  %i.hp = add nuw nsw i16 %i.ho, %i.hn
  %i.hq = lshr i16 %i.hp, 1
  %i.hr = trunc nuw i16 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.3175220, i64 3
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !18
  %i.ht = load i8, ptr %i.go, align 1, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.3175220, i64 4
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !18
  %i.hv = load i8, ptr %.3179219, align 1, !tbaa !18
  %i.hw = zext i8 %i.hv to i16
  %i.hx = getelementptr inbounds nuw i8, ptr %.3179219, i64 2 ; 3 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !18
  %i.hz = zext i8 %i.hy to i16
  %i.ia = add nuw nsw i16 %i.hw, 1
  %i.ib = add nuw nsw i16 %i.ia, %i.hz
  %i.ic = lshr i16 %i.ib, 1
  %i.id = trunc nuw i16 %i.ic to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %.3175220, i64 5
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !18
  %i.if = add nuw nsw i32 %.2221, 2               ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.3175220, i64 %i.bd ; 2 uses
  %i.ih = load i32, ptr %i.ax, align 8, !tbaa !171 ; 2 uses
  %i.ii = icmp slt i32 %i.if, %i.ih
  br i1 %i.ii, label %.lr.ph222, label %.loopexit, !llvm.loop !166

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph222, %.preheader212, %.preheader
  %i.ij = phi i32 [ %i.ih, %.lr.ph222 ], [ %i.db, %.preheader ], [ %i.db, %.preheader212 ], [ %i.fr, %.lr.ph ]
  %.4180 = phi ptr [ %i.hx, %.lr.ph222 ], [ %.1177, %.preheader ], [ %.1177, %.preheader212 ], [ %i.ew, %.lr.ph ] ; 10 uses
  %.4 = phi ptr [ %i.ig, %.lr.ph222 ], [ %.1173, %.preheader ], [ %.1173, %.preheader212 ], [ %i.fq, %.lr.ph ] ; 5 uses
  %.3 = phi i32 [ %i.if, %.lr.ph222 ], [ %.0170, %.preheader ], [ %.0170, %.preheader212 ], [ %i.fp, %.lr.ph ]
  %.not196 = icmp sgt i32 %.3, %i.ij
  br i1 %.not196, label %iter.check, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ik = getelementptr inbounds i8, ptr %.4180, i64 %i.az
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !18
  %i.im = zext i8 %i.il to i16
  %i.in = getelementptr inbounds i8, ptr %.4180, i64 %i.ba
  %i.io = load i8, ptr %i.in, align 1, !tbaa !18
  %i.ip = zext i8 %i.io to i16
  %i.iq = getelementptr inbounds i8, ptr %.4180, i64 %i.bb
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18
  %i.is = zext i8 %i.ir to i16
  %i.it = getelementptr inbounds i8, ptr %.4180, i64 %i.bc
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !18
  %i.iv = zext i8 %i.iu to i16
  %i.iw = add nuw nsw i16 %i.im, 2
  %i.ix = add nuw nsw i16 %i.iw, %i.ip
  %i.iy = add nuw nsw i16 %i.ix, %i.is
  %i.iz = add nuw nsw i16 %i.iy, %i.iv
  %i.ja = lshr i16 %i.iz, 2
  %i.jb = trunc nuw i16 %i.ja to i8
  %i.jc = shl i32 %.1183228, 1                    ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %.4, i64 %i.jd
  store i8 %i.jb, ptr %i.je, align 1, !tbaa !18
  %i.jf = getelementptr inbounds i8, ptr %.4180, i64 -1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !18
  %i.jh = zext i8 %i.jg to i32                    ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.4180, i64 1 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i32                    ; 2 uses
  %i.jl = sub nsw i32 %i.jh, %i.jk
  %i.jm = tail call i32 @llvm.abs.i32(i32 %i.jl, i1 true)
  %i.jn = getelementptr inbounds i8, ptr %.4180, i64 %i.aw
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !18
  %i.jp = zext i8 %i.jo to i32                    ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.4180, i64 %i.av
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18
  %i.js = zext i8 %i.jr to i32                    ; 2 uses
  %i.jt = sub nsw i32 %i.jp, %i.js
  %i.ju = tail call i32 @llvm.abs.i32(i32 %i.jt, i1 true)
  %i.jv = icmp samesign ugt i32 %i.jm, %i.ju
  %i.jw = add nuw nsw i32 %i.js, %i.jp
  %i.jx = add nuw nsw i32 %i.jk, %i.jh
  %.in203 = select i1 %i.jv, i32 %i.jw, i32 %i.jx
  %i.jy = add nuw nsw i32 %.in203, 1
  %i.jz = lshr i32 %i.jy, 1
  %i.ka = trunc nuw i32 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !18
  %i.kc = load i8, ptr %.4180, align 1, !tbaa !18
  %i.kd = sub nsw i32 2, %i.jc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds i8, ptr %.4, i64 %i.ke
  store i8 %i.kc, ptr %i.kf, align 1, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.4, i64 %i.g
  br label %iter.check

iter.check:                                       ; preds = %bb.e, %.loopexit
  %.5181 = phi ptr [ %i.ji, %bb.e ], [ %.4180, %.loopexit ]
  %.5 = phi ptr [ %i.kg, %bb.e ], [ %.4, %.loopexit ] ; 23 uses
  %invariant.gep = getelementptr i8, ptr %.5, i64 %i.bh ; 12 uses
  %invariant.gep255 = getelementptr i8, ptr %.5, i64 %i.bi ; 12 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx278
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check275, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %i.kh = getelementptr inbounds i8, ptr %.5, i64 %i.bq ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load = load <16 x i8>, ptr %i.kh, align 1, !tbaa !18
  %wide.load280 = load <16 x i8>, ptr %i.ki, align 1, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.5, i64 16
  store <16 x i8> %wide.load, ptr %.5, align 1, !tbaa !18
  store <16 x i8> %wide.load280, ptr %i.kj, align 1, !tbaa !18
  %i.kk = getelementptr i8, ptr %invariant.gep, i64 16
  %wide.load281.a = load <16 x i8>, ptr %invariant.gep, align 1, !tbaa !18
  %wide.load282.a = load <16 x i8>, ptr %i.kk, align 1, !tbaa !18
  %i.kl = getelementptr i8, ptr %invariant.gep255, i64 16
  store <16 x i8> %wide.load281.a, ptr %invariant.gep255, align 1, !tbaa !18
  store <16 x i8> %wide.load282.a, ptr %i.kl, align 1, !tbaa !18
  br i1 %i.br, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.km = getelementptr inbounds i8, ptr %.5, i64 %i.bs ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.km, align 1, !tbaa !18
  %wide.load280.1 = load <16 x i8>, ptr %i.kn, align 1, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %.5, i64 48
  store <16 x i8> %wide.load.1, ptr %i.ko, align 1, !tbaa !18
  store <16 x i8> %wide.load280.1, ptr %i.kp, align 1, !tbaa !18
  %i.kq = getelementptr i8, ptr %invariant.gep, i64 32
  %i.kr = getelementptr i8, ptr %invariant.gep, i64 48
  %wide.load281.1 = load <16 x i8>, ptr %i.kq, align 1, !tbaa !18
  %wide.load282.1 = load <16 x i8>, ptr %i.kr, align 1, !tbaa !18
  %i.ks = getelementptr i8, ptr %invariant.gep255, i64 32
  %i.kt = getelementptr i8, ptr %invariant.gep255, i64 48
  store <16 x i8> %wide.load281.1, ptr %i.ks, align 1, !tbaa !18
  store <16 x i8> %wide.load282.1, ptr %i.kt, align 1, !tbaa !18
  br i1 %i.bt, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ku = getelementptr inbounds i8, ptr %.5, i64 %i.bu ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load.2 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !18
  %wide.load280.2 = load <16 x i8>, ptr %i.kv, align 1, !tbaa !18
  %i.kw = getelementptr inbounds nuw i8, ptr %.5, i64 64
  %i.kx = getelementptr inbounds nuw i8, ptr %.5, i64 80
  store <16 x i8> %wide.load.2, ptr %i.kw, align 1, !tbaa !18
  store <16 x i8> %wide.load280.2, ptr %i.kx, align 1, !tbaa !18
  %i.ky = getelementptr i8, ptr %invariant.gep, i64 64
  %i.kz = getelementptr i8, ptr %invariant.gep, i64 80
  %wide.load281.2 = load <16 x i8>, ptr %i.ky, align 1, !tbaa !18
  %wide.load282.2 = load <16 x i8>, ptr %i.kz, align 1, !tbaa !18
  %i.la = getelementptr i8, ptr %invariant.gep255, i64 64
  %i.lb = getelementptr i8, ptr %invariant.gep255, i64 80
  store <16 x i8> %wide.load281.2, ptr %i.la, align 1, !tbaa !18
  store <16 x i8> %wide.load282.2, ptr %i.lb, align 1, !tbaa !18
  br i1 %i.bv, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.lc = getelementptr inbounds i8, ptr %.5, i64 %i.bw ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %wide.load.3 = load <16 x i8>, ptr %i.lc, align 1, !tbaa !18
  %wide.load280.3 = load <16 x i8>, ptr %i.ld, align 1, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.5, i64 96
  %i.lf = getelementptr inbounds nuw i8, ptr %.5, i64 112
  store <16 x i8> %wide.load.3, ptr %i.le, align 1, !tbaa !18
  store <16 x i8> %wide.load280.3, ptr %i.lf, align 1, !tbaa !18
  %i.lg = getelementptr i8, ptr %invariant.gep, i64 96
  %i.lh = getelementptr i8, ptr %invariant.gep, i64 112
  %wide.load281.3 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !18
  %wide.load282.3 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !18
  %i.li = getelementptr i8, ptr %invariant.gep255, i64 96
  %i.lj = getelementptr i8, ptr %invariant.gep255, i64 112
  store <16 x i8> %wide.load281.3, ptr %i.li, align 1, !tbaa !18
  store <16 x i8> %wide.load282.3, ptr %i.lj, align 1, !tbaa !18
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.body
  br i1 %cmp.n, label %.loopexit289, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index284 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next287, %vec.epilog.vector.body ] ; 5 uses
  %i.lk = sub nsw i64 %index284, %i.bg
  %i.ll = getelementptr inbounds i8, ptr %.5, i64 %i.lk
  %wide.load285 = load <4 x i8>, ptr %i.ll, align 1, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %.5, i64 %index284
  store <4 x i8> %wide.load285, ptr %i.lm, align 1, !tbaa !18
  %i.ln = getelementptr i8, ptr %invariant.gep, i64 %index284
  %wide.load286 = load <4 x i8>, ptr %i.ln, align 1, !tbaa !18
  %i.lo = getelementptr i8, ptr %invariant.gep255, i64 %index284
  store <4 x i8> %wide.load286, ptr %i.lo, align 1, !tbaa !18
  %index.next287 = add nuw i64 %index284, 4       ; 2 uses
  %i.lp = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.lp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n288, label %.loopexit289, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec283, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 7 uses
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.lq = sub nsw i64 %indvars.iv.ph, %i.bg
  %i.lr = getelementptr inbounds i8, ptr %.5, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %.5, i64 %indvars.iv.ph
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !18
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.ph
  %i.lu = load i8, ptr %gep.prol, align 1, !tbaa !18
  %gep256.prol = getelementptr i8, ptr %invariant.gep255, i64 %indvars.iv.ph
  store i8 %i.lu, ptr %gep256.prol, align 1, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.lv = icmp eq i64 %indvars.iv.ph, %i.bk
  br i1 %i.lv, label %.loopexit289, label %vec.epilog.scalar.ph

.loopexit289:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lw = xor i32 %.1185227, 1
  %i.lx = xor i32 %.1183228, 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.5181, i64 2
  %i.lz = getelementptr inbounds nuw i8, ptr %.5, i64 %i.bd
  %i.ma = add nsw i32 %.0171231, 1                ; 2 uses
  %i.mb = load i32, ptr %i.h, align 4, !tbaa !27
  %i.mc = icmp slt i32 %i.ma, %i.mb
  br i1 %i.mc, label %bb.b, label %._crit_edge, !llvm.loop !168

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.md = sub nsw i64 %indvars.iv, %i.bg
  %i.me = getelementptr inbounds i8, ptr %.5, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %.5, i64 %indvars.iv
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !18
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.mh = load i8, ptr %gep, align 1, !tbaa !18
  %gep256 = getelementptr i8, ptr %invariant.gep255, i64 %indvars.iv
  store i8 %i.mh, ptr %gep256, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.mi = sub nsw i64 %indvars.iv.next, %i.bg
  %i.mj = getelementptr inbounds i8, ptr %.5, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.5, i64 %indvars.iv.next
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !18
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.mm = load i8, ptr %gep.1, align 1, !tbaa !18
  %gep256.1 = getelementptr i8, ptr %invariant.gep255, i64 %indvars.iv.next
  store i8 %i.mm, ptr %gep256.1, align 1, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.g
  br i1 %exitcond.not.1, label %.loopexit289, label %vec.epilog.scalar.ph, !llvm.loop !169
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29Bayer2RGB_EdgeAware_T_InvokerItNS_26SIMDBayerStubInterpolator_ItEEED2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29Bayer2RGB_EdgeAware_T_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29Bayer2RGB_EdgeAware_T_InvokerItNS_26SIMDBayerStubInterpolator_ItEEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29Bayer2RGB_EdgeAware_T_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16, !inline_history !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16, !inline_history !61
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(440) %0) #16, !inline_history !61
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29Bayer2RGB_EdgeAware_T_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = lshr i32 %i.b, 5                         ; 2 uses
  %i.d = and i32 %i.c, 127                        ; 3 uses
  %i.e = add nuw nsw i32 %i.d, 1                  ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !26     ; 4 uses
  %i.g = zext nneg i32 %i.e to i64                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.j = icmp slt i32 %i.f, %i.i
  br i1 %i.j, label %.lr.ph232, label %._crit_edge

.lr.ph232:                                        ; preds = %bb.a
  %i.k = and i32 %i.f, 1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %.0182 = xor i32 %i.k, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60
  %.0184 = xor i32 %i.k, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = add nsw i32 %i.f, 1
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = mul i64 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ac = mul i64 %i.ab, %i.u
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = shl i32 %i.b, 2
  %i.ag = and i32 %i.af, 124
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 1275511473185297, %i.ah
  %i.aj = and i64 %i.ai, 15
  %i.ak = udiv i64 %i.s, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !24
  %i.ao = shl i32 %i.an, 2
  %i.ap = and i32 %i.ao, 124
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 1275511473185297, %i.aq
  %i.as = and i64 %i.ar, 15
  %i.at = udiv i64 %i.ab, %i.as                   ; 3 uses
  %i.au = shl nuw nsw i32 %i.e, 1                 ; 2 uses
  %.neg = mul i64 %i.at, -4294967296
  %i.av = ashr exact i64 %.neg, 31                ; 4 uses
  %sext = shl i64 %i.at, 32                       ; 5 uses
  %i.aw = ashr exact i64 %sext, 31
  %i.ax = ashr exact i64 %sext, 32                ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.az = xor i64 %i.at, -1
  %sext205 = shl i64 %i.az, 32
  %i.ba = ashr exact i64 %sext205, 31             ; 3 uses
  %sext208 = sub i64 4294967296, %sext
  %i.bb = ashr exact i64 %sext208, 31             ; 3 uses
  %sext209 = add i64 %sext, -4294967296
  %i.bc = ashr exact i64 %sext209, 31             ; 3 uses
  %sext210 = add i64 %sext, 4294967296
  %i.bd = ashr exact i64 %sext210, 31             ; 3 uses
  %i.be = zext nneg i32 %i.au to i64              ; 3 uses
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !178 ; 4 uses
  %i.bg = sub i32 %i.au, %i.al
  %i.bh = sub i32 %i.e, %i.al
  %i.bi = zext nneg i32 %i.e to i64               ; 12 uses
  %i.bj = sext i32 %i.bg to i64                   ; 2 uses
  %i.bk = sext i32 %i.bh to i64                   ; 3 uses
  %i.bl = and i32 %i.c, 127
  %i.bm = zext nneg i32 %i.bl to i64              ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.d, 3
  %i.bn = shl nsw i64 %i.bk, 1                    ; 2 uses
  %i.bo = add nsw i64 %i.bn, -1
  %diff.check269 = icmp ult i64 %i.bo, 31
  %i.bp = shl nsw i64 %i.bj, 1                    ; 2 uses
  %i.bq = add nsw i64 %i.bp, -1
  %diff.check270.a = icmp ult i64 %i.bq, 31
  %conflict.rdx271.a = or i1 %diff.check269, %diff.check270.a
  %i.br = add nsw i64 %i.bk, %i.bm
  %i.bs = shl nsw i64 %i.br, 1
  %i.bt = or disjoint i64 %i.bs, 1
  %diff.check272 = icmp ult i64 %i.bt, 31
  %conflict.rdx273 = or i1 %conflict.rdx271.a, %diff.check272
  %i.bu = sub nsw i64 %i.bp, %i.bn
  %diff.check274 = icmp ugt i64 %i.bu, -32
  %conflict.rdx275 = or i1 %conflict.rdx273, %diff.check274
  %min.iters.check276 = icmp samesign ult i32 %i.d, 15
  %i.bv = and i64 %i.g, 12
  %n.vec = and i64 %i.g, 240                      ; 10 uses
  %i.bw = sub nsw i64 0, %i.bi
  %i.bx = icmp eq i64 %n.vec, 16
  %i.by = sub nsw i64 16, %i.bi
  %i.bz = icmp eq i64 %n.vec, 32
  %i.ca = sub nsw i64 32, %i.bi
  %i.cb = icmp eq i64 %n.vec, 48
  %i.cc = sub nsw i64 48, %i.bi
  %i.cd = icmp eq i64 %n.vec, 64
  %i.ce = sub nsw i64 64, %i.bi
  %i.cf = icmp eq i64 %n.vec, 80
  %i.cg = sub nsw i64 80, %i.bi
  %i.ch = icmp eq i64 %n.vec, 96
  %i.ci = sub nsw i64 96, %i.bi
  %i.cj = icmp eq i64 %n.vec, 112
  %i.ck = sub nsw i64 112, %i.bi
  %cmp.n = icmp eq i64 %n.vec, %i.g
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  %n.vec280 = and i64 %i.g, 252                   ; 3 uses
  %cmp.n285 = icmp eq i64 %n.vec280, %i.g
  %i.cl = and i64 %i.bm, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cl, 0
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit286, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph232, %.loopexit286
  %.0171231 = phi i32 [ %i.f, %.lr.ph232 ], [ %i.nq, %.loopexit286 ]
  %.0172230 = phi ptr [ %i.x, %.lr.ph232 ], [ %i.np, %.loopexit286 ] ; 5 uses
  %.0176229 = phi ptr [ %i.ae, %.lr.ph232 ], [ %i.no, %.loopexit286 ] ; 6 uses
  %.1183228 = phi i32 [ %.0182, %.lr.ph232 ], [ %i.nn, %.loopexit286 ] ; 4 uses
  %.1185227 = phi i32 [ %.0184, %.lr.ph232 ], [ %i.nm, %.loopexit286 ] ; 2 uses
  %.not187 = icmp eq i32 %.1185227, 0
  br i1 %.not187, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds i8, ptr %.0176229, i64 %i.av
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !48
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds i8, ptr %.0176229, i64 %i.aw
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !48
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.co, 1
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = lshr i32 %i.ct, 1
  %i.cv = trunc nuw i32 %i.cu to i16
  %i.cw = shl i32 %.1183228, 1                    ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %.0172230, i64 %i.cx
  store i16 %i.cv, ptr %i.cy, align 2, !tbaa !48
  %i.cz = load i16, ptr %.0176229, align 2, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %.0172230, i64 2
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !48
  %i.db = getelementptr inbounds i8, ptr %.0176229, i64 -2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !48
  %i.dd = zext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %.0176229, i64 2 ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !48
  %i.dg = zext i16 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dd, 1
  %i.di = add nuw nsw i32 %i.dh, %i.dg
  %i.dj = lshr i32 %i.di, 1
  %i.dk = trunc nuw i32 %i.dj to i16
  %i.dl = sub nsw i32 2, %i.cw
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [2 x i8], ptr %.0172230, i64 %i.dm
  store i16 %i.dk, ptr %i.dn, align 2, !tbaa !48
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.0172230, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1177 = phi ptr [ %i.de, %bb.c ], [ %.0176229, %bb.b ] ; 4 uses
  %.1173 = phi ptr [ %i.do, %bb.c ], [ %.0172230, %bb.b ] ; 4 uses
  %.0170 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ]     ; 5 uses
  %.not189 = icmp eq i32 %.1183228, 0
  %i.dp = icmp slt i32 %.0170, %i.bf              ; 2 uses
  br i1 %.not189, label %.preheader, label %.preheader212

.preheader212:                                    ; preds = %bb.d
  br i1 %i.dp, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.d
  br i1 %i.dp, label %.lr.ph222, label %.loopexit

.lr.ph:                                           ; preds = %.preheader212, %.lr.ph
  %.1216 = phi i32 [ %i.gc, %.lr.ph ], [ %.0170, %.preheader212 ]
  %.2174215 = phi ptr [ %i.gd, %.lr.ph ], [ %.1173, %.preheader212 ] ; 7 uses
  %.2178214 = phi ptr [ %i.fj, %.lr.ph ], [ %.1177, %.preheader212 ] ; 11 uses
  %i.dq = load i16, ptr %.2178214, align 2, !tbaa !48
  store i16 %i.dq, ptr %.2174215, align 2, !tbaa !48
  %i.dr = getelementptr inbounds i8, ptr %.2178214, i64 -2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !48
  %i.dt = zext i16 %i.ds to i32                   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.2178214, i64 2 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !48
  %i.dw = zext i16 %i.dv to i32                   ; 2 uses
  %i.dx = sub nsw i32 %i.dt, %i.dw
  %i.dy = tail call i32 @llvm.abs.i32(i32 %i.dx, i1 true)
  %i.dz = getelementptr inbounds [2 x i8], ptr %.2178214, i64 %i.ax
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !48
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.2178214, i64 %i.av
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !48
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  %i.ef = sub nsw i32 %i.eb, %i.ee
  %i.eg = tail call i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.eh = icmp samesign ugt i32 %i.dy, %i.eg
  %i.ei = add nuw nsw i32 %i.ee, %i.eb
  %i.ej = add nuw nsw i32 %i.dw, %i.dt
  %.in204 = select i1 %i.eh, i32 %i.ei, i32 %i.ej
  %i.ek = add nuw nsw i32 %.in204, 1
  %i.el = lshr i32 %i.ek, 1
  %i.em = trunc nuw i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %.2174215, i64 2
  store i16 %i.em, ptr %i.en, align 2, !tbaa !48
  %i.eo = getelementptr inbounds i8, ptr %.2178214, i64 %i.ba
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !48
  %i.eq = zext i16 %i.ep to i32
  %i.er = getelementptr inbounds i8, ptr %.2178214, i64 %i.bb ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !48
  %i.et = zext i16 %i.es to i32
  %i.eu = getelementptr inbounds i8, ptr %.2178214, i64 %i.bc
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !48
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds i8, ptr %.2178214, i64 %i.bd ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !48
  %i.ez = zext i16 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.eq, 2
  %i.fb = add nuw nsw i32 %i.fa, %i.et
  %i.fc = add nuw nsw i32 %i.fb, %i.ew
  %i.fd = add nuw nsw i32 %i.fc, %i.ez
  %i.fe = lshr i32 %i.fd, 2
  %i.ff = trunc nuw i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %.2174215, i64 4
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !48
  %i.fh = load i16, ptr %.2178214, align 2, !tbaa !48
  %i.fi = zext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.2178214, i64 4 ; 3 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !48
  %i.fl = zext i16 %i.fk to i32
  %i.fm = add nuw nsw i32 %i.fi, 1
  %i.fn = add nuw nsw i32 %i.fm, %i.fl
  %i.fo = lshr i32 %i.fn, 1
  %i.fp = trunc nuw i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %.2174215, i64 6
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !48
  %i.fr = load i16, ptr %i.du, align 2, !tbaa !48
  %i.fs = getelementptr inbounds nuw i8, ptr %.2174215, i64 8
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !48
  %i.ft = load i16, ptr %i.er, align 2, !tbaa !48
  %i.fu = zext i16 %i.ft to i32
  %i.fv = load i16, ptr %i.ex, align 2, !tbaa !48
  %i.fw = zext i16 %i.fv to i32
  %i.fx = add nuw nsw i32 %i.fu, 1
  %i.fy = add nuw nsw i32 %i.fx, %i.fw
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.2174215, i64 10
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !48
  %i.gc = add nuw nsw i32 %.1216, 2               ; 3 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.2174215, i64 %i.be ; 2 uses
  %i.ge = icmp slt i32 %i.gc, %i.bf
  br i1 %i.ge, label %.lr.ph, label %.loopexit, !llvm.loop !172

.lr.ph222:                                        ; preds = %.preheader, %.lr.ph222
  %.2221 = phi i32 [ %i.ir, %.lr.ph222 ], [ %.0170, %.preheader ]
  %.3175220 = phi ptr [ %i.is, %.lr.ph222 ], [ %.1173, %.preheader ] ; 7 uses
  %.3179219 = phi ptr [ %i.ij, %.lr.ph222 ], [ %.1177, %.preheader ] ; 11 uses
  %i.gf = getelementptr inbounds i8, ptr %.3179219, i64 %i.ba
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !48
  %i.gh = zext i16 %i.gg to i32
  %i.gi = getelementptr inbounds i8, ptr %.3179219, i64 %i.bb ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !48
  %i.gk = zext i16 %i.gj to i32
  %i.gl = getelementptr inbounds i8, ptr %.3179219, i64 %i.bc
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !48
  %i.gn = zext i16 %i.gm to i32
  %i.go = getelementptr inbounds i8, ptr %.3179219, i64 %i.bd ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !48
  %i.gq = zext i16 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.gh, 2
  %i.gs = add nuw nsw i32 %i.gr, %i.gk
  %i.gt = add nuw nsw i32 %i.gs, %i.gn
  %i.gu = add nuw nsw i32 %i.gt, %i.gq
  %i.gv = lshr i32 %i.gu, 2
  %i.gw = trunc nuw i32 %i.gv to i16
  store i16 %i.gw, ptr %.3175220, align 2, !tbaa !48
  %i.gx = getelementptr inbounds i8, ptr %.3179219, i64 -2
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !48
end_hunk_0
