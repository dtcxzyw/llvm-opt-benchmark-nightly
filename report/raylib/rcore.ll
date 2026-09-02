Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sinfl_decompress:bb.a
  %i.bw = sext i32 %.neg to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw ; 3 uses
  store i32 0, ptr %i.u, align 8
  store i64 0, ptr %i.t, align 8
  %i.by = xor i64 %i.bt, %i.bs
  %i.bz = and i64 %i.by, 65535
  %.not172 = icmp eq i64 %i.bz, 65535
  br i1 %.not172, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = ptrtoint ptr %.0153426 to i64
  %i.cb = sub i64 %i.ca, %i.w
  %i.cc = trunc i64 %i.cb to i32
  br label %.thread274

bb.h:                                             ; preds = %bb.f
  %i.cd = and i64 %i.bs, 65535                    ; 5 uses
  %i.ce = ptrtoint ptr %i.bx to i64
  %i.cf = sub i64 %i.z, %i.ce
  %i.cg = icmp sge i64 %i.cf, %i.cd
  %i.ch = icmp ne i64 %i.cd, 0
  %or.cond = and i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = ptrtoint ptr %.0153426 to i64
  %i.cj = sub i64 %i.ci, %i.w
  %i.ck = trunc i64 %i.cj to i32
  br label %.thread274

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0153426, ptr align 1 %i.bx, i64 %i.cd, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cd
  store ptr %i.cl, ptr %4, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0153426, i64 %i.cd ; 2 uses
  %.not173 = icmp eq i32 %i.bg, 0
  br i1 %.not173, label %.backedge, label %bb.k

.backedge:                                        ; preds = %bb.j, %bb.at
  %.0153426.be = phi ptr [ %.3156, %bb.at ], [ %i.cm, %bb.j ]
  br label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.w
  %i.cp = trunc i64 %i.co to i32
  br label %.thread274

.preheader298.preheader:                          ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.i, i8 8, i64 144, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %scevgep375, i8 9, i64 112, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %scevgep379, i8 7, i64 24, i1 false)
  store i64 578721382704613384, ptr %scevgep383, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, i8 5, i64 32, i1 false)
  call fastcc void @sinfl_build(ptr noundef %i.s, ptr noundef %i.i, i32 noundef 10, i32 noundef 15, i32 noundef 288)
  call fastcc void @sinfl_build(ptr noundef %i.v, ptr noundef %i.y, i32 noundef 8, i32 noundef 15, i32 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #56
  br label %.preheader299.preheader

bb.l:                                             ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.k, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #56
  %i.cq = load ptr, ptr %i.r, align 8
  %i.cr = load ptr, ptr %4, align 8               ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 6 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 7
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val.i181 = load i64, ptr %i.cr, align 1
  %i.cw = load i32, ptr %i.u, align 8             ; 3 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl i64 %.val.i181, %i.cx
  %i.cz = load i64, ptr %i.t, align 8
  %i.da = or i64 %i.cy, %i.cz
  %i.db = sub nsw i32 63, %i.cw
  %i.dc = ashr i32 %i.db, 3
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.cr, i64 %i.dd ; 2 uses
  store ptr %i.de, ptr %4, align 8
  %i.df = or i32 %i.cw, 56
  br label %sinfl_refill.exit182

bb.n:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.u, align 8             ; 3 uses
  %i.dh = sub nsw i32 63, %i.dg
  %i.di = ashr i32 %i.dh, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.dj) ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %sext.i179 = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %sext.i179, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %i.cr, i64 %i.dm, i1 false)
  %.0..0..0..0..0..0..i180 = load i64, ptr %i.g, align 8
  %i.dn = zext nneg i32 %i.dg to i64
  %i.do = shl i64 %.0..0..0..0..0..0..i180, %i.dn
  %i.dp = load i64, ptr %i.t, align 8
  %i.dq = or i64 %i.dp, %i.do
  %i.dr = getelementptr inbounds i8, ptr %i.cr, i64 %i.dm ; 2 uses
  store ptr %i.dr, ptr %4, align 8
  %i.ds = shl i32 %i.dl, 3
  %i.dt = add nsw i32 %i.ds, %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %sinfl_refill.exit182

sinfl_refill.exit182:                             ; preds = %bb.m, %bb.n
  %.promoted = phi ptr [ %i.de, %bb.m ], [ %i.dr, %bb.n ]
  %i.du = phi i32 [ %i.df, %bb.m ], [ %i.dt, %bb.n ]
  %.val.i183 = phi i64 [ %i.da, %bb.m ], [ %i.dq, %bb.n ] ; 4 uses
  %i.dv = lshr i64 %.val.i183, 10
  %i.dw = and i64 %i.dv, 15
  %i.dx = lshr i64 %.val.i183, 14                 ; 2 uses
  store i64 %i.dx, ptr %i.t, align 8
  %i.dy = add nsw i32 %i.du, -14                  ; 2 uses
  store i32 %i.dy, ptr %i.u, align 8
  %i.dz = add nuw nsw i64 %i.dw, 3
  br label %bb.o

bb.o:                                             ; preds = %sinfl_refill.exit182, %sinfl_get.exit
  %indvars.iv = phi i64 [ 0, %sinfl_refill.exit182 ], [ %indvars.iv.next, %sinfl_get.exit ] ; 3 uses
  %i.ea = phi ptr [ %.promoted, %sinfl_refill.exit182 ], [ %.promoted324, %sinfl_get.exit ] ; 4 uses
  %i.eb = phi i32 [ %i.dy, %sinfl_refill.exit182 ], [ %i.fc, %sinfl_get.exit ] ; 6 uses
  %i.ec = phi i64 [ %i.dx, %sinfl_refill.exit182 ], [ %i.fb, %sinfl_get.exit ] ; 2 uses
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.cs, %i.ed                    ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 7
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val.i.i = load i64, ptr %i.ea, align 1
  %i.eg = zext nneg i32 %i.eb to i64
  %i.eh = shl i64 %.val.i.i, %i.eg
  %i.ei = or i64 %i.eh, %i.ec
  %i.ej = sub nsw i32 63, %i.eb
  %i.ek = ashr i32 %i.ej, 3
  %i.el = sext i32 %i.ek to i64
  %i.em = or i32 %i.eb, 56
  br label %sinfl_get.exit

bb.q:                                             ; preds = %bb.o
  %i.en = sub nsw i32 63, %i.eb
  %i.eo = ashr i32 %i.en, 3
  %i.ep = sext i32 %i.eo to i64
  %i.eq = tail call i64 @llvm.smin.i64(i64 %i.ee, i64 %i.ep) ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %sext.i.i = shl i64 %i.eq, 32
  %i.es = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.ea, i64 %i.es, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.f, align 8
  %i.et = zext nneg i32 %i.eb to i64
  %i.eu = shl i64 %.0..0..0..0..0..0..0..0..i.i, %i.et
  %i.ev = or i64 %i.ec, %i.eu
  %i.ew = shl i32 %i.er, 3
  %i.ex = add nsw i32 %i.ew, %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %sinfl_get.exit

sinfl_get.exit:                                   ; preds = %bb.p, %bb.q
  %.pn417 = phi i64 [ %i.el, %bb.p ], [ %i.es, %bb.q ]
  %i.ey = phi i32 [ %i.em, %bb.p ], [ %i.ex, %bb.q ]
  %.val.i2.i = phi i64 [ %i.ei, %bb.p ], [ %i.ev, %bb.q ] ; 2 uses
  %.promoted324 = getelementptr inbounds i8, ptr %i.ea, i64 %.pn417 ; 3 uses
  %i.ez = trunc i64 %.val.i2.i to i8
  %i.fa = and i8 %i.ez, 7
  %i.fb = lshr i64 %.val.i2.i, 3                  ; 3 uses
  %i.fc = add nsw i32 %i.ey, -3                   ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr @sdefl_flush.perm, i64 %indvars.iv
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ff
  store i8 %i.fa, ptr %i.fg, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.dz
  br i1 %exitcond.not, label %bb.r, label %bb.o

bb.r:                                             ; preds = %sinfl_get.exit
  store ptr %.promoted324, ptr %4, align 8
  store i64 %i.fb, ptr %i.t, align 8
  store i32 %i.fc, ptr %i.u, align 8
  %i.fh = trunc i64 %.val.i183 to i32
  %i.fi = and i32 %i.fh, 31
  %i.fj = add nuw nsw i32 %i.fi, 257              ; 3 uses
  %i.fk = trunc i64 %.val.i183 to i32
  %i.fl = lshr i32 %i.fk, 5
  %i.fm = and i32 %i.fl, 31
  %i.fn = add nuw nsw i32 %i.fm, 1                ; 2 uses
  call fastcc void @sinfl_build(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 7, i32 noundef 7, i32 noundef 19)
  %i.fo = add nuw nsw i32 %i.fn, %i.fj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.1127327 = phi i32 [ 0, %bb.r ], [ %.5, %.loopexit ] ; 7 uses
  %i.fp = phi ptr [ %.promoted324, %bb.r ], [ %i.kt, %.loopexit ] ; 4 uses
  %i.fq = phi i32 [ %i.fc, %bb.r ], [ %i.ks, %.loopexit ] ; 6 uses
  %i.fr = phi i64 [ %i.fb, %bb.r ], [ %i.kr, %.loopexit ] ; 2 uses
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.cs, %i.fs                    ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, 7
  br i1 %i.fu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val.i188 = load i64, ptr %i.fp, align 1
  %i.fv = zext nneg i32 %i.fq to i64
  %i.fw = shl i64 %.val.i188, %i.fv
  %i.fx = or i64 %i.fw, %i.fr
  %i.fy = sub nsw i32 63, %i.fq
  %i.fz = ashr i32 %i.fy, 3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = or i32 %i.fq, 56
  br label %sinfl_refill.exit189

bb.u:                                             ; preds = %bb.s
  %i.gc = sub nsw i32 63, %i.fq
  %i.gd = ashr i32 %i.gc, 3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = tail call i64 @llvm.smin.i64(i64 %i.ft, i64 %i.ge) ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %sext.i186 = shl i64 %i.gf, 32
  %i.gh = ashr exact i64 %sext.i186, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.fp, i64 %i.gh, i1 false)
  %.0..0..0..0..0..0..i187 = load i64, ptr %i.e, align 8
  %i.gi = zext nneg i32 %i.fq to i64
  %i.gj = shl i64 %.0..0..0..0..0..0..i187, %i.gi
  %i.gk = or i64 %i.fr, %i.gj
  %i.gl = shl i32 %i.gg, 3
  %i.gm = add nsw i32 %i.gl, %i.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %sinfl_refill.exit189

sinfl_refill.exit189:                             ; preds = %bb.t, %bb.u
  %.sink393 = phi i64 [ %i.fx, %bb.t ], [ %i.gk, %bb.u ] ; 3 uses
  %.pn418 = phi i64 [ %i.ga, %bb.t ], [ %i.gh, %bb.u ]
  %.sink391 = phi i32 [ %i.gb, %bb.t ], [ %i.gm, %bb.u ] ; 2 uses
  %.sink392 = getelementptr inbounds i8, ptr %i.fp, i64 %.pn418 ; 14 uses
  store ptr %.sink392, ptr %4, align 8
  %i.gn = and i64 %.sink393, 127
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4            ; 4 uses
  %i.gq = and i32 %i.gp, 16
  %.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i, label %sinfl_decode.exit, label %bb.v

bb.v:                                             ; preds = %sinfl_refill.exit189
  %i.gr = and i32 %i.gp, 15
  %i.gs = lshr i64 %.sink393, 7                   ; 2 uses
  %i.gt = add nsw i32 %.sink391, -7
  %notmask.i16.i = shl nsw i32 -1, %i.gr
  %5 = xor i32 %notmask.i16.i, -1
  %6 = trunc i64 %i.gs to i32
  %7 = and i32 %5, %6
  %i.gu = lshr i32 %i.gp, 16
  %i.gv = add nuw nsw i32 %7, %i.gu
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  br label %sinfl_decode.exit

sinfl_decode.exit:                                ; preds = %sinfl_refill.exit189, %bb.v
  %i.gz = phi i32 [ %i.gt, %bb.v ], [ %.sink391, %sinfl_refill.exit189 ]
  %i.ha = phi i64 [ %i.gs, %bb.v ], [ %.sink393, %sinfl_refill.exit189 ]
  %.0.i = phi i32 [ %i.gy, %bb.v ], [ %i.gp, %sinfl_refill.exit189 ] ; 2 uses
  %i.hb = and i32 %.0.i, 15                       ; 2 uses
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = lshr i64 %i.ha, %i.hc                   ; 5 uses
  store i64 %i.hd, ptr %i.t, align 8
  %i.he = sub nsw i32 %i.gz, %i.hb                ; 20 uses
  store i32 %i.he, ptr %i.u, align 8
  %i.hf = lshr i32 %.0.i, 16                      ; 2 uses
  %i.hg = and i32 %i.hf, 4095
  switch i32 %i.hg, label %bb.w [
    i32 16, label %bb.x
    i32 17, label %bb.ad
    i32 18, label %bb.ag
  ]

bb.w:                                             ; preds = %sinfl_decode.exit
  %i.hh = trunc i32 %i.hf to i8
  %i.hi = add nsw i32 %.1127327, 1
  %i.hj = sext i32 %.1127327 to i64
  %i.hk = getelementptr inbounds i8, ptr %i.l, i64 %i.hj
  store i8 %i.hh, ptr %i.hk, align 1
  br label %.loopexit

bb.x:                                             ; preds = %sinfl_decode.exit
  %i.hl = ptrtoint ptr %.sink392 to i64
  %i.hm = sub i64 %i.cs, %i.hl                    ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, 7
  br i1 %i.hn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val.i.i193 = load i64, ptr %.sink392, align 1
  %i.ho = zext nneg i32 %i.he to i64
  %i.hp = shl i64 %.val.i.i193, %i.ho
  %i.hq = sub nsw i32 63, %i.he
  %i.hr = ashr i32 %i.hq, 3
  %i.hs = sext i32 %i.hr to i64
  %i.ht = or i32 %i.he, 56
  br label %sinfl_get.exit194

bb.z:                                             ; preds = %bb.x
  %i.hu = sub nsw i32 63, %i.he
  %i.hv = ashr i32 %i.hu, 3
  %i.hw = sext i32 %i.hv to i64
  %i.hx = tail call i64 @llvm.smin.i64(i64 %i.hm, i64 %i.hw) ; 2 uses
  %i.hy = trunc i64 %i.hx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %sext.i.i190 = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %sext.i.i190, 32         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %.sink392, i64 %i.hz, i1 false)
  %.0..0..0..0..0..0..0..0..i.i191 = load i64, ptr %i.d, align 8
  %i.ia = zext nneg i32 %i.he to i64
  %i.ib = shl i64 %.0..0..0..0..0..0..0..0..i.i191, %i.ia
  %i.ic = shl i32 %i.hy, 3
  %i.id = add nsw i32 %i.ic, %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %sinfl_get.exit194

sinfl_get.exit194:                                ; preds = %bb.y, %bb.z
  %.pn421 = phi i64 [ %i.hs, %bb.y ], [ %i.hz, %bb.z ]
  %i.ie = phi i32 [ %i.ht, %bb.y ], [ %i.id, %bb.z ]
  %.pn334 = phi i64 [ %i.hp, %bb.y ], [ %i.ib, %bb.z ]
  %.sink394 = getelementptr inbounds i8, ptr %.sink392, i64 %.pn421 ; 2 uses
  store ptr %.sink394, ptr %4, align 8
  %.val.i2.i192 = or i64 %.pn334, %i.hd           ; 2 uses
  %i.if = trunc i64 %.val.i2.i192 to i32
  %i.ig = and i32 %i.if, 3                        ; 3 uses
  %i.ih = lshr i64 %.val.i2.i192, 2               ; 2 uses
  store i64 %i.ih, ptr %i.t, align 8
  %i.ii = add nsw i32 %i.ie, -2                   ; 2 uses
  store i32 %i.ii, ptr %i.u, align 8
  %i.ij = sext i32 %.1127327 to i64               ; 8 uses
  %scevgep551 = getelementptr i8, ptr %scevgep550, i64 %i.ij
  %load_initial = load i8, ptr %scevgep551, align 1 ; 6 uses
  %i.ik = getelementptr i8, ptr %i.l, i64 %i.ij
  store i8 %load_initial, ptr %i.ik, align 1
  %i.il = getelementptr i8, ptr %i.l, i64 %i.ij
  %i.im = getelementptr i8, ptr %i.il, i64 1
  store i8 %load_initial, ptr %i.im, align 1
  %i.in = getelementptr i8, ptr %i.l, i64 %i.ij
  %i.io = getelementptr i8, ptr %i.in, i64 2
  store i8 %load_initial, ptr %i.io, align 1
  %indvars.iv.next370.2 = add nsw i64 %i.ij, 3    ; 2 uses
  %.not171.2 = icmp eq i32 %i.ig, 0
  br i1 %.not171.2, label %.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %sinfl_get.exit194
  %i.ip = getelementptr i8, ptr %i.l, i64 %indvars.iv.next370.2
  store i8 %load_initial, ptr %i.ip, align 1
  %indvars.iv.next370.3 = add nsw i64 %i.ij, 4    ; 2 uses
  %.not171.3 = icmp eq i32 %i.ig, 1
  br i1 %.not171.3, label %.loopexit.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iq = getelementptr i8, ptr %i.l, i64 %indvars.iv.next370.3
  store i8 %load_initial, ptr %i.iq, align 1
  %indvars.iv.next370.4 = add nsw i64 %i.ij, 5    ; 2 uses
  %.not171.4 = icmp eq i32 %i.ig, 2
  br i1 %.not171.4, label %.loopexit.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ir = getelementptr i8, ptr %i.l, i64 %indvars.iv.next370.4
  store i8 %load_initial, ptr %i.ir, align 1
  %indvars.iv.next370.5 = add nsw i64 %i.ij, 6
  br label %.loopexit.loopexit

bb.ad:                                            ; preds = %sinfl_decode.exit
  %i.is = ptrtoint ptr %.sink392 to i64
  %i.it = sub i64 %i.cs, %i.is                    ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 7
  br i1 %i.iu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i198 = load i64, ptr %.sink392, align 1
  %i.iv = zext nneg i32 %i.he to i64
  %i.iw = shl i64 %.val.i.i198, %i.iv
  %i.ix = sub nsw i32 63, %i.he
  %i.iy = ashr i32 %i.ix, 3
  %i.iz = sext i32 %i.iy to i64
  %i.ja = or i32 %i.he, 56
  br label %sinfl_get.exit199

bb.af:                                            ; preds = %bb.ad
  %i.jb = sub nsw i32 63, %i.he
  %i.jc = ashr i32 %i.jb, 3
  %i.jd = sext i32 %i.jc to i64
  %i.je = tail call i64 @llvm.smin.i64(i64 %i.it, i64 %i.jd) ; 2 uses
  %i.jf = trunc i64 %i.je to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %sext.i.i195 = shl i64 %i.je, 32
  %i.jg = ashr exact i64 %sext.i.i195, 32         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 1 %.sink392, i64 %i.jg, i1 false)
  %.0..0..0..0..0..0..0..0..i.i196 = load i64, ptr %i.c, align 8
  %i.jh = zext nneg i32 %i.he to i64
  %i.ji = shl i64 %.0..0..0..0..0..0..0..0..i.i196, %i.jh
  %i.jj = shl i32 %i.jf, 3
  %i.jk = add nsw i32 %i.jj, %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %sinfl_get.exit199

sinfl_get.exit199:                                ; preds = %bb.ae, %bb.af
  %.pn420 = phi i64 [ %i.iz, %bb.ae ], [ %i.jg, %bb.af ]
  %i.jl = phi i32 [ %i.ja, %bb.ae ], [ %i.jk, %bb.af ]
  %.pn333 = phi i64 [ %i.iw, %bb.ae ], [ %i.ji, %bb.af ]
  %.sink395 = getelementptr inbounds i8, ptr %.sink392, i64 %.pn420 ; 2 uses
  store ptr %.sink395, ptr %4, align 8
  %.val.i2.i197 = or i64 %.pn333, %i.hd           ; 2 uses
  %i.jm = lshr i64 %.val.i2.i197, 3               ; 2 uses
  store i64 %i.jm, ptr %i.t, align 8
  %i.jn = add nsw i32 %i.jl, -3                   ; 2 uses
  store i32 %i.jn, ptr %i.u, align 8
  %i.jo = sext i32 %.1127327 to i64
  %scevgep362 = getelementptr i8, ptr %i.l, i64 %i.jo
  %i.jp = and i64 %.val.i2.i197, 7                ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep362, i8 0, i64 %i.jq, i1 false)
  %8 = add i32 %.1127327, 3
  %9 = trunc nuw nsw i64 %i.jp to i32
  %10 = add i32 %8, %9
  br label %.loopexit

bb.ag:                                            ; preds = %sinfl_decode.exit
  %i.jr = ptrtoint ptr %.sink392 to i64
  %i.js = sub i64 %i.cs, %i.jr                    ; 2 uses
  %i.jt = icmp sgt i64 %i.js, 7
  br i1 %i.jt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i203 = load i64, ptr %.sink392, align 1
  %i.ju = zext nneg i32 %i.he to i64
  %i.jv = shl i64 %.val.i.i203, %i.ju
  %i.jw = sub nsw i32 63, %i.he
  %i.jx = ashr i32 %i.jw, 3
  %i.jy = sext i32 %i.jx to i64
  %i.jz = or i32 %i.he, 56
  br label %sinfl_get.exit204

bb.ai:                                            ; preds = %bb.ag
  %i.ka = sub nsw i32 63, %i.he
  %i.kb = ashr i32 %i.ka, 3
  %i.kc = sext i32 %i.kb to i64
  %i.kd = tail call i64 @llvm.smin.i64(i64 %i.js, i64 %i.kc) ; 2 uses
  %i.ke = trunc i64 %i.kd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %sext.i.i200 = shl i64 %i.kd, 32
  %i.kf = ashr exact i64 %sext.i.i200, 32         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %.sink392, i64 %i.kf, i1 false)
  %.0..0..0..0..0..0..0..0..i.i201 = load i64, ptr %i.b, align 8
  %i.kg = zext nneg i32 %i.he to i64
  %i.kh = shl i64 %.0..0..0..0..0..0..0..0..i.i201, %i.kg
  %i.ki = shl i32 %i.ke, 3
  %i.kj = add nsw i32 %i.ki, %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %sinfl_get.exit204

sinfl_get.exit204:                                ; preds = %bb.ah, %bb.ai
  %.pn419 = phi i64 [ %i.jy, %bb.ah ], [ %i.kf, %bb.ai ]
  %i.kk = phi i32 [ %i.jz, %bb.ah ], [ %i.kj, %bb.ai ]
  %.pn = phi i64 [ %i.jv, %bb.ah ], [ %i.kh, %bb.ai ]
  %.sink396 = getelementptr inbounds i8, ptr %.sink392, i64 %.pn419 ; 2 uses
  store ptr %.sink396, ptr %4, align 8
  %.val.i2.i202 = or i64 %.pn, %i.hd              ; 2 uses
  %i.kl = lshr i64 %.val.i2.i202, 7               ; 2 uses
  store i64 %i.kl, ptr %i.t, align 8
  %i.km = add nsw i32 %i.kk, -7                   ; 2 uses
  store i32 %i.km, ptr %i.u, align 8
  %i.kn = sext i32 %.1127327 to i64
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.kn
  %i.ko = and i64 %.val.i2.i202, 127              ; 2 uses
  %i.kp = add nuw nsw i64 %i.ko, 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.kp, i1 false)
  %11 = add i32 %.1127327, 11
  %12 = trunc nuw nsw i64 %i.ko to i32
  %13 = add i32 %11, %12
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.ac, %bb.ab, %bb.aa, %sinfl_get.exit194
  %indvars.iv.next370.lcssa = phi i64 [ %indvars.iv.next370.5, %bb.ac ], [ %indvars.iv.next370.4, %bb.ab ], [ %indvars.iv.next370.2, %sinfl_get.exit194 ], [ %indvars.iv.next370.3, %bb.aa ]
  %i.kq = trunc nsw i64 %indvars.iv.next370.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %sinfl_get.exit204, %sinfl_get.exit199, %.loopexit.loopexit, %bb.w
  %i.kr = phi i64 [ %i.hd, %bb.w ], [ %i.jm, %sinfl_get.exit199 ], [ %i.ih, %.loopexit.loopexit ], [ %i.kl, %sinfl_get.exit204 ]
  %i.ks = phi i32 [ %i.he, %bb.w ], [ %i.jn, %sinfl_get.exit199 ], [ %i.ii, %.loopexit.loopexit ], [ %i.km, %sinfl_get.exit204 ]
  %i.kt = phi ptr [ %.sink392, %bb.w ], [ %.sink395, %sinfl_get.exit199 ], [ %.sink394, %.loopexit.loopexit ], [ %.sink396, %sinfl_get.exit204 ]
  %.5 = phi i32 [ %i.hi, %bb.w ], [ %10, %sinfl_get.exit199 ], [ %i.kq, %.loopexit.loopexit ], [ %13, %sinfl_get.exit204 ] ; 2 uses
  %i.ku = icmp slt i32 %.5, %i.fo
  br i1 %i.ku, label %bb.s, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  call fastcc void @sinfl_build(ptr noundef %i.s, ptr noundef %i.l, i32 noundef 10, i32 noundef 15, i32 noundef %i.fj)
  %i.kv = zext nneg i32 %i.fj to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.kv
  call fastcc void @sinfl_build(ptr noundef %i.v, ptr noundef %i.kw, i32 noundef 8, i32 noundef 15, i32 noundef %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #56
  br label %.preheader299.preheader

.preheader299.preheader:                          ; preds = %.preheader298.preheader, %bb.aj
  br label %.preheader299

.preheader299:                                    ; preds = %.preheader299.backedge, %.preheader299.preheader
  %.2155 = phi ptr [ %.0153426, %.preheader299.preheader ], [ %.2155.be, %.preheader299.backedge ] ; 6 uses
  %i.kx = load ptr, ptr %i.r, align 8
  %i.ky = load ptr, ptr %4, align 8               ; 5 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = icmp sgt i64 %i.lb, 7
  br i1 %i.lc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader299
  %.val.i207 = load i64, ptr %i.ky, align 1
  %i.ld = load i32, ptr %i.u, align 8             ; 3 uses
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl i64 %.val.i207, %i.le
  %i.lg = load i64, ptr %i.t, align 8
  %i.lh = or i64 %i.lf, %i.lg
  %i.li = sub nsw i32 63, %i.ld
  %i.lj = ashr i32 %i.li, 3
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.ky, i64 %i.lk
  store ptr %i.ll, ptr %4, align 8
  %i.lm = or i32 %i.ld, 56
  br label %sinfl_refill.exit208

bb.al:                                            ; preds = %.preheader299
  %i.ln = load i32, ptr %i.u, align 8             ; 3 uses
  %i.lo = sub nsw i32 63, %i.ln
  %i.lp = ashr i32 %i.lo, 3
  %i.lq = sext i32 %i.lp to i64
  %i.lr = tail call i64 @llvm.smin.i64(i64 %i.lb, i64 %i.lq) ; 2 uses
  %i.ls = trunc i64 %i.lr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %sext.i205 = shl i64 %i.lr, 32
  %i.lt = ashr exact i64 %sext.i205, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.ky, i64 %i.lt, i1 false)
  %.0..0..0..0..0..0..i206 = load i64, ptr %i.a, align 8
  %i.lu = zext nneg i32 %i.ln to i64
  %i.lv = shl i64 %.0..0..0..0..0..0..i206, %i.lu
  %i.lw = load i64, ptr %i.t, align 8
  %i.lx = or i64 %i.lw, %i.lv
  %i.ly = getelementptr inbounds i8, ptr %i.ky, i64 %i.lt
  store ptr %i.ly, ptr %4, align 8
  %i.lz = shl i32 %i.ls, 3
  %i.ma = add nsw i32 %i.lz, %i.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %sinfl_refill.exit208

sinfl_refill.exit208:                             ; preds = %bb.ak, %bb.al
  %.pre.i215 = phi i32 [ %i.lm, %bb.ak ], [ %i.ma, %bb.al ] ; 2 uses
  %.val15.i209 = phi i64 [ %i.lh, %bb.ak ], [ %i.lx, %bb.al ] ; 3 uses
  %i.mb = and i64 %.val15.i209, 1023
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4            ; 4 uses
  %i.me = and i32 %i.md, 16
  %.not.i210 = icmp eq i32 %i.me, 0
  br i1 %.not.i210, label %sinfl_decode.exit216, label %bb.am

bb.am:                                            ; preds = %sinfl_refill.exit208
  %i.mf = and i32 %i.md, 15
  %i.mg = lshr i64 %.val15.i209, 10               ; 2 uses
  %i.mh = add nsw i32 %.pre.i215, -10
  %notmask.i16.i211 = shl nsw i32 -1, %i.mf
  %14 = xor i32 %notmask.i16.i211, -1
  %15 = trunc i64 %i.mg to i32
  %16 = and i32 %14, %15
  %i.mi = lshr i32 %i.md, 16
  %i.mj = add nuw nsw i32 %16, %i.mi
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4
  br label %sinfl_decode.exit216

sinfl_decode.exit216:                             ; preds = %sinfl_refill.exit208, %bb.am
  %i.mn = phi i32 [ %i.mh, %bb.am ], [ %.pre.i215, %sinfl_refill.exit208 ]
  %i.mo = phi i64 [ %i.mg, %bb.am ], [ %.val15.i209, %sinfl_refill.exit208 ]
  %.0.i212 = phi i32 [ %i.mm, %bb.am ], [ %i.md, %sinfl_refill.exit208 ] ; 2 uses
  %i.mp = and i32 %.0.i212, 15                    ; 2 uses
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = lshr i64 %i.mo, %i.mq                   ; 2 uses
  store i64 %i.mr, ptr %i.t, align 8
  %i.ms = sub nsw i32 %i.mn, %i.mp                ; 2 uses
  store i32 %i.ms, ptr %i.u, align 8
  %i.mt = lshr i32 %.0.i212, 16                   ; 2 uses
  %i.mu = and i32 %i.mt, 4095                     ; 2 uses
  %i.mv = icmp samesign ult i32 %i.mu, 256
  br i1 %i.mv, label %bb.an, label %bb.as

bb.an:                                            ; preds = %sinfl_decode.exit216
  %.not = icmp ult ptr %.2155, %i.n
  br i1 %.not, label %bb.ap, label %bb.ao, !prof !230

bb.ao:                                            ; preds = %bb.an
  %i.mw = ptrtoint ptr %.2155 to i64
  %i.mx = sub i64 %i.mw, %i.w
  %i.my = trunc i64 %i.mx to i32
  br label %.thread274

bb.ap:                                            ; preds = %bb.an
  %i.mz = trunc i32 %i.mt to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.2155, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.2155, align 1
  %.val15.i217 = load i64, ptr %i.t, align 8      ; 3 uses
  %i.nb = and i64 %.val15.i217, 1023
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4            ; 4 uses
  %i.ne = and i32 %i.nd, 16
  %.not.i218 = icmp eq i32 %i.ne, 0
  br i1 %.not.i218, label %._crit_edge.i221, label %bb.aq

._crit_edge.i221:                                 ; preds = %bb.ap
  %.pre.i223 = load i32, ptr %i.u, align 8
  br label %sinfl_decode.exit224

bb.aq:                                            ; preds = %bb.ap
  %i.nf = and i32 %i.nd, 15
  %i.ng = lshr i64 %.val15.i217, 10               ; 2 uses
  %i.nh = load i32, ptr %i.u, align 8
  %i.ni = add nsw i32 %i.nh, -10
  %notmask.i16.i219 = shl nsw i32 -1, %i.nf
  %17 = xor i32 %notmask.i16.i219, -1
  %18 = trunc i64 %i.ng to i32
  %19 = and i32 %17, %18
  %i.nj = lshr i32 %i.nd, 16
  %i.nk = add nuw nsw i32 %19, %i.nj
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4
  br label %sinfl_decode.exit224

sinfl_decode.exit224:                             ; preds = %._crit_edge.i221, %bb.aq
  %i.no = phi i32 [ %i.ni, %bb.aq ], [ %.pre.i223, %._crit_edge.i221 ]
  %i.np = phi i64 [ %i.ng, %bb.aq ], [ %.val15.i217, %._crit_edge.i221 ]
  %.0.i220 = phi i32 [ %i.nn, %bb.aq ], [ %i.nd, %._crit_edge.i221 ] ; 2 uses
  %i.nq = and i32 %.0.i220, 15                    ; 2 uses
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = lshr i64 %i.np, %i.nr                   ; 2 uses
  store i64 %i.ns, ptr %i.t, align 8
  %i.nt = sub nsw i32 %i.no, %i.nq                ; 2 uses
  store i32 %i.nt, ptr %i.u, align 8
  %i.nu = lshr i32 %.0.i220, 16                   ; 2 uses
  %i.nv = and i32 %i.nu, 4095                     ; 2 uses
  %i.nw = icmp samesign ult i32 %i.nv, 256
  br i1 %i.nw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %sinfl_decode.exit224
  %i.nx = trunc i32 %i.nu to i8
  %i.ny = getelementptr inbounds nuw i8, ptr %.2155, i64 2
  store i8 %i.nx, ptr %i.na, align 1
  br label %.preheader299.backedge

bb.as:                                            ; preds = %sinfl_decode.exit224, %sinfl_decode.exit216
  %i.nz = phi i32 [ %i.nt, %sinfl_decode.exit224 ], [ %i.ms, %sinfl_decode.exit216 ]
  %.val.i225 = phi i64 [ %i.ns, %sinfl_decode.exit224 ], [ %i.mr, %sinfl_decode.exit216 ] ; 2 uses
  %.3156 = phi ptr [ %i.na, %sinfl_decode.exit224 ], [ %.2155, %sinfl_decode.exit216 ] ; 18 uses
  %.0 = phi i32 [ %i.nv, %sinfl_decode.exit224 ], [ %i.mu, %sinfl_decode.exit216 ] ; 3 uses
  %i.oa = icmp eq i32 %.0, 256
  br i1 %i.oa, label %bb.at, label %bb.av, !prof !231

bb.at:                                            ; preds = %bb.as
  %.not168 = icmp eq i32 %i.bg, 0
  br i1 %.not168, label %.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ob = ptrtoint ptr %.3156 to i64
  %i.oc = sub i64 %i.ob, %i.w
  %i.od = trunc i64 %i.oc to i32
  br label %.thread274

bb.av:                                            ; preds = %bb.as
  %i.oe = icmp samesign ugt i32 %.0, 285
  br i1 %i.oe, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.of = ptrtoint ptr %.3156 to i64
  %i.og = sub i64 %i.of, %i.w
  %i.oh = trunc i64 %i.og to i32
  br label %.thread274

bb.ax:                                            ; preds = %bb.av
  %i.oi = add nsw i32 %.0, -257
  %i.oj = zext nneg i32 %i.oi to i64              ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr @sinfl_decompress.lbits, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1             ; 2 uses
  %i.om = zext i8 %i.ol to i32
  %i.on = zext i8 %i.ol to i64                    ; 2 uses
  %notmask.i.i226 = shl nsw i64 -1, %i.on
  %i.oo = xor i64 %notmask.i.i226, -1
  %i.op = and i64 %.val.i225, %i.oo
  %i.oq = lshr i64 %.val.i225, %i.on              ; 3 uses
  %i.or = sub nsw i32 %i.nz, %i.om                ; 2 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr @sinfl_decompress.lbase, i64 %i.oj
  %i.ot = load i16, ptr %i.os, align 2
  %i.ou = and i64 %i.oq, 255
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4            ; 4 uses
  %i.ox = and i32 %i.ow, 16
  %.not.i228 = icmp eq i32 %i.ox, 0
  br i1 %.not.i228, label %sinfl_decode.exit234, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oy = and i32 %i.ow, 15
  %i.oz = lshr i64 %i.oq, 8                       ; 2 uses
  %i.pa = add nsw i32 %i.or, -8
  %notmask.i16.i229 = shl nsw i32 -1, %i.oy
  %20 = xor i32 %notmask.i16.i229, -1
  %21 = trunc i64 %i.oz to i32
  %22 = and i32 %20, %21
  %i.pb = lshr i32 %i.ow, 16
  %i.pc = add nuw nsw i32 %22, %i.pb
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4
  br label %sinfl_decode.exit234

sinfl_decode.exit234:                             ; preds = %bb.ax, %bb.ay
  %i.pg = phi i32 [ %i.pa, %bb.ay ], [ %i.or, %bb.ax ]
  %i.ph = phi i64 [ %i.oz, %bb.ay ], [ %i.oq, %bb.ax ]
  %.0.i230 = phi i32 [ %i.pf, %bb.ay ], [ %i.ow, %bb.ax ] ; 2 uses
  %i.pi = and i32 %.0.i230, 15                    ; 2 uses
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = lshr i64 %i.ph, %i.pj                   ; 2 uses
  %i.pl = lshr i32 %.0.i230, 16
  %i.pm = and i32 %i.pl, 4095
  %i.pn = zext nneg i32 %i.pm to i64              ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr @sinfl_decompress.dbits, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1             ; 2 uses
  %i.pq = zext i8 %i.pp to i32
  %i.pr = zext i8 %i.pp to i64                    ; 2 uses
  %notmask.i.i236 = shl nsw i64 -1, %i.pr
  %i.ps = xor i64 %notmask.i.i236, -1
  %i.pt = and i64 %i.pk, %i.ps
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = lshr i64 %i.pk, %i.pr
  store i64 %i.pv, ptr %i.t, align 8
  %i.pw = add nuw nsw i32 %i.pi, %i.pq
  %i.px = sub i32 %i.pg, %i.pw
  store i32 %i.px, ptr %i.u, align 8
  %i.py = getelementptr inbounds nuw [2 x i8], ptr @sinfl_decompress.dbase, i64 %i.pn
  %i.pz = load i16, ptr %i.py, align 2
  %i.qa = sext i16 %i.pz to i32
  %i.qb = add nsw i32 %i.pu, %i.qa                ; 5 uses
  %i.qc = sext i32 %i.qb to i64                   ; 3 uses
  %i.qd = sub nsw i64 0, %i.qc
  %i.qe = getelementptr inbounds i8, ptr %.3156, i64 %i.qd ; 10 uses
  %i.qf = ptrtoint ptr %.3156 to i64              ; 13 uses
  %i.qg = sub i64 %i.qf, %i.w
  %i.qh = trunc i64 %i.qg to i32                  ; 2 uses
  %i.qi = icmp sgt i32 %i.qb, %i.qh
  br i1 %i.qi, label %.thread274, label %bb.az, !prof !231

bb.az:                                            ; preds = %sinfl_decode.exit234
  %i.qj = sext i16 %i.ot to i64
  %i.qk = add i64 %i.op, %i.qj
  %sext = shl i64 %i.qk, 32
  %i.ql = ashr exact i64 %sext, 32                ; 5 uses
  %i.qm = getelementptr inbounds i8, ptr %.3156, i64 %i.ql ; 15 uses
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = sub i64 %i.x, %i.qn
  %i.qp = icmp sgt i64 %i.qo, 20
  br i1 %i.qp, label %bb.ba, label %iter.check534, !prof !230

bb.ba:                                            ; preds = %bb.az
  %i.qq = icmp sgt i32 %i.qb, 7
  br i1 %i.qq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.qr = load i64, ptr %i.qe, align 1
  store i64 %i.qr, ptr %.3156, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %.3156, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qu = load i64, ptr %i.qt, align 1
  store i64 %i.qu, ptr %i.qs, align 1
  %i.qv = getelementptr inbounds nuw i8, ptr %.3156, i64 16 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qe, i64 16 ; 3 uses
  %i.qx = add i64 %i.ql, %i.qf
  %i.qy = add i64 %i.qf, 24
  %i.qz = tail call i64 @llvm.umax.i64(i64 %i.qx, i64 %i.qy)
  %i.ra = add i64 %i.qz, -17
  %i.rb = sub i64 %i.ra, %i.qf                    ; 2 uses
  %i.rc = lshr i64 %i.rb, 3
  %i.rd = add nuw nsw i64 %i.rc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rb, 24
  %diff.check = icmp ult i32 %i.qb, 32
  %or.cond552 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond552, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bb
  %n.vec = and i64 %i.rd, 4611686018427387900     ; 3 uses
  %i.re = shl i64 %n.vec, 3                       ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qv, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.qw, i64 %i.re
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qv, i64 %i.rh ; 2 uses
  %next.gep472 = getelementptr i8, ptr %i.qw, i64 %i.rh ; 2 uses
  %i.ri = getelementptr i8, ptr %next.gep472, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep472, align 1
  %wide.load473 = load <2 x i64>, ptr %i.ri, align 1
  %i.rj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load473, ptr %i.rj, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rk = icmp eq i64 %index.next, %n.vec
  br i1 %i.rk, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rd, %n.vec
  br i1 %cmp.n, label %.preheader299.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bb, %middle.block
  %.0266.ph = phi ptr [ %i.qv, %bb.bb ], [ %i.rf, %middle.block ]
  %.0263.ph = phi ptr [ %i.qw, %bb.bb ], [ %i.rg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0266 = phi ptr [ %i.rm, %scalar.ph ], [ %.0266.ph, %scalar.ph.preheader ] ; 2 uses
  %.0263 = phi ptr [ %i.rn, %scalar.ph ], [ %.0263.ph, %scalar.ph.preheader ] ; 2 uses
  %i.rl = load i64, ptr %.0263, align 1
  store i64 %i.rl, ptr %.0266, align 1
  %i.rm = getelementptr inbounds nuw i8, ptr %.0266, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0263, i64 8
  %i.ro = icmp ult ptr %i.rm, %i.qm
  br i1 %i.ro, label %scalar.ph, label %.preheader299.backedge, !llvm.loop !221

bb.bc:                                            ; preds = %bb.ba
  %i.rp = icmp eq i32 %i.qb, 1
  br i1 %i.rp, label %bb.bd, label %iter.check

bb.bd:                                            ; preds = %bb.bc
  %i.rq = load i8, ptr %i.qe, align 1
  %i.rr = zext i8 %i.rq to i32                    ; 4 uses
  %i.rs = shl nuw i32 %i.rr, 24
  %i.rt = shl nuw nsw i32 %i.rr, 16
  %i.ru = shl nuw nsw i32 %i.rr, 8
  %i.rv = or disjoint i32 %i.rt, %i.rs
  %i.rw = or disjoint i32 %i.rv, %i.ru
  %i.rx = or disjoint i32 %i.rw, %i.rr
  %i.ry = zext i32 %i.rx to i64                   ; 2 uses
  %i.rz = shl nuw i64 %i.ry, 32
  %i.sa = or disjoint i64 %i.rz, %i.ry            ; 4 uses
  store i64 %i.sa, ptr %.3156, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.3156, i64 8
  store i64 %i.sa, ptr %i.sb, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.3156, i64 16 ; 3 uses
  %i.sd = add i64 %i.ql, %i.qf
  %i.se = add i64 %i.qf, 24
  %i.sf = tail call i64 @llvm.umax.i64(i64 %i.sd, i64 %i.se)
  %i.sg = add i64 %i.sf, -17
  %i.sh = sub i64 %i.sg, %i.qf                    ; 2 uses
  %i.si = lshr i64 %i.sh, 3
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.sh, 24
  br i1 %min.iters.check476, label %scalar.ph475.preheader, label %vector.ph477

vector.ph477:                                     ; preds = %bb.bd
  %n.vec478 = and i64 %i.sj, 4611686018427387900  ; 3 uses
  %i.sk = shl i64 %n.vec478, 3
  %i.sl = getelementptr i8, ptr %i.sc, i64 %i.sk
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.sa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next482, %vector.body479 ] ; 2 uses
  %i.sm = shl i64 %index480, 3
  %next.gep481 = getelementptr i8, ptr %i.sc, i64 %i.sm ; 2 uses
  %i.sn = getelementptr i8, ptr %next.gep481, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep481, align 1
  store <2 x i64> %broadcast.splat, ptr %i.sn, align 1
  %index.next482 = add nuw i64 %index480, 4       ; 2 uses
  %i.so = icmp eq i64 %index.next482, %n.vec478
  br i1 %i.so, label %middle.block483, label %vector.body479, !llvm.loop !222

middle.block483:                                  ; preds = %vector.body479
  %cmp.n484 = icmp eq i64 %i.sj, %n.vec478
  br i1 %cmp.n484, label %.preheader299.backedge, label %scalar.ph475.preheader

scalar.ph475.preheader:                           ; preds = %bb.bd, %middle.block483
  %.1267.ph = phi ptr [ %i.sc, %bb.bd ], [ %i.sl, %middle.block483 ]
  br label %scalar.ph475

scalar.ph475:                                     ; preds = %scalar.ph475.preheader, %scalar.ph475
  %.1267 = phi ptr [ %i.sp, %scalar.ph475 ], [ %.1267.ph, %scalar.ph475.preheader ] ; 2 uses
  store i64 %i.sa, ptr %.1267, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %.1267, i64 8 ; 2 uses
  %i.sq = icmp ult ptr %i.sp, %i.qm
  br i1 %i.sq, label %scalar.ph475, label %.preheader299.backedge, !llvm.loop !223

iter.check:                                       ; preds = %bb.bc
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  %i.ss = load i8, ptr %i.qe, align 1
  %i.st = getelementptr inbounds nuw i8, ptr %.3156, i64 1
  store i8 %i.ss, ptr %.3156, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.qe, i64 2 ; 5 uses
  %i.sv = load i8, ptr %i.sr, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %.3156, i64 2 ; 5 uses
  store i8 %i.sv, ptr %i.st, align 1
  %i.sx = add i64 %i.ql, %i.qf
  %i.sy = add i64 %i.qf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sx, i64 %i.sy)
  %i.sz = add i64 %umax, -2
  %i.ta = sub i64 %i.sz, %i.qf                    ; 7 uses
  %min.iters.check489 = icmp ult i64 %i.ta, 4
  %i.tb = add nsw i64 %i.qc, -1
  %diff.check487 = icmp ult i64 %i.tb, 31
  %or.cond553 = select i1 %min.iters.check489, i1 true, i1 %diff.check487
end_hunk_0
