Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strfmt_num?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_strfmt_wfnum:bb.a
  %.not612 = icmp eq i32 %i.ah, 0
  br i1 %.not612, label %.preheader866, label %.loopexit867

.preheader866:                                    ; preds = %lj_buf_more.exit630
  %i.ai = add nsw i32 %i.g, -1                    ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.g, %i.w
  br i1 %i.aj, label %.lr.ph1007.preheader, label %.loopexit867

.lr.ph1007.preheader:                             ; preds = %.preheader866
  %i.ak = sub nsw i32 %i.ai, %i.w
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0511, i8 32, i64 %i.am, i1 false), !tbaa !16
  %scevgep1096 = getelementptr i8, ptr %.0511, i64 %i.am
  %i.an = add nsw i32 %i.w, -1
  br label %.loopexit867

.loopexit867:                                     ; preds = %.lr.ph1007.preheader, %.preheader866, %lj_buf_more.exit630
  %.2513 = phi ptr [ %.0511, %lj_buf_more.exit630 ], [ %.0511, %.preheader866 ], [ %scevgep1096, %.lr.ph1007.preheader ] ; 3 uses
  %.1490 = phi i32 [ %i.g, %lj_buf_more.exit630 ], [ %i.ai, %.preheader866 ], [ %i.an, %.lr.ph1007.preheader ]
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit867
  %i.ao = getelementptr inbounds nuw i8, ptr %.2513, i64 1
  store i8 %.0471727, ptr %.2513, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit867
  %.3514 = phi ptr [ %i.ao, %bb.i ], [ %.2513, %.loopexit867 ] ; 4 uses
  %i.ap = lshr i32 %.0470729, 16
  %i.aq = trunc nuw nsw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.3514, i64 1
  store i8 %i.aq, ptr %.3514, align 1, !tbaa !16
  %i.as = lshr i32 %.0470729, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.3514, i64 2
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !16
  %i.av = trunc i32 %.0470729 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.3514, i64 3
  store i8 %i.av, ptr %i.au, align 1, !tbaa !16
  br label %bb.dl

bb.k:                                             ; preds = %bb.a
  %i.ax = lshr i32 %1, 4
  %i.ay = and i32 %i.ax, 3                        ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.ba = and i32 %1, 8192
  %.not591 = icmp eq i32 %i.ba, 0                 ; 3 uses
  %i.bb = select i1 %.not591, ptr @.str.1, ptr @.str ; 3 uses
  %i.bc = lshr i32 %.sroa.0.4.extract.trunc, 20
  %i.bd = and i32 %i.bc, 2047                     ; 2 uses
  %.not592 = icmp sgt i64 %i.j, -1
  br i1 %.not592, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.be = and i32 %1, 512
  %.not593 = icmp eq i32 %i.be, 0
  br i1 %.not593, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bf = and i32 %1, 2048
  %.not594 = icmp eq i32 %i.bf, 0
  br i1 %.not594, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.o, %bb.n
  %i.bg = phi i32 [ 5, %bb.n ], [ 6, %bb.l ], [ 6, %bb.o ], [ 6, %bb.m ] ; 5 uses
  %.not601 = phi i1 [ true, %bb.n ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.m ]
  %.0467 = phi i8 [ 0, %bb.n ], [ 45, %bb.l ], [ 32, %bb.o ], [ 43, %bb.m ]
  %.sroa.0.4.insert.insert = and i64 %i.j, 4503599627370495 ; 4 uses
  %.not595 = icmp eq i32 %i.bd, 0
  br i1 %.not595, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.4.insert.insert195 = or disjoint i64 %.sroa.0.4.insert.insert, 4503599627370496
  %i.bh = add nsw i32 %i.bd, -1023
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.extract.trunc152 = trunc i64 %i.j to i32 ; 2 uses
  %.sroa.0.4.extract.shift197 = lshr i64 %.sroa.0.4.insert.insert, 32 ; 2 uses
  %.sroa.0.4.extract.trunc198 = trunc nuw nsw i64 %.sroa.0.4.extract.shift197 to i32 ; 2 uses
  %i.bi = or i32 %.sroa.0.4.extract.trunc198, %.sroa.0.0.extract.trunc152
  %.not596 = icmp eq i32 %i.bi, 0
  br i1 %.not596, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not597 = icmp eq i64 %.sroa.0.4.extract.shift197, 0 ; 2 uses
  %.sroa.0.0.extract.trunc152..sroa.0.4.extract.trunc198 = select i1 %.not597, i32 %.sroa.0.0.extract.trunc152, i32 %.sroa.0.4.extract.trunc198
  %. = select i1 %.not597, i32 52, i32 20
  %i.bj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.extract.trunc152..sroa.0.4.extract.trunc198, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = sub nuw nsw i32 %., %i.bk               ; 2 uses
  %i.bm = sub nuw nsw i32 -1022, %i.bl
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = shl i64 %.sroa.0.4.insert.insert, %i.bn
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert195, %bb.q ], [ %i.bo, %bb.s ], [ %.sroa.0.4.insert.insert, %bb.r ] ; 6 uses
  %.0468 = phi i32 [ %i.bh, %bb.q ], [ %i.bm, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.bp = icmp eq i32 %i.h, 0
  br i1 %i.bp, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.extract.trunc156 = trunc i64 %.sroa.0.0 to i32 ; 2 uses
  %.not598 = icmp eq i32 %.sroa.0.0.extract.trunc156, 0
  br i1 %.not598, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc156, i1 true)
  %i.br = lshr i32 %i.bq, 2
  %i.bs = sub nuw nsw i32 13, %i.br
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %.sroa.0.4.extract.shift206 = lshr exact i64 %.sroa.0.0, 32
  %.sroa.0.4.extract.trunc207 = trunc nuw i64 %.sroa.0.4.extract.shift206 to i32
  %i.bt = or i32 %.sroa.0.4.extract.trunc207, 1048576
  %i.bu = tail call range(i32 0, 21) i32 @llvm.cttz.i32(i32 %i.bt, i1 true)
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = sub nuw nsw i32 5, %i.bv
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.bx = icmp ult i32 %1, 234881024
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = shl nuw nsw i32 %i.i, 2
  %i.bz = sub nuw nsw i32 51, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 1, %i.ca
  %i.cc = add i64 %.sroa.0.0, %i.cb
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.0478 = phi i32 [ %i.i, %bb.x ], [ %i.i, %bb.y ], [ %i.bs, %bb.v ], [ %i.bw, %bb.w ] ; 14 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.x ], [ %i.cc, %bb.y ], [ %.sroa.0.0, %bb.v ], [ %.sroa.0.0, %bb.w ] ; 4 uses
  %i.cd = icmp slt i32 %.0468, 0
  %spec.select617 = tail call i32 @llvm.abs.i32(i32 %.0468, i1 true) ; 3 uses
  %spec.select618 = select i1 %i.cd, i8 45, i8 43
  %i.ce = or i32 %spec.select617, 1
  %i.cf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ce, i1 true)
  %i.cg = xor i32 %i.cf, 31
  %i.ch = mul nuw nsw i32 %i.cg, 77
  %i.ci = lshr i32 %i.ch, 8                       ; 5 uses
  %i.cj = add nuw nsw i32 %i.ci, 1                ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @ndigits_dec_threshold, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = icmp ugt i32 %spec.select617, %i.cm
  %i.co = zext i1 %i.cn to i32                    ; 5 uses
  %i.cp = and i32 %1, 4096
  %i.cq = or i32 %.0478, %i.cp
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %i.cs = zext i1 %i.cr to i32                    ; 5 uses
  %i.ct = add nuw nsw i32 %i.bg, %i.cj
  %i.cu = add nuw nsw i32 %i.ct, %.0478
  %i.cv = add nuw nsw i32 %i.cu, %i.cs
  %i.cw = add nuw nsw i32 %i.cv, %i.co            ; 4 uses
  %.not599 = icmp eq ptr %3, null
  br i1 %.not599, label %bb.aa, label %lj_buf_more.exit628

bb.aa:                                            ; preds = %bb.z
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.cw) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.da = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp ugt i32 %i.cx, %i.de
  br i1 %i.df, label %bb.ab, label %lj_buf_more.exit628, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.dg = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.cx) #8
  br label %lj_buf_more.exit628

lj_buf_more.exit628:                              ; preds = %bb.ab, %bb.aa, %bb.z
  %.4515 = phi ptr [ %3, %bb.z ], [ %i.dg, %bb.ab ], [ %i.da, %bb.aa ] ; 4 uses
  %i.dh = and i32 %1, 1280                        ; 2 uses
  %.not600 = icmp eq i32 %i.dh, 0
  br i1 %.not600, label %.preheader873, label %.loopexit874

.preheader873:                                    ; preds = %lj_buf_more.exit628
  %i.di = add nsw i32 %i.g, -1
  %i.dj = icmp samesign ugt i32 %i.g, %i.cw
  br i1 %i.dj, label %.lr.ph992.preheader, label %.loopexit874

.lr.ph992.preheader:                              ; preds = %.preheader873
  %i.dk = add nsw i32 %i.g, -2
  %i.dl = add nuw nsw i32 %.0478, %i.bg
  %i.dm = add nuw nsw i32 %i.dl, %i.ci
  %i.dn = add nuw nsw i32 %i.dm, %i.cs
  %i.do = add nuw nsw i32 %i.dn, %i.co
  %i.dp = sub nsw i32 %i.dk, %i.do
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4515, i8 32, i64 %i.dr, i1 false), !tbaa !16
  %scevgep1087 = getelementptr i8, ptr %.4515, i64 %i.dr
  %i.ds = add nuw nsw i32 %.0478, %i.bg
  %i.dt = add nuw nsw i32 %i.ds, %i.ci
  %i.du = add nuw nsw i32 %i.dt, %i.cs
  %i.dv = add nuw nsw i32 %i.du, %i.co
  br label %.loopexit874

.loopexit874:                                     ; preds = %.lr.ph992.preheader, %.preheader873, %lj_buf_more.exit628
  %.6517 = phi ptr [ %.4515, %lj_buf_more.exit628 ], [ %.4515, %.preheader873 ], [ %scevgep1087, %.lr.ph992.preheader ] ; 3 uses
  %.3492 = phi i32 [ %i.g, %lj_buf_more.exit628 ], [ %i.di, %.preheader873 ], [ %i.dv, %.lr.ph992.preheader ] ; 4 uses
  br i1 %.not601, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit874
  %i.dw = getelementptr inbounds nuw i8, ptr %.6517, i64 1
  store i8 %.0467, ptr %.6517, align 1, !tbaa !16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit874
  %.7518 = phi ptr [ %i.dw, %bb.ac ], [ %.6517, %.loopexit874 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.7518, i64 1
  store i8 48, ptr %.7518, align 1, !tbaa !16
  %i.dy = select i1 %.not591, i8 120, i8 88
  %i.dz = getelementptr i8, ptr %.7518, i64 2     ; 3 uses
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !16
  %i.ea = icmp eq i32 %i.dh, 1024
  br i1 %i.ea, label %.preheader871, label %.loopexit872

.preheader871:                                    ; preds = %bb.ad
  %i.eb = add nsw i32 %.3492, -1
  %i.ec = icmp ugt i32 %.3492, %i.cw
  br i1 %i.ec, label %.lr.ph996.preheader, label %.loopexit872

.lr.ph996.preheader:                              ; preds = %.preheader871
  %i.ed = add nsw i32 %.3492, -2
  %i.ee = add nuw nsw i32 %.0478, %i.bg
  %i.ef = add nuw nsw i32 %i.ee, %i.ci
  %i.eg = add nuw nsw i32 %i.ef, %i.cs
  %i.eh = add nuw nsw i32 %i.eg, %i.co
  %i.ei = sub nsw i32 %i.ed, %i.eh
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = add nuw nsw i64 %i.ej, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dz, i8 48, i64 %i.ek, i1 false), !tbaa !16
  %i.el = getelementptr i8, ptr %.7518, i64 %i.ej
  %scevgep1088 = getelementptr i8, ptr %i.el, i64 3
  %i.em = add nuw nsw i32 %.0478, %i.bg
  %i.en = add nuw nsw i32 %i.em, %i.ci
  %i.eo = add nuw nsw i32 %i.en, %i.cs
  %i.ep = add nuw nsw i32 %i.eo, %i.co
  br label %.loopexit872

.loopexit872:                                     ; preds = %.lr.ph996.preheader, %.preheader871, %bb.ad
  %.9520 = phi ptr [ %i.dz, %bb.ad ], [ %i.dz, %.preheader871 ], [ %scevgep1088, %.lr.ph996.preheader ] ; 5 uses
  %.5494 = phi i32 [ %.3492, %bb.ad ], [ %i.eb, %.preheader871 ], [ %i.ep, %.lr.ph996.preheader ]
  %sum.shift = lshr i64 %.sroa.0.1, 52
  %i.eq = trunc i64 %sum.shift to i8
  %i.er = add i8 %i.eq, 48
  %i.es = getelementptr inbounds nuw i8, ptr %.9520, i64 1 ; 4 uses
  store i8 %i.er, ptr %.9520, align 1, !tbaa !16
  br i1 %i.cr, label %bb.ae, label %.loopexit868

bb.ae:                                            ; preds = %.loopexit872
  %i.et = getelementptr inbounds nuw i8, ptr %.9520, i64 2
  %i.eu = zext nneg i32 %.0478 to i64             ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu ; 3 uses
  store i8 46, ptr %i.es, align 1, !tbaa !16
  %i.ew = icmp samesign ult i32 %.0478, 13
  br i1 %i.ew, label %.loopexit870, label %.preheader869

.preheader869:                                    ; preds = %bb.ae
  %.not1016 = icmp eq i32 %.0478, 13
  br i1 %.not1016, label %.lr.ph1005.preheader, label %.lr.ph1000.preheader

.lr.ph1000.preheader:                             ; preds = %.preheader869
  %i.ex = add nuw nsw i64 %i.eu, 1
  %i.ey = add nsw i32 %.0478, -14
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = sub nsw i64 %i.ex, %i.ez
  %scevgep1089 = getelementptr i8, ptr %.9520, i64 %i.fa
  %i.fb = add nsw i32 %.0478, -13
  %i.fc = zext nneg i32 %i.fb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep1089, i8 48, i64 %i.fc, i1 false), !tbaa !16
  br label %.lr.ph1005.preheader

.loopexit870:                                     ; preds = %bb.ae
  %i.fd = shl nuw nsw i32 %.0478, 2
  %i.fe = sub nuw nsw i32 52, %i.fd
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = lshr i64 %.sroa.0.1, %i.ff
  %.not6031001 = icmp eq i32 %.0478, 0
  br i1 %.not6031001, label %.loopexit868, label %.lr.ph1005.preheader

.lr.ph1005.preheader:                             ; preds = %.lr.ph1000.preheader, %.preheader869, %.loopexit870
  %.sroa.0.21159 = phi i64 [ %i.fg, %.loopexit870 ], [ %.sroa.0.1, %.preheader869 ], [ %.sroa.0.1, %.lr.ph1000.preheader ] ; 3 uses
  %.24801158 = phi i32 [ %.0478, %.loopexit870 ], [ 13, %.preheader869 ], [ 13, %.lr.ph1000.preheader ] ; 3 uses
  %i.fh = zext nneg i32 %.24801158 to i64         ; 3 uses
  %xtraiter = and i32 %.24801158, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1005.prol.loopexit, label %.lr.ph1005.prol

.lr.ph1005.prol:                                  ; preds = %.lr.ph1005.preheader
  %i.fi = and i64 %.sroa.0.21159, 15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !16
  %indvars.iv.next1094.prol = add nsw i64 %i.fh, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fh
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !16
  %i.fm = lshr i64 %.sroa.0.21159, 4
  br label %.lr.ph1005.prol.loopexit

.lr.ph1005.prol.loopexit:                         ; preds = %.lr.ph1005.prol, %.lr.ph1005.preheader
  %indvars.iv1093.unr = phi i64 [ %i.fh, %.lr.ph1005.preheader ], [ %indvars.iv.next1094.prol, %.lr.ph1005.prol ]
  %.sroa.0.31003.unr = phi i64 [ %.sroa.0.21159, %.lr.ph1005.preheader ], [ %i.fm, %.lr.ph1005.prol ]
  %i.fn = icmp eq i32 %.24801158, 1
  br i1 %i.fn, label %.loopexit868, label %.lr.ph1005

.lr.ph1005:                                       ; preds = %.lr.ph1005.prol.loopexit, %.lr.ph1005
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094.1, %.lr.ph1005 ], [ %indvars.iv1093.unr, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %.sroa.0.31003 = phi i64 [ %i.fx, %.lr.ph1005 ], [ %.sroa.0.31003.unr, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %i.fo = and i64 %.sroa.0.31003, 15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv1093
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !16
  %i.fs = lshr i64 %.sroa.0.31003, 4
  %i.ft = and i64 %i.fs, 15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %indvars.iv.next1094.1 = add nsw i64 %indvars.iv1093, -2 ; 2 uses
  %i.fw = getelementptr i8, ptr %.9520, i64 %indvars.iv1093
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !16
  %i.fx = lshr i64 %.sroa.0.31003, 8
  %i.fy = and i64 %indvars.iv.next1094.1, 4294967295
  %.not603.1 = icmp eq i64 %i.fy, 0
  br i1 %.not603.1, label %.loopexit868, label %.lr.ph1005, !llvm.loop !21

.loopexit868:                                     ; preds = %.lr.ph1005.prol.loopexit, %.lr.ph1005, %.loopexit870, %.loopexit872
  %.10521 = phi ptr [ %i.es, %.loopexit872 ], [ %i.ev, %.loopexit870 ], [ %i.ev, %.lr.ph1005 ], [ %i.ev, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %i.fz = select i1 %.not591, i8 112, i8 80
  %i.ga = getelementptr inbounds nuw i8, ptr %.10521, i64 1
  store i8 %i.fz, ptr %.10521, align 1, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %.10521, i64 2
  store i8 %spec.select618, ptr %i.ga, align 1, !tbaa !16
  %i.gc = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %i.gb, i32 noundef %spec.select617) #8
  br label %bb.dl

bb.af:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gd = lshr i32 %.sroa.0.4.extract.trunc, 20
  %i.ge = and i32 %i.gd, 2047                     ; 5 uses
  %.not = icmp sgt i64 %i.j, -1
  br i1 %.not, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gf = and i32 %1, 512
  %.not554 = icmp eq i32 %i.gf, 0
  br i1 %.not554, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gg = and i32 %1, 2048
  %.not555 = icmp eq i32 %i.gg, 0
  br i1 %.not555, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ai, %bb.ah
  %i.gh = phi i32 [ 0, %bb.ah ], [ 1, %bb.af ], [ 1, %bb.ai ], [ 1, %bb.ag ] ; 10 uses
  %.not573 = phi i1 [ true, %bb.ah ], [ false, %bb.af ], [ false, %bb.ai ], [ false, %bb.ag ] ; 2 uses
  %.0437 = phi i8 [ 0, %bb.ah ], [ 45, %bb.af ], [ 32, %bb.ai ], [ 43, %bb.ag ] ; 2 uses
  %isneg = icmp eq i32 %i.h, 0
  %i.gi = select i1 %isneg, i32 7, i32 0
  %i.gj = add nsw i32 %i.gi, %i.i                 ; 2 uses
  %i.gk = icmp eq i32 %i.ay, 3
  %i.gl = add nsw i32 %i.gj, -1                   ; 2 uses
  %i.gm = ashr i32 %i.gl, 31
  %i.gn = xor i32 %i.gm, %i.gl
  %.4482 = select i1 %i.gk, i32 %i.gn, i32 %i.gj  ; 17 uses
  %i.go = and i32 %1, 16
  %i.gp = icmp ne i32 %i.go, 0                    ; 2 uses
  %i.gq = icmp ult i32 %.4482, 14
  %or.cond = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gr = fcmp une double %2, 0.000000e+00
  %or.cond3 = and i1 %i.gr, %or.cond
  br i1 %or.cond3, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gs = lshr i32 %i.ge, 6                       ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @rescale_e, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !34
  %i.gw = sext i16 %i.gv to i32                   ; 2 uses
  %i.gx = add nsw i32 %i.gs, -15
  %.not556 = icmp ult i32 %i.gx, 3
  br i1 %.not556, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @rescale_n, i64 %i.gt
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !36
  %i.ha = fmul double %2, %i.gz                   ; 2 uses
  %.not557 = icmp eq i32 %i.ge, 0
  br i1 %.not557, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %bb.al
  %i.hb = fmul double %i.ha, 1.000000e+10
  %i.hc = add nsw i32 %i.gw, -10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.4.in = phi double [ %i.hb, %bb.am ], [ %i.ha, %bb.al ]
  %.0438 = phi i32 [ %i.hc, %bb.am ], [ %i.gw, %bb.al ]
  %.sroa.0.4 = bitcast double %.sroa.0.4.in to i64
  %i.hd = add i64 %.sroa.0.4, -2                  ; 2 uses
  %.sroa.0.4.extract.shift218 = lshr i64 %i.hd, 32
  %.sroa.0.4.extract.trunc219 = trunc nuw i64 %.sroa.0.4.extract.shift218 to i32 ; 2 uses
  %i.he = and i32 %.sroa.0.4.extract.trunc219, 1048575
  %i.hf = or disjoint i32 %i.he, 1048576
  %i.hg = lshr i32 %.sroa.0.4.extract.trunc219, 20
  %i.hh = and i32 %i.hg, 2047
  %i.hi = add nsw i32 %i.hh, -1075
  br label %._crit_edge.i

bb.ao:                                            ; preds = %nd_similar.exit, %nd_similar.exit.thread, %bb.ak, %bb.aj
  %i.hj = and i32 %.sroa.0.4.extract.trunc, 1048575 ; 4 uses
  store i32 %i.hj, ptr %i.c, align 16, !tbaa !17
  %i.hk = icmp eq i32 %i.ge, 0
  br i1 %i.hk, label %.thread854, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = or disjoint i32 %i.hj, 1048576          ; 3 uses
  store i32 %i.hl, ptr %i.c, align 16, !tbaa !17
  %i.hm = add nsw i32 %i.ge, -1043                ; 3 uses
  %i.hn = and i64 %i.j, 4294967295
  %.not590 = icmp eq i64 %i.hn, 0
  br i1 %.not590, label %nd_mul2k.exit.thread, label %bb.aq

.thread854:                                       ; preds = %bb.ao
  %i.ho = and i64 %i.j, 4294967295
  %.not590856 = icmp eq i64 %i.ho, 0
  br i1 %.not590856, label %.thread768, label %bb.aq

bb.aq:                                            ; preds = %.thread854, %bb.ap
  %i.hp = phi i32 [ %i.hj, %.thread854 ], [ %i.hl, %bb.ap ]
  %.1442857 = phi i32 [ -1042, %.thread854 ], [ %i.hm, %bb.ap ]
  %i.hq = add nsw i32 %.1442857, -32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aq, %bb.an
  %i.hr = phi i32 [ %i.hf, %bb.an ], [ %i.hp, %bb.aq ]
end_hunk_0
begin_hunk_1_@lj_strfmt_wfnum:bb.a
  %i.wx = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 2 uses
  store i8 %i.ww, ptr %i.wu, align 1, !tbaa !16
  %i.wy = mul i32 %i.vx, 8389
  %i.wz = lshr i32 %i.wy, 23                      ; 2 uses
  %.neg46.i = mul nsw i32 %i.wz, -1000
  %i.xa = add i32 %.neg46.i, %i.vx                ; 2 uses
  %i.xb = trunc i32 %i.wz to i8
  %i.xc = add i8 %i.xb, 48
  %i.xd = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  store i8 %i.xc, ptr %i.wx, align 1, !tbaa !16
  %i.xe = mul i32 %i.xa, 41
  %i.xf = lshr i32 %i.xe, 12                      ; 2 uses
  %.neg47.i = mul nsw i32 %i.xf, -100
  %i.xg = add i32 %.neg47.i, %i.xa                ; 2 uses
  %i.xh = trunc i32 %i.xf to i8
  %i.xi = add i8 %i.xh, 48
  %i.xj = getelementptr inbounds nuw i8, ptr %i.d, i64 7 ; 2 uses
  store i8 %i.xi, ptr %i.xd, align 1, !tbaa !16
  %i.xk = mul i32 %i.xg, 103
  %i.xl = lshr i32 %i.xk, 10                      ; 2 uses
  %.neg48.i = mul nuw nsw i32 %i.xl, 246
  %i.xm = add i32 %.neg48.i, %i.xg
  %i.xn = trunc i32 %i.xl to i8
  %i.xo = add i8 %i.xn, 48
  %i.xp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %i.xo, ptr %i.xj, align 1, !tbaa !16
  %i.xq = trunc i32 %i.xm to i8
  %i.xr = add i8 %i.xq, 48
  store i8 %i.xr, ptr %i.xp, align 1, !tbaa !16
  %.not569918 = icmp eq i32 %.8486, 0
  br i1 %.not569918, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ch
  %reass.sub = sub nsw i32 %.8486, %i.nf
  %i.xs = add nsw i32 %reass.sub, 10
  %.neg568 = mul nsw i32 %.pre-phi1106, -9
  %i.xt = add nsw i32 %i.xs, %.neg568
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cl
  %.0445921 = phi i32 [ %.1446, %bb.cl ], [ %i.xt, %.lr.ph.preheader ]
  %.2451920 = phi i32 [ %.3452, %bb.cl ], [ %.1450, %.lr.ph.preheader ] ; 4 uses
  %.9487919 = phi i32 [ %i.xz, %bb.cl ], [ %.8486, %.lr.ph.preheader ] ; 2 uses
  %i.xu = add i32 %.0445921, -1                   ; 3 uses
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.xv
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !16
  %i.xy = icmp eq i8 %i.xx, 48
  br i1 %i.xy, label %bb.ci, label %.critedge

bb.ci:                                            ; preds = %.lr.ph
  %i.xz = add nsw i32 %.9487919, -1               ; 2 uses
  %.not570 = icmp eq i32 %i.xu, 0
  br i1 %.not570, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ya = icmp eq i32 %.2451920, %.6462
  br i1 %i.ya, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.yb = add i32 %.2451920, 1
  %i.yc = and i32 %i.yb, 63                       ; 2 uses
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !17 ; 3 uses
  %i.yg = udiv i32 %i.yf, 10000                   ; 2 uses
  %.neg.i677 = mul i32 %i.yg, -10000
  %i.yh = add i32 %.neg.i677, %i.yf               ; 2 uses
  %i.yi = udiv i32 %i.yf, 100000000               ; 2 uses
  %.neg42.i678 = mul nsw i32 %i.yi, -10000
  %i.yj = add nsw i32 %.neg42.i678, %i.yg         ; 2 uses
  %i.yk = trunc nuw nsw i32 %i.yi to i8
  %i.yl = add nuw nsw i8 %i.yk, 48
  store i8 %i.yl, ptr %i.d, align 1, !tbaa !16
  %i.ym = mul i32 %i.yj, 8389
  %i.yn = lshr i32 %i.ym, 23                      ; 2 uses
  %.neg43.i679 = mul nsw i32 %i.yn, -1000
  %i.yo = add nsw i32 %.neg43.i679, %i.yj         ; 2 uses
  %i.yp = trunc i32 %i.yn to i8
  %i.yq = add i8 %i.yp, 48
  store i8 %i.yq, ptr %i.wc, align 1, !tbaa !16
  %i.yr = mul nsw i32 %i.yo, 41
  %i.ys = lshr i32 %i.yr, 12                      ; 2 uses
  %.neg44.i680 = mul nsw i32 %i.ys, -100
  %i.yt = add nsw i32 %.neg44.i680, %i.yo         ; 2 uses
  %i.yu = trunc i32 %i.ys to i8
  %i.yv = add i8 %i.yu, 48
  store i8 %i.yv, ptr %i.wi, align 1, !tbaa !16
  %i.yw = mul i32 %i.yt, 103
  %i.yx = lshr i32 %i.yw, 10                      ; 2 uses
  %.neg45.i681 = mul nuw nsw i32 %i.yx, 246
  %i.yy = add nsw i32 %.neg45.i681, %i.yt
  %i.yz = trunc i32 %i.yx to i8
  %i.za = add i8 %i.yz, 48
  store i8 %i.za, ptr %i.wo, align 1, !tbaa !16
  %i.zb = trunc i32 %i.yy to i8
  %i.zc = add i8 %i.zb, 48
  store i8 %i.zc, ptr %i.wu, align 1, !tbaa !16
  %i.zd = mul i32 %i.yh, 8389
  %i.ze = lshr i32 %i.zd, 23                      ; 2 uses
  %.neg46.i682 = mul nsw i32 %i.ze, -1000
  %i.zf = add i32 %.neg46.i682, %i.yh             ; 2 uses
  %i.zg = trunc i32 %i.ze to i8
  %i.zh = add i8 %i.zg, 48
  store i8 %i.zh, ptr %i.wx, align 1, !tbaa !16
  %i.zi = mul i32 %i.zf, 41
  %i.zj = lshr i32 %i.zi, 12                      ; 2 uses
  %.neg47.i683 = mul nsw i32 %i.zj, -100
  %i.zk = add i32 %.neg47.i683, %i.zf             ; 2 uses
  %i.zl = trunc i32 %i.zj to i8
  %i.zm = add i8 %i.zl, 48
  store i8 %i.zm, ptr %i.xd, align 1, !tbaa !16
  %i.zn = mul i32 %i.zk, 103
  %i.zo = lshr i32 %i.zn, 10                      ; 2 uses
  %.neg48.i684 = mul nuw nsw i32 %i.zo, 246
  %i.zp = add i32 %.neg48.i684, %i.zk
  %i.zq = trunc i32 %i.zo to i8
  %i.zr = add i8 %i.zq, 48
  store i8 %i.zr, ptr %i.xj, align 1, !tbaa !16
  %i.zs = trunc i32 %i.zp to i8
  %i.zt = add i8 %i.zs, 48
  store i8 %i.zt, ptr %i.xp, align 1, !tbaa !16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %.3452 = phi i32 [ %.2451920, %bb.ci ], [ %i.yc, %bb.ck ] ; 2 uses
  %.1446 = phi i32 [ %i.xu, %bb.ci ], [ 9, %bb.ck ]
  %.not569 = icmp eq i32 %i.xz, 0
  br i1 %.not569, label %.critedge, label %.lr.ph, !llvm.loop !27

.critedge:                                        ; preds = %.lr.ph, %bb.cl, %bb.cj, %bb.ch
  %.2451.lcssa = phi i32 [ %.1450, %bb.ch ], [ %.6462, %bb.cj ], [ %.3452, %bb.cl ], [ %.2451920, %.lr.ph ]
  %.10488 = phi i32 [ 0, %bb.ch ], [ 0, %bb.cj ], [ 0, %bb.cl ], [ %.9487919, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge1107, %.critedge, %bb.ce
  %.pre-phi1109 = phi i32 [ %.pre1108, %._crit_edge1107 ], [ 0, %.critedge ], [ %i.vg, %bb.ce ]
  %.11 = phi i32 [ %.4482, %._crit_edge1107 ], [ %.10488, %.critedge ], [ %.4482, %bb.ce ] ; 7 uses
  %.4453 = phi i32 [ %.0449, %._crit_edge1107 ], [ %.2451.lcssa, %.critedge ], [ %.0449, %bb.ce ] ; 2 uses
  %i.zu = icmp slt i32 %i.uw, 0
  %spec.select621 = select i1 %i.zu, i8 45, i8 43
  %spec.select622 = tail call i32 @llvm.abs.i32(i32 %i.uw, i1 true) ; 4 uses
  %i.zv = or i32 %spec.select622, 1
  %i.zw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.zv, i1 true)
  %i.zx = xor i32 %i.zw, 31
  %i.zy = mul nuw nsw i32 %i.zx, 77
  %i.zz = lshr i32 %i.zy, 8                       ; 5 uses
  %i.aaa = add nuw nsw i32 %i.zz, 1               ; 2 uses
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr @ndigits_dec_threshold, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !17
  %i.aae = icmp ugt i32 %spec.select622, %i.aad
  %i.aaf = zext i1 %i.aae to i32                  ; 5 uses
  %i.aag = icmp samesign ult i32 %spec.select622, 10 ; 2 uses
  %i.aah = zext i1 %i.aag to i32                  ; 5 uses
  %i.aai = or i32 %.11, %.pre-phi1109
  %i.aaj = icmp ne i32 %i.aai, 0                  ; 2 uses
  %i.aak = zext i1 %i.aaj to i32                  ; 5 uses
  %i.aal = add nuw nsw i32 %i.gh, 3
  %i.aam = add nuw nsw i32 %i.aal, %i.aah
  %i.aan = add nuw nsw i32 %i.aam, %i.aaa
  %i.aao = add i32 %i.aan, %.11
  %i.aap = add i32 %i.aao, %i.aak
  %i.aaq = add i32 %i.aap, %i.aaf                 ; 4 uses
  %.not571 = icmp eq ptr %3, null
  br i1 %.not571, label %bb.cn, label %lj_buf_more.exit626

bb.cn:                                            ; preds = %bb.cm
  %i.aar = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.aaq)
  %i.aas = add i32 %i.aar, 5                      ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !32
  %i.aav = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = trunc i64 %i.aay to i32
  %i.aba = icmp ugt i32 %i.aas, %i.aaz
  br i1 %i.aba, label %bb.co, label %lj_buf_more.exit626, !prof !15

bb.co:                                            ; preds = %bb.cn
  %i.abb = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.aas) #8
  br label %lj_buf_more.exit626

lj_buf_more.exit626:                              ; preds = %bb.co, %bb.cn, %bb.cm
  %.14525 = phi ptr [ %3, %bb.cm ], [ %i.abb, %bb.co ], [ %i.aav, %bb.cn ] ; 4 uses
  %i.abc = and i32 %1, 1280                       ; 2 uses
  %.not572 = icmp eq i32 %i.abc, 0
  br i1 %.not572, label %.preheader879, label %.loopexit880

.preheader879:                                    ; preds = %lj_buf_more.exit626
  %i.abd = add nsw i32 %i.g, -1
  %i.abe = icmp ugt i32 %i.g, %i.aaq
  br i1 %i.abe, label %.lr.ph970.preheader, label %.loopexit880

.lr.ph970.preheader:                              ; preds = %.preheader879
  %i.abf = add nsw i32 %i.g, -5
  %i.abg = add i32 %i.gh, %.11
  %i.abh = add i32 %i.abg, %i.zz
  %i.abi = add i32 %i.abh, %i.aah
  %i.abj = add i32 %i.abi, %i.aak
  %i.abk = add i32 %i.abj, %i.aaf
  %i.abl = sub i32 %i.abf, %i.abk
  %i.abm = zext i32 %i.abl to i64
  %i.abn = add nuw nsw i64 %i.abm, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.14525, i8 32, i64 %i.abn, i1 false), !tbaa !16
  %scevgep1084 = getelementptr i8, ptr %.14525, i64 %i.abn
  %i.abo = add i32 %i.gh, %.11
  %i.abp = add i32 %i.abo, %i.zz
  %i.abq = add i32 %i.abp, %i.aah
  %i.abr = add i32 %i.abq, %i.aak
  %i.abs = add i32 %i.abr, %i.aaf
  %i.abt = add i32 %i.abs, 3
  br label %.loopexit880

.loopexit880:                                     ; preds = %.lr.ph970.preheader, %.preheader879, %lj_buf_more.exit626
  %.16527 = phi ptr [ %.14525, %lj_buf_more.exit626 ], [ %.14525, %.preheader879 ], [ %scevgep1084, %.lr.ph970.preheader ] ; 3 uses
  %.10499 = phi i32 [ %i.g, %lj_buf_more.exit626 ], [ %i.abd, %.preheader879 ], [ %i.abt, %.lr.ph970.preheader ] ; 4 uses
  br i1 %.not573, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.loopexit880
  %i.abu = getelementptr inbounds nuw i8, ptr %.16527, i64 1
  store i8 %.0437, ptr %.16527, align 1, !tbaa !16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit880
  %.17528 = phi ptr [ %i.abu, %bb.cp ], [ %.16527, %.loopexit880 ] ; 4 uses
  %i.abv = icmp eq i32 %i.abc, 1024
  br i1 %i.abv, label %.preheader877, label %.loopexit878

.preheader877:                                    ; preds = %bb.cq
  %i.abw = add i32 %.10499, -1
  %i.abx = icmp ugt i32 %.10499, %i.aaq
  br i1 %i.abx, label %.lr.ph974.preheader, label %.loopexit878

.lr.ph974.preheader:                              ; preds = %.preheader877
  %i.aby = add i32 %.10499, -5
  %i.abz = add i32 %i.gh, %.11
  %i.aca = add i32 %i.abz, %i.zz
  %i.acb = add i32 %i.aca, %i.aah
  %i.acc = add i32 %i.acb, %i.aak
  %i.acd = add i32 %i.acc, %i.aaf
  %i.ace = sub i32 %i.aby, %i.acd
  %i.acf = zext i32 %i.ace to i64
  %i.acg = add nuw nsw i64 %i.acf, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.17528, i8 48, i64 %i.acg, i1 false), !tbaa !16
  %scevgep1085 = getelementptr i8, ptr %.17528, i64 %i.acg
  %i.ach = add i32 %i.gh, %.11
  %i.aci = add i32 %i.ach, %i.zz
  %i.acj = add i32 %i.aci, %i.aah
  %i.ack = add i32 %i.acj, %i.aak
  %i.acl = add i32 %i.ack, %i.aaf
  %i.acm = add i32 %i.acl, 3
  br label %.loopexit878

.loopexit878:                                     ; preds = %.lr.ph974.preheader, %.preheader877, %bb.cq
  %.19530 = phi ptr [ %.17528, %bb.cq ], [ %.17528, %.preheader877 ], [ %scevgep1085, %.lr.ph974.preheader ] ; 3 uses
  %.12501 = phi i32 [ %.10499, %bb.cq ], [ %i.abw, %.preheader877 ], [ %i.acm, %.lr.ph974.preheader ]
  %i.acn = getelementptr inbounds nuw i8, ptr %.19530, i64 1 ; 4 uses
  %i.aco = zext i32 %.6462 to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !17
  %i.acr = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %i.acn, i32 noundef %i.acq) #8 ; 3 uses
  %i.acs = load i8, ptr %i.acn, align 1, !tbaa !16
  store i8 %i.acs, ptr %.19530, align 1, !tbaa !16
  br i1 %i.aaj, label %bb.cr, label %.loopexit875

bb.cr:                                            ; preds = %.loopexit878
  store i8 46, ptr %i.acn, align 1, !tbaa !16
  %i.act = getelementptr inbounds nuw i8, ptr %.19530, i64 2
  %i.acu = ptrtoint ptr %i.acr to i64
  %i.acv = ptrtoint ptr %i.act to i64
  %.neg574 = sub i64 %i.acv, %i.acu
  %.neg575 = trunc i64 %.neg574 to i32
  %i.acw = add i32 %.11, %.neg575                 ; 3 uses
  %i.acx = icmp sgt i32 %i.acw, 0
  %i.acy = icmp ne i32 %.6462, %.4453
  %i.acz = select i1 %i.acx, i1 %i.acy, i1 false
  br i1 %i.acz, label %.lr.ph981, label %._crit_edge982

.lr.ph981:                                        ; preds = %bb.cr, %.lr.ph981
  %.2447979 = phi i32 [ %i.adb, %.lr.ph981 ], [ %.6462, %bb.cr ]
  %.12978 = phi i32 [ %i.afc, %.lr.ph981 ], [ %i.acw, %bb.cr ] ; 2 uses
  %.20531977 = phi ptr [ %i.afb, %.lr.ph981 ], [ %i.acr, %bb.cr ] ; 10 uses
  %i.ada = add i32 %.2447979, 63
  %i.adb = and i32 %i.ada, 63                     ; 3 uses
  %i.adc = zext nneg i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !17 ; 3 uses
  %i.adf = udiv i32 %i.ade, 10000                 ; 2 uses
  %.neg.i685 = mul i32 %i.adf, -10000
  %i.adg = add i32 %.neg.i685, %i.ade             ; 2 uses
  %i.adh = udiv i32 %i.ade, 100000000             ; 2 uses
  %.neg42.i686 = mul nsw i32 %i.adh, -10000
  %i.adi = add nsw i32 %.neg42.i686, %i.adf       ; 2 uses
  %i.adj = trunc nuw nsw i32 %i.adh to i8
  %i.adk = add nuw nsw i8 %i.adj, 48
  %i.adl = getelementptr inbounds nuw i8, ptr %.20531977, i64 1
  store i8 %i.adk, ptr %.20531977, align 1, !tbaa !16
  %i.adm = mul i32 %i.adi, 8389
  %i.adn = lshr i32 %i.adm, 23                    ; 2 uses
  %.neg43.i687 = mul nsw i32 %i.adn, -1000
  %i.ado = add nsw i32 %.neg43.i687, %i.adi       ; 2 uses
  %i.adp = trunc i32 %i.adn to i8
  %i.adq = add i8 %i.adp, 48
  %i.adr = getelementptr inbounds nuw i8, ptr %.20531977, i64 2
  store i8 %i.adq, ptr %i.adl, align 1, !tbaa !16
  %i.ads = mul nsw i32 %i.ado, 41
  %i.adt = lshr i32 %i.ads, 12                    ; 2 uses
  %.neg44.i688 = mul nsw i32 %i.adt, -100
  %i.adu = add nsw i32 %.neg44.i688, %i.ado       ; 2 uses
  %i.adv = trunc i32 %i.adt to i8
  %i.adw = add i8 %i.adv, 48
  %i.adx = getelementptr inbounds nuw i8, ptr %.20531977, i64 3
  store i8 %i.adw, ptr %i.adr, align 1, !tbaa !16
  %i.ady = mul i32 %i.adu, 103
  %i.adz = lshr i32 %i.ady, 10                    ; 2 uses
  %.neg45.i689 = mul nuw nsw i32 %i.adz, 246
  %i.aea = add nsw i32 %.neg45.i689, %i.adu
  %i.aeb = trunc i32 %i.adz to i8
  %i.aec = add i8 %i.aeb, 48
  %i.aed = getelementptr inbounds nuw i8, ptr %.20531977, i64 4
  store i8 %i.aec, ptr %i.adx, align 1, !tbaa !16
  %i.aee = trunc i32 %i.aea to i8
  %i.aef = add i8 %i.aee, 48
  %i.aeg = getelementptr inbounds nuw i8, ptr %.20531977, i64 5
  store i8 %i.aef, ptr %i.aed, align 1, !tbaa !16
  %i.aeh = mul i32 %i.adg, 8389
  %i.aei = lshr i32 %i.aeh, 23                    ; 2 uses
  %.neg46.i690 = mul nsw i32 %i.aei, -1000
  %i.aej = add i32 %.neg46.i690, %i.adg           ; 2 uses
  %i.aek = trunc i32 %i.aei to i8
  %i.ael = add i8 %i.aek, 48
  %i.aem = getelementptr inbounds nuw i8, ptr %.20531977, i64 6
  store i8 %i.ael, ptr %i.aeg, align 1, !tbaa !16
  %i.aen = mul i32 %i.aej, 41
  %i.aeo = lshr i32 %i.aen, 12                    ; 2 uses
  %.neg47.i691 = mul nsw i32 %i.aeo, -100
  %i.aep = add i32 %.neg47.i691, %i.aej           ; 2 uses
  %i.aeq = trunc i32 %i.aeo to i8
  %i.aer = add i8 %i.aeq, 48
  %i.aes = getelementptr inbounds nuw i8, ptr %.20531977, i64 7
  store i8 %i.aer, ptr %i.aem, align 1, !tbaa !16
  %i.aet = mul i32 %i.aep, 103
  %i.aeu = lshr i32 %i.aet, 10                    ; 2 uses
  %.neg48.i692 = mul nuw nsw i32 %i.aeu, 246
  %i.aev = add i32 %.neg48.i692, %i.aep
  %i.aew = trunc i32 %i.aeu to i8
  %i.aex = add i8 %i.aew, 48
  %i.aey = getelementptr inbounds nuw i8, ptr %.20531977, i64 8
  store i8 %i.aex, ptr %i.aes, align 1, !tbaa !16
  %i.aez = trunc i32 %i.aev to i8
  %i.afa = add i8 %i.aez, 48
  %i.afb = getelementptr inbounds nuw i8, ptr %.20531977, i64 9 ; 2 uses
  store i8 %i.afa, ptr %i.aey, align 1, !tbaa !16
  %i.afc = add nsw i32 %.12978, -9                ; 2 uses
  %i.afd = icmp samesign ugt i32 %.12978, 9
  %i.afe = icmp ne i32 %i.adb, %.4453
  %i.aff = select i1 %i.afd, i1 %i.afe, i1 false
  br i1 %i.aff, label %.lr.ph981, label %._crit_edge982, !llvm.loop !28

._crit_edge982:                                   ; preds = %.lr.ph981, %bb.cr
  %.20531.lcssa = phi ptr [ %i.acr, %bb.cr ], [ %i.afb, %.lr.ph981 ] ; 4 uses
  %.12.lcssa = phi i32 [ %i.acw, %bb.cr ], [ %i.afc, %.lr.ph981 ] ; 5 uses
  %i.afg = and i32 %1, 4128
  %or.cond623 = icmp eq i32 %i.afg, 32
  br i1 %or.cond623, label %bb.cs, label %.preheader876

.preheader876:                                    ; preds = %._crit_edge982
  %i.afh = icmp sgt i32 %.12.lcssa, 0
  br i1 %i.afh, label %.lr.ph987.preheader, label %._crit_edge988

.lr.ph987.preheader:                              ; preds = %.preheader876
  %i.afi = zext nneg i32 %.12.lcssa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.20531.lcssa, i8 48, i64 %i.afi, i1 false), !tbaa !16
  %i.afj = zext nneg i32 %.12.lcssa to i64
  %scevgep1086 = getelementptr i8, ptr %.20531.lcssa, i64 %i.afj
  br label %._crit_edge988

bb.cs:                                            ; preds = %._crit_edge982
  %i.afk = tail call i32 @llvm.smin.i32(i32 %.12.lcssa, i32 0)
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds i8, ptr %.20531.lcssa, i64 %i.afl
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %bb.cs
  %.21532 = phi ptr [ %i.afm, %bb.cs ], [ %i.afn, %bb.ct ] ; 2 uses
  %i.afn = getelementptr inbounds i8, ptr %.21532, i64 -1 ; 3 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !16
  switch i8 %i.afo, label %.loopexit875.loopexit [
    i8 48, label %bb.ct
    i8 46, label %.loopexit875
  ]

._crit_edge988:                                   ; preds = %.lr.ph987.preheader, %.preheader876
  %.22533.lcssa = phi ptr [ %.20531.lcssa, %.preheader876 ], [ %scevgep1086, %.lr.ph987.preheader ]
  %.13.lcssa = phi i32 [ %.12.lcssa, %.preheader876 ], [ 0, %.lr.ph987.preheader ]
  %i.afp = sext i32 %.13.lcssa to i64
  %i.afq = getelementptr inbounds i8, ptr %.22533.lcssa, i64 %i.afp
  br label %.loopexit875

.loopexit875.loopexit:                            ; preds = %bb.ct
  br label %.loopexit875

.loopexit875:                                     ; preds = %bb.ct, %.loopexit875.loopexit, %.loopexit878, %._crit_edge988
  %.23 = phi ptr [ %i.afq, %._crit_edge988 ], [ %.21532, %.loopexit875.loopexit ], [ %i.acn, %.loopexit878 ], [ %i.afn, %bb.ct ] ; 4 uses
  %i.afr = and i32 %1, 8192
  %.not578 = icmp eq i32 %i.afr, 0
  %i.afs = select i1 %.not578, i8 101, i8 69
  %i.aft = getelementptr inbounds nuw i8, ptr %.23, i64 1
  store i8 %i.afs, ptr %.23, align 1, !tbaa !16
  %i.afu = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i8 %spec.select621, ptr %i.aft, align 1, !tbaa !16
  br i1 %i.aag, label %bb.cu, label %.thread828

bb.cu:                                            ; preds = %.loopexit875
  %i.afv = getelementptr inbounds nuw i8, ptr %.23, i64 3
  store i8 48, ptr %i.afu, align 1, !tbaa !16
  br label %.thread828

.thread828:                                       ; preds = %.loopexit875, %bb.cu
  %.24 = phi ptr [ %i.afv, %bb.cu ], [ %i.afu, %.loopexit875 ]
  %i.afw = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %.24, i32 noundef %spec.select622) #8
  br label %.loopexit881

bb.cv:                                            ; preds = %nd_mul2k.exit665
  %i.afx = sub nsw i32 0, %.0449
  %i.afy = and i32 %i.afx, 63
  %i.afz = mul nuw nsw i32 %i.afy, 9
  %i.aga = icmp ult i32 %.4482, %i.afz
  br i1 %i.aga, label %bb.cw, label %.thread845

bb.cw:                                            ; preds = %bb.cv
  %i.agb = xor i32 %.4482, -1
  %i.agc = call fastcc i32 @nd_round(ptr noundef %i.c, i32 noundef %.0449, i32 noundef %.3459, i32 noundef %i.agb)
  br label %.thread845

bb.cx:                                            ; preds = %.thread836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.agd = sub nuw nsw i32 64, %.0449
  %i.age = mul nuw nsw i32 %i.agd, 9              ; 2 uses
  %.not580 = icmp ult i32 %i.vb, %i.age
  br i1 %.not580, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.agf = trunc i32 %i.vb to i16
  %.lhs.trunc = add i16 %i.agf, 8
  %i.agg = udiv i16 %.lhs.trunc, 9
  %.zext1163 = zext nneg i16 %i.agg to i32
  %i.agh = sub nuw nsw i32 64, %.zext1163
  br label %bb.cz

end_hunk_1
begin_hunk_2_@lj_strfmt_wfnum:bb.a
  store i8 %i.ahi, ptr %i.ahd, align 1, !tbaa !16
  %i.ahk = trunc i32 %i.ahg to i8
  %i.ahl = add i8 %i.ahk, 48
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store i8 %i.ahl, ptr %i.ahj, align 1, !tbaa !16
  %i.ahn = mul i32 %i.agm, 8389
  %i.aho = lshr i32 %i.ahn, 23                    ; 2 uses
  %.neg46.i698 = mul nsw i32 %i.aho, -1000
  %i.ahp = add i32 %.neg46.i698, %i.agm           ; 2 uses
  %i.ahq = trunc i32 %i.aho to i8
  %i.ahr = add i8 %i.ahq, 48
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store i8 %i.ahr, ptr %i.ahm, align 1, !tbaa !16
  %i.aht = mul i32 %i.ahp, 41
  %i.ahu = lshr i32 %i.aht, 12                    ; 2 uses
  %.neg47.i699 = mul nsw i32 %i.ahu, -100
  %i.ahv = add i32 %.neg47.i699, %i.ahp           ; 2 uses
  %i.ahw = trunc i32 %i.ahu to i8
  %i.ahx = add i8 %i.ahw, 48
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.e, i64 7 ; 2 uses
  store i8 %i.ahx, ptr %i.ahs, align 1, !tbaa !16
  %i.ahz = mul i32 %i.ahv, 103
  %i.aia = lshr i32 %i.ahz, 10                    ; 2 uses
  %.neg48.i700 = mul nuw nsw i32 %i.aia, 246
  %i.aib = add i32 %.neg48.i700, %i.ahv
  %i.aic = trunc i32 %i.aia to i8
  %i.aid = add i8 %i.aic, 48
  %i.aie = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %i.aid, ptr %i.ahy, align 1, !tbaa !16
  %i.aif = trunc i32 %i.aib to i8
  %i.aig = add i8 %i.aif, 48
  store i8 %i.aig, ptr %i.aie, align 1, !tbaa !16
  %.not582929 = icmp eq i32 %.17, 0
  br i1 %.not582929, label %.critedge15, label %.lr.ph933.preheader

.lr.ph933.preheader:                              ; preds = %bb.cz
  %i.aih = sub nuw nsw i32 63, %.7
  %.neg581 = mul nsw i32 %i.aih, -9
  %i.aii = add nsw i32 %.neg581, %.17
  br label %.lr.ph933

.lr.ph933:                                        ; preds = %.lr.ph933.preheader, %bb.dd
  %.3448932 = phi i32 [ %.4, %bb.dd ], [ %i.aii, %.lr.ph933.preheader ]
  %.8931 = phi i32 [ %.9, %bb.dd ], [ %.7, %.lr.ph933.preheader ] ; 4 uses
  %.18930 = phi i32 [ %i.aio, %bb.dd ], [ %.17, %.lr.ph933.preheader ] ; 2 uses
  %i.aij = add i32 %.3448932, -1                  ; 3 uses
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aik
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !16
  %i.ain = icmp eq i8 %i.aim, 48
  br i1 %i.ain, label %bb.da, label %.critedge15

bb.da:                                            ; preds = %.lr.ph933
  %i.aio = add nsw i32 %.18930, -1                ; 2 uses
  %.not583 = icmp eq i32 %i.aij, 0
  br i1 %.not583, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.aip = icmp eq i32 %.8931, 63
  br i1 %i.aip, label %.critedge15, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aiq = add i32 %.8931, 1                      ; 2 uses
  %i.air = zext i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.air
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !17 ; 3 uses
  %i.aiu = udiv i32 %i.ait, 10000                 ; 2 uses
  %.neg.i701 = mul i32 %i.aiu, -10000
  %i.aiv = add i32 %.neg.i701, %i.ait             ; 2 uses
  %i.aiw = udiv i32 %i.ait, 100000000             ; 2 uses
  %.neg42.i702 = mul nsw i32 %i.aiw, -10000
  %i.aix = add nsw i32 %.neg42.i702, %i.aiu       ; 2 uses
  %i.aiy = trunc nuw nsw i32 %i.aiw to i8
  %i.aiz = add nuw nsw i8 %i.aiy, 48
  store i8 %i.aiz, ptr %i.e, align 1, !tbaa !16
  %i.aja = mul i32 %i.aix, 8389
  %i.ajb = lshr i32 %i.aja, 23                    ; 2 uses
  %.neg43.i703 = mul nsw i32 %i.ajb, -1000
  %i.ajc = add nsw i32 %.neg43.i703, %i.aix       ; 2 uses
  %i.ajd = trunc i32 %i.ajb to i8
  %i.aje = add i8 %i.ajd, 48
  store i8 %i.aje, ptr %i.agr, align 1, !tbaa !16
  %i.ajf = mul nsw i32 %i.ajc, 41
  %i.ajg = lshr i32 %i.ajf, 12                    ; 2 uses
  %.neg44.i704 = mul nsw i32 %i.ajg, -100
  %i.ajh = add nsw i32 %.neg44.i704, %i.ajc       ; 2 uses
  %i.aji = trunc i32 %i.ajg to i8
  %i.ajj = add i8 %i.aji, 48
  store i8 %i.ajj, ptr %i.agx, align 1, !tbaa !16
  %i.ajk = mul i32 %i.ajh, 103
  %i.ajl = lshr i32 %i.ajk, 10                    ; 2 uses
  %.neg45.i705 = mul nuw nsw i32 %i.ajl, 246
  %i.ajm = add nsw i32 %.neg45.i705, %i.ajh
  %i.ajn = trunc i32 %i.ajl to i8
  %i.ajo = add i8 %i.ajn, 48
  store i8 %i.ajo, ptr %i.ahd, align 1, !tbaa !16
  %i.ajp = trunc i32 %i.ajm to i8
  %i.ajq = add i8 %i.ajp, 48
  store i8 %i.ajq, ptr %i.ahj, align 1, !tbaa !16
  %i.ajr = mul i32 %i.aiv, 8389
  %i.ajs = lshr i32 %i.ajr, 23                    ; 2 uses
  %.neg46.i706 = mul nsw i32 %i.ajs, -1000
  %i.ajt = add i32 %.neg46.i706, %i.aiv           ; 2 uses
  %i.aju = trunc i32 %i.ajs to i8
  %i.ajv = add i8 %i.aju, 48
  store i8 %i.ajv, ptr %i.ahm, align 1, !tbaa !16
  %i.ajw = mul i32 %i.ajt, 41
  %i.ajx = lshr i32 %i.ajw, 12                    ; 2 uses
  %.neg47.i707 = mul nsw i32 %i.ajx, -100
  %i.ajy = add i32 %.neg47.i707, %i.ajt           ; 2 uses
  %i.ajz = trunc i32 %i.ajx to i8
  %i.aka = add i8 %i.ajz, 48
  store i8 %i.aka, ptr %i.ahs, align 1, !tbaa !16
  %i.akb = mul i32 %i.ajy, 103
  %i.akc = lshr i32 %i.akb, 10                    ; 2 uses
  %.neg48.i708 = mul nuw nsw i32 %i.akc, 246
  %i.akd = add i32 %.neg48.i708, %i.ajy
  %i.ake = trunc i32 %i.akc to i8
  %i.akf = add i8 %i.ake, 48
  store i8 %i.akf, ptr %i.ahy, align 1, !tbaa !16
  %i.akg = trunc i32 %i.akd to i8
  %i.akh = add i8 %i.akg, 48
  store i8 %i.akh, ptr %i.aie, align 1, !tbaa !16
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %.9 = phi i32 [ %.8931, %bb.da ], [ %i.aiq, %bb.dc ] ; 2 uses
  %.4 = phi i32 [ %i.aij, %bb.da ], [ 9, %bb.dc ]
  %.not582 = icmp eq i32 %i.aio, 0
  br i1 %.not582, label %.critedge15, label %.lr.ph933, !llvm.loop !29

.critedge15:                                      ; preds = %.lr.ph933, %bb.dd, %bb.db, %bb.cz
  %.8.lcssa = phi i32 [ %.7, %bb.cz ], [ 63, %bb.db ], [ %.9, %bb.dd ], [ %.8931, %.lr.ph933 ]
  %.19 = phi i32 [ 0, %bb.cz ], [ 0, %bb.db ], [ 0, %bb.dd ], [ %.18930, %.lr.ph933 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread845

.thread845:                                       ; preds = %.thread836, %bb.cw, %bb.cv, %.critedge15
  %.9465853 = phi i32 [ %spec.select620, %.critedge15 ], [ %i.agc, %bb.cw ], [ %spec.select620, %.thread836 ], [ %.3459, %bb.cv ] ; 3 uses
  %.20 = phi i32 [ %.19, %.critedge15 ], [ %.4482, %bb.cw ], [ %.mux, %.thread836 ], [ %.4482, %bb.cv ] ; 9 uses
  %.10 = phi i32 [ %.8.lcssa, %.critedge15 ], [ %.0449, %bb.cw ], [ %.0449.mux, %.thread836 ], [ %.0449, %bb.cv ] ; 2 uses
  %i.aki = mul i32 %.9465853, 9                   ; 5 uses
  %i.akj = zext i32 %.9465853 to i64              ; 2 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.akj ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !17 ; 2 uses
  %i.akm = or i32 %i.akl, 1
  %i.akn = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akm, i1 true)
  %i.ako = xor i32 %i.akn, 31
  %i.akp = mul nuw nsw i32 %i.ako, 77
  %i.akq = lshr i32 %i.akp, 8                     ; 5 uses
  %i.akr = add nuw nsw i32 %i.akq, 1              ; 2 uses
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr @ndigits_dec_threshold, i64 %i.aks
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !17
  %i.akv = icmp ugt i32 %i.akl, %i.aku
  %i.akw = zext i1 %i.akv to i32                  ; 5 uses
  %i.akx = and i32 %1, 4096
  %i.aky = or i32 %.20, %i.akx
  %i.akz = icmp ne i32 %i.aky, 0                  ; 2 uses
  %i.ala = zext i1 %i.akz to i32                  ; 5 uses
  %i.alb = add i32 %i.aki, %i.gh
  %i.alc = add i32 %i.alb, %.20
  %i.ald = add i32 %i.alc, %i.ala
  %i.ale = add i32 %i.ald, %i.akw
  %i.alf = add i32 %i.ale, %i.akr                 ; 7 uses
  %.not584 = icmp eq ptr %3, null
  br i1 %.not584, label %bb.de, label %lj_buf_more.exit

bb.de:                                            ; preds = %.thread845
  %i.alg = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.alf)
  %i.alh = add i32 %i.alg, 8                      ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !32
  %i.alk = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = ptrtoint ptr %i.alk to i64
  %i.aln = sub i64 %i.all, %i.alm
  %i.alo = trunc i64 %i.aln to i32
  %i.alp = icmp ugt i32 %i.alh, %i.alo
  br i1 %i.alp, label %bb.df, label %lj_buf_more.exit, !prof !15

bb.df:                                            ; preds = %bb.de
  %i.alq = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.alh) #8
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.df, %bb.de, %.thread845
  %.27 = phi ptr [ %3, %.thread845 ], [ %i.alq, %bb.df ], [ %i.alk, %bb.de ] ; 4 uses
  %i.alr = and i32 %1, 1280                       ; 2 uses
  %.not585 = icmp eq i32 %i.alr, 0
  br i1 %.not585, label %.preheader885, label %.loopexit886

.preheader885:                                    ; preds = %lj_buf_more.exit
  %i.als = add nsw i32 %i.g, -1
  %i.alt = icmp ugt i32 %i.g, %i.alf
  br i1 %i.alt, label %.lr.ph943.preheader, label %.loopexit886

.lr.ph943.preheader:                              ; preds = %.preheader885
  %i.alu = add nsw i32 %i.g, -2
  %i.alv = add i32 %.20, %i.gh
  %i.alw = add i32 %i.alv, %i.akq
  %i.alx = add i32 %i.alw, %i.ala
  %i.aly = add i32 %i.alx, %i.akw
  %i.alz = add i32 %i.aly, %i.aki
  %i.ama = sub i32 %i.alu, %i.alz
  %i.amb = zext i32 %i.ama to i64
  %i.amc = add nuw nsw i64 %i.amb, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.27, i8 32, i64 %i.amc, i1 false), !tbaa !16
  %scevgep = getelementptr i8, ptr %.27, i64 %i.amc
  %i.amd = add i32 %.20, %i.gh
  %i.ame = add i32 %i.amd, %i.akq
  %i.amf = add i32 %i.ame, %i.aki
  %i.amg = add i32 %i.amf, %i.ala
  %i.amh = add i32 %i.amg, %i.akw
  br label %.loopexit886

.loopexit886:                                     ; preds = %.lr.ph943.preheader, %.preheader885, %lj_buf_more.exit
  %.29 = phi ptr [ %.27, %lj_buf_more.exit ], [ %.27, %.preheader885 ], [ %scevgep, %.lr.ph943.preheader ] ; 3 uses
  %.16505 = phi i32 [ %i.g, %lj_buf_more.exit ], [ %i.als, %.preheader885 ], [ %i.amh, %.lr.ph943.preheader ] ; 4 uses
  br i1 %.not573, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.loopexit886
  %i.ami = getelementptr inbounds nuw i8, ptr %.29, i64 1
  store i8 %.0437, ptr %.29, align 1, !tbaa !16
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.loopexit886
  %.30 = phi ptr [ %i.ami, %bb.dg ], [ %.29, %.loopexit886 ] ; 4 uses
  %i.amj = icmp eq i32 %i.alr, 1024
  br i1 %i.amj, label %.preheader883, label %.loopexit884

.preheader883:                                    ; preds = %bb.dh
  %i.amk = add i32 %.16505, -1
  %i.aml = icmp ugt i32 %.16505, %i.alf
  br i1 %i.aml, label %.lr.ph947.preheader, label %.loopexit884

.lr.ph947.preheader:                              ; preds = %.preheader883
  %i.amm = add i32 %.16505, -2
  %i.amn = add i32 %.20, %i.gh
  %i.amo = add i32 %i.amn, %i.akq
  %i.amp = add i32 %i.amo, %i.ala
  %i.amq = add i32 %i.amp, %i.akw
  %i.amr = add i32 %i.amq, %i.aki
  %i.ams = sub i32 %i.amm, %i.amr
  %i.amt = zext i32 %i.ams to i64
  %i.amu = add nuw nsw i64 %i.amt, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.30, i8 48, i64 %i.amu, i1 false), !tbaa !16
  %scevgep1079 = getelementptr i8, ptr %.30, i64 %i.amu
  %i.amv = add i32 %.20, %i.gh
  %i.amw = add i32 %i.amv, %i.akq
  %i.amx = add i32 %i.amw, %i.aki
  %i.amy = add i32 %i.amx, %i.ala
  %i.amz = add i32 %i.amy, %i.akw
  br label %.loopexit884

.loopexit884:                                     ; preds = %.lr.ph947.preheader, %.preheader883, %bb.dh
  %.32 = phi ptr [ %.30, %bb.dh ], [ %.30, %.preheader883 ], [ %scevgep1079, %.lr.ph947.preheader ]
  %.18507 = phi i32 [ %.16505, %bb.dh ], [ %i.amk, %.preheader883 ], [ %i.amz, %.lr.ph947.preheader ] ; 4 uses
  %i.ana = load i32, ptr %i.akk, align 4, !tbaa !17
  %i.anb = tail call ptr @lj_strfmt_wint(ptr noundef %.32, i32 noundef %i.ana) #8 ; 2 uses
  %.not587950 = icmp eq i32 %.9465853, 0
  br i1 %.not587950, label %._crit_edge, label %.lr.ph953

.lr.ph953:                                        ; preds = %.loopexit884, %.lr.ph953
  %indvars.iv1080 = phi i64 [ %i.anc, %.lr.ph953 ], [ %i.akj, %.loopexit884 ]
  %.33951 = phi ptr [ %i.apb, %.lr.ph953 ], [ %i.anb, %.loopexit884 ] ; 10 uses
  %i.anc = add nsw i64 %indvars.iv1080, -1        ; 3 uses
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anc
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !17 ; 3 uses
  %i.anf = udiv i32 %i.ane, 10000                 ; 2 uses
  %.neg.i709 = mul i32 %i.anf, -10000
  %i.ang = add i32 %.neg.i709, %i.ane             ; 2 uses
  %i.anh = udiv i32 %i.ane, 100000000             ; 2 uses
  %.neg42.i710 = mul nsw i32 %i.anh, -10000
  %i.ani = add nsw i32 %.neg42.i710, %i.anf       ; 2 uses
  %i.anj = trunc nuw nsw i32 %i.anh to i8
  %i.ank = add nuw nsw i8 %i.anj, 48
  %i.anl = getelementptr inbounds nuw i8, ptr %.33951, i64 1
  store i8 %i.ank, ptr %.33951, align 1, !tbaa !16
  %i.anm = mul i32 %i.ani, 8389
  %i.ann = lshr i32 %i.anm, 23                    ; 2 uses
  %.neg43.i711 = mul nsw i32 %i.ann, -1000
  %i.ano = add nsw i32 %.neg43.i711, %i.ani       ; 2 uses
  %i.anp = trunc i32 %i.ann to i8
  %i.anq = add i8 %i.anp, 48
  %i.anr = getelementptr inbounds nuw i8, ptr %.33951, i64 2
  store i8 %i.anq, ptr %i.anl, align 1, !tbaa !16
  %i.ans = mul nsw i32 %i.ano, 41
  %i.ant = lshr i32 %i.ans, 12                    ; 2 uses
  %.neg44.i712 = mul nsw i32 %i.ant, -100
  %i.anu = add nsw i32 %.neg44.i712, %i.ano       ; 2 uses
  %i.anv = trunc i32 %i.ant to i8
  %i.anw = add i8 %i.anv, 48
  %i.anx = getelementptr inbounds nuw i8, ptr %.33951, i64 3
  store i8 %i.anw, ptr %i.anr, align 1, !tbaa !16
  %i.any = mul i32 %i.anu, 103
  %i.anz = lshr i32 %i.any, 10                    ; 2 uses
  %.neg45.i713 = mul nuw nsw i32 %i.anz, 246
  %i.aoa = add nsw i32 %.neg45.i713, %i.anu
  %i.aob = trunc i32 %i.anz to i8
  %i.aoc = add i8 %i.aob, 48
  %i.aod = getelementptr inbounds nuw i8, ptr %.33951, i64 4
  store i8 %i.aoc, ptr %i.anx, align 1, !tbaa !16
  %i.aoe = trunc i32 %i.aoa to i8
  %i.aof = add i8 %i.aoe, 48
  %i.aog = getelementptr inbounds nuw i8, ptr %.33951, i64 5
  store i8 %i.aof, ptr %i.aod, align 1, !tbaa !16
  %i.aoh = mul i32 %i.ang, 8389
  %i.aoi = lshr i32 %i.aoh, 23                    ; 2 uses
  %.neg46.i714 = mul nsw i32 %i.aoi, -1000
  %i.aoj = add i32 %.neg46.i714, %i.ang           ; 2 uses
  %i.aok = trunc i32 %i.aoi to i8
  %i.aol = add i8 %i.aok, 48
  %i.aom = getelementptr inbounds nuw i8, ptr %.33951, i64 6
  store i8 %i.aol, ptr %i.aog, align 1, !tbaa !16
  %i.aon = mul i32 %i.aoj, 41
  %i.aoo = lshr i32 %i.aon, 12                    ; 2 uses
  %.neg47.i715 = mul nsw i32 %i.aoo, -100
  %i.aop = add i32 %.neg47.i715, %i.aoj           ; 2 uses
  %i.aoq = trunc i32 %i.aoo to i8
  %i.aor = add i8 %i.aoq, 48
  %i.aos = getelementptr inbounds nuw i8, ptr %.33951, i64 7
  store i8 %i.aor, ptr %i.aom, align 1, !tbaa !16
  %i.aot = mul i32 %i.aop, 103
  %i.aou = lshr i32 %i.aot, 10                    ; 2 uses
  %.neg48.i716 = mul nuw nsw i32 %i.aou, 246
  %i.aov = add i32 %.neg48.i716, %i.aop
  %i.aow = trunc i32 %i.aou to i8
  %i.aox = add i8 %i.aow, 48
  %i.aoy = getelementptr inbounds nuw i8, ptr %.33951, i64 8
  store i8 %i.aox, ptr %i.aos, align 1, !tbaa !16
  %i.aoz = trunc i32 %i.aov to i8
  %i.apa = add i8 %i.aoz, 48
  %i.apb = getelementptr inbounds nuw i8, ptr %.33951, i64 9 ; 2 uses
  store i8 %i.apa, ptr %i.aoy, align 1, !tbaa !16
  %.not587.wide = icmp eq i64 %i.anc, 0
  br i1 %.not587.wide, label %._crit_edge, label %.lr.ph953, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph953, %.loopexit884
  %.33.lcssa = phi ptr [ %i.anb, %.loopexit884 ], [ %i.apb, %.lr.ph953 ] ; 3 uses
  br i1 %i.akz, label %bb.di, label %.loopexit881

bb.di:                                            ; preds = %._crit_edge
  %i.apc = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1 ; 2 uses
  store i8 46, ptr %.33.lcssa, align 1, !tbaa !16
  %i.apd = icmp sgt i32 %.20, 0
  %i.ape = icmp ne i32 %.10, 0
  %i.apf = select i1 %i.apd, i1 %i.ape, i1 false
  br i1 %i.apf, label %.lr.ph959, label %._crit_edge960

.lr.ph959:                                        ; preds = %bb.di, %.lr.ph959
  %.6957 = phi i32 [ %i.aph, %.lr.ph959 ], [ 0, %bb.di ]
  %.21956 = phi i32 [ %i.ari, %.lr.ph959 ], [ %.20, %bb.di ] ; 2 uses
  %.34955 = phi ptr [ %i.arh, %.lr.ph959 ], [ %i.apc, %bb.di ] ; 10 uses
  %i.apg = add nuw nsw i32 %.6957, 63
  %i.aph = and i32 %i.apg, 63                     ; 3 uses
  %i.api = zext nneg i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.api
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !17 ; 3 uses
  %i.apl = udiv i32 %i.apk, 10000                 ; 2 uses
  %.neg.i717 = mul i32 %i.apl, -10000
  %i.apm = add i32 %.neg.i717, %i.apk             ; 2 uses
  %i.apn = udiv i32 %i.apk, 100000000             ; 2 uses
  %.neg42.i718 = mul nsw i32 %i.apn, -10000
  %i.apo = add nsw i32 %.neg42.i718, %i.apl       ; 2 uses
  %i.app = trunc nuw nsw i32 %i.apn to i8
  %i.apq = add nuw nsw i8 %i.app, 48
  %i.apr = getelementptr inbounds nuw i8, ptr %.34955, i64 1
  store i8 %i.apq, ptr %.34955, align 1, !tbaa !16
  %i.aps = mul i32 %i.apo, 8389
  %i.apt = lshr i32 %i.aps, 23                    ; 2 uses
  %.neg43.i719 = mul nsw i32 %i.apt, -1000
  %i.apu = add nsw i32 %.neg43.i719, %i.apo       ; 2 uses
  %i.apv = trunc i32 %i.apt to i8
  %i.apw = add i8 %i.apv, 48
  %i.apx = getelementptr inbounds nuw i8, ptr %.34955, i64 2
  store i8 %i.apw, ptr %i.apr, align 1, !tbaa !16
  %i.apy = mul nsw i32 %i.apu, 41
  %i.apz = lshr i32 %i.apy, 12                    ; 2 uses
  %.neg44.i720 = mul nsw i32 %i.apz, -100
  %i.aqa = add nsw i32 %.neg44.i720, %i.apu       ; 2 uses
  %i.aqb = trunc i32 %i.apz to i8
  %i.aqc = add i8 %i.aqb, 48
  %i.aqd = getelementptr inbounds nuw i8, ptr %.34955, i64 3
  store i8 %i.aqc, ptr %i.apx, align 1, !tbaa !16
  %i.aqe = mul i32 %i.aqa, 103
  %i.aqf = lshr i32 %i.aqe, 10                    ; 2 uses
  %.neg45.i721 = mul nuw nsw i32 %i.aqf, 246
  %i.aqg = add nsw i32 %.neg45.i721, %i.aqa
  %i.aqh = trunc i32 %i.aqf to i8
  %i.aqi = add i8 %i.aqh, 48
  %i.aqj = getelementptr inbounds nuw i8, ptr %.34955, i64 4
  store i8 %i.aqi, ptr %i.aqd, align 1, !tbaa !16
  %i.aqk = trunc i32 %i.aqg to i8
  %i.aql = add i8 %i.aqk, 48
  %i.aqm = getelementptr inbounds nuw i8, ptr %.34955, i64 5
  store i8 %i.aql, ptr %i.aqj, align 1, !tbaa !16
  %i.aqn = mul i32 %i.apm, 8389
  %i.aqo = lshr i32 %i.aqn, 23                    ; 2 uses
  %.neg46.i722 = mul nsw i32 %i.aqo, -1000
  %i.aqp = add i32 %.neg46.i722, %i.apm           ; 2 uses
  %i.aqq = trunc i32 %i.aqo to i8
  %i.aqr = add i8 %i.aqq, 48
  %i.aqs = getelementptr inbounds nuw i8, ptr %.34955, i64 6
  store i8 %i.aqr, ptr %i.aqm, align 1, !tbaa !16
  %i.aqt = mul i32 %i.aqp, 41
  %i.aqu = lshr i32 %i.aqt, 12                    ; 2 uses
  %.neg47.i723 = mul nsw i32 %i.aqu, -100
  %i.aqv = add i32 %.neg47.i723, %i.aqp           ; 2 uses
  %i.aqw = trunc i32 %i.aqu to i8
  %i.aqx = add i8 %i.aqw, 48
  %i.aqy = getelementptr inbounds nuw i8, ptr %.34955, i64 7
  store i8 %i.aqx, ptr %i.aqs, align 1, !tbaa !16
  %i.aqz = mul i32 %i.aqv, 103
  %i.ara = lshr i32 %i.aqz, 10                    ; 2 uses
  %.neg48.i724 = mul nuw nsw i32 %i.ara, 246
  %i.arb = add i32 %.neg48.i724, %i.aqv
  %i.arc = trunc i32 %i.ara to i8
  %i.ard = add i8 %i.arc, 48
  %i.are = getelementptr inbounds nuw i8, ptr %.34955, i64 8
  store i8 %i.ard, ptr %i.aqy, align 1, !tbaa !16
  %i.arf = trunc i32 %i.arb to i8
  %i.arg = add i8 %i.arf, 48
  %i.arh = getelementptr inbounds nuw i8, ptr %.34955, i64 9 ; 2 uses
  store i8 %i.arg, ptr %i.are, align 1, !tbaa !16
  %i.ari = add nsw i32 %.21956, -9                ; 2 uses
  %i.arj = icmp samesign ugt i32 %.21956, 9
  %i.ark = icmp ne i32 %i.aph, %.10
  %i.arl = select i1 %i.arj, i1 %i.ark, i1 false
  br i1 %i.arl, label %.lr.ph959, label %._crit_edge960, !llvm.loop !31

._crit_edge960:                                   ; preds = %.lr.ph959, %bb.di
  %.34.lcssa = phi ptr [ %i.apc, %bb.di ], [ %i.arh, %.lr.ph959 ] ; 4 uses
  %.21.lcssa = phi i32 [ %.20, %bb.di ], [ %i.ari, %.lr.ph959 ] ; 5 uses
  %i.arm = and i32 %1, 4112
  %or.cond624 = icmp eq i32 %i.arm, 16
  br i1 %or.cond624, label %bb.dj, label %.preheader882

.preheader882:                                    ; preds = %._crit_edge960
  %i.arn = icmp sgt i32 %.21.lcssa, 0
  br i1 %i.arn, label %.lr.ph965.preheader, label %._crit_edge966

.lr.ph965.preheader:                              ; preds = %.preheader882
  %i.aro = zext nneg i32 %.21.lcssa to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.34.lcssa, i8 48, i64 %i.aro, i1 false), !tbaa !16
  %i.arp = zext nneg i32 %.21.lcssa to i64
  %scevgep1083 = getelementptr i8, ptr %.34.lcssa, i64 %i.arp
  br label %._crit_edge966

bb.dj:                                            ; preds = %._crit_edge960
  %i.arq = tail call i32 @llvm.smin.i32(i32 %.21.lcssa, i32 0)
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds i8, ptr %.34.lcssa, i64 %i.arr
end_hunk_2
