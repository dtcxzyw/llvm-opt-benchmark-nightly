inline.NumInlined: 162
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mpeg4_encode_picture_header:bb.a
  %.026.i.i103 = phi i32 [ %i.ot, %bb.cg ], [ %.lobit, %bb.cj ], [ %.lobit, %bb.ci ] ; 3 uses
  %i.ph = add nsw i32 %i.oi, %.sink178            ; 5 uses
  store i32 %.026.i.i103, ptr %i.a, align 16, !tbaa !61
  store i32 %i.ph, ptr %i.b, align 4, !tbaa !60
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 3844
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !144 ; 4 uses
  %i.pk = icmp sgt i32 %i.ph, 1
  br i1 %i.pk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %put_bits.exit105
  %i.pl = shl i32 %.026.i.i103, 1
  %i.pm = or i32 %i.pj, %i.pl
  br label %put_bits.exit109

bb.cl:                                            ; preds = %put_bits.exit105
  %i.pn = load ptr, ptr %i.gz, align 8, !tbaa !62
  %i.po = load ptr, ptr %i.hb, align 16, !tbaa !59 ; 2 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = icmp ugt i64 %i.pr, 3
  br i1 %i.ps, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.pt = shl i32 %.026.i.i103, %i.ph
  %i.pu = sub nsw i32 1, %i.ph
  %i.pv = lshr i32 %i.pj, %i.pu
  %i.pw = or i32 %i.pv, %i.pt
  %i.px = tail call i32 @llvm.bswap.i32(i32 %i.pw)
  store i32 %i.px, ptr %i.po, align 1, !tbaa !50
  %i.py = load ptr, ptr %i.hb, align 16, !tbaa !59
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  store ptr %i.pz, ptr %i.hb, align 16, !tbaa !59
  br label %put_bits.exit109

bb.cn:                                            ; preds = %bb.cl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit109

put_bits.exit109:                                 ; preds = %bb.cm, %bb.cn, %bb.ck
  %.sink179 = phi i32 [ -1, %bb.ck ], [ 31, %bb.cn ], [ 31, %bb.cm ]
  %.026.i.i107 = phi i32 [ %i.pm, %bb.ck ], [ %i.pj, %bb.cn ], [ %i.pj, %bb.cm ] ; 2 uses
  %i.qa = add nsw i32 %i.ph, %.sink179            ; 2 uses
  store i32 %.026.i.i107, ptr %i.a, align 16, !tbaa !61
  store i32 %i.qa, ptr %i.b, align 4, !tbaa !60
  br label %bb.co

bb.co:                                            ; preds = %put_bits.exit109, %put_bits.exit101
  %i.qb = phi i32 [ %i.qa, %put_bits.exit109 ], [ %i.oi, %put_bits.exit101 ] ; 4 uses
  %i.qc = phi i32 [ %.026.i.i107, %put_bits.exit109 ], [ %.026.i.i99, %put_bits.exit101 ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !97 ; 4 uses
  %i.qf = icmp sgt i32 %i.qb, 5
  br i1 %i.qf, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qg = shl i32 %i.qc, 5
  %i.qh = or i32 %i.qg, %i.qe
  br label %put_bits.exit113

bb.cq:                                            ; preds = %bb.co
  %i.qi = load ptr, ptr %i.gz, align 8, !tbaa !62
  %i.qj = load ptr, ptr %i.hb, align 16, !tbaa !59 ; 2 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = icmp ugt i64 %i.qm, 3
  br i1 %i.qn, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.qo = shl i32 %i.qc, %i.qb
  %i.qp = sub nsw i32 5, %i.qb
  %i.qq = lshr i32 %i.qe, %i.qp
  %i.qr = or i32 %i.qq, %i.qo
  %i.qs = tail call i32 @llvm.bswap.i32(i32 %i.qr)
  store i32 %i.qs, ptr %i.qj, align 1, !tbaa !50
  %i.qt = load ptr, ptr %i.hb, align 16, !tbaa !59
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  store ptr %i.qu, ptr %i.hb, align 16, !tbaa !59
  br label %put_bits.exit113

bb.cs:                                            ; preds = %bb.cq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit113

put_bits.exit113:                                 ; preds = %bb.cr, %bb.cs, %bb.cp
  %.sink180 = phi i32 [ -5, %bb.cp ], [ 27, %bb.cs ], [ 27, %bb.cr ]
  %.026.i.i111 = phi i32 [ %i.qh, %bb.cp ], [ %i.qe, %bb.cs ], [ %i.qe, %bb.cr ] ; 3 uses
  %i.qv = add nsw i32 %i.qb, %.sink180            ; 6 uses
  store i32 %.026.i.i111, ptr %i.a, align 16, !tbaa !61
  store i32 %i.qv, ptr %i.b, align 4, !tbaa !60
  %i.qw = load i32, ptr %i.c, align 16, !tbaa !9  ; 2 uses
  %.not69 = icmp eq i32 %i.qw, 1
  br i1 %.not69, label %.thread, label %bb.ct

bb.ct:                                            ; preds = %put_bits.exit113
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !92 ; 3 uses
  %i.qz = icmp sgt i32 %i.qv, 3
  br i1 %i.qz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ra = shl i32 %.026.i.i111, 3
  %i.rb = or i32 %i.qy, %i.ra
  %i.rc = add nsw i32 %i.qv, -3
  br label %bb.cz

bb.cv:                                            ; preds = %bb.ct
  %i.rd = load ptr, ptr %i.gz, align 8, !tbaa !62
  %i.re = load ptr, ptr %i.hb, align 16, !tbaa !59 ; 2 uses
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = sub i64 %i.rf, %i.rg
  %i.ri = icmp ugt i64 %i.rh, 3
  br i1 %i.ri, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rj = shl i32 %.026.i.i111, %i.qv
  %i.rk = sub nsw i32 3, %i.qv
  %i.rl = lshr i32 %i.qy, %i.rk
  %i.rm = or i32 %i.rl, %i.rj
  %i.rn = tail call i32 @llvm.bswap.i32(i32 %i.rm)
  store i32 %i.rn, ptr %i.re, align 1, !tbaa !50
  %i.ro = load ptr, ptr %i.hb, align 16, !tbaa !59
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store ptr %i.rp, ptr %i.hb, align 16, !tbaa !59
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.rq = add nsw i32 %i.qv, 29
  %.pr.pre = load i32, ptr %i.c, align 16, !tbaa !9
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cu
  %.pr = phi i32 [ %i.qw, %bb.cu ], [ %.pr.pre, %bb.cy ]
  %i.rr = phi i32 [ %i.rb, %bb.cu ], [ %i.qy, %bb.cy ] ; 3 uses
  %i.rs = phi i32 [ %i.rc, %bb.cu ], [ %i.rq, %bb.cy ] ; 5 uses
  store i32 %i.rr, ptr %i.a, align 16, !tbaa !61
  store i32 %i.rs, ptr %i.b, align 4, !tbaa !60
  %i.rt = icmp eq i32 %.pr, 3
  br i1 %i.rt, label %bb.da, label %.thread

bb.da:                                            ; preds = %bb.cz
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !93 ; 4 uses
  %i.rw = icmp sgt i32 %i.rs, 3
  br i1 %i.rw, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.rx = shl i32 %i.rr, 3
  %i.ry = or i32 %i.rx, %i.rv
  br label %put_bits.exit121

bb.dc:                                            ; preds = %bb.da
  %i.rz = load ptr, ptr %i.gz, align 8, !tbaa !62
  %i.sa = load ptr, ptr %i.hb, align 16, !tbaa !59 ; 2 uses
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %i.se = icmp ugt i64 %i.sd, 3
  br i1 %i.se, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.sf = shl i32 %i.rr, %i.rs
  %i.sg = sub nsw i32 3, %i.rs
  %i.sh = lshr i32 %i.rv, %i.sg
  %i.si = or i32 %i.sh, %i.sf
  %i.sj = tail call i32 @llvm.bswap.i32(i32 %i.si)
  store i32 %i.sj, ptr %i.sa, align 1, !tbaa !50
  %i.sk = load ptr, ptr %i.hb, align 16, !tbaa !59
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  store ptr %i.sl, ptr %i.hb, align 16, !tbaa !59
  br label %put_bits.exit121

bb.de:                                            ; preds = %bb.dc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit121

put_bits.exit121:                                 ; preds = %bb.dd, %bb.de, %bb.db
  %.sink181 = phi i32 [ -3, %bb.db ], [ 29, %bb.de ], [ 29, %bb.dd ]
  %.026.i.i119 = phi i32 [ %i.ry, %bb.db ], [ %i.rv, %bb.de ], [ %i.rv, %bb.dd ]
  %i.sm = add nsw i32 %i.rs, %.sink181
  store i32 %.026.i.i119, ptr %i.a, align 16, !tbaa !61
  store i32 %i.sm, ptr %i.b, align 4, !tbaa !60
  br label %.thread

.thread:                                          ; preds = %put_bits.exit113, %bb.cz, %put_bits.exit121, %bb.av
  %.0 = phi i32 [ -22, %bb.av ], [ 0, %put_bits.exit121 ], [ 0, %bb.cz ], [ 0, %put_bits.exit113 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @mpeg4_encode_mb(ptr noundef %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %i.c = alloca [6 x i32], align 16               ; 10 uses
  %i.d = alloca [6 x i32], align 16               ; 10 uses
  %i.e = alloca [6 x ptr], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6440
  %i.g = load i32, ptr %i.f, align 8, !tbaa !138
  %.not = icmp eq i32 %i.g, 0                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6488 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 63 uses
  %i.j = select i1 %.not, ptr %i.i, ptr %i.h      ; 43 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.l = load i32, ptr %i.k, align 16, !tbaa !9   ; 2 uses
  %.not468 = icmp eq i32 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6456
  %spec.select518 = select i1 %.not468, ptr %i.i, ptr %i.m
  %.not470 = icmp eq i32 %i.l, 1
  %spec.select660 = select i1 %.not470, ptr %i.i, ptr %i.h
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %spec.select518, %bb.b ], [ %i.i, %bb.a ] ; 4 uses
  %i.o = phi ptr [ %spec.select660, %bb.b ], [ %i.i, %bb.a ] ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !123  ; 2 uses
  %i.t = and i32 %i.s, 512
  %.not471 = icmp ne i32 %i.t, 0
  %spec.select661 = and i1 %.not, %.not471        ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !145
  %.not473 = icmp eq i32 %i.v, 0
  br i1 %.not473, label %bb.c, label %bb.gl

bb.c:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.x = load i32, ptr %i.w, align 16, !tbaa !9
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %bb.d, label %bb.bs

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !146 ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr @mpeg4_encode_mb.mb_type_table, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !49 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !94 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader687, label %.loopexit688

.preheader687:                                    ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false), !tbaa !49
  br label %.loopexit688

.loopexit688:                                     ; preds = %.preheader687, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !147
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.an = load i32, ptr %i.am, align 4, !tbaa !148
  %i.ao = mul nsw i32 %i.an, %i.al
  %i.ap = add nsw i32 %i.ao, %i.af
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50
  %.not485 = icmp eq i8 %i.as, 0
  br i1 %.not485, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit688
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i32 0, ptr %i.av, align 4, !tbaa !49
  store i32 0, ptr %i.au, align 16, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2740
  store i32 0, ptr %i.aw, align 4, !tbaa !49
  store i32 0, ptr %i.at, align 16, !tbaa !49
  store i32 1, ptr %i.z, align 8, !tbaa !146
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !97
  %i.bb = sub nsw i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !97
  br label %.critedge503

bb.f:                                             ; preds = %.loopexit688
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !150
  %i.be = and i32 %i.bd, 8
  %.not.i519 = icmp eq i32 %i.be, 0
  br i1 %.not.i519, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load <4 x i32>, ptr %i.bf, align 4, !tbaa !49
  %i.bh = icmp slt <4 x i32> %i.bg, zeroinitializer
  %i.bi = select <4 x i1> %i.bh, <4 x i32> zeroinitializer, <4 x i32> <i32 32, i32 16, i32 8, i32 4>
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !49
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 0, i32 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !49
  %i.bp = icmp sgt i32 %i.bo, -1
  %i.bq = zext i1 %i.bp to i32
  %i.br = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bi)
  %op.rdx = or disjoint i32 %i.br, %i.bq
  %op.rdx871 = or disjoint i32 %op.rdx, %i.bm
  br label %get_b_cbp.exit

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 6200
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !49 ; 2 uses
  %i.bu = lshr i32 %i.bt, 26
  %i.bv = and i32 %i.bu, 32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 6204
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !49 ; 2 uses
  %i.by = lshr i32 %i.bx, 27
  %i.bz = and i32 %i.by, 16
  %.1.1.i = or disjoint i32 %i.bz, %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 6208
  %i.cb = load i32, ptr %i.ca, align 16, !tbaa !49 ; 2 uses
  %i.cc = lshr i32 %i.cb, 28
  %i.cd = and i32 %i.cc, 8
  %.1.2.i = or disjoint i32 %.1.1.i, %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 6212
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !49 ; 2 uses
  %i.cg = lshr i32 %i.cf, 29
  %i.ch = and i32 %i.cg, 4
  %.1.3.i = or disjoint i32 %.1.2.i, %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 6216
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = lshr i32 %i.cj, 30
  %i.cl = and i32 %i.ck, 2
  %.1.4.i = or disjoint i32 %.1.3.i, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 6220
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !49 ; 2 uses
  %.lobit.i = lshr i32 %i.cn, 31
  %.1.5.i = or disjoint i32 %.1.4.i, %.lobit.i    ; 2 uses
  %.not45.i = icmp eq i32 %.1.5.i, 0
  br i1 %.not45.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !151
  %i.cq = lshr i32 %i.cp, 1
  %i.cr = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 0)
  %i.cs = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 0)
  %i.ct = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 0)
  %i.cu = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 0)
  %i.cv = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 0)
  %i.cw = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 0)
  %.140.1.i = add nsw i32 %i.cv, %i.cw
  %.140.2.i = add nsw i32 %.140.1.i, %i.cu
  %.140.3.i = add nsw i32 %.140.2.i, %i.ct
  %.140.4.i = add nsw i32 %.140.3.i, %i.cs
  %.140.5.i = add nsw i32 %.140.4.i, %i.cr
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !149
  %i.cz = or i32 %2, %i.cy
  %i.da = or i32 %i.cz, %3
  %i.db = or i32 %i.da, %i.ad
  %i.dc = icmp eq i32 %i.db, 0
  %spec.select.i = select i1 %i.dc, i32 -10, i32 -6
  %i.dd = mul nsw i32 %spec.select.i, %i.cq
  %.not46.i = icmp sgt i32 %i.dd, %.140.5.i
  %.2.i = select i1 %.not46.i, i32 %.1.5.i, i32 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.i = phi i32 [ %.2.i, %bb.h ], [ 0, %bb.g ]  ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 6248 ; 6 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !49
  %i.di = icmp sgt i32 %i.dh, -1
  %i.dj = and i32 %.3.i, 32
  %i.dk = icmp eq i32 %i.dj, 0
  %or.cond.i = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.de, align 4, !tbaa !49
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !152
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !153
  tail call void %i.dl(ptr noundef %i.dm) #14, !inline_history !154
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !49
  %i.dp = icmp sgt i32 %i.do, -1
  %i.dq = and i32 %.3.i, 16
  %i.dr = icmp eq i32 %i.dq, 0
end_hunk_0
begin_hunk_1_@mpeg4_encode_mb:bb.a
  br i1 %or.cond6, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %put_bits.exit604
  %i.aoy = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !155 ; 4 uses
  %i.apa = icmp sgt i32 %.0.i.i603, 1
  br i1 %i.apa, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.apb = shl i32 %.026.i.i602, 1
  %i.apc = or i32 %i.aoz, %i.apb
  br label %put_bits.exit608

bb.gf:                                            ; preds = %bb.gd
  %i.apd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !62
  %i.apf = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !59 ; 2 uses
  %i.aph = ptrtoint ptr %i.ape to i64
  %i.api = ptrtoint ptr %i.apg to i64
  %i.apj = sub i64 %i.aph, %i.api
  %i.apk = icmp ugt i64 %i.apj, 3
  br i1 %i.apk, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.apl = shl i32 %.026.i.i602, %.0.i.i603
  %i.apm = sub nsw i32 1, %.0.i.i603
  %i.apn = lshr i32 %i.aoz, %i.apm
  %i.apo = or i32 %i.apn, %i.apl
  %i.app = tail call i32 @llvm.bswap.i32(i32 %i.apo)
  store i32 %i.app, ptr %i.apg, align 1, !tbaa !50
  %i.apq = load ptr, ptr %i.apf, align 8, !tbaa !59
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 4
  store ptr %i.apr, ptr %i.apf, align 8, !tbaa !59
  br label %put_bits.exit608

bb.gh:                                            ; preds = %bb.gf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit608

put_bits.exit608:                                 ; preds = %bb.gg, %bb.gh, %bb.ge
  %.sink836 = phi i32 [ -1, %bb.ge ], [ 31, %bb.gh ], [ 31, %bb.gg ]
  %.026.i.i606 = phi i32 [ %i.apc, %bb.ge ], [ %i.aoz, %bb.gh ], [ %i.aoz, %bb.gg ]
  %i.aps = add nsw i32 %.0.i.i603, %.sink836
  store i32 %.026.i.i606, ptr %i.j, align 8, !tbaa !61
  store i32 %i.aps, ptr %i.any, align 4, !tbaa !60
  br label %bb.gi

bb.gi:                                            ; preds = %put_bits.exit608, %put_bits.exit604
  br i1 %spec.select661, label %bb.gj, label %.loopexit689.loopexit

bb.gj:                                            ; preds = %bb.gi
  %i.apt = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.apu = load ptr, ptr %i.apt, align 16, !tbaa !59
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !81
  %i.apx = ptrtoint ptr %i.apu to i64
  %i.apy = ptrtoint ptr %i.apw to i64
  %i.apz = sub i64 %i.apx, %i.apy
  %i.aqa = load i32, ptr %i.yy, align 4, !tbaa !60
  %.tr.i.i609 = trunc i64 %i.apz to i32
  %i.aqb = shl i32 %.tr.i.i609, 3
  %reass.sub.i.i610 = sub i32 %i.aqb, %i.aqa
  %i.aqc = add i32 %reass.sub.i.i610, 32          ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.aqe = load i32, ptr %i.aqd, align 16, !tbaa !82
  store i32 %i.aqc, ptr %i.aqd, align 16, !tbaa !82
  %i.aqf = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !83
  %i.aqh = sub i32 %i.aqg, %i.aqe
  %i.aqi = add i32 %i.aqh, %i.aqc
  store i32 %i.aqi, ptr %i.aqf, align 4, !tbaa !83
  br label %.loopexit689.loopexit

.loopexit689.loopexit:                            ; preds = %bb.gj, %bb.gi
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 4 uses
  %i.aqm = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.aqn = load ptr, ptr %i.aqj, align 16, !tbaa !175
  %i.aqo = load i32, ptr %i.aqk, align 16, !tbaa !49
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = getelementptr inbounds [4 x i8], ptr %i.aqn, i64 %i.aqp ; 2 uses
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !57
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = load i32, ptr %i.a, align 4, !tbaa !49
  %i.aqu = sub nsw i32 %i.aqs, %i.aqt
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqq, i64 2
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !57
  %i.aqx = sext i16 %i.aqw to i32
  %i.aqy = load i32, ptr %i.b, align 4, !tbaa !49
  %i.aqz = sub nsw i32 %i.aqx, %i.aqy
  %i.ara = load i32, ptr %i.aql, align 8, !tbaa !92 ; 2 uses
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.aqu, i32 noundef %i.ara) #14
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.aqz, i32 noundef %i.ara) #14
  %i.arb = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.arc = load ptr, ptr %i.aqj, align 16, !tbaa !175
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 3124
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !49
  %i.arf = sext i32 %i.are to i64
  %i.arg = getelementptr inbounds [4 x i8], ptr %i.arc, i64 %i.arf ; 2 uses
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !57
  %i.ari = sext i16 %i.arh to i32
  %i.arj = load i32, ptr %i.a, align 4, !tbaa !49
  %i.ark = sub nsw i32 %i.ari, %i.arj
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 2
  %i.arm = load i16, ptr %i.arl, align 2, !tbaa !57
  %i.arn = sext i16 %i.arm to i32
  %i.aro = load i32, ptr %i.b, align 4, !tbaa !49
  %i.arp = sub nsw i32 %i.arn, %i.aro
  %i.arq = load i32, ptr %i.aql, align 8, !tbaa !92 ; 2 uses
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.ark, i32 noundef %i.arq) #14
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.arp, i32 noundef %i.arq) #14
  %i.arr = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.ars = load ptr, ptr %i.aqj, align 16, !tbaa !175
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.aru = load i32, ptr %i.art, align 8, !tbaa !49
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds [4 x i8], ptr %i.ars, i64 %i.arv ; 2 uses
  %i.arx = load i16, ptr %i.arw, align 2, !tbaa !57
  %i.ary = sext i16 %i.arx to i32
  %i.arz = load i32, ptr %i.a, align 4, !tbaa !49
  %i.asa = sub nsw i32 %i.ary, %i.arz
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arw, i64 2
  %i.asc = load i16, ptr %i.asb, align 2, !tbaa !57
  %i.asd = sext i16 %i.asc to i32
  %i.ase = load i32, ptr %i.b, align 4, !tbaa !49
  %i.asf = sub nsw i32 %i.asd, %i.ase
  %i.asg = load i32, ptr %i.aql, align 8, !tbaa !92 ; 2 uses
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.asa, i32 noundef %i.asg) #14
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.asf, i32 noundef %i.asg) #14
  %i.ash = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.asi = load ptr, ptr %i.aqj, align 16, !tbaa !175
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !49
  %i.asl = sext i32 %i.ask to i64
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.asl ; 2 uses
  %i.asn = load i16, ptr %i.asm, align 2, !tbaa !57
  %i.aso = sext i16 %i.asn to i32
  %i.asp = load i32, ptr %i.a, align 4, !tbaa !49
  %i.asq = sub nsw i32 %i.aso, %i.asp
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asm, i64 2
  %i.ass = load i16, ptr %i.asr, align 2, !tbaa !57
  %i.ast = sext i16 %i.ass to i32
  %i.asu = load i32, ptr %i.b, align 4, !tbaa !49
  %i.asv = sub nsw i32 %i.ast, %i.asu
  %i.asw = load i32, ptr %i.aql, align 8, !tbaa !92 ; 2 uses
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.asq, i32 noundef %i.asw) #14
  call void @ff_h263_encode_motion(ptr noundef nonnull %i.i, i32 noundef %i.asv, i32 noundef %i.asw) #14
  br label %.loopexit689

.loopexit689:                                     ; preds = %.loopexit689.loopexit, %put_bits.exit596, %bb.eg
  br i1 %spec.select661, label %bb.gk, label %.critedge512

bb.gk:                                            ; preds = %.loopexit689
  %i.asx = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.asy = load ptr, ptr %i.asx, align 16, !tbaa !59
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !81
  %i.atb = ptrtoint ptr %i.asy to i64
  %i.atc = ptrtoint ptr %i.ata to i64
  %i.atd = sub i64 %i.atb, %i.atc
  %i.ate = load i32, ptr %i.yy, align 4, !tbaa !60
  %.tr.i.i611 = trunc i64 %i.atd to i32
  %i.atf = shl i32 %.tr.i.i611, 3
  %reass.sub.i.i612 = sub i32 %i.atf, %i.ate
  %i.atg = add i32 %reass.sub.i.i612, 32          ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 4 uses
  %i.ati = load i32, ptr %i.ath, align 16, !tbaa !82
  store i32 %i.atg, ptr %i.ath, align 16, !tbaa !82
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 6332 ; 2 uses
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !85
  %i.atl = sub i32 %i.atk, %i.ati
  %i.atm = add i32 %i.atl, %i.atg
  store i32 %i.atm, ptr %i.atj, align 4, !tbaa !85
  call fastcc void @mpeg4_encode_blocks_inter(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.n)
  %i.atn = load ptr, ptr %i.asx, align 16, !tbaa !59
  %i.ato = load ptr, ptr %i.asz, align 8, !tbaa !81
  %i.atp = ptrtoint ptr %i.atn to i64
  %i.atq = ptrtoint ptr %i.ato to i64
  %i.atr = sub i64 %i.atp, %i.atq
  %i.ats = load i32, ptr %i.yy, align 4, !tbaa !60
  %.tr.i.i613 = trunc i64 %i.atr to i32
  %i.att = shl i32 %.tr.i.i613, 3
  %reass.sub.i.i614 = sub i32 %i.att, %i.ats
  %i.atu = add i32 %reass.sub.i.i614, 32          ; 2 uses
  %i.atv = load i32, ptr %i.ath, align 16, !tbaa !82
  store i32 %i.atu, ptr %i.ath, align 16, !tbaa !82
  %i.atw = getelementptr inbounds nuw i8, ptr %0, i64 6340 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !86
  %i.aty = sub i32 %i.atx, %i.atv
  %i.atz = add i32 %i.aty, %i.atu
  store i32 %i.atz, ptr %i.atw, align 4, !tbaa !86
  br label %.critedge503

.critedge512:                                     ; preds = %.loopexit689
  call fastcc void @mpeg4_encode_blocks_inter(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.n)
  br label %.critedge503

bb.gl:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.aub = load ptr, ptr %i.aua, align 16, !tbaa !176 ; 6 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 3144 ; 2 uses
  %i.aue = load i32, ptr %i.auc, align 16, !tbaa !49
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.auf ; 4 uses
  %i.auh = load i32, ptr %i.aud, align 8, !tbaa !49 ; 2 uses
  %i.aui = getelementptr inbounds i8, ptr %i.aug, i64 -2
  %i.auj = load i16, ptr %i.aui, align 2, !tbaa !57
  %i.auk = sext i16 %i.auj to i32                 ; 2 uses
  %i.aul = xor i32 %i.auh, -1
  %i.aum = sext i32 %i.aul to i64
  %i.aun = getelementptr inbounds [2 x i8], ptr %i.aug, i64 %i.aum
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !57
  %i.aup = sext i16 %i.auo to i32                 ; 2 uses
  %i.auq = sub nsw i32 0, %i.auh
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [2 x i8], ptr %i.aug, i64 %i.aur
  %i.aut = load i16, ptr %i.aus, align 2, !tbaa !57
  %i.auu = sext i16 %i.aut to i32                 ; 2 uses
  %i.auv = sub nsw i32 %i.auk, %i.aup
  %i.auw = tail call i32 @llvm.abs.i32(i32 %i.auv, i1 true)
  %i.aux = sub nsw i32 %i.aup, %i.auu
  %i.auy = tail call i32 @llvm.abs.i32(i32 %i.aux, i1 true)
  %i.auz = icmp samesign ult i32 %i.auw, %i.auy   ; 3 uses
  %..i = zext i1 %i.auz to i32
  %.18.i = select i1 %i.auz, i32 %i.auu, i32 %i.auk
  store i32 %..i, ptr %i.d, align 16, !tbaa !49
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ava = load i32, ptr %.in, align 8, !tbaa !49 ; 5 uses
  %i.avb = ashr i32 %i.ava, 1                     ; 3 uses
  %i.avc = add nsw i32 %.18.i, %i.avb
  %i.avd = sext i32 %i.avc to i64
  %i.ave = sext i32 %i.ava to i64
  %i.avf = getelementptr inbounds [4 x i8], ptr @ff_inverse, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !49
  %i.avh = zext i32 %i.avg to i64                 ; 3 uses
  %i.avi = mul nsw i64 %i.avd, %i.avh
  %i.avj = lshr i64 %i.avi, 32
  %i.avk = trunc nuw i64 %i.avj to i32
  %i.avl = load i16, ptr %1, align 2, !tbaa !57
  %i.avm = sext i16 %i.avl to i32                 ; 2 uses
  %i.avn = sub nsw i32 %i.avm, %i.avk
  store i32 %i.avn, ptr %i.c, align 16, !tbaa !49
  %i.avo = mul nsw i32 %i.ava, %i.avm
  %i.avp = tail call i32 @llvm.smax.i32(i32 %i.avo, i32 0)
  %i.avq = tail call i32 @llvm.umin.i32(i32 %i.avp, i32 2047)
  %i.avr = trunc nuw nsw i32 %i.avq to i16
  store i16 %i.avr, ptr %i.aug, align 2, !tbaa !57
  %i.avs = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 3124
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !49
  %i.avv = sext i32 %i.avu to i64
  %i.avw = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.avv ; 4 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 3148
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !49 ; 2 uses
  %i.avz = getelementptr inbounds i8, ptr %i.avw, i64 -2
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !57
  %i.awb = sext i16 %i.awa to i32                 ; 2 uses
  %i.awc = xor i32 %i.avy, -1
  %i.awd = sext i32 %i.awc to i64
  %i.awe = getelementptr inbounds [2 x i8], ptr %i.avw, i64 %i.awd
  %i.awf = load i16, ptr %i.awe, align 2, !tbaa !57
  %i.awg = sext i16 %i.awf to i32                 ; 2 uses
  %i.awh = sub nsw i32 0, %i.avy
  %i.awi = sext i32 %i.awh to i64
  %i.awj = getelementptr inbounds [2 x i8], ptr %i.avw, i64 %i.awi
  %i.awk = load i16, ptr %i.awj, align 2, !tbaa !57
  %i.awl = sext i16 %i.awk to i32                 ; 2 uses
  %i.awm = sub nsw i32 %i.awb, %i.awg
  %i.awn = tail call i32 @llvm.abs.i32(i32 %i.awm, i1 true)
  %i.awo = sub nsw i32 %i.awg, %i.awl
  %i.awp = tail call i32 @llvm.abs.i32(i32 %i.awo, i1 true)
  %i.awq = icmp samesign ult i32 %i.awn, %i.awp   ; 3 uses
  %..i.1 = zext i1 %i.awq to i32
  %.18.i.1 = select i1 %i.awq, i32 %i.awl, i32 %i.awb
  store i32 %..i.1, ptr %i.avs, align 4, !tbaa !49
  %i.awr = add nsw i32 %.18.i.1, %i.avb
  %i.aws = sext i32 %i.awr to i64
  %i.awt = mul nsw i64 %i.aws, %i.avh
  %i.awu = lshr i64 %i.awt, 32
  %i.awv = trunc nuw i64 %i.awu to i32
  %i.aww = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.awx = load i16, ptr %i.aww, align 2, !tbaa !57
  %i.awy = sext i16 %i.awx to i32                 ; 2 uses
  %i.awz = sub nsw i32 %i.awy, %i.awv
  %i.axa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.awz, ptr %i.axa, align 4, !tbaa !49
  %i.axb = mul nsw i32 %i.ava, %i.awy
  %i.axc = tail call i32 @llvm.smax.i32(i32 %i.axb, i32 0)
  %i.axd = tail call i32 @llvm.umin.i32(i32 %i.axc, i32 2047)
  %i.axe = trunc nuw nsw i32 %i.axd to i16
  store i16 %i.axe, ptr %i.avw, align 2, !tbaa !57
  %i.axf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.axg = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.axh = load i32, ptr %i.axg, align 8, !tbaa !49
  %i.axi = sext i32 %i.axh to i64
  %i.axj = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.axi ; 4 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.axl = load i32, ptr %i.axk, align 16, !tbaa !49 ; 2 uses
  %i.axm = getelementptr inbounds i8, ptr %i.axj, i64 -2
  %i.axn = load i16, ptr %i.axm, align 2, !tbaa !57
  %i.axo = sext i16 %i.axn to i32                 ; 2 uses
  %i.axp = xor i32 %i.axl, -1
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr inbounds [2 x i8], ptr %i.axj, i64 %i.axq
  %i.axs = load i16, ptr %i.axr, align 2, !tbaa !57
  %i.axt = sext i16 %i.axs to i32                 ; 2 uses
  %i.axu = sub nsw i32 0, %i.axl
  %i.axv = sext i32 %i.axu to i64
  %i.axw = getelementptr inbounds [2 x i8], ptr %i.axj, i64 %i.axv
  %i.axx = load i16, ptr %i.axw, align 2, !tbaa !57
  %i.axy = sext i16 %i.axx to i32                 ; 2 uses
  %i.axz = sub nsw i32 %i.axo, %i.axt
  %i.aya = tail call i32 @llvm.abs.i32(i32 %i.axz, i1 true)
  %i.ayb = sub nsw i32 %i.axt, %i.axy
  %i.ayc = tail call i32 @llvm.abs.i32(i32 %i.ayb, i1 true)
  %i.ayd = icmp samesign ult i32 %i.aya, %i.ayc   ; 3 uses
  %..i.2 = zext i1 %i.ayd to i32
  %.18.i.2 = select i1 %i.ayd, i32 %i.axy, i32 %i.axo
  store i32 %..i.2, ptr %i.axf, align 8, !tbaa !49
  %i.aye = add nsw i32 %.18.i.2, %i.avb
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = mul nsw i64 %i.ayf, %i.avh
  %i.ayh = lshr i64 %i.ayg, 32
  %i.ayi = trunc nuw i64 %i.ayh to i32
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !57
  %i.ayl = sext i16 %i.ayk to i32                 ; 2 uses
  %i.aym = sub nsw i32 %i.ayl, %i.ayi
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.aym, ptr %i.ayn, align 8, !tbaa !49
  %i.ayo = mul nsw i32 %i.ava, %i.ayl
  %i.ayp = tail call i32 @llvm.smax.i32(i32 %i.ayo, i32 0)
  %i.ayq = tail call i32 @llvm.umin.i32(i32 %i.ayp, i32 2047)
  %i.ayr = trunc nuw nsw i32 %i.ayq to i16
  store i16 %i.ayr, ptr %i.axj, align 2, !tbaa !57
  %i.ays = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ayt = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !49
  %i.ayv = sext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.ayv ; 4 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %0, i64 3156
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !49 ; 2 uses
  %i.ayz = getelementptr inbounds i8, ptr %i.ayw, i64 -2
  %i.aza = load i16, ptr %i.ayz, align 2, !tbaa !57
  %i.azb = sext i16 %i.aza to i32                 ; 2 uses
  %i.azc = xor i32 %i.ayy, -1
  %i.azd = sext i32 %i.azc to i64
  %i.aze = getelementptr inbounds [2 x i8], ptr %i.ayw, i64 %i.azd
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !57
  %i.azg = sext i16 %i.azf to i32                 ; 2 uses
  %i.azh = sub nsw i32 0, %i.ayy
  %i.azi = sext i32 %i.azh to i64
  %i.azj = getelementptr inbounds [2 x i8], ptr %i.ayw, i64 %i.azi
  %i.azk = load i16, ptr %i.azj, align 2, !tbaa !57
  %i.azl = sext i16 %i.azk to i32                 ; 2 uses
  %i.azm = sub nsw i32 %i.azb, %i.azg
  %i.azn = tail call i32 @llvm.abs.i32(i32 %i.azm, i1 true)
  %i.azo = sub nsw i32 %i.azg, %i.azl
  %i.azp = tail call i32 @llvm.abs.i32(i32 %i.azo, i1 true)
  %i.azq = icmp samesign ult i32 %i.azn, %i.azp   ; 3 uses
  %..i.3 = zext i1 %i.azq to i32
  %.18.i.3 = select i1 %i.azq, i32 %i.azl, i32 %i.azb
  store i32 %..i.3, ptr %i.ays, align 4, !tbaa !49
  %i.azr = load i32, ptr %.in, align 8, !tbaa !49 ; 3 uses
  %i.azs = ashr i32 %i.azr, 1
  %i.azt = add nsw i32 %.18.i.3, %i.azs
  %i.azu = sext i32 %i.azt to i64
  %i.azv = sext i32 %i.azr to i64
  %i.azw = getelementptr inbounds [4 x i8], ptr @ff_inverse, i64 %i.azv
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !49
  %i.azy = zext i32 %i.azx to i64
  %i.azz = mul nsw i64 %i.azu, %i.azy
  %i.baa = lshr i64 %i.azz, 32
  %i.bab = trunc nuw i64 %i.baa to i32
  %i.bac = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !57
  %i.bae = sext i16 %i.bad to i32                 ; 2 uses
  %i.baf = sub nsw i32 %i.bae, %i.bab
  %i.bag = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.baf, ptr %i.bag, align 4, !tbaa !49
  %i.bah = mul nsw i32 %i.azr, %i.bae
  %i.bai = tail call i32 @llvm.smax.i32(i32 %i.bah, i32 0)
  %i.baj = tail call i32 @llvm.umin.i32(i32 %i.bai, i32 2047)
  %i.bak = trunc nuw nsw i32 %i.baj to i16
  store i16 %i.bak, ptr %i.ayw, align 2, !tbaa !57
  %i.bal = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.ban = load i32, ptr %i.bam, align 16, !tbaa !49
  %i.bao = sext i32 %i.ban to i64
  %i.bap = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.bao ; 4 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.bar = load i32, ptr %i.baq, align 8, !tbaa !49 ; 2 uses
  %i.bas = getelementptr inbounds i8, ptr %i.bap, i64 -2
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !57
  %i.bau = sext i16 %i.bat to i32                 ; 2 uses
  %i.bav = xor i32 %i.bar, -1
  %i.baw = sext i32 %i.bav to i64
  %i.bax = getelementptr inbounds [2 x i8], ptr %i.bap, i64 %i.baw
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !57
  %i.baz = sext i16 %i.bay to i32                 ; 2 uses
  %i.bba = sub nsw i32 0, %i.bar
  %i.bbb = sext i32 %i.bba to i64
  %i.bbc = getelementptr inbounds [2 x i8], ptr %i.bap, i64 %i.bbb
  %i.bbd = load i16, ptr %i.bbc, align 2, !tbaa !57
  %i.bbe = sext i16 %i.bbd to i32                 ; 2 uses
  %i.bbf = sub nsw i32 %i.bau, %i.baz
  %i.bbg = tail call i32 @llvm.abs.i32(i32 %i.bbf, i1 true)
  %i.bbh = sub nsw i32 %i.baz, %i.bbe
  %i.bbi = tail call i32 @llvm.abs.i32(i32 %i.bbh, i1 true)
  %i.bbj = icmp samesign ult i32 %i.bbg, %i.bbi   ; 3 uses
  %..i.4 = zext i1 %i.bbj to i32
  %.18.i.4 = select i1 %i.bbj, i32 %i.bbe, i32 %i.bau
  store i32 %..i.4, ptr %i.bal, align 16, !tbaa !49
  %.in.4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bbk = load i32, ptr %.in.4, align 4, !tbaa !49 ; 4 uses
  %i.bbl = ashr i32 %i.bbk, 1                     ; 2 uses
  %i.bbm = add nsw i32 %.18.i.4, %i.bbl
  %i.bbn = sext i32 %i.bbm to i64
  %i.bbo = sext i32 %i.bbk to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr @ff_inverse, i64 %i.bbo
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !49
  %i.bbr = zext i32 %i.bbq to i64                 ; 2 uses
  %i.bbs = mul nsw i64 %i.bbn, %i.bbr
  %i.bbt = lshr i64 %i.bbs, 32
  %i.bbu = trunc nuw i64 %i.bbt to i32
  %i.bbv = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bbw = load i16, ptr %i.bbv, align 2, !tbaa !57
  %i.bbx = sext i16 %i.bbw to i32                 ; 2 uses
  %i.bby = sub nsw i32 %i.bbx, %i.bbu
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.bby, ptr %i.bbz, align 16, !tbaa !49
  %i.bca = mul nsw i32 %i.bbk, %i.bbx
  %i.bcb = tail call i32 @llvm.smax.i32(i32 %i.bca, i32 0)
  %i.bcc = tail call i32 @llvm.umin.i32(i32 %i.bcb, i32 2047)
  %i.bcd = trunc nuw nsw i32 %i.bcc to i16
  store i16 %i.bcd, ptr %i.bap, align 2, !tbaa !57
  %i.bce = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !49
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.bch ; 4 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 3164
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !49 ; 2 uses
  %i.bcl = getelementptr inbounds i8, ptr %i.bci, i64 -2
  %i.bcm = load i16, ptr %i.bcl, align 2, !tbaa !57
  %i.bcn = sext i16 %i.bcm to i32                 ; 2 uses
  %i.bco = xor i32 %i.bck, -1
  %i.bcp = sext i32 %i.bco to i64
  %i.bcq = getelementptr inbounds [2 x i8], ptr %i.bci, i64 %i.bcp
  %i.bcr = load i16, ptr %i.bcq, align 2, !tbaa !57
  %i.bcs = sext i16 %i.bcr to i32                 ; 2 uses
  %i.bct = sub nsw i32 0, %i.bck
  %i.bcu = sext i32 %i.bct to i64
  %i.bcv = getelementptr inbounds [2 x i8], ptr %i.bci, i64 %i.bcu
  %i.bcw = load i16, ptr %i.bcv, align 2, !tbaa !57
  %i.bcx = sext i16 %i.bcw to i32                 ; 2 uses
  %i.bcy = sub nsw i32 %i.bcn, %i.bcs
  %i.bcz = tail call i32 @llvm.abs.i32(i32 %i.bcy, i1 true)
  %i.bda = sub nsw i32 %i.bcs, %i.bcx
  %i.bdb = tail call i32 @llvm.abs.i32(i32 %i.bda, i1 true)
  %i.bdc = icmp samesign ult i32 %i.bcz, %i.bdb   ; 3 uses
  %..i.5 = zext i1 %i.bdc to i32
  %.18.i.5 = select i1 %i.bdc, i32 %i.bcx, i32 %i.bcn
  store i32 %..i.5, ptr %i.bce, align 4, !tbaa !49
  %i.bdd = add nsw i32 %.18.i.5, %i.bbl
  %i.bde = sext i32 %i.bdd to i64
  %i.bdf = mul nsw i64 %i.bde, %i.bbr
  %i.bdg = lshr i64 %i.bdf, 32
  %i.bdh = trunc nuw i64 %i.bdg to i32
  %i.bdi = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bdj = load i16, ptr %i.bdi, align 2, !tbaa !57
  %i.bdk = sext i16 %i.bdj to i32                 ; 2 uses
  %i.bdl = sub nsw i32 %i.bdk, %i.bdh
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.bdl, ptr %i.bdm, align 4, !tbaa !49
  %i.bdn = mul nsw i32 %i.bbk, %i.bdk
  %i.bdo = tail call i32 @llvm.smax.i32(i32 %i.bdn, i32 0)
  %i.bdp = tail call i32 @llvm.umin.i32(i32 %i.bdo, i32 2047)
  %i.bdq = trunc nuw nsw i32 %i.bdp to i16
  store i16 %i.bdq, ptr %i.bci, align 2, !tbaa !57
  %i.bdr = and i32 %i.s, 16777216
  %.not496 = icmp eq i32 %i.bdr, 0
  br i1 %.not496, label %.preheader691, label %bb.gm

.preheader691:                                    ; preds = %bb.gl
  %i.bds = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  store ptr %i.bds, ptr %i.e, align 16, !tbaa !163
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bds, ptr %i.bdt, align 8, !tbaa !163
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.bds, ptr %i.bdu, align 16, !tbaa !163
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.bds, ptr %i.bdv, align 8, !tbaa !163
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.bds, ptr %i.bdw, align 16, !tbaa !163
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.bds, ptr %i.bdx, align 8, !tbaa !163
  br label %.loopexit692

bb.gm:                                            ; preds = %bb.gl
  %i.bdy = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !46 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.0.0.copyload = load <6 x i32>, ptr %i.bea, align 4 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !177 ; 7 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %0, i64 6136 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.bei = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %0, i64 6644
  %i.ben = getelementptr inbounds nuw i8, ptr %0, i64 6708
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 1817 ; 10 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 10 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 1818 ; 10 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 10 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 1819 ; 10 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 10 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 10 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 10 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 1821 ; 10 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 10 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 1822 ; 10 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 10 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %0, i64 1823 ; 9 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 9 uses
  br label %bb.gn

bb.gn:                                            ; preds = %get_block_rate.exit217.i, %bb.gm
  %indvars.iv.i = phi i64 [ 0, %bb.gm ], [ %indvars.iv.next.i, %get_block_rate.exit217.i ] ; 9 uses
  %.0192237.i = phi i32 [ 0, %bb.gm ], [ %i.cbm, %get_block_rate.exit217.i ]
  %i.bfc = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv.i ; 59 uses
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.bea, i64 %indvars.iv.i ; 3 uses
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !49 ; 3 uses
  %.not31.i.i = icmp slt i32 %i.bfe, 1
  br i1 %.not31.i.i, label %get_block_rate.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.gn
  %i.bff = zext nneg i32 %i.bfe to i64
  %i.bfg = add nuw i32 %i.bfe, 1
  %wide.trip.count.i.i = zext i32 %i.bfg to i64
  br label %bb.go

bb.go:                                            ; preds = %bb.gv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gv ] ; 5 uses
  %.034.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.gv ] ; 2 uses
  %.02533.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.gv ] ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.beb, i64 %indvars.iv.i.i
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !50
  %i.bfj = zext i8 %i.bfi to i64
  %i.bfk = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bfj
  %i.bfl = load i16, ptr %i.bfk, align 2, !tbaa !57 ; 2 uses
  %.not30.i.i = icmp eq i16 %i.bfl, 0
  br i1 %.not30.i.i, label %bb.gv, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bfm = sext i16 %i.bfl to i32
  %i.bfn = add nsw i32 %i.bfm, 64                 ; 2 uses
  %i.bfo = icmp ult i32 %i.bfn, 128
  br i1 %i.bfo, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  %i.bfp = icmp samesign ult i64 %indvars.iv.i.i, %i.bff
  %i.bfq = xor i32 %.034.i.i, -1
  %i.bfr = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 3 uses
  %i.bfs = add nsw i32 %i.bfr, %i.bfq
  %i.bft = shl nsw i32 %i.bfs, 7
  %i.bfu = or disjoint i32 %i.bfn, %i.bft
  %i.bfv = sext i32 %i.bfu to i64                 ; 2 uses
  br i1 %i.bfp, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.bfw = load ptr, ptr %i.beg, align 16, !tbaa !112
  %i.bfx = getelementptr inbounds i8, ptr %i.bfw, i64 %i.bfv
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !50
  %i.bfz = zext i8 %i.bfy to i32
  br label %bb.gu

bb.gs:                                            ; preds = %bb.gq
  %i.bga = load ptr, ptr %i.bef, align 8, !tbaa !113
  %i.bgb = getelementptr inbounds i8, ptr %i.bga, i64 %i.bfv
  %i.bgc = load i8, ptr %i.bgb, align 1, !tbaa !50
  %i.bgd = zext i8 %i.bgc to i32
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gp
  %i.bge = load i32, ptr %i.bee, align 8, !tbaa !117
  %.pre.i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %bb.gr
  %.pre-phi.i.i = phi i32 [ %i.bfr, %bb.gr ], [ %i.bfr, %bb.gs ], [ %.pre.i.i, %bb.gt ]
  %.pn.i.i = phi i32 [ %i.bfz, %bb.gr ], [ %i.bgd, %bb.gs ], [ %i.bge, %bb.gt ]
  %.126.i.i = add nsw i32 %.pn.i.i, %.02533.i.i
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.go
  %.2.i.i = phi i32 [ %.126.i.i, %bb.gu ], [ %.02533.i.i, %bb.go ] ; 2 uses
  %.1.i.i = phi i32 [ %.pre-phi.i.i, %bb.gu ], [ %.034.i.i, %bb.go ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_block_rate.exit.i, label %bb.go, !llvm.loop !178

get_block_rate.exit.i:                            ; preds = %bb.gv, %bb.gn
  %.025.lcssa.i.i = phi i32 [ 0, %bb.gn ], [ %.2.i.i, %bb.gv ]
  %i.bgf = sub i32 %.0192237.i, %.025.lcssa.i.i
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %indvars.iv.i
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !49
  %i.bgi = shl nsw i32 %i.bgh, 4
  %i.bgj = sext i32 %i.bgi to i64
  %i.bgk = getelementptr inbounds [2 x i8], ptr %i.bed, i64 %i.bgj ; 66 uses
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !49
  %.not.i615 = icmp eq i32 %i.bgm, 0
  br i1 %.not.i615, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %get_block_rate.exit.i
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.aud, i64 %indvars.iv.i
  %i.bgo = load i32, ptr %i.bgn, align 4, !tbaa !49
  %i.bgp = shl nsw i32 %i.bgo, 4
  %i.bgq = sext i32 %i.bgp to i64
  %i.bgr = sub nsw i64 0, %i.bgq
  %i.bgs = getelementptr inbounds [2 x i8], ptr %i.bgk, i64 %i.bgr ; 14 uses
  %i.bgt = load i32, ptr %i.beh, align 4, !tbaa !179
  %.not199.i = icmp eq i32 %i.bgt, 0
  br i1 %.not199.i, label %bb.gx, label %.loopexit224.loopexit.i

bb.gx:                                            ; preds = %bb.gw
  %i.bgu = load i32, ptr %i.bei, align 4, !tbaa !94
  %i.bgv = load i32, ptr %i.bej, align 8, !tbaa !95
  %i.bgw = load i32, ptr %i.bek, align 4, !tbaa !148 ; 2 uses
  %i.bgx = mul nsw i32 %i.bgw, %i.bgv
  %i.bgy = sub i32 %i.bgu, %i.bgw
  %i.bgz = add i32 %i.bgy, %i.bgx
  %i.bha = load i32, ptr %i.bel, align 8, !tbaa !97 ; 9 uses
  %i.bhb = sext i32 %i.bgz to i64
  %i.bhc = getelementptr inbounds i8, ptr %i.bdz, i64 %i.bhb ; 7 uses
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.bhe = sext i8 %i.bhd to i32                  ; 2 uses
  %i.bhf = icmp eq i32 %i.bha, %i.bhe
  %i.bhg = and i64 %indvars.iv.i, 6
  %i.bhh = icmp eq i64 %i.bhg, 2
  %or.cond3.i = or i1 %i.bhh, %i.bhf
  br i1 %or.cond3.i, label %.loopexit224.loopexit.i, label %.preheader225.i

.preheader225.i:                                  ; preds = %bb.gx
  %i.bhi = ashr i32 %i.bha, 1                     ; 8 uses
  %i.bhj = sub nsw i32 0, %i.bhi                  ; 7 uses
  %i.bhk = load i8, ptr %i.beo, align 1, !tbaa !50
  %i.bhl = zext i8 %i.bhk to i64
  %i.bhm = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bhl ; 2 uses
  %i.bhn = load i16, ptr %i.bhm, align 2, !tbaa !57 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bgs, i64 18
  %i.bhp = load i16, ptr %i.bho, align 2, !tbaa !57
  %i.bhq = sext i16 %i.bhp to i32
  %i.bhr = mul nsw i32 %i.bhq, %i.bhe             ; 2 uses
  %i.bhs = icmp slt i32 %i.bhr, 0
  %.p.i = select i1 %i.bhs, i32 %i.bhj, i32 %i.bhi
  %i.bht = add nsw i32 %.p.i, %i.bhr
  %i.bhu = sdiv i32 %i.bht, %i.bha
  %i.bhv = trunc i32 %i.bhu to i16
  %i.bhw = sub i16 %i.bhn, %i.bhv
  store i16 %i.bhw, ptr %i.bhm, align 2, !tbaa !57
  %i.bhx = load i8, ptr %i.bep, align 16, !tbaa !50
  %i.bhy = zext i8 %i.bhx to i64
  %i.bhz = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bhy
  %i.bia = load i16, ptr %i.bhz, align 2, !tbaa !57
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bgk, i64 2
  store i16 %i.bia, ptr %i.bib, align 2, !tbaa !57
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bgk, i64 18
  store i16 %i.bhn, ptr %i.bic, align 2, !tbaa !57
  %i.bid = load i8, ptr %i.beq, align 2, !tbaa !50
  %i.bie = zext i8 %i.bid to i64
  %i.bif = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bie ; 2 uses
  %i.big = load i16, ptr %i.bif, align 2, !tbaa !57 ; 2 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bgs, i64 20
  %i.bii = load i16, ptr %i.bih, align 2, !tbaa !57
  %i.bij = sext i16 %i.bii to i32
  %i.bik = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.bil = sext i8 %i.bik to i32
  %i.bim = mul nsw i32 %i.bil, %i.bij             ; 2 uses
  %i.bin = icmp slt i32 %i.bim, 0
  %.p.1.i = select i1 %i.bin, i32 %i.bhj, i32 %i.bhi
  %i.bio = add nsw i32 %.p.1.i, %i.bim
  %i.bip = sdiv i32 %i.bio, %i.bha
  %i.biq = trunc i32 %i.bip to i16
  %i.bir = sub i16 %i.big, %i.biq
  store i16 %i.bir, ptr %i.bif, align 2, !tbaa !57
  %i.bis = load i8, ptr %i.ber, align 8, !tbaa !50
  %i.bit = zext i8 %i.bis to i64
  %i.biu = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bit
  %i.biv = load i16, ptr %i.biu, align 2, !tbaa !57
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bgk, i64 4
  store i16 %i.biv, ptr %i.biw, align 2, !tbaa !57
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bgk, i64 20
  store i16 %i.big, ptr %i.bix, align 2, !tbaa !57
  %i.biy = load i8, ptr %i.bes, align 1, !tbaa !50
  %i.biz = zext i8 %i.biy to i64
  %i.bja = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.biz ; 2 uses
  %i.bjb = load i16, ptr %i.bja, align 2, !tbaa !57 ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bgs, i64 22
  %i.bjd = load i16, ptr %i.bjc, align 2, !tbaa !57
  %i.bje = sext i16 %i.bjd to i32
  %i.bjf = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.bjg = sext i8 %i.bjf to i32
  %i.bjh = mul nsw i32 %i.bjg, %i.bje             ; 2 uses
  %i.bji = icmp slt i32 %i.bjh, 0
  %.p.2.i = select i1 %i.bji, i32 %i.bhj, i32 %i.bhi
  %i.bjj = add nsw i32 %.p.2.i, %i.bjh
  %i.bjk = sdiv i32 %i.bjj, %i.bha
  %i.bjl = trunc i32 %i.bjk to i16
  %i.bjm = sub i16 %i.bjb, %i.bjl
  store i16 %i.bjm, ptr %i.bja, align 2, !tbaa !57
  %i.bjn = load i8, ptr %i.bet, align 16, !tbaa !50
  %i.bjo = zext i8 %i.bjn to i64
  %i.bjp = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bjo
  %i.bjq = load i16, ptr %i.bjp, align 2, !tbaa !57
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bgk, i64 6
  store i16 %i.bjq, ptr %i.bjr, align 2, !tbaa !57
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bgk, i64 22
  store i16 %i.bjb, ptr %i.bjs, align 2, !tbaa !57
  %i.bjt = load i8, ptr %i.beu, align 4, !tbaa !50
  %i.bju = zext i8 %i.bjt to i64
  %i.bjv = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bju ; 2 uses
  %i.bjw = load i16, ptr %i.bjv, align 2, !tbaa !57 ; 2 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bgs, i64 24
  %i.bjy = load i16, ptr %i.bjx, align 2, !tbaa !57
  %i.bjz = sext i16 %i.bjy to i32
  %i.bka = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.bkb = sext i8 %i.bka to i32
  %i.bkc = mul nsw i32 %i.bkb, %i.bjz             ; 2 uses
  %i.bkd = icmp slt i32 %i.bkc, 0
  %.p.3.i = select i1 %i.bkd, i32 %i.bhj, i32 %i.bhi
  %i.bke = add nsw i32 %.p.3.i, %i.bkc
  %i.bkf = sdiv i32 %i.bke, %i.bha
  %i.bkg = trunc i32 %i.bkf to i16
  %i.bkh = sub i16 %i.bjw, %i.bkg
  store i16 %i.bkh, ptr %i.bjv, align 2, !tbaa !57
  %i.bki = load i8, ptr %i.bev, align 8, !tbaa !50
  %i.bkj = zext i8 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bkj
  %i.bkl = load i16, ptr %i.bkk, align 2, !tbaa !57
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bgk, i64 8
  store i16 %i.bkl, ptr %i.bkm, align 2, !tbaa !57
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bgk, i64 24
  store i16 %i.bjw, ptr %i.bkn, align 2, !tbaa !57
  %i.bko = load i8, ptr %i.bew, align 1, !tbaa !50
  %i.bkp = zext i8 %i.bko to i64
  %i.bkq = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bkp ; 2 uses
  %i.bkr = load i16, ptr %i.bkq, align 2, !tbaa !57 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bgs, i64 26
  %i.bkt = load i16, ptr %i.bks, align 2, !tbaa !57
  %i.bku = sext i16 %i.bkt to i32
  %i.bkv = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.bkw = sext i8 %i.bkv to i32
  %i.bkx = mul nsw i32 %i.bkw, %i.bku             ; 2 uses
  %i.bky = icmp slt i32 %i.bkx, 0
  %.p.4.i = select i1 %i.bky, i32 %i.bhj, i32 %i.bhi
  %i.bkz = add nsw i32 %.p.4.i, %i.bkx
  %i.bla = sdiv i32 %i.bkz, %i.bha
  %i.blb = trunc i32 %i.bla to i16
  %i.blc = sub i16 %i.bkr, %i.blb
  store i16 %i.blc, ptr %i.bkq, align 2, !tbaa !57
  %i.bld = load i8, ptr %i.bex, align 16, !tbaa !50
  %i.ble = zext i8 %i.bld to i64
  %i.blf = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.ble
  %i.blg = load i16, ptr %i.blf, align 2, !tbaa !57
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bgk, i64 10
  store i16 %i.blg, ptr %i.blh, align 2, !tbaa !57
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bgk, i64 26
  store i16 %i.bkr, ptr %i.bli, align 2, !tbaa !57
  %i.blj = load i8, ptr %i.bey, align 2, !tbaa !50
  %i.blk = zext i8 %i.blj to i64
  %i.bll = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.blk ; 2 uses
  %i.blm = load i16, ptr %i.bll, align 2, !tbaa !57 ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bgs, i64 28
  %i.blo = load i16, ptr %i.bln, align 2, !tbaa !57
  %i.blp = sext i16 %i.blo to i32
  %i.blq = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.blr = sext i8 %i.blq to i32
  %i.bls = mul nsw i32 %i.blr, %i.blp             ; 2 uses
  %i.blt = icmp slt i32 %i.bls, 0
  %.p.5.i = select i1 %i.blt, i32 %i.bhj, i32 %i.bhi
  %i.blu = add nsw i32 %.p.5.i, %i.bls
  %i.blv = sdiv i32 %i.blu, %i.bha
  %i.blw = trunc i32 %i.blv to i16
  %i.blx = sub i16 %i.blm, %i.blw
  store i16 %i.blx, ptr %i.bll, align 2, !tbaa !57
  %i.bly = load i8, ptr %i.bez, align 8, !tbaa !50
  %i.blz = zext i8 %i.bly to i64
  %i.bma = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.blz
  %i.bmb = load i16, ptr %i.bma, align 2, !tbaa !57
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bgk, i64 12
  store i16 %i.bmb, ptr %i.bmc, align 2, !tbaa !57
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bgk, i64 28
  store i16 %i.blm, ptr %i.bmd, align 2, !tbaa !57
  %i.bme = load i8, ptr %i.bfa, align 1, !tbaa !50
  %i.bmf = zext i8 %i.bme to i64
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bmf ; 2 uses
  %i.bmh = load i16, ptr %i.bmg, align 2, !tbaa !57 ; 2 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bgs, i64 30
  %i.bmj = load i16, ptr %i.bmi, align 2, !tbaa !57
  %i.bmk = sext i16 %i.bmj to i32
  %i.bml = load i8, ptr %i.bhc, align 1, !tbaa !50
  %i.bmm = sext i8 %i.bml to i32
  %i.bmn = mul nsw i32 %i.bmm, %i.bmk             ; 2 uses
  %i.bmo = icmp slt i32 %i.bmn, 0
  %.p.6.i = select i1 %i.bmo, i32 %i.bhj, i32 %i.bhi
  %i.bmp = add nsw i32 %.p.6.i, %i.bmn
  %i.bmq = sdiv i32 %i.bmp, %i.bha
  %i.bmr = trunc i32 %i.bmq to i16
  %i.bms = sub i16 %i.bmh, %i.bmr
end_hunk_1
begin_hunk_2_@mpeg4_encode_mb:bb.a
  store i16 %i.bxp, ptr %i.bxq, align 2, !tbaa !57
  %i.bxr = load i8, ptr %i.bev, align 8, !tbaa !50
  %i.bxs = zext i8 %i.bxr to i64
  %i.bxt = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bxs ; 2 uses
  %i.bxu = load i16, ptr %i.bxt, align 2, !tbaa !57 ; 2 uses
  %i.bxv = getelementptr inbounds i8, ptr %i.bgk, i64 -24
  %i.bxw = load i16, ptr %i.bxv, align 2, !tbaa !57
  %i.bxx = sub i16 %i.bxu, %i.bxw
  store i16 %i.bxx, ptr %i.bxt, align 2, !tbaa !57
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bgk, i64 8
  store i16 %i.bxu, ptr %i.bxy, align 2, !tbaa !57
  %i.bxz = load i8, ptr %i.beu, align 4, !tbaa !50
  %i.bya = zext i8 %i.bxz to i64
  %i.byb = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bya
  %i.byc = load i16, ptr %i.byb, align 2, !tbaa !57
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bgk, i64 24
  store i16 %i.byc, ptr %i.byd, align 2, !tbaa !57
  %i.bye = load i8, ptr %i.bex, align 16, !tbaa !50
  %i.byf = zext i8 %i.bye to i64
  %i.byg = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.byf ; 2 uses
  %i.byh = load i16, ptr %i.byg, align 2, !tbaa !57 ; 2 uses
  %i.byi = getelementptr inbounds i8, ptr %i.bgk, i64 -22
  %i.byj = load i16, ptr %i.byi, align 2, !tbaa !57
  %i.byk = sub i16 %i.byh, %i.byj
  store i16 %i.byk, ptr %i.byg, align 2, !tbaa !57
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 10
  store i16 %i.byh, ptr %i.byl, align 2, !tbaa !57
  %i.bym = load i8, ptr %i.bew, align 1, !tbaa !50
  %i.byn = zext i8 %i.bym to i64
  %i.byo = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.byn
  %i.byp = load i16, ptr %i.byo, align 2, !tbaa !57
  %i.byq = getelementptr inbounds nuw i8, ptr %i.bgk, i64 26
  store i16 %i.byp, ptr %i.byq, align 2, !tbaa !57
  %i.byr = load i8, ptr %i.bez, align 8, !tbaa !50
  %i.bys = zext i8 %i.byr to i64
  %i.byt = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bys ; 2 uses
  %i.byu = load i16, ptr %i.byt, align 2, !tbaa !57 ; 2 uses
  %i.byv = getelementptr inbounds i8, ptr %i.bgk, i64 -20
  %i.byw = load i16, ptr %i.byv, align 2, !tbaa !57
  %i.byx = sub i16 %i.byu, %i.byw
  store i16 %i.byx, ptr %i.byt, align 2, !tbaa !57
  %i.byy = getelementptr inbounds nuw i8, ptr %i.bgk, i64 12
  store i16 %i.byu, ptr %i.byy, align 2, !tbaa !57
  %i.byz = load i8, ptr %i.bey, align 2, !tbaa !50
  %i.bza = zext i8 %i.byz to i64
  %i.bzb = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bza
  %i.bzc = load i16, ptr %i.bzb, align 2, !tbaa !57
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bgk, i64 28
  store i16 %i.bzc, ptr %i.bzd, align 2, !tbaa !57
  %i.bze = load i8, ptr %i.bfb, align 16, !tbaa !50
  %i.bzf = zext i8 %i.bze to i64
  %i.bzg = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bzf ; 2 uses
  %i.bzh = load i16, ptr %i.bzg, align 2, !tbaa !57 ; 2 uses
  %i.bzi = getelementptr inbounds i8, ptr %i.bgk, i64 -18
  %i.bzj = load i16, ptr %i.bzi, align 2, !tbaa !57
  %i.bzk = sub i16 %i.bzh, %i.bzj
  store i16 %i.bzk, ptr %i.bzg, align 2, !tbaa !57
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i618
  %.sink837 = phi i16 [ %i.bzh, %.loopexit.loopexit.i ], [ %i.bvs, %.preheader.i618 ]
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 14
  store i16 %.sink837, ptr %i.bzl, align 2, !tbaa !57
  %.sink270.i = load i8, ptr %i.bfa, align 1, !tbaa !50
  %i.bzm = zext i8 %.sink270.i to i64
  %i.bzn = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bzm
  %i.bzo = load i16, ptr %i.bzn, align 2, !tbaa !57
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit.i, %.loopexit224.i
  %.sink273.i = phi i16 [ %i.bzo, %.loopexit.i ], [ %.sink.i, %.loopexit224.i ]
  %.sink271.i = phi ptr [ %i.ben, %.loopexit.i ], [ %i.bem, %.loopexit224.i ] ; 5 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bgk, i64 30
  store i16 %.sink273.i, ptr %i.bzp, align 2, !tbaa !57
  %i.bzq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr %.sink271.i, ptr %i.bzq, align 8, !tbaa !163
  br label %bb.hb

.thread.i:                                        ; preds = %bb.he
  store i32 0, ptr %i.bfd, align 4, !tbaa !49
  br label %get_block_rate.exit217.i

bb.hb:                                            ; preds = %bb.he, %bb.ha
  %.4232.i = phi i32 [ 63, %bb.ha ], [ %i.cal, %bb.he ] ; 6 uses
  %i.bzr = zext nneg i32 %.4232.i to i64          ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %i.bzr
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !50
  %i.bzu = zext i8 %i.bzt to i64
  %i.bzv = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.bzu
  %i.bzw = load i16, ptr %i.bzv, align 2, !tbaa !57
  %.not200.i = icmp eq i16 %i.bzw, 0
  br i1 %.not200.i, label %bb.hc, label %.lr.ph.i202.i

bb.hc:                                            ; preds = %bb.hb
  %i.bzx = add nsw i32 %.4232.i, -1               ; 2 uses
  %i.bzy = zext nneg i32 %i.bzx to i64            ; 2 uses
  %i.bzz = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %i.bzy
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !50
  %i.cab = zext i8 %i.caa to i64
  %i.cac = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.cab
  %i.cad = load i16, ptr %i.cac, align 2, !tbaa !57
  %.not200.i.1 = icmp eq i16 %i.cad, 0
  br i1 %.not200.i.1, label %bb.hd, label %.lr.ph.i202.i

bb.hd:                                            ; preds = %bb.hc
  %i.cae = add nsw i32 %.4232.i, -2               ; 2 uses
  %i.caf = zext nneg i32 %i.cae to i64            ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %i.caf
  %i.cah = load i8, ptr %i.cag, align 1, !tbaa !50
  %i.cai = zext i8 %i.cah to i64
  %i.caj = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.cai
  %i.cak = load i16, ptr %i.caj, align 2, !tbaa !57
  %.not200.i.2 = icmp eq i16 %i.cak, 0
  br i1 %.not200.i.2, label %bb.he, label %.lr.ph.i202.i

bb.he:                                            ; preds = %bb.hd
  %i.cal = add nsw i32 %.4232.i, -3
  %i.cam = icmp sgt i32 %.4232.i, 3
  br i1 %i.cam, label %bb.hb, label %.thread.i, !llvm.loop !180

.lr.ph.i202.i:                                    ; preds = %bb.hd, %bb.hc, %bb.hb
  %.4232.i.lcssa = phi i32 [ %.4232.i, %bb.hb ], [ %i.bzx, %bb.hc ], [ %i.cae, %bb.hd ] ; 2 uses
  %.lcssa877 = phi i64 [ %i.bzr, %bb.hb ], [ %i.bzy, %bb.hc ], [ %i.caf, %bb.hd ]
  store i32 %.4232.i.lcssa, ptr %i.bfd, align 4, !tbaa !49
  %i.can = add nuw i32 %.4232.i.lcssa, 1
  %wide.trip.count.i203.i = zext i32 %i.can to i64
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hm, %.lr.ph.i202.i
  %indvars.iv.i204.i = phi i64 [ 1, %.lr.ph.i202.i ], [ %indvars.iv.next.i214.i, %bb.hm ] ; 5 uses
  %.034.i205.i = phi i32 [ 0, %.lr.ph.i202.i ], [ %.1.i213.i, %bb.hm ] ; 2 uses
  %.02533.i206.i = phi i32 [ 0, %.lr.ph.i202.i ], [ %.2.i212.i, %bb.hm ] ; 2 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %indvars.iv.i204.i
  %i.cap = load i8, ptr %i.cao, align 1, !tbaa !50
  %i.caq = zext i8 %i.cap to i64
  %i.car = getelementptr inbounds nuw [2 x i8], ptr %i.bfc, i64 %i.caq
  %i.cas = load i16, ptr %i.car, align 2, !tbaa !57 ; 2 uses
  %.not30.i207.i = icmp eq i16 %i.cas, 0
  br i1 %.not30.i207.i, label %bb.hm, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.cat = sext i16 %i.cas to i32
  %i.cau = add nsw i32 %i.cat, 64                 ; 2 uses
  %i.cav = icmp ult i32 %i.cau, 128
  br i1 %i.cav, label %bb.hh, label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  %i.caw = icmp samesign ult i64 %indvars.iv.i204.i, %.lcssa877
  %i.cax = xor i32 %.034.i205.i, -1
  %i.cay = trunc nuw nsw i64 %indvars.iv.i204.i to i32 ; 3 uses
  %i.caz = add nsw i32 %i.cay, %i.cax
  %i.cba = shl nsw i32 %i.caz, 7
  %i.cbb = or disjoint i32 %i.cau, %i.cba
  %i.cbc = sext i32 %i.cbb to i64                 ; 2 uses
  br i1 %i.caw, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.cbd = load ptr, ptr %i.beg, align 16, !tbaa !112
  %i.cbe = getelementptr inbounds i8, ptr %i.cbd, i64 %i.cbc
  %i.cbf = load i8, ptr %i.cbe, align 1, !tbaa !50
  %i.cbg = zext i8 %i.cbf to i32
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  %i.cbh = load ptr, ptr %i.bef, align 8, !tbaa !113
  %i.cbi = getelementptr inbounds i8, ptr %i.cbh, i64 %i.cbc
  %i.cbj = load i8, ptr %i.cbi, align 1, !tbaa !50
  %i.cbk = zext i8 %i.cbj to i32
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hg
  %i.cbl = load i32, ptr %i.bee, align 8, !tbaa !117
  %.pre.i208.i = trunc nuw nsw i64 %indvars.iv.i204.i to i32
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.pre-phi.i209.i = phi i32 [ %i.cay, %bb.hi ], [ %i.cay, %bb.hj ], [ %.pre.i208.i, %bb.hk ]
  %.pn.i210.i = phi i32 [ %i.cbg, %bb.hi ], [ %i.cbk, %bb.hj ], [ %i.cbl, %bb.hk ]
  %.126.i211.i = add nsw i32 %.pn.i210.i, %.02533.i206.i
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hf
  %.2.i212.i = phi i32 [ %.126.i211.i, %bb.hl ], [ %.02533.i206.i, %bb.hf ] ; 2 uses
  %.1.i213.i = phi i32 [ %.pre-phi.i209.i, %bb.hl ], [ %.034.i205.i, %bb.hf ]
  %indvars.iv.next.i214.i = add nuw nsw i64 %indvars.iv.i204.i, 1 ; 2 uses
  %exitcond.not.i215.i = icmp eq i64 %indvars.iv.next.i214.i, %wide.trip.count.i203.i
  br i1 %exitcond.not.i215.i, label %get_block_rate.exit217.i, label %bb.hf, !llvm.loop !178

get_block_rate.exit217.i:                         ; preds = %bb.hm, %.thread.i
  %.025.lcssa.i216.i = phi i32 [ 0, %.thread.i ], [ %.2.i212.i, %bb.hm ]
  %i.cbm = add nsw i32 %.025.lcssa.i216.i, %i.bgf ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i616 = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i616, label %bb.hn, label %bb.gn, !llvm.loop !181

bb.hn:                                            ; preds = %get_block_rate.exit217.i
  %i.cbn = icmp slt i32 %i.cbm, 0
  br i1 %i.cbn, label %decide_ac_pred.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  store <6 x i32> %.sroa.0.0.copyload, ptr %i.bea, align 4
  %i.cbo = load i32, ptr %i.auc, align 16, !tbaa !49
  %i.cbp = shl nsw i32 %i.cbo, 4
  %i.cbq = sext i32 %i.cbp to i64
  %i.cbr = getelementptr inbounds [2 x i8], ptr %i.bed, i64 %i.cbq ; 11 uses
  store ptr %i.beb, ptr %i.e, align 16, !tbaa !163
  br i1 %i.auz, label %.preheader28.i.i, label %.preheader.i.i

.preheader28.i.i:                                 ; preds = %bb.ho
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbr, i64 18
  %i.cbt = load i16, ptr %i.cbs, align 2, !tbaa !57
  %i.cbu = load i8, ptr %i.beo, align 1, !tbaa !50
  %i.cbv = zext i8 %i.cbu to i64
  %i.cbw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cbv
  store i16 %i.cbt, ptr %i.cbw, align 2, !tbaa !57
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbr, i64 20
  %i.cby = load i16, ptr %i.cbx, align 2, !tbaa !57
  %i.cbz = load i8, ptr %i.beq, align 2, !tbaa !50
  %i.cca = zext i8 %i.cbz to i64
  %i.ccb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cca
  store i16 %i.cby, ptr %i.ccb, align 2, !tbaa !57
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbr, i64 22
  %i.ccd = load i16, ptr %i.ccc, align 2, !tbaa !57
  %i.cce = load i8, ptr %i.bes, align 1, !tbaa !50
  %i.ccf = zext i8 %i.cce to i64
  %i.ccg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccf
  store i16 %i.ccd, ptr %i.ccg, align 2, !tbaa !57
  %i.cch = getelementptr inbounds nuw i8, ptr %i.cbr, i64 24
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.ho
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cbr, i64 2
  %i.ccj = load i16, ptr %i.cci, align 2, !tbaa !57
  %i.cck = load i8, ptr %i.bep, align 16, !tbaa !50
  %i.ccl = zext i8 %i.cck to i64
  %i.ccm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccl
  store i16 %i.ccj, ptr %i.ccm, align 2, !tbaa !57
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cbr, i64 4
  %i.cco = load i16, ptr %i.ccn, align 2, !tbaa !57
  %i.ccp = load i8, ptr %i.ber, align 8, !tbaa !50
  %i.ccq = zext i8 %i.ccp to i64
  %i.ccr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccq
  store i16 %i.cco, ptr %i.ccr, align 2, !tbaa !57
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.cbr, i64 6
  %i.cct = load i16, ptr %i.ccs, align 2, !tbaa !57
  %i.ccu = load i8, ptr %i.bet, align 16, !tbaa !50
  %i.ccv = zext i8 %i.ccu to i64
  %i.ccw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccv
  store i16 %i.cct, ptr %i.ccw, align 2, !tbaa !57
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cbr, i64 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader28.i.i
  %.sink865.in = phi ptr [ %i.bev, %.preheader.i.i ], [ %i.beu, %.preheader28.i.i ]
  %.sink862.in = phi ptr [ %i.ccx, %.preheader.i.i ], [ %i.cch, %.preheader28.i.i ]
  %.sink861 = phi i64 [ 10, %.preheader.i.i ], [ 26, %.preheader28.i.i ]
  %.sink843.in = phi ptr [ %i.bex, %.preheader.i.i ], [ %i.bew, %.preheader28.i.i ]
  %.sink839 = phi i64 [ 12, %.preheader.i.i ], [ 28, %.preheader28.i.i ]
  %.sink279.in.i = phi ptr [ %i.bez, %.preheader.i.i ], [ %i.bey, %.preheader28.i.i ]
  %.sink275.i = phi i64 [ 14, %.preheader.i.i ], [ 30, %.preheader28.i.i ]
  %.sink39.in.i.i = phi ptr [ %i.bfb, %.preheader.i.i ], [ %i.bfa, %.preheader28.i.i ]
  %.sink862 = load i16, ptr %.sink862.in, align 2, !tbaa !57
  %.sink865 = load i8, ptr %.sink865.in, align 4, !tbaa !50
  %i.ccy = zext i8 %.sink865 to i64
  %i.ccz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccy
  store i16 %.sink862, ptr %i.ccz, align 2, !tbaa !57
  %i.cda = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %.sink861
  %.sink840 = load i16, ptr %i.cda, align 2, !tbaa !57
  %.sink843 = load i8, ptr %.sink843.in, align 1, !tbaa !50
  %i.cdb = zext i8 %.sink843 to i64
  %i.cdc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cdb
  store i16 %.sink840, ptr %i.cdc, align 2, !tbaa !57
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %.sink839
  %.sink276.i = load i16, ptr %i.cdd, align 2, !tbaa !57
  %.sink279.i = load i8, ptr %.sink279.in.i, align 1, !tbaa !50
  %i.cde = zext i8 %.sink279.i to i64
  %i.cdf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cde
  store i16 %.sink276.i, ptr %i.cdf, align 2, !tbaa !57
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %.sink275.i
  %.sink.i.i = load i16, ptr %i.cdg, align 2, !tbaa !57
  %.sink39.i.i = load i8, ptr %.sink39.in.i.i, align 1, !tbaa !50
  %i.cdh = zext i8 %.sink39.i.i to i64
  %i.cdi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cdh
  store i16 %.sink.i.i, ptr %i.cdi, align 2, !tbaa !57
  %i.cdj = getelementptr inbounds nuw i8, ptr %0, i64 3124
  %i.cdk = load i32, ptr %i.cdj, align 4, !tbaa !49
  %i.cdl = shl nsw i32 %i.cdk, 4
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds [2 x i8], ptr %i.bed, i64 %i.cdm ; 11 uses
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.beb, ptr %i.cdo, align 8, !tbaa !163
  %i.cdp = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 10 uses
  br i1 %i.awq, label %.preheader28.i.i.1, label %.preheader.i.i.1

.preheader28.i.i.1:                               ; preds = %.loopexit.i.i
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdn, i64 18
  %i.cdr = load i16, ptr %i.cdq, align 2, !tbaa !57
  %i.cds = load i8, ptr %i.beo, align 1, !tbaa !50
  %i.cdt = zext i8 %i.cds to i64
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cdt
  store i16 %i.cdr, ptr %i.cdu, align 2, !tbaa !57
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdn, i64 20
  %i.cdw = load i16, ptr %i.cdv, align 2, !tbaa !57
  %i.cdx = load i8, ptr %i.beq, align 2, !tbaa !50
  %i.cdy = zext i8 %i.cdx to i64
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cdy
  store i16 %i.cdw, ptr %i.cdz, align 2, !tbaa !57
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdn, i64 22
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !57
  %i.cec = load i8, ptr %i.bes, align 1, !tbaa !50
  %i.ced = zext i8 %i.cec to i64
  %i.cee = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.ced
  store i16 %i.ceb, ptr %i.cee, align 2, !tbaa !57
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cdn, i64 24
  br label %.loopexit.i.i.1

.preheader.i.i.1:                                 ; preds = %.loopexit.i.i
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cdn, i64 2
  %i.ceh = load i16, ptr %i.ceg, align 2, !tbaa !57
  %i.cei = load i8, ptr %i.bep, align 16, !tbaa !50
  %i.cej = zext i8 %i.cei to i64
  %i.cek = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cej
  store i16 %i.ceh, ptr %i.cek, align 2, !tbaa !57
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cdn, i64 4
  %i.cem = load i16, ptr %i.cel, align 2, !tbaa !57
  %i.cen = load i8, ptr %i.ber, align 8, !tbaa !50
  %i.ceo = zext i8 %i.cen to i64
  %i.cep = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.ceo
  store i16 %i.cem, ptr %i.cep, align 2, !tbaa !57
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cdn, i64 6
  %i.cer = load i16, ptr %i.ceq, align 2, !tbaa !57
  %i.ces = load i8, ptr %i.bet, align 16, !tbaa !50
  %i.cet = zext i8 %i.ces to i64
  %i.ceu = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cet
  store i16 %i.cer, ptr %i.ceu, align 2, !tbaa !57
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cdn, i64 8
  br label %.loopexit.i.i.1

.loopexit.i.i.1:                                  ; preds = %.preheader.i.i.1, %.preheader28.i.i.1
  %.sink865.in.1 = phi ptr [ %i.bev, %.preheader.i.i.1 ], [ %i.beu, %.preheader28.i.i.1 ]
  %.sink862.in.1 = phi ptr [ %i.cev, %.preheader.i.i.1 ], [ %i.cef, %.preheader28.i.i.1 ]
  %.sink861.1 = phi i64 [ 10, %.preheader.i.i.1 ], [ 26, %.preheader28.i.i.1 ]
  %.sink843.in.1 = phi ptr [ %i.bex, %.preheader.i.i.1 ], [ %i.bew, %.preheader28.i.i.1 ]
  %.sink839.1 = phi i64 [ 12, %.preheader.i.i.1 ], [ 28, %.preheader28.i.i.1 ]
  %.sink279.in.i.1 = phi ptr [ %i.bez, %.preheader.i.i.1 ], [ %i.bey, %.preheader28.i.i.1 ]
  %.sink275.i.1 = phi i64 [ 14, %.preheader.i.i.1 ], [ 30, %.preheader28.i.i.1 ]
  %.sink39.in.i.i.1 = phi ptr [ %i.bfb, %.preheader.i.i.1 ], [ %i.bfa, %.preheader28.i.i.1 ]
  %.sink862.1 = load i16, ptr %.sink862.in.1, align 2, !tbaa !57
  %.sink865.1 = load i8, ptr %.sink865.in.1, align 4, !tbaa !50
  %i.cew = zext i8 %.sink865.1 to i64
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cew
  store i16 %.sink862.1, ptr %i.cex, align 2, !tbaa !57
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cdn, i64 %.sink861.1
  %.sink840.1 = load i16, ptr %i.cey, align 2, !tbaa !57
  %.sink843.1 = load i8, ptr %.sink843.in.1, align 1, !tbaa !50
  %i.cez = zext i8 %.sink843.1 to i64
  %i.cfa = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cez
  store i16 %.sink840.1, ptr %i.cfa, align 2, !tbaa !57
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cdn, i64 %.sink839.1
  %.sink276.i.1 = load i16, ptr %i.cfb, align 2, !tbaa !57
  %.sink279.i.1 = load i8, ptr %.sink279.in.i.1, align 1, !tbaa !50
  %i.cfc = zext i8 %.sink279.i.1 to i64
  %i.cfd = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cfc
  store i16 %.sink276.i.1, ptr %i.cfd, align 2, !tbaa !57
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cdn, i64 %.sink275.i.1
  %.sink.i.i.1 = load i16, ptr %i.cfe, align 2, !tbaa !57
  %.sink39.i.i.1 = load i8, ptr %.sink39.in.i.i.1, align 1, !tbaa !50
  %i.cff = zext i8 %.sink39.i.i.1 to i64
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %i.cdp, i64 %i.cff
  store i16 %.sink.i.i.1, ptr %i.cfg, align 2, !tbaa !57
  %i.cfh = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.cfi = load i32, ptr %i.cfh, align 8, !tbaa !49
  %i.cfj = shl nsw i32 %i.cfi, 4
  %i.cfk = sext i32 %i.cfj to i64
  %i.cfl = getelementptr inbounds [2 x i8], ptr %i.bed, i64 %i.cfk ; 11 uses
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.beb, ptr %i.cfm, align 16, !tbaa !163
  %i.cfn = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 10 uses
  br i1 %i.ayd, label %.preheader28.i.i.2, label %.preheader.i.i.2

.preheader28.i.i.2:                               ; preds = %.loopexit.i.i.1
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfl, i64 18
  %i.cfp = load i16, ptr %i.cfo, align 2, !tbaa !57
  %i.cfq = load i8, ptr %i.beo, align 1, !tbaa !50
  %i.cfr = zext i8 %i.cfq to i64
  %i.cfs = getelementptr inbounds nuw [2 x i8], ptr %i.cfn, i64 %i.cfr
  store i16 %i.cfp, ptr %i.cfs, align 2, !tbaa !57
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfl, i64 20
  %i.cfu = load i16, ptr %i.cft, align 2, !tbaa !57
  %i.cfv = load i8, ptr %i.beq, align 2, !tbaa !50
  %i.cfw = zext i8 %i.cfv to i64
  %i.cfx = getelementptr inbounds nuw [2 x i8], ptr %i.cfn, i64 %i.cfw
  store i16 %i.cfu, ptr %i.cfx, align 2, !tbaa !57
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfl, i64 22
  %i.cfz = load i16, ptr %i.cfy, align 2, !tbaa !57
  %i.cga = load i8, ptr %i.bes, align 1, !tbaa !50
  %i.cgb = zext i8 %i.cga to i64
  %i.cgc = getelementptr inbounds nuw [2 x i8], ptr %i.cfn, i64 %i.cgb
  store i16 %i.cfz, ptr %i.cgc, align 2, !tbaa !57
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cfl, i64 24
  br label %.loopexit.i.i.2
end_hunk_2
begin_hunk_3_@mpeg4_encode_mb:bb.a
  store i16 %.sink862.3, ptr %i.cit, align 2, !tbaa !57
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.chj, i64 %.sink861.3
  %.sink840.3 = load i16, ptr %i.ciu, align 2, !tbaa !57
  %.sink843.3 = load i8, ptr %.sink843.in.3, align 1, !tbaa !50
  %i.civ = zext i8 %.sink843.3 to i64
  %i.ciw = getelementptr inbounds nuw [2 x i8], ptr %i.chl, i64 %i.civ
  store i16 %.sink840.3, ptr %i.ciw, align 2, !tbaa !57
  %i.cix = getelementptr inbounds nuw i8, ptr %i.chj, i64 %.sink839.3
  %.sink276.i.3 = load i16, ptr %i.cix, align 2, !tbaa !57
  %.sink279.i.3 = load i8, ptr %.sink279.in.i.3, align 1, !tbaa !50
  %i.ciy = zext i8 %.sink279.i.3 to i64
  %i.ciz = getelementptr inbounds nuw [2 x i8], ptr %i.chl, i64 %i.ciy
  store i16 %.sink276.i.3, ptr %i.ciz, align 2, !tbaa !57
  %i.cja = getelementptr inbounds nuw i8, ptr %i.chj, i64 %.sink275.i.3
  %.sink.i.i.3 = load i16, ptr %i.cja, align 2, !tbaa !57
  %.sink39.i.i.3 = load i8, ptr %.sink39.in.i.i.3, align 1, !tbaa !50
  %i.cjb = zext i8 %.sink39.i.i.3 to i64
  %i.cjc = getelementptr inbounds nuw [2 x i8], ptr %i.chl, i64 %i.cjb
  store i16 %.sink.i.i.3, ptr %i.cjc, align 2, !tbaa !57
  %i.cjd = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.cje = load i32, ptr %i.cjd, align 16, !tbaa !49
  %i.cjf = shl nsw i32 %i.cje, 4
  %i.cjg = sext i32 %i.cjf to i64
  %i.cjh = getelementptr inbounds [2 x i8], ptr %i.bed, i64 %i.cjg ; 11 uses
  %i.cji = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.beb, ptr %i.cji, align 16, !tbaa !163
  %i.cjj = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 10 uses
  br i1 %i.bbj, label %.preheader28.i.i.4, label %.preheader.i.i.4

.preheader28.i.i.4:                               ; preds = %.loopexit.i.i.3
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cjh, i64 18
  %i.cjl = load i16, ptr %i.cjk, align 2, !tbaa !57
  %i.cjm = load i8, ptr %i.beo, align 1, !tbaa !50
  %i.cjn = zext i8 %i.cjm to i64
  %i.cjo = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.cjn
  store i16 %i.cjl, ptr %i.cjo, align 2, !tbaa !57
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjh, i64 20
  %i.cjq = load i16, ptr %i.cjp, align 2, !tbaa !57
  %i.cjr = load i8, ptr %i.beq, align 2, !tbaa !50
  %i.cjs = zext i8 %i.cjr to i64
  %i.cjt = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.cjs
  store i16 %i.cjq, ptr %i.cjt, align 2, !tbaa !57
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjh, i64 22
  %i.cjv = load i16, ptr %i.cju, align 2, !tbaa !57
  %i.cjw = load i8, ptr %i.bes, align 1, !tbaa !50
  %i.cjx = zext i8 %i.cjw to i64
  %i.cjy = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.cjx
  store i16 %i.cjv, ptr %i.cjy, align 2, !tbaa !57
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjh, i64 24
  br label %.loopexit.i.i.4

.preheader.i.i.4:                                 ; preds = %.loopexit.i.i.3
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjh, i64 2
  %i.ckb = load i16, ptr %i.cka, align 2, !tbaa !57
  %i.ckc = load i8, ptr %i.bep, align 16, !tbaa !50
  %i.ckd = zext i8 %i.ckc to i64
  %i.cke = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.ckd
  store i16 %i.ckb, ptr %i.cke, align 2, !tbaa !57
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cjh, i64 4
  %i.ckg = load i16, ptr %i.ckf, align 2, !tbaa !57
  %i.ckh = load i8, ptr %i.ber, align 8, !tbaa !50
  %i.cki = zext i8 %i.ckh to i64
  %i.ckj = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.cki
  store i16 %i.ckg, ptr %i.ckj, align 2, !tbaa !57
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.cjh, i64 6
  %i.ckl = load i16, ptr %i.ckk, align 2, !tbaa !57
  %i.ckm = load i8, ptr %i.bet, align 16, !tbaa !50
  %i.ckn = zext i8 %i.ckm to i64
  %i.cko = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.ckn
  store i16 %i.ckl, ptr %i.cko, align 2, !tbaa !57
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cjh, i64 8
  br label %.loopexit.i.i.4

.loopexit.i.i.4:                                  ; preds = %.preheader.i.i.4, %.preheader28.i.i.4
  %.sink865.in.4 = phi ptr [ %i.bev, %.preheader.i.i.4 ], [ %i.beu, %.preheader28.i.i.4 ]
  %.sink862.in.4 = phi ptr [ %i.ckp, %.preheader.i.i.4 ], [ %i.cjz, %.preheader28.i.i.4 ]
  %.sink861.4 = phi i64 [ 10, %.preheader.i.i.4 ], [ 26, %.preheader28.i.i.4 ]
  %.sink843.in.4 = phi ptr [ %i.bex, %.preheader.i.i.4 ], [ %i.bew, %.preheader28.i.i.4 ]
  %.sink839.4 = phi i64 [ 12, %.preheader.i.i.4 ], [ 28, %.preheader28.i.i.4 ]
  %.sink279.in.i.4 = phi ptr [ %i.bez, %.preheader.i.i.4 ], [ %i.bey, %.preheader28.i.i.4 ]
  %.sink275.i.4 = phi i64 [ 14, %.preheader.i.i.4 ], [ 30, %.preheader28.i.i.4 ]
  %.sink39.in.i.i.4 = phi ptr [ %i.bfb, %.preheader.i.i.4 ], [ %i.bfa, %.preheader28.i.i.4 ]
  %.sink862.4 = load i16, ptr %.sink862.in.4, align 2, !tbaa !57
  %.sink865.4 = load i8, ptr %.sink865.in.4, align 4, !tbaa !50
  %i.ckq = zext i8 %.sink865.4 to i64
  %i.ckr = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.ckq
  store i16 %.sink862.4, ptr %i.ckr, align 2, !tbaa !57
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cjh, i64 %.sink861.4
  %.sink840.4 = load i16, ptr %i.cks, align 2, !tbaa !57
  %.sink843.4 = load i8, ptr %.sink843.in.4, align 1, !tbaa !50
  %i.ckt = zext i8 %.sink843.4 to i64
  %i.cku = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.ckt
  store i16 %.sink840.4, ptr %i.cku, align 2, !tbaa !57
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cjh, i64 %.sink839.4
  %.sink276.i.4 = load i16, ptr %i.ckv, align 2, !tbaa !57
  %.sink279.i.4 = load i8, ptr %.sink279.in.i.4, align 1, !tbaa !50
  %i.ckw = zext i8 %.sink279.i.4 to i64
  %i.ckx = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.ckw
  store i16 %.sink276.i.4, ptr %i.ckx, align 2, !tbaa !57
  %i.cky = getelementptr inbounds nuw i8, ptr %i.cjh, i64 %.sink275.i.4
  %.sink.i.i.4 = load i16, ptr %i.cky, align 2, !tbaa !57
  %.sink39.i.i.4 = load i8, ptr %.sink39.in.i.i.4, align 1, !tbaa !50
  %i.ckz = zext i8 %.sink39.i.i.4 to i64
  %i.cla = getelementptr inbounds nuw [2 x i8], ptr %i.cjj, i64 %i.ckz
  store i16 %.sink.i.i.4, ptr %i.cla, align 2, !tbaa !57
  %i.clb = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.clc = load i32, ptr %i.clb, align 4, !tbaa !49
  %i.cld = shl nsw i32 %i.clc, 4
  %i.cle = sext i32 %i.cld to i64
  %i.clf = getelementptr inbounds [2 x i8], ptr %i.bed, i64 %i.cle ; 11 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.beb, ptr %i.clg, align 8, !tbaa !163
  %i.clh = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 10 uses
  br i1 %i.bdc, label %.preheader28.i.i.5, label %.preheader.i.i.5

.preheader28.i.i.5:                               ; preds = %.loopexit.i.i.4
  %i.cli = getelementptr inbounds nuw i8, ptr %i.clf, i64 18
  %i.clj = load i16, ptr %i.cli, align 2, !tbaa !57
  %i.clk = load i8, ptr %i.beo, align 1, !tbaa !50
  %i.cll = zext i8 %i.clk to i64
  %i.clm = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cll
  store i16 %i.clj, ptr %i.clm, align 2, !tbaa !57
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clf, i64 20
  %i.clo = load i16, ptr %i.cln, align 2, !tbaa !57
  %i.clp = load i8, ptr %i.beq, align 2, !tbaa !50
  %i.clq = zext i8 %i.clp to i64
  %i.clr = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.clq
  store i16 %i.clo, ptr %i.clr, align 2, !tbaa !57
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clf, i64 22
  %i.clt = load i16, ptr %i.cls, align 2, !tbaa !57
  %i.clu = load i8, ptr %i.bes, align 1, !tbaa !50
  %i.clv = zext i8 %i.clu to i64
  %i.clw = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.clv
  store i16 %i.clt, ptr %i.clw, align 2, !tbaa !57
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clf, i64 24
  br label %.loopexit.i.i.5

.preheader.i.i.5:                                 ; preds = %.loopexit.i.i.4
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clf, i64 2
  %i.clz = load i16, ptr %i.cly, align 2, !tbaa !57
  %i.cma = load i8, ptr %i.bep, align 16, !tbaa !50
  %i.cmb = zext i8 %i.cma to i64
  %i.cmc = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cmb
  store i16 %i.clz, ptr %i.cmc, align 2, !tbaa !57
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.clf, i64 4
  %i.cme = load i16, ptr %i.cmd, align 2, !tbaa !57
  %i.cmf = load i8, ptr %i.ber, align 8, !tbaa !50
  %i.cmg = zext i8 %i.cmf to i64
  %i.cmh = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cmg
  store i16 %i.cme, ptr %i.cmh, align 2, !tbaa !57
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.clf, i64 6
  %i.cmj = load i16, ptr %i.cmi, align 2, !tbaa !57
  %i.cmk = load i8, ptr %i.bet, align 16, !tbaa !50
  %i.cml = zext i8 %i.cmk to i64
  %i.cmm = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cml
  store i16 %i.cmj, ptr %i.cmm, align 2, !tbaa !57
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.clf, i64 8
  br label %.loopexit.i.i.5

.loopexit.i.i.5:                                  ; preds = %.preheader.i.i.5, %.preheader28.i.i.5
  %.sink865.in.5 = phi ptr [ %i.bev, %.preheader.i.i.5 ], [ %i.beu, %.preheader28.i.i.5 ]
  %.sink862.in.5 = phi ptr [ %i.cmn, %.preheader.i.i.5 ], [ %i.clx, %.preheader28.i.i.5 ]
  %.sink861.5 = phi i64 [ 10, %.preheader.i.i.5 ], [ 26, %.preheader28.i.i.5 ]
  %.sink843.in.5 = phi ptr [ %i.bex, %.preheader.i.i.5 ], [ %i.bew, %.preheader28.i.i.5 ]
  %.sink839.5 = phi i64 [ 12, %.preheader.i.i.5 ], [ 28, %.preheader28.i.i.5 ]
  %.sink279.in.i.5 = phi ptr [ %i.bez, %.preheader.i.i.5 ], [ %i.bey, %.preheader28.i.i.5 ]
  %.sink275.i.5 = phi i64 [ 14, %.preheader.i.i.5 ], [ 30, %.preheader28.i.i.5 ]
  %.sink39.in.i.i.5 = phi ptr [ %i.bfb, %.preheader.i.i.5 ], [ %i.bfa, %.preheader28.i.i.5 ]
  %.sink862.5 = load i16, ptr %.sink862.in.5, align 2, !tbaa !57
  %.sink865.5 = load i8, ptr %.sink865.in.5, align 4, !tbaa !50
  %i.cmo = zext i8 %.sink865.5 to i64
  %i.cmp = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cmo
  store i16 %.sink862.5, ptr %i.cmp, align 2, !tbaa !57
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.clf, i64 %.sink861.5
  %.sink840.5 = load i16, ptr %i.cmq, align 2, !tbaa !57
  %.sink843.5 = load i8, ptr %.sink843.in.5, align 1, !tbaa !50
  %i.cmr = zext i8 %.sink843.5 to i64
  %i.cms = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cmr
  store i16 %.sink840.5, ptr %i.cms, align 2, !tbaa !57
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.clf, i64 %.sink839.5
  %.sink276.i.5 = load i16, ptr %i.cmt, align 2, !tbaa !57
  %.sink279.i.5 = load i8, ptr %.sink279.in.i.5, align 1, !tbaa !50
  %i.cmu = zext i8 %.sink279.i.5 to i64
  %i.cmv = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cmu
  store i16 %.sink276.i.5, ptr %i.cmv, align 2, !tbaa !57
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.clf, i64 %.sink275.i.5
  %.sink.i.i.5 = load i16, ptr %i.cmw, align 2, !tbaa !57
  %.sink39.i.i.5 = load i8, ptr %.sink39.in.i.i.5, align 1, !tbaa !50
  %i.cmx = zext i8 %.sink39.i.i.5 to i64
  %i.cmy = getelementptr inbounds nuw [2 x i8], ptr %i.clh, i64 %i.cmx
  store i16 %.sink.i.i.5, ptr %i.cmy, align 2, !tbaa !57
  br label %decide_ac_pred.exit

decide_ac_pred.exit:                              ; preds = %.loopexit.i.i.5, %bb.hn
  %.0.i617 = phi i32 [ 1, %bb.hn ], [ 0, %.loopexit.i.i.5 ]
  %i.cmz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.i617, ptr %i.cmz, align 16, !tbaa !182
  br label %.loopexit692

.loopexit692:                                     ; preds = %.preheader691, %decide_ac_pred.exit
  %.sroa.0.0 = phi <6 x i32> [ undef, %.preheader691 ], [ %.sroa.0.0.copyload, %decide_ac_pred.exit ]
  %i.cna = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cnb = load i32, ptr %i.cna, align 4, !tbaa !49
  %i.cnc = icmp sgt i32 %i.cnb, 0
  %i.cnd = select i1 %i.cnc, i64 8, i64 0
  %i.cne = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cnf = load i32, ptr %i.cne, align 8, !tbaa !49
  %i.cng = icmp sgt i32 %i.cnf, 0
  %i.cnh = select i1 %i.cng, i64 4, i64 0
  %i.cni = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cnj = load <4 x i32>, ptr %i.cni, align 4, !tbaa !49
  %i.cnk = icmp sgt <4 x i32> %i.cnj, zeroinitializer ; 4 uses
  %i.cnl = extractelement <4 x i1> %i.cnk, i64 0
  %i.cnm = select i1 %i.cnl, i64 2, i64 0
  %i.cnn = extractelement <4 x i1> %i.cnk, i64 1
  %i.cno = zext i1 %i.cnn to i64
  %i.cnp = extractelement <4 x i1> %i.cnk, i64 2
  %i.cnq = select i1 %i.cnp, i32 2, i32 0
  %i.cnr = extractelement <4 x i1> %i.cnk, i64 3
  %i.cns = zext i1 %i.cnr to i32
  %i.cnt = or disjoint i32 %i.cnq, %i.cns         ; 3 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.cnv = load i32, ptr %i.cnu, align 16, !tbaa !9
  %i.cnw = icmp eq i32 %i.cnv, 1
  %i.cnx = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.cny = load i32, ptr %i.cnx, align 4, !tbaa !149
  %.not498 = icmp eq i32 %i.cny, 0                ; 2 uses
  br i1 %i.cnw, label %bb.hp, label %bb.hv

bb.hp:                                            ; preds = %.loopexit692
  %i.cnz = or disjoint i32 %i.cnt, 4
  %spec.select514 = select i1 %.not498, i32 %i.cnt, i32 %i.cnz
  %i.coa = zext nneg i32 %spec.select514 to i64   ; 2 uses
  %i.cob = getelementptr inbounds nuw i8, ptr @ff_h263_intra_MCBPC_bits, i64 %i.coa
  %i.coc = load i8, ptr %i.cob, align 1, !tbaa !50
  %i.cod = zext i8 %i.coc to i32                  ; 5 uses
  %i.coe = getelementptr inbounds nuw i8, ptr @ff_h263_intra_MCBPC_code, i64 %i.coa
  %i.cof = load i8, ptr %i.coe, align 1, !tbaa !50
  %i.cog = zext i8 %i.cof to i32                  ; 3 uses
  %i.coh = load i32, ptr %i.i, align 16, !tbaa !61 ; 2 uses
  %i.coi = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.coj = load i32, ptr %i.coi, align 4, !tbaa !60 ; 5 uses
  %i.cok = icmp sgt i32 %i.coj, %i.cod
  br i1 %i.cok, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.col = shl i32 %i.coh, %i.cod
  %i.com = or i32 %i.col, %i.cog
  %i.con = sub nsw i32 %i.coj, %i.cod
  br label %put_bits.exit622

bb.hr:                                            ; preds = %bb.hp
  %i.coo = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cop = load ptr, ptr %i.coo, align 8, !tbaa !62
  %i.coq = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cor = load ptr, ptr %i.coq, align 16, !tbaa !59 ; 2 uses
  %i.cos = ptrtoint ptr %i.cop to i64
  %i.cot = ptrtoint ptr %i.cor to i64
  %i.cou = sub i64 %i.cos, %i.cot
  %i.cov = icmp ugt i64 %i.cou, 3
  br i1 %i.cov, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.cow = shl i32 %i.coh, %i.coj
  %i.cox = sub nsw i32 %i.cod, %i.coj
  %i.coy = lshr i32 %i.cog, %i.cox
  %i.coz = or i32 %i.coy, %i.cow
  %i.cpa = tail call i32 @llvm.bswap.i32(i32 %i.coz)
  store i32 %i.cpa, ptr %i.cor, align 1, !tbaa !50
  %i.cpb = load ptr, ptr %i.coq, align 16, !tbaa !59
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cpb, i64 4
  store ptr %i.cpc, ptr %i.coq, align 16, !tbaa !59
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %reass.sub = sub i32 %i.coj, %i.cod
  %i.cpd = add i32 %reass.sub, 32
  br label %put_bits.exit622

put_bits.exit622:                                 ; preds = %bb.hq, %bb.hu
  %.026.i.i620 = phi i32 [ %i.com, %bb.hq ], [ %i.cog, %bb.hu ]
  %.0.i.i621 = phi i32 [ %i.con, %bb.hq ], [ %i.cpd, %bb.hu ]
  store i32 %.026.i.i620, ptr %i.i, align 16, !tbaa !61
  store i32 %.0.i.i621, ptr %i.coi, align 4, !tbaa !60
  br label %bb.if

bb.hv:                                            ; preds = %.loopexit692
  %i.cpe = load i32, ptr %i.i, align 16, !tbaa !61 ; 2 uses
  %i.cpf = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 3 uses
  %i.cpg = load i32, ptr %i.cpf, align 4, !tbaa !60 ; 3 uses
  %i.cph = icmp sgt i32 %i.cpg, 1
  br i1 %i.cph, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.cpi = shl i32 %i.cpe, 1
  br label %put_bits.exit626

bb.hx:                                            ; preds = %bb.hv
  %i.cpj = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cpk = load ptr, ptr %i.cpj, align 8, !tbaa !62
  %i.cpl = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cpm = load ptr, ptr %i.cpl, align 16, !tbaa !59 ; 2 uses
  %i.cpn = ptrtoint ptr %i.cpk to i64
  %i.cpo = ptrtoint ptr %i.cpm to i64
  %i.cpp = sub i64 %i.cpn, %i.cpo
  %i.cpq = icmp ugt i64 %i.cpp, 3
  br i1 %i.cpq, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.cpr = shl i32 %i.cpe, %i.cpg
  %i.cps = tail call i32 @llvm.bswap.i32(i32 %i.cpr)
  store i32 %i.cps, ptr %i.cpm, align 1, !tbaa !50
  %i.cpt = load ptr, ptr %i.cpl, align 16, !tbaa !59
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 4
  store ptr %i.cpu, ptr %i.cpl, align 16, !tbaa !59
  br label %put_bits.exit626

bb.hz:                                            ; preds = %bb.hx
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit626

put_bits.exit626:                                 ; preds = %bb.hy, %bb.hz, %bb.hw
  %.sink844 = phi i32 [ -1, %bb.hw ], [ 31, %bb.hz ], [ 31, %bb.hy ]
  %.026.i.i624 = phi i32 [ %i.cpi, %bb.hw ], [ 0, %bb.hz ], [ 0, %bb.hy ] ; 3 uses
  %i.cpv = add nsw i32 %i.cpg, %.sink844          ; 6 uses
  store i32 %.026.i.i624, ptr %i.i, align 16, !tbaa !61
  store i32 %i.cpv, ptr %i.cpf, align 4, !tbaa !60
  %i.cpw = select i1 %.not498, i32 4, i32 12
  %i.cpx = or disjoint i32 %i.cpw, %i.cnt
  %i.cpy = zext nneg i32 %i.cpx to i64            ; 2 uses
  %i.cpz = getelementptr inbounds nuw i8, ptr @ff_h263_inter_MCBPC_bits, i64 %i.cpy
  %i.cqa = load i8, ptr %i.cpz, align 1, !tbaa !50
  %i.cqb = zext i8 %i.cqa to i32                  ; 4 uses
  %i.cqc = getelementptr inbounds nuw i8, ptr @ff_h263_inter_MCBPC_code, i64 %i.cpy
  %i.cqd = load i8, ptr %i.cqc, align 1, !tbaa !50
  %i.cqe = zext i8 %i.cqd to i32                  ; 3 uses
  %i.cqf = icmp sgt i32 %i.cpv, %i.cqb
  br i1 %i.cqf, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %put_bits.exit626
  %i.cqg = shl i32 %.026.i.i624, %i.cqb
  %i.cqh = or i32 %i.cqg, %i.cqe
  br label %put_bits.exit630

bb.ib:                                            ; preds = %put_bits.exit626
  %i.cqi = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cqj = load ptr, ptr %i.cqi, align 8, !tbaa !62
  %i.cqk = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cql = load ptr, ptr %i.cqk, align 16, !tbaa !59 ; 2 uses
  %i.cqm = ptrtoint ptr %i.cqj to i64
  %i.cqn = ptrtoint ptr %i.cql to i64
  %i.cqo = sub i64 %i.cqm, %i.cqn
  %i.cqp = icmp ugt i64 %i.cqo, 3
  br i1 %i.cqp, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.cqq = shl i32 %.026.i.i624, %i.cpv
  %i.cqr = sub nsw i32 %i.cqb, %i.cpv
  %i.cqs = lshr i32 %i.cqe, %i.cqr
  %i.cqt = or i32 %i.cqs, %i.cqq
  %i.cqu = tail call i32 @llvm.bswap.i32(i32 %i.cqt)
  store i32 %i.cqu, ptr %i.cql, align 1, !tbaa !50
  %i.cqv = load ptr, ptr %i.cqk, align 16, !tbaa !59
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqv, i64 4
  store ptr %i.cqw, ptr %i.cqk, align 16, !tbaa !59
  br label %bb.ie

bb.id:                                            ; preds = %bb.ib
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %reass.sub.i627 = add nsw i32 %i.cpv, 32
  br label %put_bits.exit630

put_bits.exit630:                                 ; preds = %bb.ia, %bb.ie
  %.026.i.i628 = phi i32 [ %i.cqh, %bb.ia ], [ %i.cqe, %bb.ie ]
  %.0.i.i625.pn = phi i32 [ %i.cpv, %bb.ia ], [ %reass.sub.i627, %bb.ie ]
  %.0.i.i629 = sub i32 %.0.i.i625.pn, %i.cqb
  store i32 %.026.i.i628, ptr %i.i, align 16, !tbaa !61
  store i32 %.0.i.i629, ptr %i.cpf, align 4, !tbaa !60
  br label %bb.if

bb.if:                                            ; preds = %put_bits.exit630, %put_bits.exit622
  %i.cqx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cqy = load i32, ptr %i.cqx, align 16, !tbaa !182 ; 4 uses
  %i.cqz = load i32, ptr %i.j, align 8, !tbaa !61 ; 2 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.crb = load i32, ptr %i.cra, align 4, !tbaa !60 ; 4 uses
  %i.crc = icmp sgt i32 %i.crb, 1
  br i1 %i.crc, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.crd = shl i32 %i.cqz, 1
  %i.cre = or i32 %i.crd, %i.cqy
  br label %put_bits.exit634

end_hunk_3
begin_hunk_4_@mpeg4_encode_mb:bb.a
bb.ij:                                            ; preds = %bb.ih
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit634

put_bits.exit634:                                 ; preds = %bb.ii, %bb.ij, %bb.ig
  %.sink845 = phi i32 [ -1, %bb.ig ], [ 31, %bb.ij ], [ 31, %bb.ii ]
  %.026.i.i632 = phi i32 [ %i.cre, %bb.ig ], [ %i.cqy, %bb.ij ], [ %i.cqy, %bb.ii ] ; 3 uses
  %i.cru = add nsw i32 %i.crb, %.sink845          ; 6 uses
  store i32 %.026.i.i632, ptr %i.j, align 8, !tbaa !61
  store i32 %i.cru, ptr %i.cra, align 4, !tbaa !60
  %i.crv = getelementptr inbounds nuw [2 x i8], ptr @ff_h263_cbpy_tab, i64 %i.cnm
  %i.crw = getelementptr inbounds nuw [2 x i8], ptr %i.crv, i64 %i.cnh
  %i.crx = getelementptr inbounds nuw [2 x i8], ptr %i.crw, i64 %i.cnd
  %i.cry = getelementptr inbounds nuw [2 x i8], ptr %i.crx, i64 %i.cno ; 2 uses
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 1
  %i.csa = load i8, ptr %i.crz, align 1, !tbaa !50
  %i.csb = zext i8 %i.csa to i32                  ; 4 uses
  %i.csc = load i8, ptr %i.cry, align 2, !tbaa !50
  %i.csd = zext i8 %i.csc to i32                  ; 3 uses
  %i.cse = icmp sgt i32 %i.cru, %i.csb
  br i1 %i.cse, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %put_bits.exit634
  %i.csf = shl i32 %.026.i.i632, %i.csb
  %i.csg = or i32 %i.csf, %i.csd
  br label %put_bits.exit638

bb.il:                                            ; preds = %put_bits.exit634
  %i.csh = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.csi = load ptr, ptr %i.csh, align 8, !tbaa !62
  %i.csj = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.csk = load ptr, ptr %i.csj, align 8, !tbaa !59 ; 2 uses
  %i.csl = ptrtoint ptr %i.csi to i64
  %i.csm = ptrtoint ptr %i.csk to i64
  %i.csn = sub i64 %i.csl, %i.csm
  %i.cso = icmp ugt i64 %i.csn, 3
  br i1 %i.cso, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.csp = shl i32 %.026.i.i632, %i.cru
  %i.csq = sub nsw i32 %i.csb, %i.cru
  %i.csr = lshr i32 %i.csd, %i.csq
  %i.css = or i32 %i.csr, %i.csp
  %i.cst = tail call i32 @llvm.bswap.i32(i32 %i.css)
  store i32 %i.cst, ptr %i.csk, align 1, !tbaa !50
  %i.csu = load ptr, ptr %i.csj, align 8, !tbaa !59
  %i.csv = getelementptr inbounds nuw i8, ptr %i.csu, i64 4
  store ptr %i.csv, ptr %i.csj, align 8, !tbaa !59
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %reass.sub.i635 = add nsw i32 %i.cru, 32
  br label %put_bits.exit638

put_bits.exit638:                                 ; preds = %bb.ik, %bb.io
  %.026.i.i636 = phi i32 [ %i.csg, %bb.ik ], [ %i.csd, %bb.io ]
  %.0.i.i633.pn = phi i32 [ %i.cru, %bb.ik ], [ %reass.sub.i635, %bb.io ]
  %.0.i.i637 = sub i32 %.0.i.i633.pn, %i.csb
  store i32 %.026.i.i636, ptr %i.j, align 8, !tbaa !61
  store i32 %.0.i.i637, ptr %i.cra, align 4, !tbaa !60
  %i.csw = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.csx = load i32, ptr %i.csw, align 4, !tbaa !149 ; 2 uses
  %.not499 = icmp eq i32 %i.csx, 0
  br i1 %.not499, label %bb.iu, label %bb.ip

bb.ip:                                            ; preds = %put_bits.exit638
  %i.csy = sext i32 %i.csx to i64
  %i.csz = getelementptr [4 x i8], ptr @dquant_code, i64 %i.csy
  %i.cta = getelementptr i8, ptr %i.csz, i64 8
  %i.ctb = load i32, ptr %i.cta, align 4, !tbaa !49 ; 4 uses
  %i.ctc = load i32, ptr %i.o, align 8, !tbaa !61 ; 2 uses
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.cte = load i32, ptr %i.ctd, align 4, !tbaa !60 ; 4 uses
  %i.ctf = icmp sgt i32 %i.cte, 2
  br i1 %i.ctf, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ctg = shl i32 %i.ctc, 2
  %i.cth = or i32 %i.ctg, %i.ctb
  br label %put_bits.exit642

bb.ir:                                            ; preds = %bb.ip
  %i.cti = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ctj = load ptr, ptr %i.cti, align 8, !tbaa !62
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ctl = load ptr, ptr %i.ctk, align 8, !tbaa !59 ; 2 uses
  %i.ctm = ptrtoint ptr %i.ctj to i64
  %i.ctn = ptrtoint ptr %i.ctl to i64
  %i.cto = sub i64 %i.ctm, %i.ctn
  %i.ctp = icmp ugt i64 %i.cto, 3
  br i1 %i.ctp, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.ctq = shl i32 %i.ctc, %i.cte
  %i.ctr = sub nsw i32 2, %i.cte
  %i.cts = lshr i32 %i.ctb, %i.ctr
  %i.ctt = or i32 %i.cts, %i.ctq
  %i.ctu = tail call i32 @llvm.bswap.i32(i32 %i.ctt)
  store i32 %i.ctu, ptr %i.ctl, align 1, !tbaa !50
  %i.ctv = load ptr, ptr %i.ctk, align 8, !tbaa !59
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctv, i64 4
  store ptr %i.ctw, ptr %i.ctk, align 8, !tbaa !59
  br label %put_bits.exit642

bb.it:                                            ; preds = %bb.ir
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit642

put_bits.exit642:                                 ; preds = %bb.is, %bb.it, %bb.iq
  %.sink846 = phi i32 [ -2, %bb.iq ], [ 30, %bb.it ], [ 30, %bb.is ]
  %.026.i.i640 = phi i32 [ %i.cth, %bb.iq ], [ %i.ctb, %bb.it ], [ %i.ctb, %bb.is ]
  %i.ctx = add nsw i32 %i.cte, %.sink846
  store i32 %.026.i.i640, ptr %i.o, align 8, !tbaa !61
  store i32 %i.ctx, ptr %i.ctd, align 4, !tbaa !60
  br label %bb.iu

bb.iu:                                            ; preds = %put_bits.exit642, %put_bits.exit638
  %i.cty = getelementptr inbounds nuw i8, ptr %0, i64 3796
  %i.ctz = load i32, ptr %i.cty, align 4, !tbaa !142
  %.not500 = icmp eq i32 %i.ctz, 0
  br i1 %.not500, label %bb.iv, label %bb.ja

bb.iv:                                            ; preds = %bb.iu
  %i.cua = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.cub = load i32, ptr %i.cua, align 8, !tbaa !155 ; 4 uses
  %i.cuc = load i32, ptr %i.o, align 8, !tbaa !61 ; 2 uses
  %i.cud = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.cue = load i32, ptr %i.cud, align 4, !tbaa !60 ; 4 uses
  %i.cuf = icmp sgt i32 %i.cue, 1
  br i1 %i.cuf, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.cug = shl i32 %i.cuc, 1
  %i.cuh = or i32 %i.cug, %i.cub
  br label %put_bits.exit646

bb.ix:                                            ; preds = %bb.iv
  %i.cui = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cuj = load ptr, ptr %i.cui, align 8, !tbaa !62
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.cul = load ptr, ptr %i.cuk, align 8, !tbaa !59 ; 2 uses
  %i.cum = ptrtoint ptr %i.cuj to i64
  %i.cun = ptrtoint ptr %i.cul to i64
  %i.cuo = sub i64 %i.cum, %i.cun
  %i.cup = icmp ugt i64 %i.cuo, 3
  br i1 %i.cup, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cuq = shl i32 %i.cuc, %i.cue
  %i.cur = sub nsw i32 1, %i.cue
  %i.cus = lshr i32 %i.cub, %i.cur
  %i.cut = or i32 %i.cus, %i.cuq
  %i.cuu = tail call i32 @llvm.bswap.i32(i32 %i.cut)
  store i32 %i.cuu, ptr %i.cul, align 1, !tbaa !50
  %i.cuv = load ptr, ptr %i.cuk, align 8, !tbaa !59
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 4
  store ptr %i.cuw, ptr %i.cuk, align 8, !tbaa !59
  br label %put_bits.exit646

bb.iz:                                            ; preds = %bb.ix
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit646

put_bits.exit646:                                 ; preds = %bb.iy, %bb.iz, %bb.iw
  %.sink847 = phi i32 [ -1, %bb.iw ], [ 31, %bb.iz ], [ 31, %bb.iy ]
  %.026.i.i644 = phi i32 [ %i.cuh, %bb.iw ], [ %i.cub, %bb.iz ], [ %i.cub, %bb.iy ]
  %i.cux = add nsw i32 %i.cue, %.sink847
  store i32 %.026.i.i644, ptr %i.o, align 8, !tbaa !61
  store i32 %i.cux, ptr %i.cud, align 4, !tbaa !60
  br label %bb.ja

bb.ja:                                            ; preds = %put_bits.exit646, %bb.iu
  br i1 %spec.select661, label %bb.jb, label %.critedge517

bb.jb:                                            ; preds = %bb.ja
  %i.cuy = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.cuz = load ptr, ptr %i.cuy, align 16, !tbaa !59
  %i.cva = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.cvb = load ptr, ptr %i.cva, align 8, !tbaa !81
  %i.cvc = ptrtoint ptr %i.cuz to i64
  %i.cvd = ptrtoint ptr %i.cvb to i64
  %i.cve = sub i64 %i.cvc, %i.cvd
  %i.cvf = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.cvg = load i32, ptr %i.cvf, align 4, !tbaa !60
  %.tr.i.i647 = trunc i64 %i.cve to i32
  %i.cvh = shl i32 %.tr.i.i647, 3
  %reass.sub.i.i648 = sub i32 %i.cvh, %i.cvg
  %i.cvi = add i32 %reass.sub.i.i648, 32          ; 2 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 4 uses
  %i.cvk = load i32, ptr %i.cvj, align 16, !tbaa !82
  store i32 %i.cvi, ptr %i.cvj, align 16, !tbaa !82
  %i.cvl = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.cvm = load i32, ptr %i.cvl, align 4, !tbaa !83
  %i.cvn = sub i32 %i.cvm, %i.cvk
  %i.cvo = add i32 %i.cvn, %i.cvi
  store i32 %i.cvo, ptr %i.cvl, align 4, !tbaa !83
  call fastcc void @mpeg4_encode_blocks_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n)
  %i.cvp = load ptr, ptr %i.cuy, align 16, !tbaa !59
  %i.cvq = load ptr, ptr %i.cva, align 8, !tbaa !81
  %i.cvr = ptrtoint ptr %i.cvp to i64
  %i.cvs = ptrtoint ptr %i.cvq to i64
  %i.cvt = sub i64 %i.cvr, %i.cvs
  %i.cvu = load i32, ptr %i.cvf, align 4, !tbaa !60
  %.tr.i.i649 = trunc i64 %i.cvt to i32
  %i.cvv = shl i32 %.tr.i.i649, 3
  %reass.sub.i.i650 = sub i32 %i.cvv, %i.cvu
  %i.cvw = add i32 %reass.sub.i.i650, 32          ; 2 uses
  %i.cvx = load i32, ptr %i.cvj, align 16, !tbaa !82
  store i32 %i.cvw, ptr %i.cvj, align 16, !tbaa !82
  %i.cvy = getelementptr inbounds nuw i8, ptr %0, i64 6336 ; 2 uses
  %i.cvz = load i32, ptr %i.cvy, align 16, !tbaa !84
  %i.cwa = sub i32 %i.cvz, %i.cvx
  %i.cwb = add i32 %i.cwa, %i.cvw
  store i32 %i.cwb, ptr %i.cvy, align 16, !tbaa !84
  br label %bb.jc

.critedge517:                                     ; preds = %bb.ja
  call fastcc void @mpeg4_encode_blocks_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n)
  br label %bb.jc

bb.jc:                                            ; preds = %.critedge517, %bb.jb
  %i.cwc = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 2 uses
  %i.cwd = load i32, ptr %i.cwc, align 8, !tbaa !183
  %i.cwe = add nsw i32 %i.cwd, 1
  store i32 %i.cwe, ptr %i.cwc, align 8, !tbaa !183
  %i.cwf = load i32, ptr %i.cqx, align 16, !tbaa !182
  %.not501 = icmp eq i32 %i.cwf, 0
  br i1 %.not501, label %restore_ac_coeffs.exit, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  store <6 x i32> %.sroa.0.0, ptr %i.cna, align 4
  %i.cwg = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.cwh = load ptr, ptr %i.cwg, align 8, !tbaa !177
  %i.cwi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cwj = getelementptr inbounds nuw i8, ptr %0, i64 1817
  %i.cwk = getelementptr inbounds nuw i8, ptr %0, i64 1818
  %i.cwl = getelementptr inbounds nuw i8, ptr %0, i64 1819
  %i.cwm = getelementptr inbounds nuw i8, ptr %0, i64 1820
  %i.cwn = getelementptr inbounds nuw i8, ptr %0, i64 1821
  %i.cwo = getelementptr inbounds nuw i8, ptr %0, i64 1822
  %i.cwp = getelementptr inbounds nuw i8, ptr %0, i64 1823
  %i.cwq = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.cwr = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.cws = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.cwt = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.cwu = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.cwv = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.cww = getelementptr inbounds nuw i8, ptr %0, i64 1872
  br label %bb.je

bb.je:                                            ; preds = %.loopexit.i653, %bb.jd
  %indvars.iv.i651 = phi i64 [ 0, %bb.jd ], [ %indvars.iv.next.i655, %.loopexit.i653 ] ; 5 uses
  %i.cwx = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %indvars.iv.i651
  %i.cwy = load i32, ptr %i.cwx, align 4, !tbaa !49
  %i.cwz = shl nsw i32 %i.cwy, 4
  %i.cxa = sext i32 %i.cwz to i64
  %i.cxb = getelementptr inbounds [2 x i8], ptr %i.cwh, i64 %i.cxa ; 12 uses
  %i.cxc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i651
  store ptr %i.cwi, ptr %i.cxc, align 8, !tbaa !163
  %i.cxd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i651
  %i.cxe = load i32, ptr %i.cxd, align 4, !tbaa !49
  %.not.i652 = icmp eq i32 %i.cxe, 0
  %i.cxf = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv.i651 ; 11 uses
  br i1 %.not.i652, label %.preheader.i657, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.je
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cxb, i64 18
  %i.cxh = load i16, ptr %i.cxg, align 2, !tbaa !57
  %i.cxi = load i8, ptr %i.cwj, align 1, !tbaa !50
  %i.cxj = zext i8 %i.cxi to i64
  %i.cxk = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cxj
  store i16 %i.cxh, ptr %i.cxk, align 2, !tbaa !57
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxb, i64 20
  %i.cxm = load i16, ptr %i.cxl, align 2, !tbaa !57
  %i.cxn = load i8, ptr %i.cwk, align 2, !tbaa !50
  %i.cxo = zext i8 %i.cxn to i64
  %i.cxp = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cxo
  store i16 %i.cxm, ptr %i.cxp, align 2, !tbaa !57
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxb, i64 22
  %i.cxr = load i16, ptr %i.cxq, align 2, !tbaa !57
  %i.cxs = load i8, ptr %i.cwl, align 1, !tbaa !50
  %i.cxt = zext i8 %i.cxs to i64
  %i.cxu = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cxt
  store i16 %i.cxr, ptr %i.cxu, align 2, !tbaa !57
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxb, i64 24
  %i.cxw = load i16, ptr %i.cxv, align 2, !tbaa !57
  %i.cxx = load i8, ptr %i.cwm, align 4, !tbaa !50
  %i.cxy = zext i8 %i.cxx to i64
  %i.cxz = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cxy
  store i16 %i.cxw, ptr %i.cxz, align 2, !tbaa !57
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxb, i64 26
  br label %.loopexit.i653

.preheader.i657:                                  ; preds = %bb.je
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxb, i64 2
  %i.cyc = load i16, ptr %i.cyb, align 2, !tbaa !57
  %i.cyd = load i8, ptr %i.cwq, align 16, !tbaa !50
  %i.cye = zext i8 %i.cyd to i64
  %i.cyf = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cye
  store i16 %i.cyc, ptr %i.cyf, align 2, !tbaa !57
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxb, i64 4
  %i.cyh = load i16, ptr %i.cyg, align 2, !tbaa !57
  %i.cyi = load i8, ptr %i.cwr, align 8, !tbaa !50
  %i.cyj = zext i8 %i.cyi to i64
  %i.cyk = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cyj
  store i16 %i.cyh, ptr %i.cyk, align 2, !tbaa !57
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cxb, i64 6
  %i.cym = load i16, ptr %i.cyl, align 2, !tbaa !57
  %i.cyn = load i8, ptr %i.cws, align 16, !tbaa !50
  %i.cyo = zext i8 %i.cyn to i64
  %i.cyp = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cyo
  store i16 %i.cym, ptr %i.cyp, align 2, !tbaa !57
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cxb, i64 8
  %i.cyr = load i16, ptr %i.cyq, align 2, !tbaa !57
  %i.cys = load i8, ptr %i.cwt, align 8, !tbaa !50
  %i.cyt = zext i8 %i.cys to i64
  %i.cyu = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cyt
  store i16 %i.cyr, ptr %i.cyu, align 2, !tbaa !57
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cxb, i64 10
  br label %.loopexit.i653

.loopexit.i653:                                   ; preds = %.preheader.i657, %.preheader28.i
  %.sink870.in = phi ptr [ %i.cwu, %.preheader.i657 ], [ %i.cwn, %.preheader28.i ]
  %.sink867.in = phi ptr [ %i.cyv, %.preheader.i657 ], [ %i.cya, %.preheader28.i ]
  %.sink866 = phi i64 [ 12, %.preheader.i657 ], [ 28, %.preheader28.i ]
  %.sink852.in = phi ptr [ %i.cwv, %.preheader.i657 ], [ %i.cwo, %.preheader28.i ]
  %.sink848 = phi i64 [ 14, %.preheader.i657 ], [ 30, %.preheader28.i ]
  %.sink39.in.i = phi ptr [ %i.cww, %.preheader.i657 ], [ %i.cwp, %.preheader28.i ]
  %.sink867 = load i16, ptr %.sink867.in, align 2, !tbaa !57
  %.sink870 = load i8, ptr %.sink870.in, align 1, !tbaa !50
  %i.cyw = zext i8 %.sink870 to i64
  %i.cyx = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cyw
  store i16 %.sink867, ptr %i.cyx, align 2, !tbaa !57
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cxb, i64 %.sink866
  %.sink849 = load i16, ptr %i.cyy, align 2, !tbaa !57
  %.sink852 = load i8, ptr %.sink852.in, align 1, !tbaa !50
  %i.cyz = zext i8 %.sink852 to i64
  %i.cza = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.cyz
  store i16 %.sink849, ptr %i.cza, align 2, !tbaa !57
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cxb, i64 %.sink848
  %.sink.i654 = load i16, ptr %i.czb, align 2, !tbaa !57
  %.sink39.i = load i8, ptr %.sink39.in.i, align 1, !tbaa !50
  %i.czc = zext i8 %.sink39.i to i64
  %i.czd = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.czc
  store i16 %.sink.i654, ptr %i.czd, align 2, !tbaa !57
  %indvars.iv.next.i655 = add nuw nsw i64 %indvars.iv.i651, 1 ; 2 uses
  %exitcond.not.i656 = icmp eq i64 %indvars.iv.next.i655, 6
  br i1 %exitcond.not.i656, label %restore_ac_coeffs.exit, label %bb.je, !llvm.loop !184

restore_ac_coeffs.exit:                           ; preds = %.loopexit.i653, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.critedge503

.critedge503:                                     ; preds = %bb.db, %bb.da, %bb.z, %put_bits.exit, %bb.e, %restore_ac_coeffs.exit, %bb.gk, %bb.br, %.critedge, %.critedge512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare void @ff_qpeldsp_init(ptr noundef) local_unnamed_addr #1

declare i32 @ff_mpv_encode_init(ptr noundef) local_unnamed_addr #1

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mpeg4_encode_init_static() #6 {
bb.a:
  tail call fastcc void @init_uni_dc_tab() #16
  tail call fastcc void @init_uni_mpeg4_rl_tab(ptr noundef nonnull @ff_mpeg4_rl_intra, ptr noundef nonnull @uni_mpeg4_intra_rl_bits, ptr noundef nonnull @uni_mpeg4_intra_rl_len) #16
  tail call fastcc void @init_uni_mpeg4_rl_tab(ptr noundef nonnull @ff_h263_rl_inter, ptr noundef nonnull @uni_mpeg4_inter_rl_bits, ptr noundef nonnull @uni_mpeg4_inter_rl_len) #16
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0810 = phi i32 [ 7, %bb.a ], [ %i.j, %._crit_edge ] ; 5 uses
  %i.a = shl i32 16, %.0810                       ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.c = sub nsw i32 0, %i.a
  %i.d = trunc i32 %.0810 to i8
  %i.e = sext i32 %i.c to i64
  %scevgep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @fcode_tab, i64 4096), i64 %i.e
  %i.f = shl i32 32, %.0810
  %i.g = add i32 %i.f, -32
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, i8 %i.d, i64 %i.i, i1 false), !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.j = add nsw i32 %.0810, -1
  %i.k = icmp samesign ugt i32 %.0810, 1
  br i1 %i.k, label %bb.c, label %bb.b, !llvm.loop !185
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mpeg4_encode_visual_object_header(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %.not = icmp eq i32 %i.d, -99
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.d, 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9864
  %i.g = load i32, ptr %i.f, align 8, !tbaa !160
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.i = load i32, ptr %i.h, align 4, !tbaa !187
  %.not24 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not24, i32 0, i32 240
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.020 = phi i32 [ %i.e, %bb.b ], [ 240, %bb.c ], [ %spec.select, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 692
  %i.k = load i32, ptr %i.j, align 4, !tbaa !188  ; 2 uses
  %.not25 = icmp eq i32 %i.k, -99
  %. = select i1 %.not25, i32 1, i32 %i.k
  %.1 = or i32 %., %.020                          ; 5 uses
  %.mask = and i32 %.1, -16
  %i.l = icmp eq i32 %.mask, 240
  %.0 = select i1 %i.l, i32 5, i32 1              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 10 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 27 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.m, align 8, !tbaa !61
  %i.y = zext i32 %i.x to i64
  %i.z = zext nneg i32 %i.o to i64
  %i.aa = shl i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nsw i32 32, %i.o
  %i.ad = lshr i32 432, %i.ac
  %i.ae = or i32 %i.ad, %i.ab
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.s, align 1, !tbaa !50
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.r, align 8, !tbaa !59
  br label %put_bits32.exit

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits32.exit

put_bits32.exit:                                  ; preds = %bb.f, %bb.g
  store i32 432, ptr %i.m, align 8, !tbaa !61
  store i32 %i.o, ptr %i.n, align 4, !tbaa !60
  %i.ai = icmp sgt i32 %i.o, 8
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %put_bits32.exit
  %i.aj = or i32 %.1, 110592
  br label %put_bits.exit

bb.i:                                             ; preds = %put_bits32.exit
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ugt i64 %i.ao, 3
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = shl nuw nsw i32 432, %i.o
  %i.ar = sub nsw i32 8, %i.o
  %i.as = lshr i32 %.1, %i.ar
  %i.at = or i32 %i.as, %i.aq
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %i.al, align 1, !tbaa !50
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.aw, ptr %i.r, align 8, !tbaa !59
  br label %put_bits.exit

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.j, %bb.k, %bb.h
  %.sink = phi i32 [ -8, %bb.h ], [ 24, %bb.k ], [ 24, %bb.j ]
  %.026.i.i = phi i32 [ %i.aj, %bb.h ], [ %.1, %bb.k ], [ %.1, %bb.j ] ; 2 uses
  %i.ax = add nsw i32 %i.o, %.sink                ; 8 uses
  store i32 %.026.i.i, ptr %i.m, align 8, !tbaa !61
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !60
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ugt i64 %i.bc, 3
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %put_bits.exit
  %i.be = zext i32 %.026.i.i to i64
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = shl i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = sub nsw i32 32, %i.ax
  %i.bj = lshr i32 437, %i.bi
  %i.bk = or i32 %i.bj, %i.bh
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  store i32 %i.bl, ptr %i.az, align 1, !tbaa !50
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bn, ptr %i.r, align 8, !tbaa !59
  br label %put_bits32.exit26

bb.m:                                             ; preds = %put_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits32.exit26

put_bits32.exit26:                                ; preds = %bb.l, %bb.m
  store i32 437, ptr %i.m, align 8, !tbaa !61
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !60
  %i.bo = icmp sgt i32 %i.ax, 1
  br i1 %i.bo, label %put_bits.exit30, label %bb.n

bb.n:                                             ; preds = %put_bits32.exit26
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
end_hunk_4
begin_hunk_5_@mpeg4_encode_ac_coeffs:bb.a
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.at = shl i32 %i.o, 14
  %i.au = add nsw i32 %i.at, 31465472
  %i.av = shl nsw i32 %i.l, 1
  %i.aw = and i32 %i.av, 8190
  %i.ax = or disjoint i32 %i.aw, %i.au
  %i.ay = or disjoint i32 %i.ax, 1                ; 4 uses
  %i.az = load i32, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !60  ; 4 uses
  %i.bb = icmp sgt i32 %i.ba, 30
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = shl i32 %i.az, 30
  %i.bd = or i32 %i.bc, %i.ay
  br label %put_bits.exit44

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = shl i32 %i.az, %i.ba
  %i.bl = sub nsw i32 30, %i.ba
  %i.bm = lshr i32 %i.ay, %i.bl
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  store i32 %i.bo, ptr %i.bf, align 1, !tbaa !50
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !59
  br label %put_bits.exit44

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit44

put_bits.exit44:                                  ; preds = %bb.m, %bb.n, %bb.k
  %.sink = phi i32 [ -30, %bb.k ], [ 2, %bb.n ], [ 2, %bb.m ]
  %.026.i.i42 = phi i32 [ %i.bd, %bb.k ], [ %i.ay, %bb.n ], [ %i.ay, %bb.m ]
  %i.br = add nsw i32 %i.ba, %.sink
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.e, %put_bits.exit44
  %.026.i.i.sink = phi i32 [ %.026.i.i42, %put_bits.exit44 ], [ %i.ad, %bb.e ], [ %i.y, %bb.i ]
  %.0.i.i.sink = phi i32 [ %i.br, %put_bits.exit44 ], [ %i.ae, %bb.e ], [ %i.as, %bb.i ]
  store i32 %.026.i.i.sink, ptr %4, align 8, !tbaa !61
  store i32 %.0.i.i.sink, ptr %i.c, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.b
  %.1 = phi i32 [ %.03954, %bb.b ], [ %i.n, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.039.lcssa = phi i32 [ %i.a, %bb.a ], [ %.1, %bb.o ]
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %1, %bb.o ] ; 2 uses
  %i.bs = zext nneg i32 %.0.lcssa to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !50
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !57
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = xor i32 %.039.lcssa, -1
  %i.ca = add i32 %.0.lcssa, %i.bz                ; 2 uses
  %i.cb = add nsw i32 %i.by, 64                   ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 128
  br i1 %i.cc, label %bb.p, label %bb.v

bb.p:                                             ; preds = %._crit_edge
  %i.cd = shl nsw i32 %i.ca, 7
  %i.ce = add nsw i32 %i.cd, 8192
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %6, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !50
  %i.cj = zext i8 %i.ci to i32                    ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !49 ; 3 uses
  %i.cm = load i32, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !60 ; 5 uses
  %i.cp = icmp sgt i32 %i.co, %i.cj
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = shl i32 %i.cm, %i.cj
  %i.cr = or i32 %i.cq, %i.cl
  %i.cs = sub nsw i32 %i.co, %i.cj
  br label %put_bits.exit48

bb.r:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !59 ; 2 uses
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = shl i32 %i.cm, %i.co
  %i.dc = sub nsw i32 %i.cj, %i.co
  %i.dd = lshr i32 %i.cl, %i.dc
  %i.de = or i32 %i.dd, %i.db
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %i.cw, align 1, !tbaa !50
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !59
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store ptr %i.dh, ptr %i.cv, align 8, !tbaa !59
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub57 = sub i32 %i.co, %i.cj
  %i.di = add i32 %reass.sub57, 32
  br label %put_bits.exit48

put_bits.exit48:                                  ; preds = %bb.q, %bb.u
  %.026.i.i46 = phi i32 [ %i.cr, %bb.q ], [ %i.cl, %bb.u ]
  %.0.i.i47 = phi i32 [ %i.cs, %bb.q ], [ %i.di, %bb.u ]
  store i32 %.026.i.i46, ptr %4, align 8, !tbaa !61
  store i32 %.0.i.i47, ptr %i.cn, align 4, !tbaa !60
  br label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  %i.dj = shl i32 %i.ca, 14
  %i.dk = add nsw i32 %i.dj, 32514048
  %i.dl = shl nsw i32 %i.by, 1
  %i.dm = and i32 %i.dl, 8190
  %i.dn = or disjoint i32 %i.dm, %i.dk
  %i.do = or disjoint i32 %i.dn, 1                ; 4 uses
  %i.dp = load i32, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !60 ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 30
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dt = shl i32 %i.dp, 30
  %i.du = or i32 %i.dt, %i.do
  br label %put_bits.exit52

bb.x:                                             ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !62
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !59 ; 2 uses
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ugt i64 %i.eb, 3
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = shl i32 %i.dp, %i.dr
  %i.ee = sub nsw i32 30, %i.dr
  %i.ef = lshr i32 %i.do, %i.ee
  %i.eg = or i32 %i.ef, %i.ed
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  store i32 %i.eh, ptr %i.dy, align 1, !tbaa !50
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store ptr %i.ej, ptr %i.dx, align 8, !tbaa !59
  br label %put_bits.exit52

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit52

put_bits.exit52:                                  ; preds = %bb.y, %bb.z, %bb.w
  %.sink75 = phi i32 [ -30, %bb.w ], [ 2, %bb.z ], [ 2, %bb.y ]
  %.026.i.i50 = phi i32 [ %i.du, %bb.w ], [ %i.do, %bb.z ], [ %i.do, %bb.y ]
  %i.ek = add nsw i32 %i.dr, %.sink75
  store i32 %.026.i.i50, ptr %4, align 8, !tbaa !61
  store i32 %i.ek, ptr %i.dq, align 4, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %put_bits.exit52, %put_bits.exit48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_uni_dc_tab() unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ -256, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.a = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.b = icmp eq i64 %indvars.iv, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04453 = phi i32 [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %.04552 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.d = lshr i32 %.04453, 1                      ; 2 uses
  %i.e = add nuw nsw i32 %.04552, 1               ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !199

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.045.lcssa = phi i32 [ 0, %bb.b ], [ %i.e, %.lr.ph ] ; 9 uses
  %i.f = zext nneg i32 %.045.lcssa to i64         ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_lum, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !50    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !50    ; 2 uses
  %.not50 = icmp eq i32 %.045.lcssa, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = zext i8 %i.j to i32
  %i.l = zext i8 %i.h to i32
  %i.m = icmp slt i64 %indvars.iv, 0
  %notmask = shl nsw i32 -1, %.045.lcssa
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = add i32 %i.n, -1
  %i.p = xor i32 %notmask, %i.o
  %.0 = select i1 %i.m, i32 %i.p, i32 %i.a        ; 2 uses
  %i.q = shl i32 %i.l, %.045.lcssa
  %i.r = or i32 %i.q, %.0                         ; 2 uses
  %i.s = add nuw nsw i32 %.045.lcssa, %i.k
  %i.t = icmp samesign ugt i32 %.045.lcssa, 8     ; 2 uses
  %i.u = shl i32 %i.r, 1
  %i.v = or disjoint i32 %i.u, 1
  %.047.ph = select i1 %i.t, i32 %i.v, i32 %i.r
  %i.w = zext i1 %i.t to i32
  %.046.ph = add nuw nsw i32 %i.s, %i.w
  %i.x = trunc i32 %.047.ph to i16
  %i.y = add nsw i64 %indvars.iv, 256             ; 4 uses
  %i.z = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.y
  store i16 %i.x, ptr %i.z, align 2, !tbaa !57
  %i.aa = trunc i32 %.046.ph to i8
  %i.ab = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !50
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.f ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !50
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl i32 %i.ae, %.045.lcssa
  %i.aj = or i32 %i.ai, %.0                       ; 2 uses
  %i.ak = add nuw nsw i32 %.045.lcssa, %i.ah      ; 2 uses
  %i.al = icmp samesign ugt i32 %.045.lcssa, 8
  br i1 %i.al, label %bb.e, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.am = zext i8 %i.h to i16
  %i.an = add nsw i64 %indvars.iv, 256            ; 3 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.an
  store i16 %i.am, ptr %i.ao, align 2, !tbaa !57
  %i.ap = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.an
  store i8 %i.j, ptr %i.ap, align 1, !tbaa !50
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.f ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !50
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !50
  %i.av = zext i8 %i.au to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = shl i32 %i.aj, 1
  %i.ax = or disjoint i32 %i.aw, 1
  %i.ay = add nuw nsw i32 %i.ak, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %i.az = phi i64 [ %i.y, %bb.e ], [ %i.y, %bb.c ], [ %i.an, %bb.d ] ; 2 uses
  %.148 = phi i32 [ %i.ax, %bb.e ], [ %i.aj, %bb.c ], [ %i.as, %bb.d ]
  %.1 = phi i32 [ %i.ay, %bb.e ], [ %i.ak, %bb.c ], [ %i.av, %bb.d ]
  %i.ba = trunc i32 %.148 to i16
  %i.bb = getelementptr inbounds [2 x i8], ptr @uni_DCtab_chrom_bits, i64 %i.az
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !57
  %i.bc = trunc i32 %.1 to i8
  %i.bd = getelementptr inbounds i8, ptr @uni_DCtab_chrom_len, i64 %i.az
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !200

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_uni_mpeg4_rl_tab(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 16384)) %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca [2 x [32 x i8]], align 16         ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %2, i8 30, i64 16384, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 11 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge
  %indvars.iv154 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next155, %.critedge ] ; 3 uses
  %i.d = shl nuw nsw i64 %indvars.iv154, 14
  %i.e = add nuw nsw i64 %i.d, 31465473           ; 3 uses
  %i.f = shl nuw nsw i64 %indvars.iv154, 7        ; 5 uses
  %i.g = or disjoint i64 %i.f, 8192               ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = trunc i64 %i.e to i32
  %i.k = or disjoint i32 %i.j, 8190
  store i32 %i.k, ptr %i.i, align 4, !tbaa !49
  %i.l = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.m = or i32 %i.l, 1056766
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32764
  store i32 %i.m, ptr %i.n, align 4, !tbaa !49
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %invariant.gep164 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 1
  %i.t = or i32 %i.s, %i.l                        ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.t, ptr %gep, align 4, !tbaa !49
  %i.u = or i32 %i.t, 1048576
  %gep165 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv
  store i32 %i.u, ptr %gep165, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.v = mul nuw nsw i64 %indvars.iv.next, 8190
  %i.w = and i64 %i.v, 8190
  %i.x = or disjoint i64 %i.w, %i.e               ; 2 uses
  %i.y = sub nsw i64 %i.f, %indvars.iv.next
  %i.z = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = trunc nuw nsw i64 %i.x to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !49
  %i.ab = sub nuw nsw i64 %i.g, %indvars.iv.next
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = trunc i64 %i.x to i32
  %i.ae = or i32 %i.ad, 1048576
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !49
  %.not142 = icmp eq i64 %indvars.iv.next, 64
  br i1 %.not142, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.af, align 1, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  store i8 0, ptr %i.ag, align 1, !tbaa !50
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next155, 64
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !201

bb.d:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.e:                                             ; preds = %bb.b, %bb.j
  %indvars.iv157 = phi i64 [ 101, %bb.b ], [ %indvars.iv.next158, %bb.j ] ; 6 uses
  %.0134151 = phi i32 [ 0, %bb.b ], [ %i.ak, %bb.j ]
  %.0135150 = phi i32 [ undef, %bb.b ], [ %spec.select, %bb.j ]
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !202
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv157
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50  ; 2 uses
  %i.ak = sext i8 %i.aj to i32                    ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !204
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv157
  %i.an = load i8, ptr %i.am, align 1, !tbaa !50  ; 2 uses
  %i.ao = sext i8 %i.an to i32                    ; 6 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !205
  %i.aq = sext i32 %i.ap to i64
  %.not145 = icmp slt i64 %indvars.iv157, %i.aq   ; 2 uses
end_hunk_5
