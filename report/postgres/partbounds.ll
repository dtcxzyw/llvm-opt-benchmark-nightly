Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/partbounds?download=true
inline.NumInlined: 222
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@satisfies_hash_partition:bb.a

bb.r:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %narrow = mul nsw i32 %i.ay, 48
  %narrow153 = add nsw i32 %narrow, 144
  %i.bk = sext i32 %narrow153 to i64
  %i.bl = tail call ptr @MemoryContextAllocZero(ptr noundef %i.bj, i64 noundef %i.bk) #11
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bl, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8            ; 6 uses
  store i32 %i.q, ptr %i.bq, align 8
  %i.br = load i16, ptr %i.az, align 4
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i16, ptr %i.az, align 4
  %i.by = sext i16 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 4 %i.bw, i64 %i.bz, i1 false)
  %i.ca = load i16, ptr %i.az, align 4
  %i.cb = icmp sgt i16 %i.ca, 0
  br i1 %i.cb, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %i.ce = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 7 uses
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = add i32 %i.cg, 3
  %i.ci = tail call i32 @get_fn_expr_argtype(ptr noundef %i.cf, i32 noundef %i.ch) #11 ; 3 uses
  %i.cj = load ptr, ptr %i.cc, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %.not154 = icmp eq i32 %i.ci, %i.cl
  br i1 %.not154, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = tail call zeroext i1 @IsBinaryCoercible(i32 noundef %i.ci, i32 noundef %i.cl) #11
  br i1 %i.cm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = trunc nuw nsw i64 %indvars.iv to i32
  %i.co = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cp = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.cq = add nuw nsw i32 %i.cn, 1
  %i.cr = load ptr, ptr %i.cc, align 8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = tail call ptr @format_type_be(i32 noundef %i.ct) #11
  %i.cv = tail call ptr @format_type_be(i32 noundef %i.ci) #11
  %i.cw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, i32 noundef %i.cq, ptr noundef %i.cu, ptr noundef %i.cv) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4857, ptr noundef nonnull @__func__.satisfies_hash_partition) #11
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cy = load ptr, ptr %i.ce, align 8
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load ptr, ptr %0, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.cx, ptr noundef %i.cz, ptr noundef %i.dc) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i16, ptr %i.az, align 4
  %i.de = sext i16 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.s, label %.thread, !llvm.loop !98

bb.w:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = load i8, ptr %i.dg, align 8, !range !6, !noundef !7
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = tail call ptr @pg_detoast_datum(ptr noundef %i.dl) #11
  %i.dn = load ptr, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call ptr @MemoryContextAllocZero(ptr noundef %i.dp, i64 noundef 192) #11
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr %i.dq, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %0, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8            ; 9 uses
  store i32 %i.q, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 4
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 3 uses
  store i32 %i.eb, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 15
  tail call void @get_typlenbyvalalign(i32 noundef %i.eb, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ef) #11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i32 %i.ei, ptr %i.ej, align 8
  %i.ek = load i16, ptr %i.dw, align 4            ; 2 uses
  %i.el = icmp sgt i16 %i.ek, 0
  br i1 %i.el, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %bb.x
  %wide.trip.count = zext nneg i16 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load i32, ptr %i.ec, align 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph170, %bb.aa
  %indvars.iv188 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next189, %bb.aa ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv188
  %i.eq = load i32, ptr %i.ep, align 4
  %.not155 = icmp eq i32 %i.eq, %i.eo
  br i1 %.not155, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = trunc nuw nsw i64 %indvars.iv188 to i32
  %i.es = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.et = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.eu = add nuw nsw i32 %i.er, 1
  %i.ev = load ptr, ptr %i.em, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv188
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = tail call ptr @format_type_be(i32 noundef %i.ex) #11
  %i.ez = load i32, ptr %i.ec, align 8
  %i.fa = tail call ptr @format_type_be(i32 noundef %i.ez) #11
  %i.fb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, i32 noundef %i.eu, ptr noundef %i.ey, ptr noundef %i.fa) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4897, ptr noundef nonnull @__func__.satisfies_hash_partition) #11
  unreachable

bb.aa:                                            ; preds = %bb.y
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.aa, %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 144
  %i.fd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load ptr, ptr %0, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.fc, ptr noundef %i.fe, ptr noundef %i.fh) #11
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.r, %._crit_edge
  %.0135 = phi ptr [ %i.dv, %._crit_edge ], [ %i.bq, %bb.r ], [ %i.bq, %bb.v ]
  tail call void @relation_close(ptr noundef %i.al, i32 noundef 0) #11
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  tail call void @relation_close(ptr noundef %i.al, i32 noundef 0) #11
  br label %bb.an

bb.ac:                                            ; preds = %.thread, %bb.k
  %.2137 = phi ptr [ %.0135, %.thread ], [ %i.ai, %bb.k ] ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.2137, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8
  %.not156 = icmp eq i32 %i.fj, 0
  br i1 %.not156, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fk = getelementptr inbounds nuw i8, ptr %.2137, i64 4
  %i.fl = load i32, ptr %i.fk, align 4            ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph178, label %.loopexit

.lr.ph178:                                        ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %.2137, i64 144
  %i.fo = getelementptr inbounds nuw i8, ptr %.2137, i64 16
  %wide.trip.count197 = zext nneg i32 %i.fl to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph178, %bb.ag
  %indvars.iv194 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next195, %bb.ag ] ; 4 uses
  %.0133175 = phi i64 [ 0, %.lr.ph178 ], [ %.1134, %bb.ag ] ; 4 uses
  %1 = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv194 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fq = load i8, ptr %i.fp, align 8, !range !6, !noundef !7
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fs = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %indvars.iv194
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv194
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = load i64, ptr %2, align 8
  %i.fw = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.fs, i32 noundef %i.fu, i64 noundef %i.fv, i64 noundef 8816678312871386365) #11
  %i.fx = shl i64 %.0133175, 54
  %i.fy = lshr i64 %.0133175, 7
  %i.fz = add i64 %i.fx, 5305509591434766563
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = add i64 %i.ga, %i.fw
  %i.gc = xor i64 %i.gb, %.0133175
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.1134 = phi i64 [ %i.gc, %bb.af ], [ %.0133175, %bb.ae ] ; 2 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.loopexit, label %bb.ae, !llvm.loop !100

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ge = load i8, ptr %i.gd, align 8, !range !6, !noundef !7
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %.thread160, label %bb.ai

.thread160:                                       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = tail call ptr @pg_detoast_datum(ptr noundef %i.gi) #11
  %i.gk = load i32, ptr %i.fi, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.2137, i64 12
  %i.gm = load i16, ptr %i.gl, align 4
  %i.gn = sext i16 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %.2137, i64 14
  %i.gp = load i8, ptr %i.go, align 2, !range !6, !noundef !7
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %.2137, i64 15
  %i.gs = load i8, ptr %i.gr, align 1
  call void @deconstruct_array(ptr noundef %i.gj, i32 noundef %i.gk, i32 noundef %i.gn, i1 noundef zeroext %i.gq, i8 noundef signext %i.gs, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #11
  %i.gt = load i32, ptr %i.a, align 4             ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.2137, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4
  %.not157 = icmp eq i32 %i.gt, %i.gv
  br i1 %.not157, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %bb.ai
  %i.gw = icmp sgt i32 %i.gt, 0
  br i1 %i.gw, label %.lr.ph173, label %._crit_edge174

.lr.ph173:                                        ; preds = %.preheader
  %i.gx = getelementptr inbounds nuw i8, ptr %.2137, i64 144
  %i.gy = getelementptr inbounds nuw i8, ptr %.2137, i64 16
  %.pre199 = load ptr, ptr %i.c, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ha = call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.hb = load i32, ptr %i.gu, align 4
  %i.hc = load i32, ptr %i.a, align 4
  %i.hd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15, i32 noundef %i.hb, i32 noundef %i.hc) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4964, ptr noundef nonnull @__func__.satisfies_hash_partition) #11
  unreachable

bb.ak:                                            ; preds = %.lr.ph173, %bb.am
  %i.he = phi i32 [ %i.gt, %.lr.ph173 ], [ %i.hu, %bb.am ]
  %i.hf = phi ptr [ %.pre199, %.lr.ph173 ], [ %i.hv, %bb.am ] ; 2 uses
  %indvars.iv191 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next192, %bb.am ] ; 3 uses
  %.2171 = phi i64 [ 0, %.lr.ph173 ], [ %.3, %bb.am ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv191
  %i.hh = load i8, ptr %i.hg, align 1, !range !6, !noundef !7
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hj = load i32, ptr %i.gy, align 8
  %i.hk = load ptr, ptr %i.b, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv191
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.gx, i32 noundef %i.hj, i64 noundef %i.hm, i64 noundef 8816678312871386365) #11
  %i.ho = shl i64 %.2171, 54
  %i.hp = lshr i64 %.2171, 7
  %i.hq = add i64 %i.ho, 5305509591434766563
  %i.hr = add i64 %i.hq, %i.hp
  %i.hs = add i64 %i.hr, %i.hn
  %i.ht = xor i64 %i.hs, %.2171
  %.pre = load ptr, ptr %i.c, align 8
  %.pre200 = load i32, ptr %i.a, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.hu = phi i32 [ %.pre200, %bb.al ], [ %i.he, %bb.ak ] ; 2 uses
  %i.hv = phi ptr [ %.pre, %bb.al ], [ %i.hf, %bb.ak ]
  %.3 = phi i64 [ %i.ht, %bb.al ], [ %.2171, %bb.ak ] ; 2 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.hw = sext i32 %i.hu to i64
  %i.hx = icmp slt i64 %indvars.iv.next192, %i.hw
  br i1 %i.hx, label %bb.ak, label %._crit_edge174, !llvm.loop !101

._crit_edge174:                                   ; preds = %bb.am, %.preheader
  %.2.lcssa = phi i64 [ 0, %.preheader ], [ %.3, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %bb.ad, %._crit_edge174
  %.5 = phi i64 [ %.2.lcssa, %._crit_edge174 ], [ 0, %bb.ad ], [ %.1134, %bb.ag ]
  %i.hy = and i64 %i.r, 2147483647
  %i.hz = urem i64 %.5, %i.hy
  %i.ia = and i64 %i.t, 2147483647
  %i.ib = icmp eq i64 %i.hz, %i.ia
  %i.ic = zext i1 %i.ib to i64
  br label %bb.an

bb.an:                                            ; preds = %.thread160, %bb.ab, %bb.a, %bb.b, %bb.c, %.loopexit
  %.3141 = phi i64 [ 0, %bb.ab ], [ %i.ic, %.loopexit ], [ 0, %.thread160 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.3141
}

declare ptr @relation_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @get_fn_expr_variadic(ptr noundef) local_unnamed_addr #2

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @get_fn_expr_argtype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @IsBinaryCoercible(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #2

declare void @fmgr_info_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @relation_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare void @get_typlenbyvalalign(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @deconstruct_array(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @calculate_partition_bound_for_merge(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @RelationGetPartitionKey(ptr noundef %0) #11 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.g [
    i32 114, label %bb.b
    i32 108, label %.preheader77
  ]

.preheader77:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not68 = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %.not68, label %.loopexit.split, label %.lr.ph.split

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.split.us.thread, label %.preheader.preheader

.split.us.thread:                                 ; preds = %bb.b
  %i.f = tail call ptr @palloc0_mul(i64 noundef 8, i64 noundef 0) #11
  tail call void @qsort_arg(ptr noundef %i.f, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @qsort_partition_rbound_cmp, ptr noundef nonnull %i.a) #11
  unreachable

.preheader.preheader:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = tail call ptr @palloc0_mul(i64 noundef 8, i64 noundef %i.i) #11 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.k, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph106, label %.split.us

.split.us:                                        ; preds = %make_one_partition_rbound.exit, %.preheader.preheader
  %.184.lcssa = phi ptr [ null, %.preheader.preheader ], [ %i.bk, %make_one_partition_rbound.exit ] ; 3 uses
  tail call void @qsort_arg(ptr noundef %i.j, i64 noundef %i.i, i64 noundef 8, ptr noundef nonnull @qsort_partition_rbound_cmp, ptr noundef nonnull %i.a) #11
  %i.p = icmp sgt i32 %i.h, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split.us
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = getelementptr i8, ptr %.184.lcssa, i64 16
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.f

.lr.ph106:                                        ; preds = %.preheader.preheader, %make_one_partition_rbound.exit
  %.184105 = phi ptr [ %i.bk, %make_one_partition_rbound.exit ], [ null, %.preheader.preheader ]
end_hunk_0
